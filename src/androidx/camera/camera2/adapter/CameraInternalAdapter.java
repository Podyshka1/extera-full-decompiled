package androidx.camera.camera2.adapter;

import android.util.Log;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.UseCaseManager;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraConfigs;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.messenger.BuildConfig;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u001f\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B9\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\u0016H\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001aH\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u0010H\u0016¢\u0006\u0004\b \u0010\u0014J\u0017\u0010\"\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\"\u0010\u0014J\u0015\u0010%\u001a\b\u0012\u0004\u0012\u00020$0#H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0006H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\bH\u0016¢\u0006\u0004\b)\u0010*J\u001d\u0010.\u001a\u00020\u00122\f\u0010-\u001a\b\u0012\u0004\u0012\u00020,0+H\u0016¢\u0006\u0004\b.\u0010/J\u001d\u00101\u001a\u00020\u00122\f\u00100\u001a\b\u0012\u0004\u0012\u00020,0+H\u0016¢\u0006\u0004\b1\u0010/J\u0017\u00103\u001a\u00020\u00122\u0006\u00102\u001a\u00020,H\u0016¢\u0006\u0004\b3\u00104J\u0017\u00105\u001a\u00020\u00122\u0006\u00102\u001a\u00020,H\u0016¢\u0006\u0004\b5\u00104J\u0017\u00106\u001a\u00020\u00122\u0006\u00102\u001a\u00020,H\u0016¢\u0006\u0004\b6\u00104J\u0017\u00107\u001a\u00020\u00122\u0006\u00102\u001a\u00020,H\u0016¢\u0006\u0004\b7\u00104J\u000f\u00109\u001a\u000208H\u0016¢\u0006\u0004\b9\u0010:J\u0019\u0010<\u001a\u00020\u00122\b\u0010;\u001a\u0004\u0018\u000108H\u0016¢\u0006\u0004\b<\u0010=J\u000f\u0010>\u001a\u00020\u0012H\u0016¢\u0006\u0004\b>\u0010?J\u000f\u0010@\u001a\u00020\u0010H\u0016¢\u0006\u0004\b@\u0010AJ\u000f\u0010C\u001a\u00020BH\u0016¢\u0006\u0004\bC\u0010DR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010ER\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010FR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010GR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010HR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010IR\u0014\u0010K\u001a\u00020J8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bK\u0010LR\u0016\u0010M\u001a\u0002088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0014\u0010P\u001a\u00020O8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010QR\u0014\u0010@\u001a\u00020R8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010S¨\u0006T"}, d2 = {"Landroidx/camera/camera2/adapter/CameraInternalAdapter;", "Landroidx/camera/core/impl/CameraInternal;", "Landroidx/camera/camera2/config/CameraConfig;", "config", "Landroidx/camera/camera2/impl/UseCaseManager;", "useCaseManager", "Landroidx/camera/core/impl/CameraInfoInternal;", "cameraInfo", "Landroidx/camera/core/impl/CameraControlInternal;", "cameraController", "Landroidx/camera/camera2/impl/UseCaseThreads;", "threads", "Landroidx/camera/camera2/adapter/CameraStateAdapter;", "cameraStateAdapter", "<init>", "(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/camera2/impl/UseCaseManager;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/CameraControlInternal;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/adapter/CameraStateAdapter;)V", _UrlKt.FRAGMENT_ENCODE_SET, "createImmediately", _UrlKt.FRAGMENT_ENCODE_SET, "setCameraGraphCreationMode$camera_camera2", "(Z)V", "setCameraGraphCreationMode", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "getDeferredCameraGraphConfig$camera_camera2", "()Landroidx/camera/camera2/pipe/CameraGraph$Config;", "getDeferredCameraGraphConfig", "Landroidx/camera/camera2/pipe/CameraGraph;", "cameraGraph", "resumeDeferredCameraGraphCreation$camera_camera2", "(Landroidx/camera/camera2/pipe/CameraGraph;)V", "resumeDeferredCameraGraphCreation", "isPrimary", "setPrimary", "enabled", "setActiveResumingMode", "Lcom/google/common/util/concurrent/ListenableFuture;", "Ljava/lang/Void;", BuildConfig.BUILD_TYPE, "()Lcom/google/common/util/concurrent/ListenableFuture;", "getCameraInfoInternal", "()Landroidx/camera/core/impl/CameraInfoInternal;", "getCameraControlInternal", "()Landroidx/camera/core/impl/CameraControlInternal;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/UseCase;", "useCasesToAdd", "attachUseCases", "(Ljava/util/Collection;)V", "useCasesToRemove", "detachUseCases", "useCase", "onUseCaseActive", "(Landroidx/camera/core/UseCase;)V", "onUseCaseUpdated", "onUseCaseReset", "onUseCaseInactive", "Landroidx/camera/core/impl/CameraConfig;", "getExtendedConfig", "()Landroidx/camera/core/impl/CameraConfig;", "cameraConfig", "setExtendedConfig", "(Landroidx/camera/core/impl/CameraConfig;)V", "onRemoved", "()V", "isRemoved", "()Z", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Landroidx/camera/camera2/impl/UseCaseManager;", "Landroidx/camera/core/impl/CameraInfoInternal;", "Landroidx/camera/core/impl/CameraControlInternal;", "Landroidx/camera/camera2/impl/UseCaseThreads;", "Landroidx/camera/camera2/adapter/CameraStateAdapter;", "Landroidx/camera/camera2/pipe/CameraId;", "cameraId", "Ljava/lang/String;", "coreCameraConfig", "Landroidx/camera/core/impl/CameraConfig;", _UrlKt.FRAGMENT_ENCODE_SET, "debugId", "I", "Lkotlinx/atomicfu/AtomicBoolean;", "Lkotlinx/atomicfu/AtomicBoolean;", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraInternalAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraInternalAdapter.kt\nandroidx/camera/camera2/adapter/CameraInternalAdapter\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,172:1\n85#2,4:173\n85#2,4:177\n85#2,4:181\n85#2,4:185\n*S KotlinDebug\n*F\n+ 1 CameraInternalAdapter.kt\nandroidx/camera/camera2/adapter/CameraInternalAdapter\n*L\n61#1:173,4\n78#1:177,4\n82#1:181,4\n153#1:185,4\n*E\n"})
public final class CameraInternalAdapter implements CameraInternal {
    private final CameraControlInternal cameraController;
    private final String cameraId;
    private final CameraInfoInternal cameraInfo;
    private final CameraStateAdapter cameraStateAdapter;
    private CameraConfig coreCameraConfig = CameraConfigs.defaultConfig();
    private final int debugId = CameraInternalAdapterKt.getCameraAdapterIds().incrementAndGet();
    private final AtomicBoolean isRemoved = AtomicFU.atomic(false);
    private final UseCaseThreads threads;
    private final UseCaseManager useCaseManager;

