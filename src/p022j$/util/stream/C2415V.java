package p022j$.util.stream;

import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.IntToDoubleFunction;
import java.util.function.IntToLongFunction;
import java.util.function.IntUnaryOperator;

/* JADX INFO: renamed from: j$.util.stream.V */
/* JADX INFO: loaded from: classes2.dex */
public final class C2415V extends AbstractC2497j2 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1271b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ AbstractC2446b f1272c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2415V(AbstractC2446b abstractC2446b, InterfaceC2529p2 interfaceC2529p2, int i) {
        super(interfaceC2529p2);
        this.f1271b = i;
        this.f1272c = abstractC2446b;
    }

    @Override // p022j$.util.stream.AbstractC2497j2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public void mo873m(long j) {
        switch (this.f1271b) {
            case 5:
                this.f1400a.mo873m(-1L);
                break;
            default:
                super.mo873m(j);
                break;
        }
    }

    @Override // p022j$.util.stream.InterfaceC2519n2, p022j$.util.stream.InterfaceC2529p2
    public final void accept(int i) {
        switch (this.f1271b) {
            case 0:
                this.f1400a.accept(((IntFunction) ((C2541s) this.f1272c).f1467t).apply(i));
                return;
            case 1:
                ((IntConsumer) ((C2420W) this.f1272c).f1275t).accept(i);
                this.f1400a.accept(i);
                return;
            case 2:
                this.f1400a.accept(((IntUnaryOperator) ((C2420W) this.f1272c).f1275t).applyAsInt(i));
                return;
            case 3:
                ((C2556v) this.f1272c).getClass();
                IntToLongFunction intToLongFunction = null;
                intToLongFunction.applyAsLong(i);
                throw null;
            case 4:
                ((C2546t) this.f1272c).getClass();
                IntToDoubleFunction intToDoubleFunction = null;
                intToDoubleFunction.applyAsDouble(i);
                throw null;
            default:
                if (((IntPredicate) ((C2420W) this.f1272c).f1275t).test(i)) {
                    this.f1400a.accept(i);
                    return;
                }
                return;
        }
    }
}
