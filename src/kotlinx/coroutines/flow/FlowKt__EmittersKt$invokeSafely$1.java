package kotlinx.coroutines.flow;

import com.android.dx.io.Opcodes;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(m920c = "kotlinx.coroutines.flow.FlowKt__EmittersKt", m921f = "Emitters.kt", m922i = {0, 0, 0}, m923l = {Opcodes.MUL_INT_LIT16}, m924m = "invokeSafely$FlowKt__EmittersKt", m925n = {"$this$invokeSafely", "action", "cause"}, m926s = {"L$0", "L$1", "L$2"}, m927v = 1)
public final class FlowKt__EmittersKt$invokeSafely$1<T> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;

    public FlowKt__EmittersKt$invokeSafely$1(Continuation<? super FlowKt__EmittersKt$invokeSafely$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return FlowKt__EmittersKt.invokeSafely$FlowKt__EmittersKt(null, null, null, this);
    }
}
