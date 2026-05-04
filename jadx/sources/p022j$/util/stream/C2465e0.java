package p022j$.util.stream;

import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.LongPredicate;
import java.util.function.LongToDoubleFunction;
import java.util.function.LongToIntFunction;
import java.util.function.LongUnaryOperator;

/* JADX INFO: renamed from: j$.util.stream.e0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2465e0 extends AbstractC2503k2 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1367b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ AbstractC2446b f1368c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2465e0(AbstractC2446b abstractC2446b, InterfaceC2529p2 interfaceC2529p2, int i) {
        super(interfaceC2529p2);
        this.f1367b = i;
        this.f1368c = abstractC2446b;
    }

    @Override // p022j$.util.stream.AbstractC2503k2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public void mo873m(long j) {
        switch (this.f1367b) {
            case 4:
                this.f1409a.mo873m(-1L);
                break;
            default:
                super.mo873m(j);
                break;
        }
    }

    @Override // p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final void accept(long j) {
        switch (this.f1367b) {
            case 0:
                this.f1409a.accept(((LongFunction) ((C2541s) this.f1368c).f1467t).apply(j));
                return;
            case 1:
                ((C2556v) this.f1368c).getClass();
                LongUnaryOperator longUnaryOperator = null;
                longUnaryOperator.applyAsLong(j);
                throw null;
            case 2:
                ((C2551u) this.f1368c).getClass();
                LongToIntFunction longToIntFunction = null;
                longToIntFunction.applyAsInt(j);
                throw null;
            case 3:
                ((C2546t) this.f1368c).getClass();
                LongToDoubleFunction longToDoubleFunction = null;
                longToDoubleFunction.applyAsDouble(j);
                throw null;
            case 4:
                ((C2556v) this.f1368c).getClass();
                LongPredicate longPredicate = null;
                longPredicate.test(j);
                throw null;
            default:
                ((LongConsumer) ((C2483h0) this.f1368c).f1389t).accept(j);
                this.f1409a.accept(j);
                return;
        }
    }
}
