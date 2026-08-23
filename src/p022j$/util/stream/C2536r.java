package p022j$.util.stream;

import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.DoublePredicate;
import java.util.function.DoubleToIntFunction;
import java.util.function.DoubleToLongFunction;
import java.util.function.DoubleUnaryOperator;

/* JADX INFO: renamed from: j$.util.stream.r */
/* JADX INFO: loaded from: classes2.dex */
public final class C2536r extends AbstractC2491i2 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1457b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ AbstractC2446b f1458c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2536r(AbstractC2446b abstractC2446b, InterfaceC2529p2 interfaceC2529p2, int i) {
        super(interfaceC2529p2);
        this.f1457b = i;
        this.f1458c = abstractC2446b;
    }

    @Override // p022j$.util.stream.AbstractC2491i2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public void mo873m(long j) {
        switch (this.f1457b) {
            case 4:
                this.f1394a.mo873m(-1L);
                break;
            default:
                super.mo873m(j);
                break;
        }
    }

    @Override // p022j$.util.stream.InterfaceC2514m2, p022j$.util.stream.InterfaceC2529p2
    public final void accept(double d) {
        switch (this.f1457b) {
            case 0:
                this.f1394a.accept(((DoubleFunction) ((C2541s) this.f1458c).f1467t).apply(d));
                return;
            case 1:
                ((C2546t) this.f1458c).getClass();
                DoubleUnaryOperator doubleUnaryOperator = null;
                doubleUnaryOperator.applyAsDouble(d);
                throw null;
            case 2:
                ((C2551u) this.f1458c).getClass();
                DoubleToIntFunction doubleToIntFunction = null;
                doubleToIntFunction.applyAsInt(d);
                throw null;
            case 3:
                ((C2556v) this.f1458c).getClass();
                DoubleToLongFunction doubleToLongFunction = null;
                doubleToLongFunction.applyAsLong(d);
                throw null;
            case 4:
                ((C2546t) this.f1458c).getClass();
                DoublePredicate doublePredicate = null;
                doublePredicate.test(d);
                throw null;
            default:
                ((DoubleConsumer) ((C2566x) this.f1458c).f1502t).accept(d);
                this.f1394a.accept(d);
                return;
        }
    }
}
