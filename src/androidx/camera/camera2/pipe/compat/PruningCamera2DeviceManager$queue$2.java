package androidx.camera.camera2.pipe.compat;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "it", "Landroidx/camera/camera2/pipe/compat/CameraRequest;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m920c = "androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$queue$2", m921f = "Camera2DeviceManager.kt", m922i = {}, m923l = {190}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
public final class PruningCamera2DeviceManager$queue$2 extends SuspendLambda implements Function2<CameraRequest, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ PruningCamera2DeviceManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PruningCamera2DeviceManager$queue$2(PruningCamera2DeviceManager pruningCamera2DeviceManager, Continuation<? super PruningCamera2DeviceManager$queue$2> continuation) {
        super(2, continuation);
        this.this$0 = pruningCamera2DeviceManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PruningCamera2DeviceManager$queue$2 pruningCamera2DeviceManager$queue$2 = new PruningCamera2DeviceManager$queue$2(this.this$0, continuation);
        pruningCamera2DeviceManager$queue$2.L$0 = obj;
        return pruningCamera2DeviceManager$queue$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CameraRequest cameraRequest, Continuation<? super Unit> continuation) {
        return ((PruningCamera2DeviceManager$queue$2) create(cameraRequest, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CameraRequest cameraRequest = (CameraRequest) this.L$0;
            PruningCamera2DeviceManager pruningCamera2DeviceManager = this.this$0;
            this.label = 1;
            if (pruningCamera2DeviceManager.process(cameraRequest, this) == coroutine_suspended) {
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
}
