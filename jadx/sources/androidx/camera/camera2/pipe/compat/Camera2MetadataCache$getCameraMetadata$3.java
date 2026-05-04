package androidx.camera.camera2.pipe.compat;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
final class Camera2MetadataCache$getCameraMetadata$3 extends SuspendLambda implements Function2 {
    final /* synthetic */ String $cameraId;
    int label;
    final /* synthetic */ Camera2MetadataCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Camera2MetadataCache$getCameraMetadata$3(Camera2MetadataCache camera2MetadataCache, String str, Continuation continuation) {
        super(2, continuation);
        this.this$0 = camera2MetadataCache;
        this.$cameraId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new Camera2MetadataCache$getCameraMetadata$3(this.this$0, this.$cameraId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((Camera2MetadataCache$getCameraMetadata$3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return this.this$0.mo1841awaitCameraMetadataEfqyGwQ(this.$cameraId);
    }
}
