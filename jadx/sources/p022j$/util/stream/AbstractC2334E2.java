package p022j$.util.stream;

import java.util.Comparator;

/* JADX INFO: renamed from: j$.util.stream.E2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2334E2 extends AbstractC2509l2 {

    /* JADX INFO: renamed from: b */
    public final Comparator f1122b;

    /* JADX INFO: renamed from: c */
    public boolean f1123c;

    public AbstractC2334E2(InterfaceC2529p2 interfaceC2529p2, Comparator comparator) {
        super(interfaceC2529p2);
        this.f1122b = comparator;
    }

    @Override // p022j$.util.stream.AbstractC2509l2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final boolean mo874p() {
        this.f1123c = true;
        return false;
    }
}
