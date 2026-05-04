package p022j$.util.stream;

import java.util.function.DoubleConsumer;
import java.util.function.LongConsumer;
import p022j$.time.C2184s;
import p022j$.util.C2219D;
import p022j$.util.C2227L;
import p022j$.util.InterfaceC2235U;
import p022j$.util.InterfaceC2240Z;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.util.stream.b2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2449b2 extends AbstractC2509l2 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1307b = 0;

    /* JADX INFO: renamed from: c */
    public boolean f1308c;

    /* JADX INFO: renamed from: d */
    public final Object f1309d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ AbstractC2446b f1310e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2449b2(C2566x c2566x, InterfaceC2529p2 interfaceC2529p2) {
        super(interfaceC2529p2);
        this.f1310e = c2566x;
        InterfaceC2529p2 interfaceC2529p22 = this.f1423a;
        Objects.requireNonNull(interfaceC2529p22);
        this.f1309d = new C2219D(interfaceC2529p22, 1);
    }

    @Override // p022j$.util.stream.AbstractC2509l2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        switch (this.f1307b) {
            case 0:
                this.f1423a.mo873m(-1L);
                break;
            default:
                this.f1423a.mo873m(-1L);
                break;
        }
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m940v(Object obj) {
        switch (this.f1307b) {
            case 0:
                C2227L c2227l = (C2227L) this.f1309d;
                LongStream longStream = (LongStream) ((C2184s) ((C2483h0) this.f1310e).f1389t).apply(obj);
                if (longStream != null) {
                    try {
                        if (!this.f1308c) {
                            longStream.sequential().forEach(c2227l);
                        } else {
                            InterfaceC2240Z interfaceC2240ZSpliterator = longStream.sequential().spliterator();
                            while (!this.f1423a.mo874p() && interfaceC2240ZSpliterator.tryAdvance((LongConsumer) c2227l)) {
                            }
                        }
                    } catch (Throwable th) {
                        try {
                            longStream.close();
                            break;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                    break;
                }
                if (longStream != null) {
                    longStream.close();
                    return;
                }
                return;
            default:
                C2219D c2219d = (C2219D) this.f1309d;
                InterfaceC2331E interfaceC2331E = (InterfaceC2331E) ((C2184s) ((C2566x) this.f1310e).f1502t).apply(obj);
                if (interfaceC2331E != null) {
                    try {
                        if (!this.f1308c) {
                            interfaceC2331E.sequential().forEach(c2219d);
                        } else {
                            InterfaceC2235U interfaceC2235USpliterator = interfaceC2331E.sequential().spliterator();
                            while (!this.f1423a.mo874p() && interfaceC2235USpliterator.tryAdvance((DoubleConsumer) c2219d)) {
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            interfaceC2331E.close();
                            break;
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        throw th3;
                    }
                    break;
                }
                if (interfaceC2331E != null) {
                    interfaceC2331E.close();
                    return;
                }
                return;
        }
    }

    @Override // p022j$.util.stream.AbstractC2509l2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final boolean mo874p() {
        switch (this.f1307b) {
            case 0:
                this.f1308c = true;
                break;
            default:
                this.f1308c = true;
                break;
        }
        return this.f1423a.mo874p();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2449b2(C2483h0 c2483h0, InterfaceC2529p2 interfaceC2529p2) {
        super(interfaceC2529p2);
        this.f1310e = c2483h0;
        InterfaceC2529p2 interfaceC2529p22 = this.f1423a;
        Objects.requireNonNull(interfaceC2529p22);
        this.f1309d = new C2227L(interfaceC2529p22, 1);
    }
}
