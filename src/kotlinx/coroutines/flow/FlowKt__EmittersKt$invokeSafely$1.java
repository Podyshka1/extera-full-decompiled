package kotlinx.coroutines.flow;

import com.android.dx.io.Opcodes;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "kotlinx.coroutines.flow.FlowKt__EmittersKt", m766f = "Emitters.kt", m767i = {0}, m768l = {Opcodes.REM_INT_LIT16}, m769m = "invokeSafely$FlowKt__EmittersKt", m770n = {"cause"}, m771s = {"L$0"})
public final class FlowKt__EmittersKt$invokeSafely$1<T> extends ContinuationImpl {
    Object L$0;
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
