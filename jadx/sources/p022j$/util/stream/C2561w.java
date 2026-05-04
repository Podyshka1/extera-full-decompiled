package p022j$.util.stream;

import java.util.function.DoubleConsumer;
import p022j$.time.C2184s;
import p022j$.util.C2219D;
import p022j$.util.InterfaceC2235U;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.util.stream.w */
/* JADX INFO: loaded from: classes2.dex */
public final class C2561w extends AbstractC2491i2 {

    /* JADX INFO: renamed from: b */
    public boolean f1494b;

    /* JADX INFO: renamed from: c */
    public final C2219D f1495c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2566x f1496d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2561w(C2566x c2566x, InterfaceC2529p2 interfaceC2529p2) {
        super(interfaceC2529p2);
        this.f1496d = c2566x;
        InterfaceC2529p2 interfaceC2529p22 = this.f1394a;
        Objects.requireNonNull(interfaceC2529p22);
        this.f1495c = new C2219D(interfaceC2529p22, 1);
    }

    @Override // p022j$.util.stream.AbstractC2491i2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        this.f1394a.mo873m(-1L);
    }

    @Override // p022j$.util.stream.InterfaceC2514m2, p022j$.util.stream.InterfaceC2529p2
    public final void accept(double d) {
        InterfaceC2331E interfaceC2331E = (InterfaceC2331E) ((C2184s) this.f1496d.f1502t).apply(d);
        if (interfaceC2331E != null) {
            try {
                boolean z = this.f1494b;
                C2219D c2219d = this.f1495c;
                if (!z) {
                    interfaceC2331E.sequential().forEach(c2219d);
                } else {
                    InterfaceC2235U interfaceC2235USpliterator = interfaceC2331E.sequential().spliterator();
                    while (!this.f1394a.mo874p() && interfaceC2235USpliterator.tryAdvance((DoubleConsumer) c2219d)) {
                    }
                }
            } catch (Throwable th) {
                try {
                    interfaceC2331E.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (interfaceC2331E != null) {
            interfaceC2331E.close();
        }
    }

    @Override // p022j$.util.stream.AbstractC2491i2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final boolean mo874p() {
        this.f1494b = true;
        return this.f1394a.mo874p();
    }
}
