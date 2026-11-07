package androidx.camera.core;

import android.content.ComponentCallbacks2;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.SparseArray;
import androidx.arch.core.util.Function;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.RetryPolicy;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.CameraDeviceSurfaceManager;
import androidx.camera.core.impl.CameraFactory;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraPresenceProvider;
import androidx.camera.core.impl.CameraProviderExecutionState;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.CameraThreadConfig;
import androidx.camera.core.impl.CameraValidator;
import androidx.camera.core.impl.MetadataHolderService;
import androidx.camera.core.impl.QuirkSettings;
import androidx.camera.core.impl.QuirkSettingsHolder;
import androidx.camera.core.impl.QuirkSettingsLoader;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.StreamSpecsCalculator;
import androidx.camera.core.internal.StreamSpecsCalculatorImpl;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.os.HandlerCompat;
import androidx.core.util.Preconditions;
import androidx.tracing.Trace;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.reflect.InvocationTargetException;
import java.util.Iterator;
import java.util.concurrent.Executor;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraX {
    private static final Object MIN_LOG_LEVEL_LOCK = new Object();
    private static final SparseArray<Integer> sMinLogLevelReferenceCountMap = new SparseArray<>();
    private final Executor mCameraExecutor;
    private CameraFactory mCameraFactory;
    private final CameraPresenceProvider mCameraPresenceProvider;
    final CameraRepository mCameraRepository;
    private CameraUseCaseAdapterProvider mCameraUseCaseAdapterProvider;
    private final CameraXConfig mCameraXConfig;
    private UseCaseConfigFactory mDefaultConfigFactory;
    private final ListenableFuture<Void> mInitInternalFuture;
    private InternalInitState mInitState;
    private final Object mInitializeLock;
    private final Integer mMinLogLevel;
    private final RetryPolicy mRetryPolicy;
    private final Lazy<RotationProvider> mRotationProvider;
    private final Handler mSchedulerHandler;
    private final HandlerThread mSchedulerThread;
    private ListenableFuture<Void> mShutdownInternalFuture;
    private StreamSpecsCalculator mStreamSpecsCalculator;
    private CameraDeviceSurfaceManager mSurfaceManager;

    public enum InternalInitState {
        UNINITIALIZED,
        INITIALIZING,
        INITIALIZING_ERROR,
        INITIALIZED,
        SHUTDOWN
    }

    public CameraX(Context context, CameraXConfig.Provider provider) {
        this(context, provider, new QuirkSettingsLoader());
    }

    public CameraX(Context context, CameraXConfig.Provider provider, Function<Context, QuirkSettings> function) {
        this.mCameraRepository = new CameraRepository();
        this.mInitializeLock = new Object();
        this.mInitState = InternalInitState.UNINITIALIZED;
        this.mShutdownInternalFuture = Futures.immediateFuture(null);
        final Context persistentApplicationContext = ContextUtil.getPersistentApplicationContext(context);
        if (provider != null) {
            this.mCameraXConfig = provider.getCameraXConfig();
        } else {
            CameraXConfig.Provider configProvider = getConfigProvider(context);
            if (configProvider == null) {
                Segment$$ExternalSyntheticBUOutline1.m925m("CameraX is not configured properly. The most likely cause is you did not include a default implementation in your build such as 'camera-camera2'.");
                throw null;
            }
            this.mCameraXConfig = configProvider.getCameraXConfig();
        }
        updateQuirkSettings(persistentApplicationContext, this.mCameraXConfig.getQuirkSettings(), function);
        Executor cameraExecutor = this.mCameraXConfig.getCameraExecutor(null);
        Handler schedulerHandler = this.mCameraXConfig.getSchedulerHandler(null);
        cameraExecutor = cameraExecutor == null ? new CameraExecutor() : cameraExecutor;
        this.mCameraExecutor = cameraExecutor;
        if (schedulerHandler == null) {
            HandlerThread handlerThread = new HandlerThread("CameraX-scheduler", 10);
            this.mSchedulerThread = handlerThread;
            handlerThread.start();
            this.mSchedulerHandler = HandlerCompat.createAsync(handlerThread.getLooper());
        } else {
            this.mSchedulerThread = null;
            this.mSchedulerHandler = schedulerHandler;
        }
        Integer num = (Integer) this.mCameraXConfig.retrieveOption(CameraXConfig.OPTION_MIN_LOGGING_LEVEL, null);
        this.mMinLogLevel = num;
        increaseMinLogLevelReference(num);
        this.mRetryPolicy = new RetryPolicy.Builder(this.mCameraXConfig.getCameraProviderInitRetryPolicy()).build();
        this.mCameraPresenceProvider = new CameraPresenceProvider(cameraExecutor, CameraXExecutors.newHandlerExecutor(this.mSchedulerHandler));
        this.mRotationProvider = LazyKt.lazy(new Function0() { // from class: androidx.camera.core.CameraX$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CameraX.m1652$r8$lambda$AUcoLkVxZPZPQwDfvjk9zGYTHA(persistentApplicationContext);
            }
        });
        this.mInitInternalFuture = initInternal(persistentApplicationContext);
    }

    /* JADX INFO: renamed from: $r8$lambda$AUcoLk-VxZPZPQwDfvjk9zGYTHA, reason: not valid java name */
    public static /* synthetic */ RotationProvider m1652$r8$lambda$AUcoLkVxZPZPQwDfvjk9zGYTHA(Context context) {
        return new RotationProvider(context);
    }

    public CameraFactory getCameraFactory() {
        CameraFactory cameraFactory = this.mCameraFactory;
        if (cameraFactory != null) {
            return cameraFactory;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("CameraX not initialized yet.");
        return null;
    }

    private static CameraXConfig.Provider getConfigProvider(Context context) {
        ComponentCallbacks2 application = ContextUtil.getApplication(context);
        if (application instanceof CameraXConfig.Provider) {
            return (CameraXConfig.Provider) application;
        }
        try {
            Context persistentApplicationContext = ContextUtil.getPersistentApplicationContext(context);
            Bundle bundle = persistentApplicationContext.getPackageManager().getServiceInfo(new ComponentName(persistentApplicationContext, (Class<?>) MetadataHolderService.class), 640).metaData;
            String string = bundle != null ? bundle.getString("androidx.camera.core.impl.MetadataHolderService.DEFAULT_CONFIG_PROVIDER") : null;
            if (string == null) {
                Logger.m76e("CameraX", "No default CameraXConfig.Provider specified in meta-data. The most likely cause is you did not include a default implementation in your build such as 'camera-camera2'.");
                return null;
            }
            return (CameraXConfig.Provider) Class.forName(string).getDeclaredConstructor(null).newInstance(null);
        } catch (PackageManager.NameNotFoundException e) {
            e = e;
            Logger.m77e("CameraX", "Failed to retrieve default CameraXConfig.Provider from meta-data", e);
            return null;
        } catch (ClassNotFoundException e2) {
            e = e2;
            Logger.m77e("CameraX", "Failed to retrieve default CameraXConfig.Provider from meta-data", e);
            return null;
        } catch (IllegalAccessException e3) {
            e = e3;
            Logger.m77e("CameraX", "Failed to retrieve default CameraXConfig.Provider from meta-data", e);
            return null;
        } catch (InstantiationException e4) {
            e = e4;
            Logger.m77e("CameraX", "Failed to retrieve default CameraXConfig.Provider from meta-data", e);
            return null;
        } catch (NoSuchMethodException e5) {
            e = e5;
            Logger.m77e("CameraX", "Failed to retrieve default CameraXConfig.Provider from meta-data", e);
            return null;
        } catch (NullPointerException e6) {
            e = e6;
            Logger.m77e("CameraX", "Failed to retrieve default CameraXConfig.Provider from meta-data", e);
            return null;
        } catch (InvocationTargetException e7) {
            e = e7;
            Logger.m77e("CameraX", "Failed to retrieve default CameraXConfig.Provider from meta-data", e);
            return null;
        }
    }

    private static void updateQuirkSettings(Context context, QuirkSettings quirkSettings, Function<Context, QuirkSettings> function) {
        if (quirkSettings != null) {
            Logger.m74d("CameraX", "QuirkSettings from CameraXConfig: " + quirkSettings);
        } else {
            quirkSettings = function.apply(context);
            Logger.m74d("CameraX", "QuirkSettings from app metadata: " + quirkSettings);
        }
        if (quirkSettings == null) {
            quirkSettings = QuirkSettingsHolder.DEFAULT;
            Logger.m74d("CameraX", "QuirkSettings by default: " + quirkSettings);
        }
        QuirkSettingsHolder.instance().set(quirkSettings);
    }

    public CameraUseCaseAdapterProvider getCameraUseCaseAdapterProvider() {
        CameraUseCaseAdapterProvider cameraUseCaseAdapterProvider = this.mCameraUseCaseAdapterProvider;
        if (cameraUseCaseAdapterProvider != null) {
            return cameraUseCaseAdapterProvider;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("CameraX not initialized yet.");
        return null;
    }

    public CameraRepository getCameraRepository() {
        return this.mCameraRepository;
    }

    public ListenableFuture<Void> getInitializeFuture() {
        return this.mInitInternalFuture;
    }

    public ListenableFuture<Void> shutdown() {
        return shutdownInternal();
    }

    private ListenableFuture<Void> initInternal(final Context context) {
        ListenableFuture<Void> future;
        synchronized (this.mInitializeLock) {
            Preconditions.checkState(this.mInitState == InternalInitState.UNINITIALIZED, "CameraX.initInternal() should only be called once per instance");
            this.mInitState = InternalInitState.INITIALIZING;
            future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.core.CameraX$$ExternalSyntheticLambda1
                @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                    return CameraX.$r8$lambda$gLtygYQ6ncqgp9GL3DZrb6RJSyE(this.f$0, context, completer);
                }
            });
        }
        return future;
    }

    public static /* synthetic */ Object $r8$lambda$gLtygYQ6ncqgp9GL3DZrb6RJSyE(CameraX cameraX, Context context, CallbackToFutureAdapter.Completer completer) {
        cameraX.initAndRetryRecursively(cameraX.mCameraExecutor, SystemClock.elapsedRealtime(), 1, context, completer);
        return "CameraX initInternal";
    }

    public CameraPresenceProvider getCameraAvailabilityProvider() {
        return this.mCameraPresenceProvider;
    }

    public RotationProvider getRotationProvider() {
        return this.mRotationProvider.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initAndRetryRecursively(final Executor executor, final long j, final int i, final Context context, final CallbackToFutureAdapter.Completer<Void> completer) {
        executor.execute(new Runnable() { // from class: androidx.camera.core.CameraX$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                CameraX.m1653$r8$lambda$rcLbpxfditYP58cYRRHyT98STc(this.f$0, context, executor, i, completer, j);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0171 A[Catch: all -> 0x01d2, TryCatch #1 {all -> 0x01d2, blocks: (B:3:0x0015, B:5:0x001d, B:7:0x003d, B:9:0x005c, B:11:0x0077, B:18:0x0089, B:19:0x00b2, B:21:0x00b8, B:22:0x00c8, B:24:0x00eb, B:25:0x00ee, B:28:0x00f8, B:29:0x0104, B:30:0x0105, B:31:0x0111, B:32:0x0112, B:33:0x011e, B:34:0x011f, B:38:0x0138, B:53:0x01c6, B:39:0x0171, B:40:0x0173, B:43:0x0179, B:45:0x017f, B:46:0x0186, B:48:0x018a, B:49:0x01b6, B:51:0x01ba, B:52:0x01be, B:58:0x01d1, B:41:0x0174, B:42:0x0178), top: B:62:0x0015, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0174 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX INFO: renamed from: $r8$lambda$rcLbpxfditYP58cYRR-HyT98STc, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void m1653$r8$lambda$rcLbpxfditYP58cYRRHyT98STc(final CameraX cameraX, final Context context, final Executor executor, final int i, final CallbackToFutureAdapter.Completer completer, final long j) {
        RetryPolicy.RetryConfig retryConfigOnRetryDecisionRequested;
        cameraX.getClass();
        Trace.beginSection("CX:initAndRetryRecursively");
        try {
            try {
                CameraFactory.Provider cameraFactoryProvider = cameraX.mCameraXConfig.getCameraFactoryProvider(null);
                if (cameraFactoryProvider == null) {
                    throw new InitializationException(new IllegalArgumentException("Invalid app configuration provided. Missing CameraFactory."));
                }
                CameraThreadConfig cameraThreadConfigCreate = CameraThreadConfig.create(cameraX.mCameraExecutor, cameraX.mSchedulerHandler);
                CameraSelector availableCamerasLimiter = cameraX.mCameraXConfig.getAvailableCamerasLimiter(null);
                CameraValidator cameraValidatorCreate = CameraValidator.create(context, availableCamerasLimiter);
                long cameraOpenRetryMaxTimeoutInMillisWhileResuming = cameraX.mCameraXConfig.getCameraOpenRetryMaxTimeoutInMillisWhileResuming();
                UseCaseConfigFactory.Provider useCaseConfigFactoryProvider = cameraX.mCameraXConfig.getUseCaseConfigFactoryProvider(null);
                if (useCaseConfigFactoryProvider == null) {
                    throw new InitializationException(new IllegalArgumentException("Invalid app configuration provided. Missing UseCaseConfigFactory."));
                }
                cameraX.mDefaultConfigFactory = useCaseConfigFactoryProvider.newInstance(context);
                StreamSpecsCalculatorImpl streamSpecsCalculatorImpl = new StreamSpecsCalculatorImpl(cameraX.mDefaultConfigFactory, null);
                cameraX.mStreamSpecsCalculator = streamSpecsCalculatorImpl;
                cameraX.mCameraFactory = cameraFactoryProvider.newInstance(context, cameraThreadConfigCreate, availableCamerasLimiter, cameraOpenRetryMaxTimeoutInMillisWhileResuming, cameraX.mCameraXConfig, streamSpecsCalculatorImpl);
                CameraDeviceSurfaceManager.Provider deviceSurfaceManagerProvider = cameraX.mCameraXConfig.getDeviceSurfaceManagerProvider(null);
                if (deviceSurfaceManagerProvider == null) {
                    throw new InitializationException(new IllegalArgumentException("Invalid app configuration provided. Missing CameraDeviceSurfaceManager."));
                }
                CameraDeviceSurfaceManager cameraDeviceSurfaceManagerNewInstance = deviceSurfaceManagerProvider.newInstance(context, cameraX.mCameraFactory.getCameraManager(), cameraX.mCameraFactory.getAvailableCameraIds());
                cameraX.mSurfaceManager = cameraDeviceSurfaceManagerNewInstance;
                cameraX.mStreamSpecsCalculator.setCameraDeviceSurfaceManager(cameraDeviceSurfaceManagerNewInstance);
                if (executor instanceof CameraExecutor) {
                    ((CameraExecutor) executor).init(cameraX.mCameraFactory);
                }
                cameraX.mCameraRepository.init(cameraX.mCameraFactory);
                CameraCoordinator cameraCoordinator = cameraX.mCameraFactory.getCameraCoordinator();
                cameraCoordinator.init(cameraX.mCameraRepository);
                cameraX.mCameraUseCaseAdapterProvider = new CameraUseCaseAdapterProviderImpl(cameraX.mCameraRepository, cameraCoordinator, cameraX.mDefaultConfigFactory, cameraX.mStreamSpecsCalculator);
                Iterator<CameraInternal> it = cameraX.mCameraRepository.getCameras().iterator();
                while (it.hasNext()) {
                    it.next().getCameraInfoInternal().setCameraUseCaseAdapterProvider(cameraX.mCameraUseCaseAdapterProvider);
                }
                cameraX.mCameraPresenceProvider.startup(cameraValidatorCreate, cameraX.mCameraFactory, cameraX.mCameraRepository);
                cameraX.mCameraPresenceProvider.addDependentInternalListener(cameraX.mSurfaceManager);
                cameraX.mCameraPresenceProvider.addDependentInternalListener(cameraX.mCameraFactory.getCameraCoordinator());
                cameraValidatorCreate.validateOnFirstInit(cameraX.mCameraRepository);
                if (i > 1) {
                    cameraX.traceExecutionState(null);
                }
                cameraX.setStateToInitialized();
                completer.set(null);
            } finally {
                Trace.endSection();
            }
        } catch (InitializationException e) {
            e = e;
            CameraProviderExecutionState cameraProviderExecutionState = new CameraProviderExecutionState(j, i, e);
            retryConfigOnRetryDecisionRequested = cameraX.mRetryPolicy.onRetryDecisionRequested(cameraProviderExecutionState);
            cameraX.traceExecutionState(cameraProviderExecutionState);
            if (retryConfigOnRetryDecisionRequested.shouldRetry() && i < Integer.MAX_VALUE) {
                Logger.m80w("CameraX", "Retry init. Start time " + j + " current time " + SystemClock.elapsedRealtime(), e);
                HandlerCompat.postDelayed(cameraX.mSchedulerHandler, new Runnable() { // from class: androidx.camera.core.CameraX$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.initAndRetryRecursively(executor, j, i + 1, context, completer);
                    }
                }, "retry_token", retryConfigOnRetryDecisionRequested.getRetryDelayInMillis());
            } else {
                synchronized (cameraX.mInitializeLock) {
                    cameraX.mInitState = InternalInitState.INITIALIZING_ERROR;
                }
                if (retryConfigOnRetryDecisionRequested.shouldCompleteWithoutFailure()) {
                    cameraX.setStateToInitialized();
                    completer.set(null);
                } else if (e instanceof CameraValidator.CameraIdListIncorrectException) {
                    String str = "Device reporting less cameras than anticipated. On real devices: Retrying initialization might resolve temporary camera errors. On emulators: Ensure virtual camera configuration matches supported camera features as reported by PackageManager#hasSystemFeature. Available cameras: " + ((CameraValidator.CameraIdListIncorrectException) e).getAvailableCameraCount();
                    Logger.m77e("CameraX", str, e);
                    completer.setException(new InitializationException(new CameraUnavailableException(3, str)));
                } else if (e instanceof InitializationException) {
                    completer.setException(e);
                } else {
                    completer.setException(new InitializationException(e));
                }
            }
            cameraX.mCameraPresenceProvider.shutdown();
        } catch (CameraValidator.CameraIdListIncorrectException e2) {
            e = e2;
            CameraProviderExecutionState cameraProviderExecutionState2 = new CameraProviderExecutionState(j, i, e);
            retryConfigOnRetryDecisionRequested = cameraX.mRetryPolicy.onRetryDecisionRequested(cameraProviderExecutionState2);
            cameraX.traceExecutionState(cameraProviderExecutionState2);
            if (retryConfigOnRetryDecisionRequested.shouldRetry()) {
                synchronized (cameraX.mInitializeLock) {
                }
            }
        } catch (RuntimeException e3) {
            e = e3;
            CameraProviderExecutionState cameraProviderExecutionState22 = new CameraProviderExecutionState(j, i, e);
            retryConfigOnRetryDecisionRequested = cameraX.mRetryPolicy.onRetryDecisionRequested(cameraProviderExecutionState22);
            cameraX.traceExecutionState(cameraProviderExecutionState22);
            if (retryConfigOnRetryDecisionRequested.shouldRetry()) {
            }
        }
    }

    private void setStateToInitialized() {
        synchronized (this.mInitializeLock) {
            this.mInitState = InternalInitState.INITIALIZED;
        }
    }

    private ListenableFuture<Void> shutdownInternal() {
        synchronized (this.mInitializeLock) {
            try {
                this.mSchedulerHandler.removeCallbacksAndMessages("retry_token");
                int iOrdinal = this.mInitState.ordinal();
                if (iOrdinal == 0) {
                    this.mInitState = InternalInitState.SHUTDOWN;
                    return Futures.immediateFuture(null);
                }
                if (iOrdinal == 1) {
                    throw new IllegalStateException("CameraX could not be shutdown when it is initializing.");
                }
                if (iOrdinal == 2 || iOrdinal == 3) {
                    this.mInitState = InternalInitState.SHUTDOWN;
                    decreaseMinLogLevelReference(this.mMinLogLevel);
                    this.mShutdownInternalFuture = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.core.CameraX$$ExternalSyntheticLambda2
                        @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                        public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                            return CameraX.$r8$lambda$V_m79wpNBseSethatrHxRovylmc(this.f$0, completer);
                        }
                    });
                }
                return this.mShutdownInternalFuture;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* synthetic */ Object $r8$lambda$V_m79wpNBseSethatrHxRovylmc(final CameraX cameraX, final CallbackToFutureAdapter.Completer completer) {
        cameraX.mCameraPresenceProvider.shutdown();
        if (cameraX.mRotationProvider.isInitialized()) {
            cameraX.mRotationProvider.getValue().shutdown();
        }
        cameraX.mCameraRepository.deinit().addListener(new Runnable() { // from class: androidx.camera.core.CameraX$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                CameraX.$r8$lambda$8_otjOOyRRm_C0r2Zpi3kJMB9Ok(this.f$0, completer);
            }
        }, cameraX.mCameraExecutor);
        return "CameraX shutdownInternal";
    }

    public static /* synthetic */ void $r8$lambda$8_otjOOyRRm_C0r2Zpi3kJMB9Ok(CameraX cameraX, CallbackToFutureAdapter.Completer completer) {
        cameraX.mCameraFactory.shutdown();
        if (cameraX.mSchedulerThread != null) {
            Executor executor = cameraX.mCameraExecutor;
            if (executor instanceof CameraExecutor) {
                ((CameraExecutor) executor).deinit();
            }
            cameraX.mSchedulerThread.quit();
        }
        completer.set(null);
    }

    private static void increaseMinLogLevelReference(Integer num) {
        synchronized (MIN_LOG_LEVEL_LOCK) {
            try {
                if (num == null) {
                    return;
                }
                Preconditions.checkArgumentInRange(num.intValue(), 3, 6, "minLogLevel");
                SparseArray<Integer> sparseArray = sMinLogLevelReferenceCountMap;
                sparseArray.put(num.intValue(), Integer.valueOf(sparseArray.get(num.intValue()) != null ? 1 + sparseArray.get(num.intValue()).intValue() : 1));
                updateOrResetMinLogLevel();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void decreaseMinLogLevelReference(Integer num) {
        synchronized (MIN_LOG_LEVEL_LOCK) {
            try {
                if (num == null) {
                    return;
                }
                SparseArray<Integer> sparseArray = sMinLogLevelReferenceCountMap;
                int iIntValue = sparseArray.get(num.intValue()).intValue() - 1;
                if (iIntValue == 0) {
                    sparseArray.remove(num.intValue());
                } else {
                    sparseArray.put(num.intValue(), Integer.valueOf(iIntValue));
                }
                updateOrResetMinLogLevel();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void updateOrResetMinLogLevel() {
        SparseArray<Integer> sparseArray = sMinLogLevelReferenceCountMap;
        if (sparseArray.size() == 0) {
            Logger.resetMinLogLevel();
            return;
        }
        if (sparseArray.get(3) != null) {
            Logger.setMinLogLevel(3);
            return;
        }
        if (sparseArray.get(4) != null) {
            Logger.setMinLogLevel(4);
        } else if (sparseArray.get(5) != null) {
            Logger.setMinLogLevel(5);
        } else if (sparseArray.get(6) != null) {
            Logger.setMinLogLevel(6);
        }
    }

    private void traceExecutionState(RetryPolicy.ExecutionState executionState) throws Throwable {
        if (Trace.isEnabled()) {
            Trace.setCounter("CX:CameraProvider-RetryStatus", executionState != null ? executionState.getStatus() : -1);
        }
    }
}
