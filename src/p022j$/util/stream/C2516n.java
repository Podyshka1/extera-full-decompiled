package p022j$.util.stream;

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
public final class C2516n extends AbstractC2509l2 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1435b;

    /* JADX INFO: renamed from: c */
    public Object f1436c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2516n(AbstractC2446b abstractC2446b, InterfaceC2529p2 interfaceC2529p2, int i) {
        super(interfaceC2529p2);
        this.f1435b = i;
        this.f1436c = abstractC2446b;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2516n(InterfaceC2529p2 interfaceC2529p2) {
        super(interfaceC2529p2);
        this.f1435b = 0;
    }

    @Override // p022j$.util.stream.AbstractC2509l2, p022j$.util.stream.InterfaceC2529p2
    public void end() {
        switch (this.f1435b) {
            case 0:
                this.f1436c = null;
                this.f1423a.end();
                break;
            default:
                super.end();
                break;
        }
    }

    @Override // p022j$.util.stream.AbstractC2509l2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public void mo873m(long j) {
        switch (this.f1435b) {
            case 0:
                this.f1436c = new HashSet();
                this.f1423a.mo873m(-1L);
                break;
            case 1:
            default:
                super.mo873m(j);
                break;
            case 2:
                this.f1423a.mo873m(-1L);
                break;
        }
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f1435b) {
            case 0:
                if (!((Set) this.f1436c).contains(obj)) {
                    ((Set) this.f1436c).add(obj);
                    this.f1423a.accept(obj);
                }
                break;
            case 1:
                ((Consumer) ((C2541s) this.f1436c).f1467t).accept(obj);
                this.f1423a.accept(obj);
                break;
            case 2:
                if (((Predicate) ((C2541s) this.f1436c).f1467t).test(obj)) {
                    this.f1423a.accept(obj);
                }
                break;
            case 3:
                this.f1423a.accept(((Function) ((C2541s) this.f1436c).f1467t).apply(obj));
                break;
            case 4:
                this.f1423a.accept(((ToIntFunction) ((C2420W) this.f1436c).f1275t).applyAsInt(obj));
                break;
            case 5:
                this.f1423a.accept(((ToLongFunction) ((C2483h0) this.f1436c).f1389t).applyAsLong(obj));
                break;
            default:
                this.f1423a.accept(((ToDoubleFunction) ((C2566x) this.f1436c).f1502t).applyAsDouble(obj));
                break;
        }
    }
}
