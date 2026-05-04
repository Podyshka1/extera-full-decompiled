package j$.util.stream;

import j$.time.C2045s;
import j$.util.C2080D;
import j$.util.InterfaceC2096U;
import j$.util.Objects;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.stream.w */
/* JADX INFO: loaded from: classes2.dex */
public final class C2200w extends AbstractC6214i2 {

    /* JADX INFO: renamed from: b */
    public boolean f1258b;

    /* JADX INFO: renamed from: c */
    public final C2080D f1259c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2201x f1260d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2200w(C2201x c2201x, InterfaceC6242p2 interfaceC6242p2) {
        super(interfaceC6242p2);
        this.f1260d = c2201x;
        InterfaceC6242p2 interfaceC6242p22 = this.f1158a;
        Objects.requireNonNull(interfaceC6242p22);
        this.f1259c = new C2080D(interfaceC6242p22, 1);
    }

    @Override // j$.util.stream.AbstractC6214i2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        this.f1158a.mo744m(-1L);
    }

    @Override // j$.util.stream.InterfaceC6230m2, j$.util.stream.InterfaceC6242p2
    public final void accept(double d) {
        InterfaceC2157E interfaceC2157E = (InterfaceC2157E) ((C2045s) this.f1260d.f1266t).apply(d);
        if (interfaceC2157E != null) {
            try {
                boolean z = this.f1258b;
                C2080D c2080d = this.f1259c;
                if (!z) {
                    interfaceC2157E.sequential().forEach(c2080d);
                } else {
                    InterfaceC2096U interfaceC2096USpliterator = interfaceC2157E.sequential().spliterator();
                    while (!this.f1158a.mo745p() && interfaceC2096USpliterator.tryAdvance((DoubleConsumer) c2080d)) {
                    }
                }
            } catch (Throwable th) {
                try {
                    interfaceC2157E.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (interfaceC2157E != null) {
            interfaceC2157E.close();
        }
    }

    @Override // j$.util.stream.AbstractC6214i2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final boolean mo745p() {
        this.f1258b = true;
        return this.f1158a.mo745p();
    }
}
