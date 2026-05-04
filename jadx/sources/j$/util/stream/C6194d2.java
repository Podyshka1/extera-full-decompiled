package j$.util.stream;

import j$.time.C2045s;
import j$.util.C2084H;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.stream.d2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6194d2 extends AbstractC6226l2 {

    /* JADX INFO: renamed from: b */
    public boolean f1097b;

    /* JADX INFO: renamed from: c */
    public final C2084H f1098c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2174W f1099d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6194d2(C2174W c2174w, InterfaceC6242p2 interfaceC6242p2) {
        super(interfaceC6242p2);
        this.f1099d = c2174w;
        InterfaceC6242p2 interfaceC6242p22 = this.f1187a;
        Objects.requireNonNull(interfaceC6242p22);
        this.f1098c = new C2084H(interfaceC6242p22, 1);
    }

    @Override // j$.util.stream.AbstractC6226l2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        this.f1187a.mo744m(-1L);
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m800v(Object obj) {
        IntStream intStream = (IntStream) ((C2045s) this.f1099d.f1040t).apply(obj);
        if (intStream != null) {
            try {
                boolean z = this.f1097b;
                C2084H c2084h = this.f1098c;
                if (!z) {
                    intStream.sequential().forEach(c2084h);
                } else {
                    Spliterator.OfInt ofIntSpliterator = intStream.sequential().spliterator();
                    while (!this.f1187a.mo745p() && ofIntSpliterator.tryAdvance((IntConsumer) c2084h)) {
                    }
                }
            } catch (Throwable th) {
                try {
                    intStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (intStream != null) {
            intStream.close();
        }
    }

    @Override // j$.util.stream.AbstractC6226l2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final boolean mo745p() {
        this.f1097b = true;
        return this.f1187a.mo745p();
    }
}
