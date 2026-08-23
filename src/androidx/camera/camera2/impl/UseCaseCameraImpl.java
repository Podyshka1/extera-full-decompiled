package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.SessionProcessor;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Provider;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Job;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0007\u0018\u00002\u00020\u0001BU\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\n\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\n¢\u0006\u0004\b\u0011\u0010\u0012J\u0011\u0010\u0016\u001a\u0004\u0018\u00010\u0013H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u001d\u001a\u00020\u001a2\b\u0010\u0017\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010%\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b%\u0010&J%\u0010+\u001a\u00020 2\u0006\u0010'\u001a\u00020#2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020)0(H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b.\u0010/R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u00100R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u00101R\u001a\u0010\t\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u00102\u001a\u0004\b3\u00104R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u00105R\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u00105R\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u00105R\u0014\u00107\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u0010:\u001a\u0002098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R#\u0010A\u001a\n <*\u0004\u0018\u00010\u000b0\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@R#\u0010E\u001a\n <*\u0004\u0018\u00010\r0\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bB\u0010>\u001a\u0004\bC\u0010DR#\u0010I\u001a\n <*\u0004\u0018\u00010\u000f0\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bF\u0010>\u001a\u0004\bG\u0010H¨\u0006J"}, d2 = {"Landroidx/camera/camera2/impl/UseCaseCameraImpl;", "Landroidx/camera/camera2/impl/UseCaseCamera;", "Landroidx/camera/camera2/config/UseCaseGraphContext;", "useCaseGraphContext", "Landroidx/camera/camera2/impl/UseCaseThreads;", "threads", "Landroidx/camera/core/impl/SessionProcessor;", "sessionProcessor", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "requestControl", "Ljavax/inject/Provider;", "Landroidx/camera/camera2/impl/UseCaseSurfaceManager;", "useCaseSurfaceManagerProvider", "Landroidx/camera/camera2/adapter/SessionConfigAdapter;", "sessionConfigAdapterProvider", "Landroidx/camera/camera2/impl/CapturePipeline;", "capturePipelineProvider", "<init>", "(Landroidx/camera/camera2/config/UseCaseGraphContext;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/core/impl/SessionProcessor;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V", "Landroidx/camera/camera2/pipe/StreamId;", "findStillCaptureStreamId-4TVKcYk", "()Landroidx/camera/camera2/pipe/StreamId;", "findStillCaptureStreamId", "stillCaptureStreamId", "Landroidx/camera/camera2/pipe/CameraGraph;", "cameraGraph", _UrlKt.FRAGMENT_ENCODE_SET, "setCaptureSessionRequestProcessor-9O56998", "(Landroidx/camera/camera2/pipe/StreamId;Landroidx/camera/camera2/pipe/CameraGraph;)V", "setCaptureSessionRequestProcessor", "start", "()V", "Lkotlinx/coroutines/Job;", "close", "()Lkotlinx/coroutines/Job;", _UrlKt.FRAGMENT_ENCODE_SET, "enabled", "setActiveResumeMode", "(Z)V", "isPrimary", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/UseCase;", "runningUseCases", "updateRepeatingRequestAsync", "(ZLjava/util/Collection;)Lkotlinx/coroutines/Job;", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Landroidx/camera/camera2/config/UseCaseGraphContext;", "Landroidx/camera/camera2/impl/UseCaseThreads;", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "getRequestControl", "()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "Ljavax/inject/Provider;", _UrlKt.FRAGMENT_ENCODE_SET, "debugId", "I", "Lkotlinx/atomicfu/AtomicBoolean;", "closed", "Lkotlinx/atomicfu/AtomicBoolean;", "kotlin.jvm.PlatformType", "useCaseSurfaceManager$delegate", "Lkotlin/Lazy;", "getUseCaseSurfaceManager", "()Landroidx/camera/camera2/impl/UseCaseSurfaceManager;", "useCaseSurfaceManager", "sessionConfigAdapter$delegate", "getSessionConfigAdapter", "()Landroidx/camera/camera2/adapter/SessionConfigAdapter;", "sessionConfigAdapter", "capturePipeline$delegate", "getCapturePipeline", "()Landroidx/camera/camera2/impl/CapturePipeline;", "capturePipeline", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUseCaseCamera.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseCamera.kt\nandroidx/camera/camera2/impl/UseCaseCameraImpl\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 3 UseCaseThreads.kt\nandroidx/camera/camera2/impl/UseCaseThreads\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,229:1\n85#2,4:230\n194#3:234\n194#3:237\n194#3:238\n295#4,2:235\n*S KotlinDebug\n*F\n+ 1 UseCaseCamera.kt\nandroidx/camera/camera2/impl/UseCaseCameraImpl\n*L\n88#1:230,4\n96#1:234\n183#1:237\n195#1:238\n144#1:235,2\n*E\n"})
public final class UseCaseCameraImpl implements UseCaseCamera {

