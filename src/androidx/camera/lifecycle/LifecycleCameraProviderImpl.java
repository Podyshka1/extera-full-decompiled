package androidx.camera.lifecycle;

import android.content.Context;
import androidx.arch.core.util.Function;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraEffect;
import androidx.camera.core.CameraFilter;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraPresenceListener;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraX;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.CompositionSettings;
import androidx.camera.core.ConcurrentCamera;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.Preview;
import androidx.camera.core.SessionConfig;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraConfigs;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraPresenceProvider;
import androidx.camera.core.impl.ExtendedCameraConfigProviderStore;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.lifecycle.LifecycleCameraRepository;
import androidx.core.util.Preconditions;
import androidx.tracing.Trace;
import androidx.view.LifecycleOwner;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Ø\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0010\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0003¢\u0006\u0004\b\u0006\u0010\u0004J#\u0010\u000b\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0003¢\u0006\u0004\b\u000b\u0010\fJG\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J7\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u001a2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010 \u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b \u0010!J\u0017\u0010\"\u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\"\u0010!J\u001f\u0010'\u001a\u00020&2\u0006\u0010#\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020$H\u0002¢\u0006\u0004\b'\u0010(J)\u00100\u001a\b\u0012\u0004\u0012\u00020-0,2\u0006\u0010)\u001a\u00020\t2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010*H\u0000¢\u0006\u0004\b.\u0010/J\u0017\u00103\u001a\u00020\u00052\u0006\u0010+\u001a\u00020*H\u0000¢\u0006\u0004\b1\u00102J\u001f\u00107\u001a\b\u0012\u0004\u0012\u00020-0,2\b\b\u0002\u00104\u001a\u00020\u001fH\u0000¢\u0006\u0004\b5\u00106J\u000f\u00108\u001a\u00020\u0005H\u0017¢\u0006\u0004\b8\u0010\u0004J\u0017\u00109\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\u000fH\u0016¢\u0006\u0004\b9\u0010:J7\u0010=\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u000f2\u0016\u0010<\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u001d0;\"\u0004\u0018\u00010\u001dH\u0017¢\u0006\u0004\b=\u0010>J'\u0010=\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0015H\u0017¢\u0006\u0004\b=\u0010?J\u001f\u0010=\u001a\u00020C2\u000e\u0010B\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010A0@H\u0017¢\u0006\u0004\b=\u0010DJ\u0017\u0010E\u001a\u00020$2\u0006\u0010#\u001a\u00020\u000fH\u0016¢\u0006\u0004\bE\u0010FJ\u001d\u0010J\u001a\u00020\u00052\f\u0010I\u001a\b\u0012\u0004\u0012\u00020H0GH\u0017¢\u0006\u0004\bJ\u0010KJ\u001d\u0010M\u001a\u00020\u00052\f\u0010L\u001a\b\u0012\u0004\u0012\u00020H0GH\u0017¢\u0006\u0004\bM\u0010KR\u0014\u0010N\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010OR*\u0010Q\u001a\u0004\u0018\u00010P8\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\bQ\u0010R\u0012\u0004\bW\u0010\u0004\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR\u001e\u0010X\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010,8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bX\u0010YR$\u0010[\u001a\u0010\u0012\f\u0012\n Z*\u0004\u0018\u00010-0-0,8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b[\u0010YR\u0018\u0010\\\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0018\u0010_\u001a\u0004\u0018\u00010^8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010`R*\u0010)\u001a\u0004\u0018\u00010\t8\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\b)\u0010a\u0012\u0004\bf\u0010\u0004\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR \u0010i\u001a\u000e\u0012\u0004\u0012\u00020H\u0012\u0004\u0012\u00020h0g8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\bi\u0010jR$\u0010n\u001a\u0012\u0012\u0004\u0012\u00020l0kj\b\u0012\u0004\u0012\u00020l`m8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bn\u0010oR\u0014\u0010p\u001a\u00020\u001f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bp\u0010qR$\u0010s\u001a\u00020r2\u0006\u0010s\u001a\u00020r8B@BX\u0082\u000e¢\u0006\f\u001a\u0004\bt\u0010u\"\u0004\bv\u0010wR0\u0010}\u001a\b\u0012\u0004\u0012\u00020$0@2\f\u0010x\u001a\b\u0012\u0004\u0012\u00020$0@8B@BX\u0082\u000e¢\u0006\f\u001a\u0004\by\u0010z\"\u0004\b{\u0010|R\u001a\u0010\u007f\u001a\b\u0012\u0004\u0012\u00020$0@8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b~\u0010zR\"\u0010\u0081\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020$0@0@8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0080\u0001\u0010z¨\u0006\u0082\u0001"}, d2 = {"Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/CameraPresenceListener;", "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "shutdownInternal", "Landroidx/camera/core/CameraX;", "newCameraX", "Landroid/content/Context;", "newContext", "initInternal", "(Landroidx/camera/core/CameraX;Landroid/content/Context;)V", "Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "Landroidx/camera/core/CameraSelector;", "primaryCameraSelector", "secondaryCameraSelector", "Landroidx/camera/core/CompositionSettings;", "primaryCompositionSettings", "secondaryCompositionSettings", "Landroidx/camera/core/SessionConfig;", "sessionConfig", "Landroidx/camera/core/Camera;", "bindToLifecycleInternal", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/SessionConfig;)Landroidx/camera/core/Camera;", "Lkotlin/Pair;", "getSelectorsWithSessionFilter", "(Landroidx/camera/core/SessionConfig;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;)Lkotlin/Pair;", "Landroidx/camera/core/UseCase;", "useCase", _UrlKt.FRAGMENT_ENCODE_SET, "isVideoCapture", "(Landroidx/camera/core/UseCase;)Z", "isPreview", "cameraSelector", "Landroidx/camera/core/CameraInfo;", "cameraInfo", "Landroidx/camera/core/impl/CameraConfig;", "getCameraConfig", "(Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/CameraConfig;", "context", "Landroidx/camera/core/CameraXConfig;", "cameraXConfig", "Lcom/google/common/util/concurrent/ListenableFuture;", "Ljava/lang/Void;", "initAsync$camera_lifecycle", "(Landroid/content/Context;Landroidx/camera/core/CameraXConfig;)Lcom/google/common/util/concurrent/ListenableFuture;", "initAsync", "configure$camera_lifecycle", "(Landroidx/camera/core/CameraXConfig;)V", "configure", "clearConfigProvider", "shutdownAsync$camera_lifecycle", "(Z)Lcom/google/common/util/concurrent/ListenableFuture;", "shutdownAsync", "unbindAll", "hasCamera", "(Landroidx/camera/core/CameraSelector;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "useCases", "bindToLifecycle", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/SessionConfig;)Landroidx/camera/core/Camera;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;", "singleCameraConfigs", "Landroidx/camera/core/ConcurrentCamera;", "(Ljava/util/List;)Landroidx/camera/core/ConcurrentCamera;", "getCameraInfo", "(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/CameraIdentifier;", "addedCameraIds", "onCamerasAdded", "(Ljava/util/Set;)V", "removedCameraIds", "onCamerasRemoved", "lock", "Ljava/lang/Object;", "Landroidx/camera/core/CameraXConfig$Provider;", "cameraXConfigProvider", "Landroidx/camera/core/CameraXConfig$Provider;", "getCameraXConfigProvider$camera_lifecycle", "()Landroidx/camera/core/CameraXConfig$Provider;", "setCameraXConfigProvider$camera_lifecycle", "(Landroidx/camera/core/CameraXConfig$Provider;)V", "getCameraXConfigProvider$camera_lifecycle$annotations", "cameraXInitializeFuture", "Lcom/google/common/util/concurrent/ListenableFuture;", "kotlin.jvm.PlatformType", "cameraXShutdownFuture", "cameraX", "Landroidx/camera/core/CameraX;", "Landroidx/camera/lifecycle/LifecycleCameraRepository;", "lifecycleCameraRepository", "Landroidx/camera/lifecycle/LifecycleCameraRepository;", "Landroid/content/Context;", "getContext$camera_lifecycle", "()Landroid/content/Context;", "setContext$camera_lifecycle", "(Landroid/content/Context;)V", "getContext$camera_lifecycle$annotations", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/AdapterCameraInfo;", "cameraInfoMap", "Ljava/util/Map;", "Ljava/util/HashSet;", "Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;", "Lkotlin/collections/HashSet;", "lifecycleCameraKeys", "Ljava/util/HashSet;", "isInitialized", "()Z", _UrlKt.FRAGMENT_ENCODE_SET, "cameraOperatingMode", "getCameraOperatingMode", "()I", "setCameraOperatingMode", "(I)V", "cameraInfos", "getActiveConcurrentCameraInfos", "()Ljava/util/List;", "setActiveConcurrentCameraInfos", "(Ljava/util/List;)V", "activeConcurrentCameraInfos", "getAvailableCameraInfos", "availableCameraInfos", "getAvailableConcurrentCameraInfos", "availableConcurrentCameraInfos", "camera-lifecycle"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLifecycleCameraProviderImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LifecycleCameraProviderImpl.kt\nandroidx/camera/lifecycle/LifecycleCameraProviderImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Trace.kt\nandroidx/tracing/TraceKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,850:1\n1#2:851\n27#3,5:852\n27#3,5:857\n27#3,5:862\n27#3,5:867\n27#3,5:872\n27#3,5:877\n27#3,5:882\n27#3,5:887\n27#3,5:892\n27#3,5:897\n27#3,5:902\n27#3,3:907\n31#3:912\n27#3,5:913\n1869#4,2:910\n774#4:918\n865#4,2:919\n*S KotlinDebug\n*F\n+ 1 LifecycleCameraProviderImpl.kt\nandroidx/camera/lifecycle/LifecycleCameraProviderImpl\n*L\n163#1:852,5\n228#1:857,5\n245#1:862,5\n259#1:867,5\n267#1:872,5\n283#1:877,5\n306#1:882,5\n329#1:887,5\n349#1:892,5\n495#1:897,5\n506#1:902,5\n605#1:907,3\n605#1:912\n729#1:913,5\n650#1:910,2\n784#1:918\n784#1:919,2\n*E\n"})
public final class LifecycleCameraProviderImpl implements CameraPresenceListener {
    private CameraX cameraX;
    private CameraXConfig.Provider cameraXConfigProvider;
    private ListenableFuture<Void> cameraXInitializeFuture;
    private Context context;
    private LifecycleCameraRepository lifecycleCameraRepository;
    private final Object lock = new Object();
    private ListenableFuture<Void> cameraXShutdownFuture = Futures.immediateFuture(null);
    private final Map<CameraIdentifier, AdapterCameraInfo> cameraInfoMap = new HashMap();
    private final HashSet<LifecycleCameraRepository.Key> lifecycleCameraKeys = new HashSet<>();

