package p022j$.util.stream;

import java.util.function.LongConsumer;
import p022j$.time.C2184s;
import p022j$.util.C2227L;
import p022j$.util.InterfaceC2240Z;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.util.stream.g0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2477g0 extends AbstractC2503k2 {

    /* JADX INFO: renamed from: b */
    public boolean f1381b;

    /* JADX INFO: renamed from: c */
    public final C2227L f1382c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2483h0 f1383d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2477g0(C2483h0 c2483h0, InterfaceC2529p2 interfaceC2529p2) {
        super(interfaceC2529p2);
        this.f1383d = c2483h0;
        InterfaceC2529p2 interfaceC2529p22 = this.f1409a;
        Objects.requireNonNull(interfaceC2529p22);
        this.f1382c = new C2227L(interfaceC2529p22, 1);
    }

    @Override // p022j$.util.stream.AbstractC2503k2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        this.f1409a.mo873m(-1L);
    }

    @Override // p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final void accept(long j) {
        LongStream longStream = (LongStream) ((C2184s) this.f1383d.f1389t).apply(j);
        if (longStream != null) {
            try {
                boolean z = this.f1381b;
                C2227L c2227l = this.f1382c;
                if (!z) {
                    longStream.sequential().forEach(c2227l);
                } else {
                    InterfaceC2240Z interfaceC2240ZSpliterator = longStream.sequential().spliterator();
                    while (!this.f1409a.mo874p() && interfaceC2240ZSpliterator.tryAdvance((LongConsumer) c2227l)) {
                    }
                }
            } catch (Throwable th) {
                try {
                    longStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (longStream != null) {
            longStream.close();
        }
    }

    @Override // p022j$.util.stream.AbstractC2503k2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final boolean mo874p() {
        this.f1381b = true;
        return this.f1409a.mo874p();
    }
}
