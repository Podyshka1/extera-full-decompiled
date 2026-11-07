package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.core.Logger;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.Deferred;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/Deferred;", "Landroidx/camera/camera2/pipe/Result3A;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m872c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1", m873f = "UseCaseCameraRequestControl.kt", m874i = {}, m875l = {749}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
@SourceDebugExtension({"SMAP\nUseCaseCameraRequestControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 3 UseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl\n+ 4 UseCaseCameraConfig.kt\nandroidx/camera/camera2/config/UseCaseGraphContext\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,742:1\n85#2,4:743\n95#2,4:753\n656#3,2:747\n658#3,2:751\n660#3,2:757\n242#4:749\n1#5:750\n*S KotlinDebug\n*F\n+ 1 UseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1\n*L\n456#1:743,4\n457#1:753,4\n457#1:747,2\n457#1:751,2\n457#1:757,2\n457#1:749\n457#1:750\n*E\n"})
public final class UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1 extends SuspendLambda implements Function1<Continuation<? super Deferred<? extends Result3A>>, Object> {
    final /* synthetic */ int $aeMode;
    int I$0;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, int i, Continuation<? super UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1> continuation) {
        super(1, continuation);
        this.this$0 = useCaseCameraRequestControlImpl;
        this.$aeMode = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1(this.this$0, this.$aeMode, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Deferred<? extends Result3A>> continuation) {
        return invoke2((Continuation<? super Deferred<Result3A>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(Continuation<? super Deferred<Result3A>> continuation) {
        return ((UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Exception {
        int i;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl#setTorchOffAsync");
                }
                UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.this$0;
                int i3 = this.$aeMode;
                CameraGraph graph = useCaseCameraRequestControlImpl.useCaseGraphContext.getGraph();
                this.I$0 = i3;
                this.label = 1;
                obj = graph.acquireSession(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                i = i3;
            } else {
                if (i2 != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                i = this.I$0;
                ResultKt.throwOnFailure(obj);
            }
            AutoCloseable autoCloseable = (AutoCloseable) obj;
            try {
                Deferred<Result3A> deferredMo1236setTorchOffNqN7i0k = ((CameraGraph.Session) autoCloseable).mo1236setTorchOffNqN7i0k(AeMode.m1180boximpl(i));
                AutoCloseableKt.closeFinally(autoCloseable, null);
                return deferredMo1236setTorchOffNqN7i0k;
            } finally {
            }
        } catch (CancellationException e) {
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Cannot acquire the CameraGraph.Session", e);
            }
            return UseCaseCameraRequestControlImpl.submitFailedResult;
        }
    }
}
