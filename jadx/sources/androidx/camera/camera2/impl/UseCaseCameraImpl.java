package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.SessionProcessor;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Provider;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes3.dex */
public final class UseCaseCameraImpl implements UseCaseCamera {
    private final Lazy capturePipeline$delegate;
    private final Provider capturePipelineProvider;
    private final AtomicBoolean closed;
    private final int debugId;
    private final UseCaseCameraRequestControl requestControl;
    private final Lazy sessionConfigAdapter$delegate;
    private final Provider sessionConfigAdapterProvider;
    private final UseCaseThreads threads;
    private final UseCaseGraphContext useCaseGraphContext;
    private final Lazy useCaseSurfaceManager$delegate;
    private final Provider useCaseSurfaceManagerProvider;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: setCaptureSessionRequestProcessor-9O56998, reason: not valid java name */
    public final void m1470setCaptureSessionRequestProcessor9O56998(StreamId streamId, CameraGraph cameraGraph) {
    }

    public UseCaseCameraImpl(UseCaseGraphContext useCaseGraphContext, UseCaseThreads threads, SessionProcessor sessionProcessor, UseCaseCameraRequestControl requestControl, Provider useCaseSurfaceManagerProvider, Provider sessionConfigAdapterProvider, Provider capturePipelineProvider) {
        Intrinsics.checkNotNullParameter(useCaseGraphContext, "useCaseGraphContext");
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(requestControl, "requestControl");
        Intrinsics.checkNotNullParameter(useCaseSurfaceManagerProvider, "useCaseSurfaceManagerProvider");
        Intrinsics.checkNotNullParameter(sessionConfigAdapterProvider, "sessionConfigAdapterProvider");
        Intrinsics.checkNotNullParameter(capturePipelineProvider, "capturePipelineProvider");
        this.useCaseGraphContext = useCaseGraphContext;
        this.threads = threads;
        this.requestControl = requestControl;
        this.useCaseSurfaceManagerProvider = useCaseSurfaceManagerProvider;
        this.sessionConfigAdapterProvider = sessionConfigAdapterProvider;
        this.capturePipelineProvider = capturePipelineProvider;
        this.debugId = UseCaseCameraKt.getUseCaseCameraIds().incrementAndGet();
        this.closed = AtomicFU.atomic(false);
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Configured " + this);
        }
        this.useCaseSurfaceManager$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.impl.UseCaseCameraImpl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UseCaseCameraImpl.useCaseSurfaceManager_delegate$lambda$0(this.f$0);
            }
        });
        this.sessionConfigAdapter$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.impl.UseCaseCameraImpl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UseCaseCameraImpl.sessionConfigAdapter_delegate$lambda$0(this.f$0);
            }
        });
        this.capturePipeline$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.impl.UseCaseCameraImpl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UseCaseCameraImpl.capturePipeline_delegate$lambda$0(this.f$0);
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
        return (UseCaseSurfaceManager) this.useCaseSurfaceManager$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UseCaseSurfaceManager useCaseSurfaceManager_delegate$lambda$0(UseCaseCameraImpl useCaseCameraImpl) {
        return (UseCaseSurfaceManager) useCaseCameraImpl.useCaseSurfaceManagerProvider.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SessionConfigAdapter getSessionConfigAdapter() {
        return (SessionConfigAdapter) this.sessionConfigAdapter$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SessionConfigAdapter sessionConfigAdapter_delegate$lambda$0(UseCaseCameraImpl useCaseCameraImpl) {
        return (SessionConfigAdapter) useCaseCameraImpl.sessionConfigAdapterProvider.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CapturePipeline capturePipeline_delegate$lambda$0(UseCaseCameraImpl useCaseCameraImpl) {
        return (CapturePipeline) useCaseCameraImpl.capturePipelineProvider.get();
    }

    @Override // androidx.camera.camera2.impl.UseCaseCamera
    public void start() {
        BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new UseCaseCameraImpl$start$$inlined$confineLaunch$1(null, this), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: findStillCaptureStreamId-4TVKcYk, reason: not valid java name */
    public final StreamId m1469findStillCaptureStreamId4TVKcYk() {
        Object next;
        SessionConfig validSessionConfigOrNull = getSessionConfigAdapter().getValidSessionConfigOrNull();
        if (validSessionConfigOrNull == null) {
            return null;
        }
        List surfaces = validSessionConfigOrNull.getRepeatingCaptureConfig().getSurfaces();
        Intrinsics.checkNotNullExpressionValue(surfaces, "getSurfaces(...)");
        List surfaces2 = validSessionConfigOrNull.getSurfaces();
        Intrinsics.checkNotNullExpressionValue(surfaces2, "getSurfaces(...)");
        Iterator it = surfaces2.iterator();
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
    public void setActiveResumeMode(boolean z) {
        BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1(null, this, z), 3, null);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCamera
    public Job updateRepeatingRequestAsync(boolean z, Collection runningUseCases) {
        Intrinsics.checkNotNullParameter(runningUseCases, "runningUseCases");
        return getRequestControl().updateRepeatingRequestAsync(z, runningUseCases);
    }

    public String toString() {
        return "UseCaseCamera-" + this.debugId;
    }
}
