package j$.util.stream;

import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class E2 extends AbstractC6226l2 {

    /* JADX INFO: renamed from: b */
    public final Comparator f887b;

    /* JADX INFO: renamed from: c */
    public boolean f888c;

    public E2(InterfaceC6242p2 interfaceC6242p2, Comparator comparator) {
        super(interfaceC6242p2);
        this.f887b = comparator;
    }

    @Override // j$.util.stream.AbstractC6226l2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final boolean mo745p() {
        this.f888c = true;
        return false;
    }
}
