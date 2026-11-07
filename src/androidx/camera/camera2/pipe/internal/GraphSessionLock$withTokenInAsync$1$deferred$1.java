package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.core.Token;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.Deferred;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/Deferred;", "T", "token", "Landroidx/camera/camera2/pipe/core/Token;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m920c = "androidx.camera.camera2.pipe.internal.GraphSessionLock$withTokenInAsync$1$deferred$1", m921f = "GraphSessionLock.kt", m922i = {}, m923l = {64}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
public final class GraphSessionLock$withTokenInAsync$1$deferred$1<T> extends SuspendLambda implements Function2<Token, Continuation<? super Deferred<? extends T>>, Object> {
    final /* synthetic */ Function2<Token, Continuation<? super Deferred<? extends T>>, Object> $action;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public GraphSessionLock$withTokenInAsync$1$deferred$1(Function2<? super Token, ? super Continuation<? super Deferred<? extends T>>, ? extends Object> function2, Continuation<? super GraphSessionLock$withTokenInAsync$1$deferred$1> continuation) {
        super(2, continuation);
        this.$action = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        GraphSessionLock$withTokenInAsync$1$deferred$1 graphSessionLock$withTokenInAsync$1$deferred$1 = new GraphSessionLock$withTokenInAsync$1$deferred$1(this.$action, continuation);
        graphSessionLock$withTokenInAsync$1$deferred$1.L$0 = obj;
        return graphSessionLock$withTokenInAsync$1$deferred$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Token token, Continuation<? super Deferred<? extends T>> continuation) {
        return ((GraphSessionLock$withTokenInAsync$1$deferred$1) create(token, continuation)).invokeSuspend(Unit.INSTANCE);
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
            Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        Token token = (Token) this.L$0;
        Function2<Token, Continuation<? super Deferred<? extends T>>, Object> function2 = this.$action;
        this.label = 1;
        Object objInvoke = function2.invoke(token, this);
        return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
    }
}
