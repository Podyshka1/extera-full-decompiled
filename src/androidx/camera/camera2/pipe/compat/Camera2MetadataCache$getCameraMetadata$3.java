package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraMetadata;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroidx/camera/camera2/pipe/CameraMetadata;", "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m872c = "androidx.camera.camera2.pipe.compat.Camera2MetadataCache$getCameraMetadata$3", m873f = "Camera2MetadataCache.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
public final class Camera2MetadataCache$getCameraMetadata$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CameraMetadata>, Object> {
    final /* synthetic */ String $cameraId;
    int label;
    final /* synthetic */ Camera2MetadataCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Camera2MetadataCache$getCameraMetadata$3(Camera2MetadataCache camera2MetadataCache, String str, Continuation<? super Camera2MetadataCache$getCameraMetadata$3> continuation) {
        super(2, continuation);
        this.this$0 = camera2MetadataCache;
        this.$cameraId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new Camera2MetadataCache$getCameraMetadata$3(this.this$0, this.$cameraId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super CameraMetadata> continuation) {
        return ((Camera2MetadataCache$getCameraMetadata$3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            return this.this$0.mo1527awaitCameraMetadataEfqyGwQ(this.$cameraId);
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