    /* JADX INFO: renamed from: capturePipeline$delegate, reason: from kotlin metadata */
    private final Lazy capturePipeline;
    private final Provider<CapturePipeline> capturePipelineProvider;
    private final UseCaseCameraRequestControl requestControl;

    /* JADX INFO: renamed from: sessionConfigAdapter$delegate, reason: from kotlin metadata */
    private final Lazy sessionConfigAdapter;
    private final Provider<SessionConfigAdapter> sessionConfigAdapterProvider;
    private final UseCaseThreads threads;
    private final UseCaseGraphContext useCaseGraphContext;

    /* JADX INFO: renamed from: useCaseSurfaceManager$delegate, reason: from kotlin metadata */
    private final Lazy useCaseSurfaceManager;
    private final Provider<UseCaseSurfaceManager> useCaseSurfaceManagerProvider;
    private final int debugId = UseCaseCameraKt.getUseCaseCameraIds().incrementAndGet();
    private final AtomicBoolean closed = AtomicFU.atomic(false);

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: setCaptureSessionRequestProcessor-9O56998, reason: not valid java name */
    public final void m1076setCaptureSessionRequestProcessor9O56998(StreamId stillCaptureStreamId, CameraGraph cameraGraph) {
    }

    public UseCaseCameraImpl(UseCaseGraphContext useCaseGraphContext, UseCaseThreads useCaseThreads, SessionProcessor sessionProcessor, UseCaseCameraRequestControl useCaseCameraRequestControl, Provider<UseCaseSurfaceManager> provider, Provider<SessionConfigAdapter> provider2, Provider<CapturePipeline> provider3) {
        this.useCaseGraphContext = useCaseGraphContext;
        this.threads = useCaseThreads;
        this.requestControl = useCaseCameraRequestControl;
        this.useCaseSurfaceManagerProvider = provider;
        this.sessionConfigAdapterProvider = provider2;
        this.capturePipelineProvider = provider3;
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Configured " + this);
        }
        this.useCaseSurfaceManager = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.impl.UseCaseCameraImpl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.useCaseSurfaceManagerProvider.get();
            }
        });
        this.sessionConfigAdapter = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.impl.UseCaseCameraImpl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.sessionConfigAdapterProvider.get();
            }
        });
        this.capturePipeline = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.impl.UseCaseCameraImpl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.capturePipelineProvider.get();
            }
        });
    }

    public static final /* synthetic */ SessionProcessor access$getSessionProcessor$p(UseCaseCameraImpl useCaseCameraImpl) {
        useCaseCameraImpl.getClass();
        return null;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCamera
    public UseCaseCameraRequestControl getRequestControl() {
        return this.requestControl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UseCaseSurfaceManager getUseCaseSurfaceManager() {
        return (UseCaseSurfaceManager) this.useCaseSurfaceManager.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SessionConfigAdapter getSessionConfigAdapter() {
        return (SessionConfigAdapter) this.sessionConfigAdapter.getValue();
    }

    @Override // androidx.camera.camera2.impl.UseCaseCamera
    public void start() {
        BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new UseCaseCameraImpl$start$$inlined$confineLaunch$1(null, this), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: findStillCaptureStreamId-4TVKcYk, reason: not valid java name */
    public final StreamId m1075findStillCaptureStreamId4TVKcYk() {
        Object next;
        SessionConfig validSessionConfigOrNull = getSessionConfigAdapter().getValidSessionConfigOrNull();
        if (validSessionConfigOrNull == null) {
            return null;
        }
        List<DeferrableSurface> surfaces = validSessionConfigOrNull.getRepeatingCaptureConfig().getSurfaces();
        Iterator<T> it = validSessionConfigOrNull.getSurfaces().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (!surfaces.contains((DeferrableSurface) next)) {
                break;
            }
        }
        DeferrableSurface deferrableSurface = (DeferrableSurface) next;
        if (deferrableSurface == null) {
            return null;
        }
        return (StreamId) CollectionsKt.firstOrNull(this.useCaseGraphContext.getStreamIdsFromSurfaces(CollectionsKt.listOf(deferrableSurface)));
    }

    @Override // androidx.camera.camera2.impl.UseCaseCamera
    public Job close() {
        if (this.closed.compareAndSet(false, true)) {
            getRequestControl().close();
            return BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new UseCaseCameraImpl$close$$inlined$confineLaunch$1(null, this), 3, null);
        }
        return CompletableDeferredKt.CompletableDeferred(Unit.INSTANCE);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCamera
    public void setActiveResumeMode(boolean enabled) {
        BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1(null, this, enabled), 3, null);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCamera
    public Job updateRepeatingRequestAsync(boolean isPrimary, Collection<? extends UseCase> runningUseCases) {
        return getRequestControl().updateRepeatingRequestAsync(isPrimary, runningUseCases);
    }

    public String toString() {
        return "UseCaseCamera-" + this.debugId;
    }
}
