package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.core.Log;
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
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.TimeoutKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m872c = "androidx.camera.camera2.pipe.internal.CameraPipeLifetime$shutdownScope$1$2", m873f = "CameraPipeLifetime.kt", m874i = {}, m875l = {119}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
public final class CameraPipeLifetime$shutdownScope$1$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ CameraPipeLifetime this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraPipeLifetime$shutdownScope$1$2(CameraPipeLifetime cameraPipeLifetime, Continuation<? super CameraPipeLifetime$shutdownScope$1$2> continuation) {
        super(2, continuation);
        this.this$0 = cameraPipeLifetime;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CameraPipeLifetime$shutdownScope$1$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CameraPipeLifetime$shutdownScope$1$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.internal.CameraPipeLifetime$shutdownScope$1$2$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.pipe.internal.CameraPipeLifetime$shutdownScope$1$2$1", m873f = "CameraPipeLifetime.kt", m874i = {}, m875l = {121}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
    @SourceDebugExtension({"SMAP\nCameraPipeLifetime.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraPipeLifetime.kt\nandroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2$1\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,144:1\n50#2,2:145\n*S KotlinDebug\n*F\n+ 1 CameraPipeLifetime.kt\nandroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2$1\n*L\n120#1:145,2\n*E\n"})
    public static final class C02451 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ CameraPipeLifetime this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C02451(CameraPipeLifetime cameraPipeLifetime, Continuation<? super C02451> continuation) {
            super(2, continuation);
            this.this$0 = cameraPipeLifetime;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02451(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02451) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Cancelling CameraPipe root Job...");
                }
                Job job = this.this$0.cameraPipeJob;
                this.label = 1;
                if (JobKt.cancelAndJoin(job, this) == coroutine_suspended) {
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

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        C02451 c02451 = new C02451(this.this$0, null);
        this.label = 1;
        Object objWithTimeoutOrNull = TimeoutKt.withTimeoutOrNull(3000L, c02451, this);
        return objWithTimeoutOrNull == coroutine_suspended ? coroutine_suspended : objWithTimeoutOrNull;
    }
}