    public CameraInternalAdapter(androidx.camera.camera2.config.CameraConfig cameraConfig, UseCaseManager useCaseManager, CameraInfoInternal cameraInfoInternal, CameraControlInternal cameraControlInternal, UseCaseThreads useCaseThreads, CameraStateAdapter cameraStateAdapter) {
        this.useCaseManager = useCaseManager;
        this.cameraInfo = cameraInfoInternal;
        this.cameraController = cameraControlInternal;
        this.threads = useCaseThreads;
        this.cameraStateAdapter = cameraStateAdapter;
        this.cameraId = cameraConfig.getCameraId();
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Created " + this + " for " + ((Object) CameraId.m1213toStringimpl(this.cameraId)));
        }
    }

    public final void setCameraGraphCreationMode$camera_camera2(boolean createImmediately) {
        this.useCaseManager.setCameraGraphCreationMode$camera_camera2(createImmediately);
    }

    public final CameraGraph.Config getDeferredCameraGraphConfig$camera_camera2() {
        return this.useCaseManager.getDeferredCameraGraphConfig$camera_camera2();
    }

    public final void resumeDeferredCameraGraphCreation$camera_camera2(CameraGraph cameraGraph) {
        this.useCaseManager.resumeDeferredComponentCreation$camera_camera2(cameraGraph);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void setPrimary(boolean isPrimary) {
        this.useCaseManager.setPrimary(isPrimary);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void setActiveResumingMode(boolean enabled) {
        this.useCaseManager.setActiveResumeMode(enabled);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.adapter.CameraInternalAdapter$release$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.adapter.CameraInternalAdapter$release$1", m766f = "CameraInternalAdapter.kt", m767i = {}, m768l = {96}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    public static final class C01121 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public C01121(Continuation<? super C01121> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CameraInternalAdapter.this.new C01121(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C01121) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            CoroutineScopeKt.cancel$default(CameraInternalAdapter.this.threads.getScope(), null, 1, null);
            return Unit.INSTANCE;
        }
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public ListenableFuture<Void> release() {
        return CoroutineAdaptersKt.asListenableFuture$default(BuildersKt__Builders_commonKt.launch$default(this.threads.getScope(), null, null, new C01121(null), 3, null), (Object) null, 1, (Object) null);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    /* JADX INFO: renamed from: getCameraInfoInternal, reason: from getter */
    public CameraInfoInternal getCameraInfo() {
        return this.cameraInfo;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    /* JADX INFO: renamed from: getCameraControlInternal, reason: from getter */
    public CameraControlInternal getCameraController() {
        return this.cameraController;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void attachUseCases(Collection<UseCase> useCasesToAdd) {
        this.useCaseManager.attach(CollectionsKt.toList(useCasesToAdd));
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void detachUseCases(Collection<UseCase> useCasesToRemove) {
        this.useCaseManager.detach(CollectionsKt.toList(useCasesToRemove));
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseActive(UseCase useCase) {
        this.useCaseManager.activate(useCase);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseUpdated(UseCase useCase) {
        this.useCaseManager.update(useCase);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseReset(UseCase useCase) {
        this.useCaseManager.reset(useCase);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseInactive(UseCase useCase) {
        this.useCaseManager.deactivate(useCase);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    /* JADX INFO: renamed from: getExtendedConfig, reason: from getter */
    public CameraConfig getCoreCameraConfig() {
        return this.coreCameraConfig;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void setExtendedConfig(CameraConfig cameraConfig) {
        this.coreCameraConfig = cameraConfig == null ? CameraConfigs.defaultConfig() : cameraConfig;
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
            BuildersKt__Builders_commonKt.launch$default(this.threads.getScope(), null, null, new C01112(null), 3, null);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.adapter.CameraInternalAdapter$onRemoved$2 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.adapter.CameraInternalAdapter$onRemoved$2", m766f = "CameraInternalAdapter.kt", m767i = {}, m768l = {161}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    public static final class C01112 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public C01112(Continuation<? super C01112> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CameraInternalAdapter.this.new C01112(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C01112) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
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
        return "CameraInternalAdapter<" + ((Object) CameraId.m1213toStringimpl(this.cameraId)) + '(' + this.debugId + ")>";
    }
}
