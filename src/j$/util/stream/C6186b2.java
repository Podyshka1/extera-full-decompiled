package j$.util.stream;

import j$.time.C2045s;
import j$.util.C2080D;
import j$.util.C2088L;
import j$.util.InterfaceC2096U;
import j$.util.InterfaceC2101Z;
import j$.util.Objects;
import java.util.function.DoubleConsumer;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.stream.b2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6186b2 extends AbstractC6226l2 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1072b = 0;

    /* JADX INFO: renamed from: c */
    public boolean f1073c;

    /* JADX INFO: renamed from: d */
    public final Object f1074d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ AbstractC2179b f1075e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6186b2(C2201x c2201x, InterfaceC6242p2 interfaceC6242p2) {
        super(interfaceC6242p2);
        this.f1075e = c2201x;
        InterfaceC6242p2 interfaceC6242p22 = this.f1187a;
        Objects.requireNonNull(interfaceC6242p22);
        this.f1074d = new C2080D(interfaceC6242p22, 1);
    }

    @Override // j$.util.stream.AbstractC6226l2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        switch (this.f1072b) {
            case 0:
                this.f1187a.mo744m(-1L);
                break;
            default:
                this.f1187a.mo744m(-1L);
                break;
        }
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m800v(Object obj) {
        switch (this.f1072b) {
            case 0:
                C2088L c2088l = (C2088L) this.f1074d;
                LongStream longStream = (LongStream) ((C2045s) ((C6208h0) this.f1075e).f1153t).apply(obj);
                if (longStream != null) {
                    try {
                        if (!this.f1073c) {
                            longStream.sequential().forEach(c2088l);
                        } else {
                            InterfaceC2101Z interfaceC2101ZSpliterator = longStream.sequential().spliterator();
                            while (!this.f1187a.mo745p() && interfaceC2101ZSpliterator.tryAdvance((LongConsumer) c2088l)) {
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
                C2080D c2080d = (C2080D) this.f1074d;
                InterfaceC2157E interfaceC2157E = (InterfaceC2157E) ((C2045s) ((C2201x) this.f1075e).f1266t).apply(obj);
                if (interfaceC2157E != null) {
                    try {
                        if (!this.f1073c) {
                            interfaceC2157E.sequential().forEach(c2080d);
                        } else {
                            InterfaceC2096U interfaceC2096USpliterator = interfaceC2157E.sequential().spliterator();
                            while (!this.f1187a.mo745p() && interfaceC2096USpliterator.tryAdvance((DoubleConsumer) c2080d)) {
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            interfaceC2157E.close();
                            break;
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        throw th3;
                    }
                    break;
                }
                if (interfaceC2157E != null) {
                    interfaceC2157E.close();
                    return;
                }
                return;
        }
    }

    @Override // j$.util.stream.AbstractC6226l2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final boolean mo745p() {
        switch (this.f1072b) {
            case 0:
                this.f1073c = true;
                break;
            default:
                this.f1073c = true;
                break;
        }
        return this.f1187a.mo745p();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6186b2(C6208h0 c6208h0, InterfaceC6242p2 interfaceC6242p2) {
        super(interfaceC6242p2);
        this.f1075e = c6208h0;
        InterfaceC6242p2 interfaceC6242p22 = this.f1187a;
        Objects.requireNonNull(interfaceC6242p22);
        this.f1074d = new C2088L(interfaceC6242p22, 1);
    }
}
