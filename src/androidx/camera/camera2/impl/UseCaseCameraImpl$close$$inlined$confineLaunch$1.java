package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.core.Logger;
import com.android.dx.io.Opcodes;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", _UrlKt.FRAGMENT_ENCODE_SET, "<anonymous>", "(Lkotlinx/coroutines/CoroutineScope;)V"}, m862k = 3, mv = {2, 1, 0})
@DebugMetadata(m872c = "androidx.camera.camera2.impl.UseCaseCameraImpl$close$$inlined$confineLaunch$1", m873f = "UseCaseCamera.kt", m874i = {}, m875l = {Opcodes.ADD_INT_LIT16}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
@SourceDebugExtension({"SMAP\nUseCaseThreads.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseThreads.kt\nandroidx/camera/camera2/impl/UseCaseThreads$confineLaunch$1\n+ 2 UseCaseCamera.kt\nandroidx/camera/camera2/impl/UseCaseCameraImpl\n+ 3 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,200:1\n184#2:201\n185#2,4:206\n85#3,4:202\n*S KotlinDebug\n*F\n+ 1 UseCaseCamera.kt\nandroidx/camera/camera2/impl/UseCaseCameraImpl\n*L\n184#1:202,4\n*E\n"})
public final class UseCaseCameraImpl$close$$inlined$confineLaunch$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ UseCaseCameraImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraImpl$close$$inlined$confineLaunch$1(Continuation continuation, UseCaseCameraImpl useCaseCameraImpl) {
        super(2, continuation);
        this.this$0 = useCaseCameraImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UseCaseCameraImpl$close$$inlined$confineLaunch$1(continuation, this.this$0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((UseCaseCameraImpl$close$$inlined$confineLaunch$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Exception {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Closing " + this.this$0);
            }
            UseCaseCameraImpl.access$getSessionProcessor$p(this.this$0);
            this.this$0.useCaseGraphContext.closeGraph();
            Deferred<Unit> deferredStopAsync = this.this$0.getUseCaseSurfaceManager().stopAsync();
            this.label = 1;
            if (deferredStopAsync.await(this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
