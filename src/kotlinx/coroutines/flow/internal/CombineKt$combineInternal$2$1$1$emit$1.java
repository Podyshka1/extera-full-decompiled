package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1", m766f = "Combine.kt", m767i = {}, m768l = {29, 30}, m769m = "emit", m770n = {}, m771s = {})
public final class CombineKt$combineInternal$2$1$1$emit$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CombineKt.C23382.AnonymousClass1.C64481<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CombineKt$combineInternal$2$1$1$emit$1(CombineKt.C23382.AnonymousClass1.C64481<? super T> c64481, Continuation<? super CombineKt$combineInternal$2$1$1$emit$1> continuation) {
        super(continuation);
        this.this$0 = c64481;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.Continuation to kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1$emit$1 for r1v2 'this'  kotlin.coroutines.Continuation
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r2) {
        /*
            r1 = this;
            r1.result = r2
            int r2 = r1.label
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r2 | r0
            r1.label = r2
            kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1<T> r2 = r1.this$0
            r0 = 0
            java.lang.Object r1 = r2.emit(r0, r1)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1$emit$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
