package androidx.camera.core.impl;

import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraPresenceListener;
import androidx.camera.core.CameraState;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraFactory;
import androidx.camera.core.impl.CameraPresenceProvider;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.view.LiveData;
import androidx.view.Observer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \\2\u00020\u0001:\u0003]^\\B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\f\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002¢\u0006\u0004\b\f\u0010\rJ+\u0010\u0011\u001a\u00020\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\u000e2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ%\u0010 \u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001d2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002¢\u0006\u0004\b \u0010!J\u0017\u0010\"\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\"\u0010\u0016J\u000f\u0010#\u001a\u00020\u000bH\u0002¢\u0006\u0004\b#\u0010\u001cJ\u001d\u0010%\u001a\u00020\u000b2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\t0\u000eH\u0002¢\u0006\u0004\b%\u0010&J\u001d\u0010(\u001a\u00020\u000b2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\t0\u000eH\u0002¢\u0006\u0004\b(\u0010&J%\u0010/\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020)2\u0006\u0010,\u001a\u00020+2\u0006\u0010.\u001a\u00020-¢\u0006\u0004\b/\u00100J\r\u00101\u001a\u00020\u000b¢\u0006\u0004\b1\u0010\u001cJ\u0015\u00104\u001a\u00020\u000b2\u0006\u00103\u001a\u000202¢\u0006\u0004\b4\u00105J\u001d\u00108\u001a\u00020\u000b2\u0006\u00103\u001a\u0002062\u0006\u00107\u001a\u00020\u0002¢\u0006\u0004\b8\u00109J\u0015\u0010:\u001a\u00020\u000b2\u0006\u00103\u001a\u000206¢\u0006\u0004\b:\u0010;R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010<R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010=R\u0014\u0010>\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R\u0014\u0010@\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010?R\u001c\u0010B\u001a\b\u0012\u0002\b\u0003\u0018\u00010A8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0018\u0010,\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010DR\u0018\u0010.\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010ER$\u0010G\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0018\u0010*\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010IR\u0018\u0010K\u001a\u00060JR\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bK\u0010LR\u001c\u0010M\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0014\u0010P\u001a\u00020O8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010QR\u001a\u0010S\u001a\b\u0012\u0004\u0012\u0002020R8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010TR\u001a\u0010V\u001a\b\u0012\u0004\u0012\u00020U0R8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bV\u0010TR&\u0010Z\u001a\u0014\u0012\u0004\u0012\u00020\u0013\u0012\n\u0012\b\u0012\u0004\u0012\u00020Y0X0W8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\bZ\u0010[¨\u0006_"}, d2 = {"Landroidx/camera/core/impl/CameraPresenceProvider;", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/util/concurrent/Executor;", "backgroundExecutor", "Ljava/util/concurrent/ScheduledExecutorService;", "scheduledExecutor", "<init>", "(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/CameraIdentifier;", "newFilteredIdentifiers", _UrlKt.FRAGMENT_ENCODE_SET, "processFilteredCameraIdUpdate", "(Ljava/util/List;)V", _UrlKt.FRAGMENT_ENCODE_SET, "addedCameras", "removedCameras", "notifyPublicListeners", "(Ljava/util/Set;Ljava/util/Set;)V", _UrlKt.FRAGMENT_ENCODE_SET, "systemCameraId", "conditionallySetupCameraStateObserver", "(Ljava/lang/String;)V", "Landroidx/camera/core/impl/CameraInfoInternal;", "cameraInfoInternal", "setupCameraStateObserver", "(Landroidx/camera/core/impl/CameraInfoInternal;)V", "triggerRefreshWithRetries", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "attemptsLeft", "initialIds", "scheduleRetryAttempt", "(ILjava/util/List;)V", "removeCameraStateObserver", "clearAllCameraStateObservers", "addedIds", "notifyPublicCamerasAdded", "(Ljava/util/Set;)V", "removedIds", "notifyPublicCamerasRemoved", "Landroidx/camera/core/impl/CameraValidator;", "cameraValidator", "Landroidx/camera/core/impl/CameraFactory;", "cameraFactory", "Landroidx/camera/core/impl/CameraRepository;", "cameraRepository", "startup", "(Landroidx/camera/core/impl/CameraValidator;Landroidx/camera/core/impl/CameraFactory;Landroidx/camera/core/impl/CameraRepository;)V", "shutdown", "Landroidx/camera/core/impl/InternalCameraPresenceListener;", "listener", "addDependentInternalListener", "(Landroidx/camera/core/impl/InternalCameraPresenceListener;)V", "Landroidx/camera/core/CameraPresenceListener;", "executor", "addCameraPresenceListener", "(Landroidx/camera/core/CameraPresenceListener;Ljava/util/concurrent/Executor;)V", "removeCameraPresenceListener", "(Landroidx/camera/core/CameraPresenceListener;)V", "Ljava/util/concurrent/Executor;", "Ljava/util/concurrent/ScheduledExecutorService;", "observerLock", "Ljava/lang/Object;", "retryLock", "Ljava/util/concurrent/ScheduledFuture;", "retryScanFuture", "Ljava/util/concurrent/ScheduledFuture;", "Landroidx/camera/core/impl/CameraFactory;", "Landroidx/camera/core/impl/CameraRepository;", "Landroidx/camera/core/impl/Observable;", "sourcePresenceObservable", "Landroidx/camera/core/impl/Observable;", "Landroidx/camera/core/impl/CameraValidator;", "Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;", "sourceObserver", "Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;", "currentFilteredIds", "Ljava/util/List;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isMonitoring", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Ljava/util/concurrent/CopyOnWriteArrayList;", "dependentInternalListeners", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;", "publicApiListeners", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/lifecycle/Observer;", "Landroidx/camera/core/CameraState;", "cameraStateObservers", "Ljava/util/Map;", "Companion", "ListenerWrapper", "SourceObservableObserver", "camera-core"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraPresenceProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraPresenceProvider.kt\nandroidx/camera/core/impl/CameraPresenceProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,478:1\n1563#2:479\n1634#2,3:480\n1563#2:483\n1634#2,3:484\n1869#2,2:487\n1869#2,2:489\n1869#2,2:491\n1563#2:493\n1634#2,3:494\n1869#2,2:497\n1869#2,2:499\n1869#2,2:501\n1617#2,9:503\n1869#2:512\n1870#2:514\n1626#2:515\n1869#2,2:518\n1869#2,2:520\n1869#2,2:522\n295#2,2:524\n1#3:513\n216#4,2:516\n*S KotlinDebug\n*F\n+ 1 CameraPresenceProvider.kt\nandroidx/camera/core/impl/CameraPresenceProvider\n*L\n89#1:479\n89#1:480,3\n221#1:483\n221#1:484,3\n225#1:487,2\n238#1:489,2\n246#1:491,2\n251#1:493\n251#1:494,3\n254#1:497,2\n265#1:499,2\n266#1:501,2\n427#1:503,9\n427#1:512\n427#1:514\n427#1:515\n461#1:518,2\n467#1:520,2\n95#1:522,2\n433#1:524,2\n427#1:513\n429#1:516,2\n*E\n"})
public final class CameraPresenceProvider {
    private final Executor backgroundExecutor;
    private CameraFactory cameraFactory;
    private CameraRepository cameraRepository;
    private CameraValidator cameraValidator;
    private ScheduledFuture<?> retryScanFuture;
    private final ScheduledExecutorService scheduledExecutor;
    private Observable<List<CameraIdentifier>> sourcePresenceObservable;
    private final Object observerLock = new Object();
    private final Object retryLock = new Object();
    private final SourceObservableObserver sourceObserver = new SourceObservableObserver();
    private volatile List<CameraIdentifier> currentFilteredIds = CollectionsKt.emptyList();
    private final AtomicBoolean isMonitoring = new AtomicBoolean(false);
    private final CopyOnWriteArrayList<InternalCameraPresenceListener> dependentInternalListeners = new CopyOnWriteArrayList<>();
    private final CopyOnWriteArrayList<ListenerWrapper> publicApiListeners = new CopyOnWriteArrayList<>();
    private final Map<String, Observer<CameraState>> cameraStateObservers = new LinkedHashMap();

    public CameraPresenceProvider(Executor executor, ScheduledExecutorService scheduledExecutorService) {
        this.backgroundExecutor = executor;
        this.scheduledExecutor = scheduledExecutorService;
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0082\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/CameraPresenceListener;", "listener", "Ljava/util/concurrent/Executor;", "executor", "<init>", "(Landroidx/camera/core/CameraPresenceListener;Ljava/util/concurrent/Executor;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Landroidx/camera/core/CameraPresenceListener;", "getListener", "()Landroidx/camera/core/CameraPresenceListener;", "Ljava/util/concurrent/Executor;", "getExecutor", "()Ljava/util/concurrent/Executor;", "camera-core"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class ListenerWrapper {
        private final Executor executor;
        private final CameraPresenceListener listener;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ListenerWrapper)) {
                return false;
            }
            ListenerWrapper listenerWrapper = (ListenerWrapper) other;
            return Intrinsics.areEqual(this.listener, listenerWrapper.listener) && Intrinsics.areEqual(this.executor, listenerWrapper.executor);
        }

        public int hashCode() {
            return (this.listener.hashCode() * 31) + this.executor.hashCode();
        }

        public String toString() {
            return "ListenerWrapper(listener=" + this.listener + ", executor=" + this.executor + ')';
        }

        public ListenerWrapper(CameraPresenceListener cameraPresenceListener, Executor executor) {
            this.listener = cameraPresenceListener;
            this.executor = executor;
        }

        public final Executor getExecutor() {
            return this.executor;
        }

        public final CameraPresenceListener getListener() {
            return this.listener;
        }
    }

    public final void startup(CameraValidator cameraValidator, CameraFactory cameraFactory, CameraRepository cameraRepository) {
        if (this.isMonitoring.compareAndSet(false, true)) {
            Logger.m78i("CameraPresencePrvdr", "Starting CameraPresenceProvider monitoring.");
            this.cameraValidator = cameraValidator;
            Set<String> availableCameraIds = cameraFactory.getAvailableCameraIds();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(availableCameraIds, 10));
            Iterator<T> it = availableCameraIds.iterator();
            while (it.hasNext()) {
                arrayList.add(CameraIdentifier.Factory.create$default((String) it.next(), null, null, 6, null));
            }
            this.currentFilteredIds = arrayList;
            this.cameraFactory = cameraFactory;
            this.cameraRepository = cameraRepository;
            this.sourcePresenceObservable = cameraFactory.getCameraPresenceSource();
            this.backgroundExecutor.execute(new Runnable() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    CameraPresenceProvider.m1720$r8$lambda$te2u7cAesgfpnEhgwA1yKuyRHo(this.f$0);
                }
            });
            Observable<List<CameraIdentifier>> observable = this.sourcePresenceObservable;
            if (observable != null) {
                observable.addObserver(CameraXExecutors.newSequentialExecutor(this.backgroundExecutor), this.sourceObserver);
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$te2u7cAesgfp-nEhgwA1yKuyRHo, reason: not valid java name */
    public static void m1720$r8$lambda$te2u7cAesgfpnEhgwA1yKuyRHo(CameraPresenceProvider cameraPresenceProvider) {
        Iterator<T> it = cameraPresenceProvider.currentFilteredIds.iterator();
        while (it.hasNext()) {
            cameraPresenceProvider.conditionallySetupCameraStateObserver(((CameraIdentifier) it.next()).getInternalId());
        }
    }

    public final void shutdown() {
        if (!this.isMonitoring.getAndSet(false)) {
            Logger.m74d("CameraPresencePrvdr", "Shutdown called when not monitoring. Ignoring.");
            return;
        }
        Logger.m78i("CameraPresencePrvdr", "Shutting down CameraPresenceProvider monitoring.");
        synchronized (this.retryLock) {
            try {
                ScheduledFuture<?> scheduledFuture = this.retryScanFuture;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                this.retryScanFuture = null;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        Observable<List<CameraIdentifier>> observable = this.sourcePresenceObservable;
        if (observable != null) {
            observable.removeObserver(this.sourceObserver);
        }
        clearAllCameraStateObservers();
        this.cameraValidator = null;
        this.dependentInternalListeners.clear();
        this.publicApiListeners.clear();
        this.currentFilteredIds = CollectionsKt.emptyList();
        this.cameraFactory = null;
        this.cameraRepository = null;
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\b\u0082\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, d2 = {"Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;", "Landroidx/camera/core/impl/Observable$Observer;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/CameraIdentifier;", "<init>", "(Landroidx/camera/core/impl/CameraPresenceProvider;)V", "onNewData", _UrlKt.FRAGMENT_ENCODE_SET, "rawCameraIdentifiers", "onError", "t", _UrlKt.FRAGMENT_ENCODE_SET, "camera-core"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCameraPresenceProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraPresenceProvider.kt\nandroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,478:1\n1563#2:479\n1634#2,3:480\n1563#2:483\n1634#2,3:484\n1563#2:487\n1634#2,3:488\n*S KotlinDebug\n*F\n+ 1 CameraPresenceProvider.kt\nandroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver\n*L\n137#1:479\n137#1:480,3\n144#1:483\n144#1:484,3\n179#1:487\n179#1:488,3\n*E\n"})
    public final class SourceObservableObserver implements Observable.Observer<List<? extends CameraIdentifier>> {
        public SourceObservableObserver() {
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public /* bridge */ /* synthetic */ void onNewData(List<? extends CameraIdentifier> list) {
            onNewData2((List<CameraIdentifier>) list);
        }

        /* JADX INFO: renamed from: onNewData, reason: avoid collision after fix types in other method */
        public void onNewData2(List<CameraIdentifier> rawCameraIdentifiers) {
            CameraFactory cameraFactory;
            CameraRepository cameraRepository;
            CameraValidator cameraValidator;
            List<String> listEmptyList;
            if (!CameraPresenceProvider.this.isMonitoring.get() || (cameraFactory = CameraPresenceProvider.this.cameraFactory) == null || (cameraRepository = CameraPresenceProvider.this.cameraRepository) == null || (cameraValidator = CameraPresenceProvider.this.cameraValidator) == null) {
                return;
            }
            if (rawCameraIdentifiers != null) {
                List<CameraIdentifier> list = rawCameraIdentifiers;
                listEmptyList = new ArrayList<>(CollectionsKt.collectionSizeOrDefault(list, 10));
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    listEmptyList.add(((CameraIdentifier) it.next()).getInternalId());
                }
            } else {
                listEmptyList = CollectionsKt.emptyList();
            }
            if (cameraFactory instanceof CameraFactory.Interrogator) {
                try {
                    List list2 = CameraPresenceProvider.this.currentFilteredIds;
                    List<String> availableCameraIds = ((CameraFactory.Interrogator) cameraFactory).getAvailableCameraIds(listEmptyList);
                    ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(availableCameraIds, 10));
                    Iterator<T> it2 = availableCameraIds.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(CameraIdentifier.Factory.create$default((String) it2.next(), null, null, 6, null));
                    }
                    Set<CameraIdentifier> setMinus = SetsKt.minus(CollectionsKt.toSet(list2), (Iterable) CollectionsKt.toSet(arrayList));
                    if (!setMinus.isEmpty() && cameraValidator.isChangeInvalid(cameraRepository.getCameras(), setMinus)) {
                        Logger.m79w("CameraPresencePrvdr", "Camera removal update invalid. Aborting.");
                        return;
                    }
                } catch (Exception e) {
                    Logger.m80w("CameraPresencePrvdr", "Failed to interrogate camera factory. Falling back to full update.", e);
                }
            }
            try {
                cameraFactory.onCameraIdsUpdated(listEmptyList);
                Set<String> availableCameraIds2 = cameraFactory.getAvailableCameraIds();
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(availableCameraIds2, 10));
                Iterator<T> it3 = availableCameraIds2.iterator();
                while (it3.hasNext()) {
                    arrayList2.add(CameraIdentifier.Factory.create$default((String) it3.next(), null, null, 6, null));
                }
                if (Intrinsics.areEqual(arrayList2, CameraPresenceProvider.this.currentFilteredIds)) {
                    return;
                }
                CameraPresenceProvider.this.processFilteredCameraIdUpdate(arrayList2);
            } catch (Exception e2) {
                Logger.m80w("CameraPresencePrvdr", "CameraFactory failed to update. The camera list may be stale until the next update.", e2);
            }
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public void onError(Throwable t) {
            if (CameraPresenceProvider.this.isMonitoring.get()) {
                Logger.m77e("CameraPresencePrvdr", "Error from source camera presence observable. Triggering refresh.", t);
                Observable observable = CameraPresenceProvider.this.sourcePresenceObservable;
                if (observable != null) {
                    observable.fetchData();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processFilteredCameraIdUpdate(List<CameraIdentifier> newFilteredIdentifiers) {
        List list = CollectionsKt.toList(this.currentFilteredIds);
        if (Intrinsics.areEqual(newFilteredIdentifiers, list)) {
            return;
        }
        synchronized (this.retryLock) {
            try {
                if (this.retryScanFuture != null) {
                    Logger.m74d("CameraPresencePrvdr", "Camera list updated. Cancelling any pending retries.");
                    this.retryScanFuture.cancel(false);
                    this.retryScanFuture = null;
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        List list2 = list;
        Set set = CollectionsKt.toSet(list2);
        List<CameraIdentifier> list3 = newFilteredIdentifiers;
        Set set2 = CollectionsKt.toSet(list3);
        Set<CameraIdentifier> setMinus = SetsKt.minus(set2, (Iterable) set);
        Set<CameraIdentifier> setMinus2 = SetsKt.minus(set, (Iterable) set2);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
        Iterator<T> it = list3.iterator();
        while (it.hasNext()) {
            arrayList2.add(((CameraIdentifier) it.next()).getInternalId());
        }
        try {
            Iterator<T> it2 = setMinus2.iterator();
            while (it2.hasNext()) {
                removeCameraStateObserver(((CameraIdentifier) it2.next()).getInternalId());
            }
            CameraRepository cameraRepository = this.cameraRepository;
            if (cameraRepository != null) {
                Logger.m74d("CameraPresencePrvdr", "Updating CameraRepository...");
                cameraRepository.onCamerasUpdated(arrayList2);
                arrayList.add(cameraRepository);
                Logger.m74d("CameraPresencePrvdr", "CameraRepository updated successfully.");
            }
            if (!this.dependentInternalListeners.isEmpty()) {
                Logger.m74d("CameraPresencePrvdr", "Updating " + this.dependentInternalListeners.size() + " dependent listeners...");
                for (InternalCameraPresenceListener internalCameraPresenceListener : this.dependentInternalListeners) {
                    internalCameraPresenceListener.onCamerasUpdated(arrayList2);
                    arrayList.add(internalCameraPresenceListener);
                }
            }
            this.currentFilteredIds = newFilteredIdentifiers;
            Iterator<T> it3 = setMinus.iterator();
            while (it3.hasNext()) {
                conditionallySetupCameraStateObserver(((CameraIdentifier) it3.next()).getInternalId());
            }
            notifyPublicListeners(setMinus, setMinus2);
        } catch (Exception e) {
            Logger.m77e("CameraPresencePrvdr", "A core module failed to update. Rolling back changes.", e);
            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            Iterator it4 = list2.iterator();
            while (it4.hasNext()) {
                arrayList3.add(((CameraIdentifier) it4.next()).getInternalId());
            }
            for (InternalCameraPresenceListener internalCameraPresenceListener2 : CollectionsKt.asReversedMutable(arrayList)) {
                try {
                    internalCameraPresenceListener2.onCamerasUpdated(arrayList3);
                } catch (Exception e2) {
                    Logger.m77e("CameraPresencePrvdr", "Failed to rollback listener: " + internalCameraPresenceListener2, e2);
                }
            }
            Iterator<T> it5 = setMinus2.iterator();
            while (it5.hasNext()) {
                conditionallySetupCameraStateObserver(((CameraIdentifier) it5.next()).getInternalId());
            }
            Iterator<T> it6 = setMinus.iterator();
            while (it6.hasNext()) {
                removeCameraStateObserver(((CameraIdentifier) it6.next()).getInternalId());
            }
        }
    }

    private final void notifyPublicListeners(Set<CameraIdentifier> addedCameras, Set<CameraIdentifier> removedCameras) {
        if (!addedCameras.isEmpty()) {
            Logger.m78i("CameraPresencePrvdr", "Notifying " + addedCameras.size() + " cameras added.");
            notifyPublicCamerasAdded(addedCameras);
        }
        if (removedCameras.isEmpty()) {
            return;
        }
        Logger.m78i("CameraPresencePrvdr", "Notifying " + removedCameras.size() + " cameras removed.");
        notifyPublicCamerasRemoved(removedCameras);
    }

    public final void addDependentInternalListener(InternalCameraPresenceListener listener) {
        this.dependentInternalListeners.add(listener);
    }

    private final void conditionallySetupCameraStateObserver(String systemCameraId) {
        CameraRepository cameraRepository = this.cameraRepository;
        if (cameraRepository == null) {
            return;
        }
        try {
            setupCameraStateObserver(cameraRepository.getCamera(systemCameraId).getCameraInfoInternal());
        } catch (IllegalArgumentException unused) {
            Logger.m79w("CameraPresencePrvdr", "CameraInternal not found for " + systemCameraId + ". Cannot setup state observer.");
        }
    }

    private final void setupCameraStateObserver(final CameraInfoInternal cameraInfoInternal) {
        final String cameraId = cameraInfoInternal.getCameraId();
        if (this.isMonitoring.get()) {
            synchronized (this.observerLock) {
                if (this.cameraStateObservers.containsKey(cameraId)) {
                    return;
                }
                final Observer<CameraState> observer = new Observer() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda4
                    @Override // androidx.view.Observer
                    public final void onChanged(Object obj) {
                        CameraPresenceProvider.setupCameraStateObserver$lambda$0$0(this.f$0, cameraId, (CameraState) obj);
                    }
                };
                CameraXExecutors.mainThreadExecutor().execute(new Runnable() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        CameraPresenceProvider.setupCameraStateObserver$lambda$0$1(cameraInfoInternal, observer);
                    }
                });
                this.cameraStateObservers.put(cameraId, observer);
                Logger.m74d("CameraPresencePrvdr", "Registered state observer for camera: " + cameraId);
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupCameraStateObserver$lambda$0$0(final CameraPresenceProvider cameraPresenceProvider, String str, CameraState cameraState) {
        if (!cameraPresenceProvider.isMonitoring.get()) {
            Logger.m74d("CameraPresencePrvdr", "Ignore camera state change handling since already stop monitoring");
            return;
        }
        if (cameraState.getError() != null) {
            StringBuilder sb = new StringBuilder("Camera ");
            sb.append(str);
            sb.append(" state changed to ");
            sb.append(cameraState.getType());
            sb.append(" with error: ");
            CameraState.StateError error = cameraState.getError();
            sb.append(error != null ? Integer.valueOf(error.getCode()) : null);
            sb.append(". Triggering refresh.");
            Logger.m79w("CameraPresencePrvdr", sb.toString());
            cameraPresenceProvider.backgroundExecutor.execute(new Runnable() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.triggerRefreshWithRetries();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupCameraStateObserver$lambda$0$1(CameraInfoInternal cameraInfoInternal, Observer observer) {
        cameraInfoInternal.getCameraState().observeForever(observer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void triggerRefreshWithRetries() {
        synchronized (this.retryLock) {
            try {
                ScheduledFuture<?> scheduledFuture = this.retryScanFuture;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                Logger.m74d("CameraPresencePrvdr", "Starting new refresh-with-retries sequence.");
                scheduleRetryAttempt(3, this.currentFilteredIds);
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void scheduleRetryAttempt(final int attemptsLeft, final List<CameraIdentifier> initialIds) {
        if (attemptsLeft > 0 && this.isMonitoring.get()) {
            this.retryScanFuture = this.scheduledExecutor.schedule(new Runnable() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    CameraPresenceProvider cameraPresenceProvider = this.f$0;
                    cameraPresenceProvider.backgroundExecutor.execute(new Runnable() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda11
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraPresenceProvider.scheduleRetryAttempt$lambda$0$0(this.f$0, list, i);
                        }
                    });
                }
            }, attemptsLeft == 3 ? 0L : 400L, TimeUnit.MILLISECONDS);
        } else if (attemptsLeft <= 0) {
            Logger.m79w("CameraPresencePrvdr", "Exhausted all retries for camera list refresh.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void scheduleRetryAttempt$lambda$0$0(CameraPresenceProvider cameraPresenceProvider, List list, int i) {
        if (cameraPresenceProvider.isMonitoring.get() && Intrinsics.areEqual(cameraPresenceProvider.currentFilteredIds, list)) {
            Logger.m74d("CameraPresencePrvdr", "Triggering refresh. Attempts left: " + i);
            Observable<List<CameraIdentifier>> observable = cameraPresenceProvider.sourcePresenceObservable;
            if (observable != null) {
                observable.fetchData();
            }
            cameraPresenceProvider.scheduleRetryAttempt(i - 1, list);
        }
    }

    private final void removeCameraStateObserver(String systemCameraId) {
        synchronized (this.observerLock) {
            final Observer<CameraState> observerRemove = this.cameraStateObservers.remove(systemCameraId);
            CameraRepository cameraRepository = this.cameraRepository;
            if (observerRemove != null && cameraRepository != null) {
                try {
                    final CameraInternal camera = cameraRepository.getCamera(systemCameraId);
                    CameraXExecutors.mainThreadExecutor().execute(new Runnable() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraPresenceProvider.removeCameraStateObserver$lambda$0$0(camera, observerRemove);
                        }
                    });
                    Logger.m74d("CameraPresencePrvdr", "Removed state observer for: " + systemCameraId);
                } catch (IllegalArgumentException unused) {
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeCameraStateObserver$lambda$0$0(CameraInternal cameraInternal, Observer observer) {
        cameraInternal.getCameraInfoInternal().getCameraState().removeObserver(observer);
    }

    private final void clearAllCameraStateObservers() {
        synchronized (this.observerLock) {
            if (this.cameraStateObservers.isEmpty()) {
                return;
            }
            Map map = MapsKt.toMap(this.cameraStateObservers);
            this.cameraStateObservers.clear();
            Unit unit = Unit.INSTANCE;
            CameraRepository cameraRepository = this.cameraRepository;
            if (cameraRepository != null) {
                LinkedHashSet<CameraInternal> cameras = cameraRepository.getCameras();
                final ArrayList arrayList = new ArrayList();
                for (CameraInternal cameraInternal : cameras) {
                    CameraInfoInternal cameraInfoInternal = cameraInternal != null ? cameraInternal.getCameraInfoInternal() : null;
                    if (cameraInfoInternal != null) {
                        arrayList.add(cameraInfoInternal);
                    }
                }
                Logger.m74d("CameraPresencePrvdr", "Clearing all " + map.size() + " state observers.");
                for (Map.Entry entry : map.entrySet()) {
                    final String str = (String) entry.getKey();
                    final Observer observer = (Observer) entry.getValue();
                    CameraXExecutors.mainThreadExecutor().execute(new Runnable() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda8
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraPresenceProvider.clearAllCameraStateObservers$lambda$2$0(arrayList, observer, str);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void clearAllCameraStateObservers$lambda$2$0(List list, Observer observer, String str) {
        Object next;
        LiveData<CameraState> cameraState;
        try {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it.next();
                    if (Intrinsics.areEqual(((CameraInfoInternal) next).getCameraId(), str)) {
                        break;
                    }
                }
            }
            CameraInfoInternal cameraInfoInternal = (CameraInfoInternal) next;
            if (cameraInfoInternal == null || (cameraState = cameraInfoInternal.getCameraState()) == null) {
                return;
            }
            cameraState.removeObserver(observer);
        } catch (IllegalArgumentException unused) {
        }
    }

    public final void addCameraPresenceListener(final CameraPresenceListener listener, Executor executor) {
        this.publicApiListeners.add(new ListenerWrapper(listener, executor));
        executor.execute(new Runnable() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                CameraPresenceProvider.$r8$lambda$BscuJl6k0EvV8pGpFPAQYqSaQDA(this.f$0, listener);
            }
        });
    }

    public static void $r8$lambda$BscuJl6k0EvV8pGpFPAQYqSaQDA(CameraPresenceProvider cameraPresenceProvider, CameraPresenceListener cameraPresenceListener) {
        Set<CameraIdentifier> set = CollectionsKt.toSet(cameraPresenceProvider.currentFilteredIds);
        if (set.isEmpty()) {
            return;
        }
        cameraPresenceListener.onCamerasAdded(set);
    }

    public final void removeCameraPresenceListener(final CameraPresenceListener listener) {
        CollectionsKt.removeAll((List) this.publicApiListeners, new Function1() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(Intrinsics.areEqual(((CameraPresenceProvider.ListenerWrapper) obj).getListener(), listener));
            }
        });
    }

    private final void notifyPublicCamerasAdded(final Set<CameraIdentifier> addedIds) {
        for (final ListenerWrapper listenerWrapper : this.publicApiListeners) {
            listenerWrapper.getExecutor().execute(new Runnable() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    CameraPresenceProvider.notifyPublicCamerasAdded$lambda$0$0(listenerWrapper, addedIds);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void notifyPublicCamerasAdded$lambda$0$0(ListenerWrapper listenerWrapper, Set set) {
        listenerWrapper.getListener().onCamerasAdded(set);
    }

    private final void notifyPublicCamerasRemoved(final Set<CameraIdentifier> removedIds) {
        for (final ListenerWrapper listenerWrapper : this.publicApiListeners) {
            listenerWrapper.getExecutor().execute(new Runnable() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    CameraPresenceProvider.notifyPublicCamerasRemoved$lambda$0$0(listenerWrapper, removedIds);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void notifyPublicCamerasRemoved$lambda$0$0(ListenerWrapper listenerWrapper, Set set) {
        listenerWrapper.getListener().onCamerasRemoved(set);
    }
}
