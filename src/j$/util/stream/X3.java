package j$.util.stream;

import java.util.function.DoublePredicate;

/* JADX INFO: loaded from: classes2.dex */
public final class X3 extends AbstractC6214i2 {

    /* JADX INFO: renamed from: b */
    public final boolean f1043b;

    public X3(I2 i2, InterfaceC6242p2 interfaceC6242p2) {
        super(interfaceC6242p2);
        this.f1043b = true;
    }

    @Override // j$.util.stream.AbstractC6214i2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        this.f1158a.mo744m(-1L);
    }

    @Override // j$.util.stream.InterfaceC6230m2, j$.util.stream.InterfaceC6242p2
    public final void accept(double d) {
        if (this.f1043b) {
            DoublePredicate doublePredicate = null;
            doublePredicate.test(d);
            throw null;
        }
    }

    @Override // j$.util.stream.AbstractC6214i2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final boolean mo745p() {
        return !this.f1043b || this.f1158a.mo745p();
    }
}
