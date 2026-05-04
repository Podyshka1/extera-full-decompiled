package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraManager;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraId;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: loaded from: classes3.dex */
final class Camera2CameraAvailabilityMonitor$availableCameraFlow$1 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ Camera2CameraAvailabilityMonitor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Camera2CameraAvailabilityMonitor$availableCameraFlow$1(Camera2CameraAvailabilityMonitor camera2CameraAvailabilityMonitor, Continuation continuation) {
        super(2, continuation);
        this.this$0 = camera2CameraAvailabilityMonitor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        Camera2CameraAvailabilityMonitor$availableCameraFlow$1 camera2CameraAvailabilityMonitor$availableCameraFlow$1 = new Camera2CameraAvailabilityMonitor$availableCameraFlow$1(this.this$0, continuation);
        camera2CameraAvailabilityMonitor$availableCameraFlow$1.L$0 = obj;
        return camera2CameraAvailabilityMonitor$availableCameraFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope producerScope, Continuation continuation) {
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
                    Intrinsics.checkNotNullParameter(cameraIdString, "cameraIdString");
                    ChannelsKt.trySendBlocking(producerScope, CameraId.m1602boximpl(CameraId.m1603constructorimpl(cameraIdString)));
                }
            };
            final CameraManager cameraManager = (CameraManager) this.this$0.cameraManager.get();
            if (Build.VERSION.SDK_INT < 28) {
                cameraManager.registerAvailabilityCallback((CameraManager.AvailabilityCallback) r1, this.this$0.threads.getCamera2Handler());
            } else {
                Intrinsics.checkNotNull(cameraManager);
                Api28Compat.registerAvailabilityCallback(cameraManager, this.this$0.threads.getCamera2Executor(), r1);
            }
            Function0 function0 = new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$availableCameraFlow$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Camera2CameraAvailabilityMonitor$availableCameraFlow$1.invokeSuspend$lambda$0(cameraManager, r1);
                }
            };
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, function0, this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokeSuspend$lambda$0(CameraManager cameraManager, C0189x8f32af5f c0189x8f32af5f) {
        cameraManager.unregisterAvailabilityCallback(c0189x8f32af5f);
        return Unit.INSTANCE;
    }
}
