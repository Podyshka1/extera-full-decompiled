package kotlinx.coroutines.flow.internal;

import com.android.dx.io.Opcodes;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "T", "it"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "kotlinx.coroutines.flow.internal.UndispatchedContextCollector$emitRef$1", m766f = "ChannelFlow.kt", m767i = {}, m768l = {Opcodes.ADD_INT_LIT16}, m769m = "invokeSuspend", m770n = {}, m771s = {})
public final class UndispatchedContextCollector$emitRef$1<T> extends SuspendLambda implements Function2<T, Continuation<? super Unit>, Object> {
    final /* synthetic */ FlowCollector<T> $downstream;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UndispatchedContextCollector$emitRef$1(FlowCollector<? super T> flowCollector, Continuation<? super UndispatchedContextCollector$emitRef$1> continuation) {
        super(2, continuation);
        this.$downstream = flowCollector;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        UndispatchedContextCollector$emitRef$1 undispatchedContextCollector$emitRef$1 = new UndispatchedContextCollector$emitRef$1(this.$downstream, continuation);
        undispatchedContextCollector$emitRef$1.L$0 = obj;
        return undispatchedContextCollector$emitRef$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(T t, Continuation<? super Unit> continuation) {
        return ((UndispatchedContextCollector$emitRef$1) create(t, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.Continuation to kotlinx.coroutines.flow.internal.UndispatchedContextCollector$emitRef$1<T> for r3v3 'this'  kotlin.coroutines.Continuation
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r4) {
        /*
            r3 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r3.label
            r2 = 1
            if (r1 == 0) goto L16
            if (r1 != r2) goto Lf
            kotlin.ResultKt.throwOnFailure(r4)
            goto L26
        Lf:
            java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
            okio.Segment$$ExternalSyntheticBUOutline1.m848m(r3)
            r3 = 0
            return r3
        L16:
            kotlin.ResultKt.throwOnFailure(r4)
            java.lang.Object r4 = r3.L$0
            kotlinx.coroutines.flow.FlowCollector<T> r1 = r3.$downstream
            r3.label = r2
            java.lang.Object r3 = r1.emit(r4, r3)
            if (r3 != r0) goto L26
            return r0
        L26:
            kotlin.Unit r3 = kotlin.Unit.INSTANCE
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.UndispatchedContextCollector$emitRef$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
