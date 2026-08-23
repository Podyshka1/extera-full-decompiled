package j$.util.stream;

import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.IntToDoubleFunction;
import java.util.function.IntToLongFunction;
import java.util.function.IntUnaryOperator;

/* JADX INFO: renamed from: j$.util.stream.V */
/* JADX INFO: loaded from: classes2.dex */
public final class C2173V extends AbstractC6218j2 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1036b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ AbstractC2179b f1037c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2173V(AbstractC2179b abstractC2179b, InterfaceC6242p2 interfaceC6242p2, int i) {
        super(interfaceC6242p2);
        this.f1036b = i;
        this.f1037c = abstractC2179b;
    }

    @Override // j$.util.stream.AbstractC6218j2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public void mo744m(long j) {
        switch (this.f1036b) {
            case 5:
                this.f1164a.mo744m(-1L);
                break;
            default:
                super.mo744m(j);
                break;
        }
    }

    @Override // j$.util.stream.InterfaceC6234n2, j$.util.stream.InterfaceC6242p2
    public final void accept(int i) {
        switch (this.f1036b) {
            case 0:
                this.f1164a.accept(((IntFunction) ((C2196s) this.f1037c).f1231t).apply(i));
                return;
            case 1:
                ((IntConsumer) ((C2174W) this.f1037c).f1040t).accept(i);
                this.f1164a.accept(i);
                return;
            case 2:
                this.f1164a.accept(((IntUnaryOperator) ((C2174W) this.f1037c).f1040t).applyAsInt(i));
                return;
            case 3:
                ((C2199v) this.f1037c).getClass();
                IntToLongFunction intToLongFunction = null;
                intToLongFunction.applyAsLong(i);
                throw null;
            case 4:
                ((C2197t) this.f1037c).getClass();
                IntToDoubleFunction intToDoubleFunction = null;
                intToDoubleFunction.applyAsDouble(i);
                throw null;
            default:
                if (((IntPredicate) ((C2174W) this.f1037c).f1040t).test(i)) {
                    this.f1164a.accept(i);
                    return;
                }
                return;
        }
    }
}