    @Override // androidx.camera.core.CameraPresenceListener
    public void onCamerasAdded(Set<CameraIdentifier> addedCameraIds) {
    }

    /* JADX INFO: renamed from: getCameraXConfigProvider$camera_lifecycle, reason: from getter */
    public final CameraXConfig.Provider getCameraXConfigProvider() {
        return this.cameraXConfigProvider;
    }

    public final void setCameraXConfigProvider$camera_lifecycle(CameraXConfig.Provider provider) {
        this.cameraXConfigProvider = provider;
    }

    private final boolean isInitialized() {
        return this.cameraX != null;
    }

    /* JADX INFO: renamed from: getContext$camera_lifecycle, reason: from getter */
    public final Context getContext() {
        return this.context;
    }

    public final ListenableFuture<Void> initAsync$camera_lifecycle(final Context context, CameraXConfig cameraXConfig) {
        synchronized (this.lock) {
            try {
                this.lifecycleCameraRepository = LifecycleCameraRepositories.getInstance$camera_lifecycle(ContextUtil.getDeviceId(context));
                ListenableFuture<Void> listenableFuture = this.cameraXInitializeFuture;
                if (listenableFuture != null) {
                    return listenableFuture;
                }
                if (cameraXConfig != null) {
                    configure$camera_lifecycle(cameraXConfig);
                }
                final CameraX cameraX = new CameraX(context, this.cameraXConfigProvider);
                FutureChain futureChainFrom = FutureChain.from(this.cameraXShutdownFuture);
                final Function1 function1 = new Function1() { // from class: androidx.camera.lifecycle.LifecycleCameraProviderImpl$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return LifecycleCameraProviderImpl.initAsync$lambda$0$1(cameraX, (Void) obj);
                    }
                };
                FutureChain futureChainTransformAsync = futureChainFrom.transformAsync(new AsyncFunction() { // from class: androidx.camera.lifecycle.LifecycleCameraProviderImpl$$ExternalSyntheticLambda1
                    @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
                    public final ListenableFuture apply(Object obj) {
                        return LifecycleCameraProviderImpl.initAsync$lambda$0$2(function1, obj);
                    }
                }, CameraXExecutors.directExecutor());
                final Function1 function12 = new Function1() { // from class: androidx.camera.lifecycle.LifecycleCameraProviderImpl$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return LifecycleCameraProviderImpl.initAsync$lambda$0$3(this.f$0, cameraX, context, (Void) obj);
                    }
                };
                FutureChain futureChainTransform = futureChainTransformAsync.transform(new Function() { // from class: androidx.camera.lifecycle.LifecycleCameraProviderImpl$$ExternalSyntheticLambda3
                    @Override // androidx.arch.core.util.Function
                    public final Object apply(Object obj) {
                        return LifecycleCameraProviderImpl.initAsync$lambda$0$4(function12, obj);
                    }
                }, CameraXExecutors.directExecutor());
                this.cameraXInitializeFuture = futureChainTransform;
                Futures.addCallback(futureChainTransform, new FutureCallback<Void>() { // from class: androidx.camera.lifecycle.LifecycleCameraProviderImpl$initAsync$1$2
                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public void onSuccess(Void r1) {
                    }

                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public void onFailure(Throwable t) {
                        this.this$0.shutdownAsync$camera_lifecycle(false);
                    }
                }, CameraXExecutors.directExecutor());
                return Futures.nonCancellationPropagating(futureChainTransform);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ListenableFuture initAsync$lambda$0$1(CameraX cameraX, Void r1) {
        return cameraX.getInitializeFuture();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ListenableFuture initAsync$lambda$0$2(Function1 function1, Object obj) {
        return (ListenableFuture) function1.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void initAsync$lambda$0$4(Function1 function1, Object obj) {
        return (Void) function1.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void initAsync$lambda$0$3(LifecycleCameraProviderImpl lifecycleCameraProviderImpl, CameraX cameraX, Context context, Void r3) {
        lifecycleCameraProviderImpl.initInternal(cameraX, ContextUtil.getPersistentApplicationContext(context));
        return r3;
    }

    private final void shutdownInternal() {
        initInternal(null, null);
    }

    private final void initInternal(CameraX newCameraX, Context newContext) {
        CameraPresenceProvider cameraAvailabilityProvider;
        synchronized (this.lock) {
            this.cameraX = newCameraX;
            this.context = newContext;
            if (newCameraX != null && (cameraAvailabilityProvider = newCameraX.getCameraAvailabilityProvider()) != null) {
                cameraAvailabilityProvider.addCameraPresenceListener(this, CameraXExecutors.mainThreadExecutor());
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    public final void configure$camera_lifecycle(final CameraXConfig cameraXConfig) {
        Trace.beginSection("CX:configureInstanceInternal");
        try {
            synchronized (this.lock) {
                Preconditions.checkNotNull(cameraXConfig);
                Preconditions.checkState(getCameraXConfigProvider() == null, "CameraX has already been configured. To use a different configuration, shutdown() must be called.");
                setCameraXConfigProvider$camera_lifecycle(new CameraXConfig.Provider() { // from class: androidx.camera.lifecycle.LifecycleCameraProviderImpl$configure$1$1$1
                    @Override // androidx.camera.core.CameraXConfig.Provider
                    public final CameraXConfig getCameraXConfig() {
                        return cameraXConfig;
                    }
                });
                Unit unit = Unit.INSTANCE;
            }
        } finally {
            Trace.endSection();
        }
    }

    public final ListenableFuture<Void> shutdownAsync$camera_lifecycle(boolean clearConfigProvider) {
        ListenableFuture<Void> listenableFutureImmediateFuture;
        Threads.runOnMainSync(new Runnable() { // from class: androidx.camera.lifecycle.LifecycleCameraProviderImpl$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                LifecycleCameraProviderImpl.$r8$lambda$cqEKuAajCjqIPjMA5N0LIeIbAfA(this.f$0);
            }
        });
        if (isInitialized()) {
            this.cameraX.getCameraAvailabilityProvider().removeCameraPresenceListener(this);
            listenableFutureImmediateFuture = this.cameraX.shutdown();
        } else {
            listenableFutureImmediateFuture = Futures.immediateFuture(null);
        }
        synchronized (this.lock) {
            if (clearConfigProvider) {
                try {
                    this.cameraXConfigProvider = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.cameraXInitializeFuture = null;
            this.cameraXShutdownFuture = listenableFutureImmediateFuture;
            this.cameraInfoMap.clear();
            this.lifecycleCameraKeys.clear();
            Unit unit = Unit.INSTANCE;
        }
        shutdownInternal();
        return listenableFutureImmediateFuture;
    }

    public static void $r8$lambda$cqEKuAajCjqIPjMA5N0LIeIbAfA(LifecycleCameraProviderImpl lifecycleCameraProviderImpl) {
        if (lifecycleCameraProviderImpl.isInitialized()) {
            lifecycleCameraProviderImpl.unbindAll();
            lifecycleCameraProviderImpl.lifecycleCameraRepository.removeLifecycleCameras(lifecycleCameraProviderImpl.lifecycleCameraKeys);
        }
    }

    public void unbindAll() {
        Trace.beginSection("CX:unbindAll");
        try {
            Threads.checkMainThread();
            setCameraOperatingMode(0);
            this.lifecycleCameraRepository.unbindAll(this.lifecycleCameraKeys);
            Unit unit = Unit.INSTANCE;
        } finally {
            Trace.endSection();
        }
    }

    public boolean hasCamera(CameraSelector cameraSelector) {
        boolean z;
        Trace.beginSection("CX:hasCamera");
        try {
            cameraSelector.select(this.cameraX.getCameraRepository().getCameras());
            z = true;
        } catch (IllegalArgumentException unused) {
            z = false;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
        Trace.endSection();
        return z;
    }

    public Camera bindToLifecycle(LifecycleOwner lifecycleOwner, CameraSelector cameraSelector, UseCase... useCases) {
        Trace.beginSection("CX:bindToLifecycle");
        try {
            if (getCameraOperatingMode() != 2) {
                setCameraOperatingMode(1);
                return bindToLifecycleInternal$default(this, lifecycleOwner, cameraSelector, null, null, null, new LegacySessionConfig(ArraysKt.filterNotNull(useCases), null, null, 6, null), 28, null);
            }
            throw new UnsupportedOperationException("bindToLifecycle for single camera is not supported in concurrent camera mode, call unbindAll() first");
        } finally {
            Trace.endSection();
        }
    }

    public Camera bindToLifecycle(LifecycleOwner lifecycleOwner, CameraSelector cameraSelector, SessionConfig sessionConfig) {
        Trace.beginSection("CX:bindToLifecycle-SessionConfig");
        try {
            if (getCameraOperatingMode() != 2) {
                setCameraOperatingMode(1);
                return bindToLifecycleInternal$default(this, lifecycleOwner, cameraSelector, null, null, null, sessionConfig, 28, null);
            }
            throw new UnsupportedOperationException("bindToLifecycle for single camera is not supported in concurrent camera mode, call unbindAll() first.");
        } finally {
            Trace.endSection();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x01d8 A[Catch: all -> 0x023a, TryCatch #1 {all -> 0x023a, blocks: (B:3:0x0005, B:5:0x000c, B:7:0x0012, B:10:0x003d, B:12:0x0043, B:14:0x0051, B:16:0x0066, B:18:0x007c, B:19:0x009c, B:21:0x00a2, B:22:0x00b4, B:24:0x00ba, B:26:0x00ca, B:27:0x00ce, B:28:0x00dc, B:64:0x020b, B:29:0x00f6, B:30:0x00fd, B:31:0x00fe, B:32:0x0103, B:33:0x0104, B:35:0x0114, B:37:0x011a, B:38:0x011f, B:39:0x012f, B:41:0x0141, B:44:0x014c, B:45:0x0153, B:46:0x0154, B:48:0x016d, B:50:0x017b, B:52:0x019d, B:58:0x01af, B:63:0x0208, B:54:0x01a3, B:56:0x01a9, B:59:0x01d8, B:60:0x01dc, B:62:0x01e2, B:67:0x0214, B:68:0x021b, B:69:0x021c, B:70:0x0221, B:71:0x0222, B:72:0x0229, B:73:0x022a, B:74:0x0231, B:75:0x0232, B:76:0x0239), top: B:82:0x0005, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ConcurrentCamera bindToLifecycle(List<ConcurrentCamera.SingleCameraConfig> singleCameraConfigs) {
        Trace.beginSection("CX:bindToLifecycle-Concurrent");
        try {
            if (singleCameraConfigs.size() < 2) {
                throw new IllegalArgumentException("Concurrent camera needs two camera configs.");
            }
            if (singleCameraConfigs.size() > 2) {
                throw new IllegalArgumentException("Concurrent camera is only supporting two cameras at maximum.");
            }
            ConcurrentCamera.SingleCameraConfig singleCameraConfig = singleCameraConfigs.get(0);
            ConcurrentCamera.SingleCameraConfig singleCameraConfig2 = singleCameraConfigs.get(1);
            ArrayList arrayList = new ArrayList();
            if (Intrinsics.areEqual(singleCameraConfig.getCameraSelector().getLensFacing(), singleCameraConfig2.getCameraSelector().getLensFacing())) {
                if (getCameraOperatingMode() == 2) {
                    throw new UnsupportedOperationException("Camera is already running, call unbindAll() before binding more cameras.");
                }
                if (Intrinsics.areEqual(singleCameraConfig.getLifecycleOwner(), singleCameraConfig2.getLifecycleOwner())) {
                    singleCameraConfig.getUseCaseGroup().getViewPort();
                    singleCameraConfig2.getUseCaseGroup().getViewPort();
                    if (Intrinsics.areEqual((Object) null, (Object) null) && Intrinsics.areEqual(singleCameraConfig.getUseCaseGroup().getEffects(), singleCameraConfig2.getUseCaseGroup().getEffects())) {
                        LifecycleOwner lifecycleOwner = singleCameraConfig.getLifecycleOwner();
                        CameraSelector cameraSelector = singleCameraConfig.getCameraSelector();
                        singleCameraConfig.getUseCaseGroup().getViewPort();
                        List<CameraEffect> effects = singleCameraConfig.getUseCaseGroup().getEffects();
                        ArrayList arrayList2 = new ArrayList();
                        for (ConcurrentCamera.SingleCameraConfig singleCameraConfig3 : singleCameraConfigs) {
                            for (UseCase useCase : singleCameraConfig3.getUseCaseGroup().getUseCases()) {
                                String physicalCameraId = singleCameraConfig3.getCameraSelector().getPhysicalCameraId();
                                if (physicalCameraId != null) {
                                    useCase.setPhysicalCameraId(physicalCameraId);
                                }
                            }
                            arrayList2.addAll(singleCameraConfig3.getUseCaseGroup().getUseCases());
                        }
                        setCameraOperatingMode(1);
                        arrayList.add(bindToLifecycleInternal$default(this, lifecycleOwner, cameraSelector, null, null, null, new LegacySessionConfig(arrayList2, null, effects), 28, null));
                    }
                }
                throw new IllegalArgumentException("Two camera configs need to have the same lifecycle owner, view port and effects.");
            }
            if (getContext().getPackageManager().hasSystemFeature("android.hardware.camera.concurrent")) {
                if (getCameraOperatingMode() == 1) {
                    throw new UnsupportedOperationException("Camera is already running, call unbindAll() before binding more cameras.");
                }
                ArrayList arrayList3 = new ArrayList();
                try {
                    CameraInfo cameraInfo = getCameraInfo(singleCameraConfig.getCameraSelector());
                    CameraInfo cameraInfo2 = getCameraInfo(singleCameraConfig2.getCameraSelector());
                    arrayList3.add(cameraInfo);
                    arrayList3.add(cameraInfo2);
                    if (!getActiveConcurrentCameraInfos().isEmpty() && !Intrinsics.areEqual(arrayList3, getActiveConcurrentCameraInfos())) {
                        throw new UnsupportedOperationException("Cameras are already running, call unbindAll() before binding more cameras.");
                    }
                    setCameraOperatingMode(2);
                    if (Objects.equals(singleCameraConfig.getUseCaseGroup().getUseCases(), singleCameraConfig2.getUseCaseGroup().getUseCases()) && singleCameraConfig.getUseCaseGroup().getUseCases().size() == 2) {
                        UseCase useCase2 = singleCameraConfig.getUseCaseGroup().getUseCases().get(0);
                        UseCase useCase3 = singleCameraConfig.getUseCaseGroup().getUseCases().get(1);
                        if ((isVideoCapture(useCase2) && isPreview(useCase3)) || (isPreview(useCase2) && isVideoCapture(useCase3))) {
                            arrayList.add(bindToLifecycleInternal(singleCameraConfig.getLifecycleOwner(), singleCameraConfig.getCameraSelector(), singleCameraConfig2.getCameraSelector(), singleCameraConfig.getCompositionSettings(), singleCameraConfig2.getCompositionSettings(), new LegacySessionConfig(singleCameraConfig.getUseCaseGroup())));
                        }
                        setActiveConcurrentCameraInfos(arrayList3);
                    } else {
                        for (ConcurrentCamera.SingleCameraConfig singleCameraConfig4 : singleCameraConfigs) {
                            arrayList.add(bindToLifecycleInternal$default(this, singleCameraConfig4.getLifecycleOwner(), singleCameraConfig4.getCameraSelector(), null, null, null, new LegacySessionConfig(singleCameraConfig4.getUseCaseGroup()), 28, null));
                        }
                        setActiveConcurrentCameraInfos(arrayList3);
                    }
                } catch (IllegalArgumentException unused) {
                    throw new IllegalArgumentException("Invalid camera selectors in camera configs.");
                }
            } else {
                throw new UnsupportedOperationException("Concurrent camera is not supported on the device.");
            }
            return new ConcurrentCamera(arrayList);
        } finally {
            Trace.endSection();
        }
    }

    public List<CameraInfo> getAvailableCameraInfos() {
        Trace.beginSection("CX:getAvailableCameraInfos");
        try {
            ArrayList arrayList = new ArrayList();
            Iterator<CameraInternal> it = this.cameraX.getCameraRepository().getCameras().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getCameraInfo());
            }
            return arrayList;
        } finally {
            Trace.endSection();
        }
    }

    public List<List<CameraInfo>> getAvailableConcurrentCameraInfos() {
        Trace.beginSection("CX:getAvailableConcurrentCameraInfos");
        try {
            Objects.requireNonNull(this.cameraX);
            Objects.requireNonNull(this.cameraX.getCameraFactory().getCameraCoordinator());
            List<List<CameraSelector>> concurrentCameraSelectors = this.cameraX.getCameraFactory().getCameraCoordinator().getConcurrentCameraSelectors();
            ArrayList arrayList = new ArrayList();
            for (List<CameraSelector> list : concurrentCameraSelectors) {
                ArrayList arrayList2 = new ArrayList();
                Iterator<CameraSelector> it = list.iterator();
                while (it.hasNext()) {
                    try {
                        arrayList2.add(getCameraInfo(it.next()));
                    } catch (IllegalArgumentException unused) {
                    }
                }
                arrayList.add(arrayList2);
            }
            return arrayList;
        } finally {
            Trace.endSection();
        }
    }

    public static /* synthetic */ Camera bindToLifecycleInternal$default(LifecycleCameraProviderImpl lifecycleCameraProviderImpl, LifecycleOwner lifecycleOwner, CameraSelector cameraSelector, CameraSelector cameraSelector2, CompositionSettings compositionSettings, CompositionSettings compositionSettings2, SessionConfig sessionConfig, int i, Object obj) {
        if ((i & 4) != 0) {
            cameraSelector2 = null;
        }
        CameraSelector cameraSelector3 = cameraSelector2;
        if ((i & 8) != 0) {
            compositionSettings = CompositionSettings.DEFAULT;
        }
        CompositionSettings compositionSettings3 = compositionSettings;
        if ((i & 16) != 0) {
            compositionSettings2 = CompositionSettings.DEFAULT;
        }
        return lifecycleCameraProviderImpl.bindToLifecycleInternal(lifecycleOwner, cameraSelector, cameraSelector3, compositionSettings3, compositionSettings2, sessionConfig);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Camera bindToLifecycleInternal(LifecycleOwner lifecycleOwner, CameraSelector primaryCameraSelector, CameraSelector secondaryCameraSelector, CompositionSettings primaryCompositionSettings, CompositionSettings secondaryCompositionSettings, SessionConfig sessionConfig) {
        CameraInternal cameraInternal;
        AdapterCameraInfo adapterCameraInfo;
        Trace.beginSection("CX:bindToLifecycle-internal");
        try {
            Threads.checkMainThread();
            Pair selectorsWithSessionFilter = getSelectorsWithSessionFilter(sessionConfig, primaryCameraSelector, secondaryCameraSelector);
            CameraSelector cameraSelector = (CameraSelector) selectorsWithSessionFilter.component1();
            CameraSelector cameraSelector2 = (CameraSelector) selectorsWithSessionFilter.component2();
            CameraInternal cameraInternalSelect = cameraSelector.select(this.cameraX.getCameraRepository().getCameras());
            cameraInternalSelect.setPrimary(true);
            AdapterCameraInfo adapterCameraInfo2 = (AdapterCameraInfo) getCameraInfo(cameraSelector);
            if (cameraSelector2 != null) {
                CameraInternal cameraInternalSelect2 = cameraSelector2.select(this.cameraX.getCameraRepository().getCameras());
                cameraInternalSelect2.setPrimary(false);
                adapterCameraInfo = (AdapterCameraInfo) getCameraInfo(cameraSelector2);
                cameraInternal = cameraInternalSelect2;
            } else {
                cameraInternal = null;
                adapterCameraInfo = null;
            }
            CameraIdentifier cameraIdentifierFromAdapterInfos = CameraIdentifier.Factory.fromAdapterInfos(adapterCameraInfo2, adapterCameraInfo);
            LifecycleCamera lifecycleCamera = this.lifecycleCameraRepository.getLifecycleCamera(lifecycleOwner, cameraIdentifierFromAdapterInfos);
            Collection<LifecycleCamera> lifecycleCameras = this.lifecycleCameraRepository.getLifecycleCameras();
            for (UseCase useCase : sessionConfig.getUseCases()) {
                for (LifecycleCamera lifecycleCamera2 : lifecycleCameras) {
                    if (lifecycleCamera2.isBound(useCase) && !Intrinsics.areEqual(lifecycleCamera2.getLifecycleOwner(), lifecycleOwner)) {
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        throw new IllegalStateException(String.format("Use case %s already bound to a different lifecycle.", Arrays.copyOf(new Object[]{useCase}, 1)));
                    }
                }
            }
            if (lifecycleCamera == null) {
                lifecycleCamera = this.lifecycleCameraRepository.createLifecycleCamera(lifecycleOwner, this.cameraX.getCameraUseCaseAdapterProvider().provide(cameraInternalSelect, cameraInternal, adapterCameraInfo2, adapterCameraInfo, primaryCompositionSettings, secondaryCompositionSettings), this.cameraX.getRotationProvider());
            }
            if (!sessionConfig.getUseCases().isEmpty()) {
                this.lifecycleCameraRepository.bindToLifecycleCamera(lifecycleCamera, sessionConfig, this.cameraX.getCameraFactory().getCameraCoordinator());
                this.lifecycleCameraKeys.add(LifecycleCameraRepository.Key.create(lifecycleOwner, cameraIdentifierFromAdapterInfos));
            }
            return lifecycleCamera;
        } finally {
            Trace.endSection();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Pair<CameraSelector, CameraSelector> getSelectorsWithSessionFilter(SessionConfig sessionConfig, CameraSelector primaryCameraSelector, CameraSelector secondaryCameraSelector) {
        CameraFilter cameraFilter = sessionConfig.getCameraFilter();
        if (cameraFilter == null) {
            return TuplesKt.to(primaryCameraSelector, secondaryCameraSelector);
        }
        return TuplesKt.to(CameraSelector.Builder.fromSelector(primaryCameraSelector).addCameraFilter(cameraFilter).build(), secondaryCameraSelector != null ? CameraSelector.Builder.fromSelector(secondaryCameraSelector).addCameraFilter(cameraFilter).build() : null);
    }

    public CameraInfo getCameraInfo(CameraSelector cameraSelector) {
        Object adapterCameraInfo;
        Trace.beginSection("CX:getCameraInfo");
        try {
            CameraInfoInternal cameraInfoInternal = cameraSelector.select(this.cameraX.getCameraRepository().getCameras()).getCameraInfo();
            CameraConfig cameraConfig = getCameraConfig(cameraSelector, cameraInfoInternal);
            CameraIdentifier cameraIdentifierCreate = CameraIdentifier.Factory.create(cameraInfoInternal.getCameraId(), null, cameraConfig.getCompatibilityId());
            synchronized (this.lock) {
                try {
                    adapterCameraInfo = this.cameraInfoMap.get(cameraIdentifierCreate);
                    if (adapterCameraInfo == null) {
                        adapterCameraInfo = new AdapterCameraInfo(cameraInfoInternal, cameraConfig);
                        this.cameraInfoMap.put(cameraIdentifierCreate, adapterCameraInfo);
                    }
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return (AdapterCameraInfo) adapterCameraInfo;
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.camera.core.CameraPresenceListener
    public void onCamerasRemoved(Set<CameraIdentifier> removedCameraIds) {
        Threads.checkMainThread();
        synchronized (this.lock) {
            try {
                for (CameraIdentifier cameraIdentifier : removedCameraIds) {
                    Set<CameraIdentifier> setKeySet = this.cameraInfoMap.keySet();
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : setKeySet) {
                        if (Intrinsics.areEqual(((CameraIdentifier) obj).getCameraIds(), cameraIdentifier.getCameraIds())) {
                            arrayList.add(obj);
                        }
                    }
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj2 = arrayList.get(i);
                        i++;
                        this.cameraInfoMap.remove((CameraIdentifier) obj2);
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isVideoCapture(UseCase useCase) {
        return useCase.getCurrentConfig().containsOption(UseCaseConfig.OPTION_CAPTURE_TYPE) && useCase.getCurrentConfig().getCaptureType() == UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isPreview(UseCase useCase) {
        return useCase instanceof Preview;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CameraConfig getCameraConfig(CameraSelector cameraSelector, CameraInfo cameraInfo) {
        CameraConfig config;
        CameraConfig cameraConfig = null;
        for (CameraFilter cameraFilter : cameraSelector.getCameraFilterSet()) {
            if (!Intrinsics.areEqual(cameraFilter.getIdentifier(), CameraFilter.DEFAULT_ID) && (config = ExtendedCameraConfigProviderStore.getConfigProvider(cameraFilter.getIdentifier()).getConfig(cameraInfo, this.context)) != null) {
                if (cameraConfig != null) {
                    f$$ExternalSyntheticBUOutline1.m212m("Cannot apply multiple extended camera configs at the same time.");
                    return null;
                }
                cameraConfig = config;
            }
        }
        return cameraConfig == null ? CameraConfigs.defaultConfig() : cameraConfig;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getCameraOperatingMode() {
        if (isInitialized()) {
            return this.cameraX.getCameraFactory().getCameraCoordinator().getCameraOperatingMode();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setCameraOperatingMode(int i) {
        if (isInitialized()) {
            this.cameraX.getCameraFactory().getCameraCoordinator().setCameraOperatingMode(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<CameraInfo> getActiveConcurrentCameraInfos() {
        return isInitialized() ? this.cameraX.getCameraFactory().getCameraCoordinator().getActiveConcurrentCameraInfos() : CollectionsKt.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setActiveConcurrentCameraInfos(List<? extends CameraInfo> list) {
        if (isInitialized()) {
            this.cameraX.getCameraFactory().getCameraCoordinator().setActiveConcurrentCameraInfos(list);
        }
    }
}
