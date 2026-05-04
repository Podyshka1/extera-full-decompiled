package j$.util.stream;

import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.DoublePredicate;
import java.util.function.DoubleToIntFunction;
import java.util.function.DoubleToLongFunction;
import java.util.function.DoubleUnaryOperator;

/* JADX INFO: renamed from: j$.util.stream.r */
/* JADX INFO: loaded from: classes2.dex */
public final class C2195r extends AbstractC6214i2 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1221b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ AbstractC2179b f1222c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2195r(AbstractC2179b abstractC2179b, InterfaceC6242p2 interfaceC6242p2, int i) {
        super(interfaceC6242p2);
        this.f1221b = i;
        this.f1222c = abstractC2179b;
    }

    @Override // j$.util.stream.AbstractC6214i2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public void mo744m(long j) {
        switch (this.f1221b) {
            case 4:
                this.f1158a.mo744m(-1L);
                break;
            default:
                super.mo744m(j);
                break;
        }
    }

    @Override // j$.util.stream.InterfaceC6230m2, j$.util.stream.InterfaceC6242p2
    public final void accept(double d) {
        switch (this.f1221b) {
            case 0:
                this.f1158a.accept(((DoubleFunction) ((C2196s) this.f1222c).f1231t).apply(d));
                return;
            case 1:
                ((C2197t) this.f1222c).getClass();
                DoubleUnaryOperator doubleUnaryOperator = null;
                doubleUnaryOperator.applyAsDouble(d);
                throw null;
            case 2:
                ((C2198u) this.f1222c).getClass();
                DoubleToIntFunction doubleToIntFunction = null;
                doubleToIntFunction.applyAsInt(d);
                throw null;
            case 3:
                ((C2199v) this.f1222c).getClass();
                DoubleToLongFunction doubleToLongFunction = null;
                doubleToLongFunction.applyAsLong(d);
                throw null;
            case 4:
                ((C2197t) this.f1222c).getClass();
                DoublePredicate doublePredicate = null;
                doublePredicate.test(d);
                throw null;
            default:
                ((DoubleConsumer) ((C2201x) this.f1222c).f1266t).accept(d);
                this.f1158a.accept(d);
                return;
        }
    }
}
