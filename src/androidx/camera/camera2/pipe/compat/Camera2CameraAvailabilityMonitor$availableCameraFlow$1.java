package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraManager;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraId;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/channels/ProducerScope;", "Landroidx/camera/camera2/pipe/CameraId;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m920c = "androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$availableCameraFlow$1", m921f = "RetryingCameraStateOpener.kt", m922i = {}, m923l = {158}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
public final class Camera2CameraAvailabilityMonitor$availableCameraFlow$1 extends SuspendLambda implements Function2<ProducerScope<? super CameraId>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ Camera2CameraAvailabilityMonitor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Camera2CameraAvailabilityMonitor$availableCameraFlow$1(Camera2CameraAvailabilityMonitor camera2CameraAvailabilityMonitor, Continuation<? super Camera2CameraAvailabilityMonitor$availableCameraFlow$1> continuation) {
        super(2, continuation);
        this.this$0 = camera2CameraAvailabilityMonitor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        Camera2CameraAvailabilityMonitor$availableCameraFlow$1 camera2CameraAvailabilityMonitor$availableCameraFlow$1 = new Camera2CameraAvailabilityMonitor$availableCameraFlow$1(this.this$0, continuation);
        camera2CameraAvailabilityMonitor$availableCameraFlow$1.L$0 = obj;
        return camera2CameraAvailabilityMonitor$availableCameraFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super CameraId> producerScope, Continuation<? super Unit> continuation) {
        return ((Camera2CameraAvailabilityMonitor$availableCameraFlow$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.hardware.camera2.CameraManager$AvailabilityCallback, androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            final ?? r1 = new CameraManager.AvailabilityCallback() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1
                @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
                public void onCameraAvailable(String cameraIdString) {
                    ChannelsKt.trySendBlocking(producerScope, CameraId.m1351boximpl(CameraId.m1352constructorimpl(cameraIdString)));
                }
            };
            final CameraManager cameraManager = (CameraManager) this.this$0.cameraManager.get();
            int i2 = Build.VERSION.SDK_INT;
            Camera2CameraAvailabilityMonitor camera2CameraAvailabilityMonitor = this.this$0;
            if (i2 < 28) {
                cameraManager.registerAvailabilityCallback((CameraManager.AvailabilityCallback) r1, camera2CameraAvailabilityMonitor.threads.getCamera2Handler());
            } else {
                Api28Compat.registerAvailabilityCallback(cameraManager, camera2CameraAvailabilityMonitor.threads.getCamera2Executor(), r1);
            }
            Function0 function0 = new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$availableCameraFlow$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Camera2CameraAvailabilityMonitor$availableCameraFlow$1.$r8$lambda$Ha8FIlMaNkz7up8iOeYm55Nl5eE(cameraManager, r1);
                }
            };
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, function0, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    public static Unit $r8$lambda$Ha8FIlMaNkz7up8iOeYm55Nl5eE(CameraManager cameraManager, C0190x8f32af5f c0190x8f32af5f) {
        cameraManager.unregisterAvailabilityCallback(c0190x8f32af5f);
        return Unit.INSTANCE;
    }
}
