package androidx.camera.camera2.adapter;

import android.util.Log;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.UseCaseManager;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.core.CameraControl;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraConfigs;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collection;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraInternalAdapter implements CameraInternal {
    private final CameraControlInternal cameraController;
    private final String cameraId;
    private final CameraInfoInternal cameraInfo;
    private final CameraStateAdapter cameraStateAdapter;
    private CameraConfig coreCameraConfig;
    private final int debugId;
    private final AtomicBoolean isRemoved;
    private final UseCaseThreads threads;
    private final UseCaseManager useCaseManager;

    @Override // androidx.camera.core.Camera
    public /* synthetic */ CameraControl getCameraControl() {
        return getCameraControlInternal();
    }

    @Override // androidx.camera.core.impl.CameraInternal, androidx.camera.core.Camera
    public /* synthetic */ CameraInfo getCameraInfo() {
        return getCameraInfoInternal();
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public /* synthetic */ boolean getHasTransform() {
        return CameraInternal.CC.$default$getHasTransform(this);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public /* synthetic */ boolean isFrontFacing() {
        return CameraInternal.CC.$default$isFrontFacing(this);
    }

    public CameraInternalAdapter(androidx.camera.camera2.config.CameraConfig config, UseCaseManager useCaseManager, CameraInfoInternal cameraInfo, CameraControlInternal cameraController, UseCaseThreads threads, CameraStateAdapter cameraStateAdapter) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(useCaseManager, "useCaseManager");
        Intrinsics.checkNotNullParameter(cameraInfo, "cameraInfo");
        Intrinsics.checkNotNullParameter(cameraController, "cameraController");
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(cameraStateAdapter, "cameraStateAdapter");
        this.useCaseManager = useCaseManager;
        this.cameraInfo = cameraInfo;
        this.cameraController = cameraController;
        this.threads = threads;
        this.cameraStateAdapter = cameraStateAdapter;
        this.cameraId = config.m1417getCameraIdDz_R5H8();
        CameraConfig cameraConfigDefaultConfig = CameraConfigs.defaultConfig();
        Intrinsics.checkNotNullExpressionValue(cameraConfigDefaultConfig, "defaultConfig(...)");
        this.coreCameraConfig = cameraConfigDefaultConfig;
        this.debugId = CameraInternalAdapterKt.getCameraAdapterIds().incrementAndGet();
        this.isRemoved = AtomicFU.atomic(false);
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Created " + this + " for " + ((Object) CameraId.m1607toStringimpl(this.cameraId)));
        }
    }

    public final void setCameraGraphCreationMode$camera_camera2(boolean z) {
        this.useCaseManager.setCameraGraphCreationMode$camera_camera2(z);
    }

    public final CameraGraph.Config getDeferredCameraGraphConfig$camera_camera2() {
        return this.useCaseManager.getDeferredCameraGraphConfig$camera_camera2();
    }

    public final void resumeDeferredCameraGraphCreation$camera_camera2(CameraGraph cameraGraph) {
        Intrinsics.checkNotNullParameter(cameraGraph, "cameraGraph");
        this.useCaseManager.resumeDeferredComponentCreation$camera_camera2(cameraGraph);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void setPrimary(boolean z) {
        this.useCaseManager.setPrimary(z);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void setActiveResumingMode(boolean z) {
        this.useCaseManager.setActiveResumeMode(z);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.adapter.CameraInternalAdapter$release$1 */
    static final class C01071 extends SuspendLambda implements Function2 {
        int label;

        C01071(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return CameraInternalAdapter.this.new C01071(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01071) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                UseCaseManager useCaseManager = CameraInternalAdapter.this.useCaseManager;
                this.label = 1;
                if (useCaseManager.close(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            CoroutineScopeKt.cancel$default(CameraInternalAdapter.this.threads.getScope(), null, 1, null);
            return Unit.INSTANCE;
        }
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public ListenableFuture release() {
        return CoroutineAdaptersKt.asListenableFuture$default(BuildersKt__Builders_commonKt.launch$default(this.threads.getScope(), null, null, new C01071(null), 3, null), (Object) null, 1, (Object) null);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public CameraInfoInternal getCameraInfoInternal() {
        return this.cameraInfo;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public CameraControlInternal getCameraControlInternal() {
        return this.cameraController;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void attachUseCases(Collection useCasesToAdd) {
        Intrinsics.checkNotNullParameter(useCasesToAdd, "useCasesToAdd");
        this.useCaseManager.attach(CollectionsKt.toList(useCasesToAdd));
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void detachUseCases(Collection useCasesToRemove) {
        Intrinsics.checkNotNullParameter(useCasesToRemove, "useCasesToRemove");
        this.useCaseManager.detach(CollectionsKt.toList(useCasesToRemove));
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseActive(UseCase useCase) {
        Intrinsics.checkNotNullParameter(useCase, "useCase");
        this.useCaseManager.activate(useCase);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseUpdated(UseCase useCase) {
        Intrinsics.checkNotNullParameter(useCase, "useCase");
        this.useCaseManager.update(useCase);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseReset(UseCase useCase) {
        Intrinsics.checkNotNullParameter(useCase, "useCase");
        this.useCaseManager.reset(useCase);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseInactive(UseCase useCase) {
        Intrinsics.checkNotNullParameter(useCase, "useCase");
        this.useCaseManager.deactivate(useCase);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public CameraConfig getExtendedConfig() {
        return this.coreCameraConfig;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void setExtendedConfig(CameraConfig cameraConfig) {
        CameraConfig cameraConfigDefaultConfig;
        if (cameraConfig == null) {
            cameraConfigDefaultConfig = CameraConfigs.defaultConfig();
            Intrinsics.checkNotNullExpressionValue(cameraConfigDefaultConfig, "defaultConfig(...)");
        } else {
            cameraConfigDefaultConfig = cameraConfig;
        }
        this.coreCameraConfig = cameraConfigDefaultConfig;
        if (cameraConfig != null) {
            cameraConfig.getSessionProcessor(null);
        }
        this.useCaseManager.setSessionProcessor$camera_camera2(null);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void onRemoved() {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, this + " received removed signal. Cleaning up.");
        }
        if (this.isRemoved.compareAndSet(false, true)) {
            BuildersKt__Builders_commonKt.launch$default(this.threads.getScope(), null, null, new C01062(null), 3, null);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.adapter.CameraInternalAdapter$onRemoved$2 */
    static final class C01062 extends SuspendLambda implements Function2 {
        int label;

        C01062(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return CameraInternalAdapter.this.new C01062(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01062) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CameraInternalAdapter.this.cameraStateAdapter.onRemoved();
                UseCaseManager useCaseManager = CameraInternalAdapter.this.useCaseManager;
                this.label = 1;
                if (useCaseManager.close(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public boolean isRemoved() {
        return this.isRemoved.getValue();
    }

    public String toString() {
        return "CameraInternalAdapter<" + ((Object) CameraId.m1607toStringimpl(this.cameraId)) + '(' + this.debugId + ")>";
    }
}
