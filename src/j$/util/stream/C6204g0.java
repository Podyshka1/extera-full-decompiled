package j$.util.stream;

import j$.time.C2045s;
import j$.util.C2088L;
import j$.util.InterfaceC2101Z;
import j$.util.Objects;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.stream.g0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6204g0 extends AbstractC6222k2 {

    /* JADX INFO: renamed from: b */
    public boolean f1145b;

    /* JADX INFO: renamed from: c */
    public final C2088L f1146c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C6208h0 f1147d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6204g0(C6208h0 c6208h0, InterfaceC6242p2 interfaceC6242p2) {
        super(interfaceC6242p2);
        this.f1147d = c6208h0;
        InterfaceC6242p2 interfaceC6242p22 = this.f1173a;
        Objects.requireNonNull(interfaceC6242p22);
        this.f1146c = new C2088L(interfaceC6242p22, 1);
    }

    @Override // j$.util.stream.AbstractC6222k2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        this.f1173a.mo744m(-1L);
    }

    @Override // j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final void accept(long j) {
        LongStream longStream = (LongStream) ((C2045s) this.f1147d.f1153t).apply(j);
        if (longStream != null) {
            try {
                boolean z = this.f1145b;
                C2088L c2088l = this.f1146c;
                if (!z) {
                    longStream.sequential().forEach(c2088l);
                } else {
                    InterfaceC2101Z interfaceC2101ZSpliterator = longStream.sequential().spliterator();
                    while (!this.f1173a.mo745p() && interfaceC2101ZSpliterator.tryAdvance((LongConsumer) c2088l)) {
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

    @Override // j$.util.stream.AbstractC6222k2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final boolean mo745p() {
        this.f1145b = true;
        return this.f1173a.mo745p();
    }
}
