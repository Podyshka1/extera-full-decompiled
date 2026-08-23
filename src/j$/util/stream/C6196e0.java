package j$.util.stream;

import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.LongPredicate;
import java.util.function.LongToDoubleFunction;
import java.util.function.LongToIntFunction;
import java.util.function.LongUnaryOperator;

/* JADX INFO: renamed from: j$.util.stream.e0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6196e0 extends AbstractC6222k2 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1131b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ AbstractC2179b f1132c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C6196e0(AbstractC2179b abstractC2179b, InterfaceC6242p2 interfaceC6242p2, int i) {
        super(interfaceC6242p2);
        this.f1131b = i;
        this.f1132c = abstractC2179b;
    }

    @Override // j$.util.stream.AbstractC6222k2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public void mo744m(long j) {
        switch (this.f1131b) {
            case 4:
                this.f1173a.mo744m(-1L);
                break;
            default:
                super.mo744m(j);
                break;
        }
    }

    @Override // j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final void accept(long j) {
        switch (this.f1131b) {
            case 0:
                this.f1173a.accept(((LongFunction) ((C2196s) this.f1132c).f1231t).apply(j));
                return;
            case 1:
                ((C2199v) this.f1132c).getClass();
                LongUnaryOperator longUnaryOperator = null;
                longUnaryOperator.applyAsLong(j);
                throw null;
            case 2:
                ((C2198u) this.f1132c).getClass();
                LongToIntFunction longToIntFunction = null;
                longToIntFunction.applyAsInt(j);
                throw null;
            case 3:
                ((C2197t) this.f1132c).getClass();
                LongToDoubleFunction longToDoubleFunction = null;
                longToDoubleFunction.applyAsDouble(j);
                throw null;
            case 4:
                ((C2199v) this.f1132c).getClass();
                LongPredicate longPredicate = null;
                longPredicate.test(j);
                throw null;
            default:
                ((LongConsumer) ((C6208h0) this.f1132c).f1153t).accept(j);
                this.f1173a.accept(j);
                return;
        }
    }
}
