package j$.util.stream;

import java.util.HashSet;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* JADX INFO: renamed from: j$.util.stream.n */
/* JADX INFO: loaded from: classes2.dex */
public final class C2191n extends AbstractC6226l2 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1199b;

    /* JADX INFO: renamed from: c */
    public Object f1200c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2191n(AbstractC2179b abstractC2179b, InterfaceC6242p2 interfaceC6242p2, int i) {
        super(interfaceC6242p2);
        this.f1199b = i;
        this.f1200c = abstractC2179b;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2191n(InterfaceC6242p2 interfaceC6242p2) {
        super(interfaceC6242p2);
        this.f1199b = 0;
    }

    @Override // j$.util.stream.AbstractC6226l2, j$.util.stream.InterfaceC6242p2
    public void end() {
        switch (this.f1199b) {
            case 0:
                this.f1200c = null;
                this.f1187a.end();
                break;
            default:
                super.end();
                break;
        }
    }

    @Override // j$.util.stream.AbstractC6226l2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public void mo744m(long j) {
        switch (this.f1199b) {
            case 0:
                this.f1200c = new HashSet();
                this.f1187a.mo744m(-1L);
                break;
            case 1:
            default:
                super.mo744m(j);
                break;
            case 2:
                this.f1187a.mo744m(-1L);
                break;
        }
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f1199b) {
            case 0:
                if (!((Set) this.f1200c).contains(obj)) {
                    ((Set) this.f1200c).add(obj);
                    this.f1187a.accept(obj);
                }
                break;
            case 1:
                ((Consumer) ((C2196s) this.f1200c).f1231t).accept(obj);
                this.f1187a.accept(obj);
                break;
            case 2:
                if (((Predicate) ((C2196s) this.f1200c).f1231t).test(obj)) {
                    this.f1187a.accept(obj);
                }
                break;
            case 3:
                this.f1187a.accept(((Function) ((C2196s) this.f1200c).f1231t).apply(obj));
                break;
            case 4:
                this.f1187a.accept(((ToIntFunction) ((C2174W) this.f1200c).f1040t).applyAsInt(obj));
                break;
            case 5:
                this.f1187a.accept(((ToLongFunction) ((C6208h0) this.f1200c).f1153t).applyAsLong(obj));
                break;
            default:
                this.f1187a.accept(((ToDoubleFunction) ((C2201x) this.f1200c).f1266t).applyAsDouble(obj));
                break;
        }
    }
}
