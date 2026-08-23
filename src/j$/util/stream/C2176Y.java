package j$.util.stream;

import j$.util.C2084H;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.stream.Y */
/* JADX INFO: loaded from: classes2.dex */
public final class C2176Y extends AbstractC6218j2 {

    /* JADX INFO: renamed from: b */
    public boolean f1044b;

    /* JADX INFO: renamed from: c */
    public final C2084H f1045c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2174W f1046d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2176Y(C2174W c2174w, InterfaceC6242p2 interfaceC6242p2) {
        super(interfaceC6242p2);
        this.f1046d = c2174w;
        InterfaceC6242p2 interfaceC6242p22 = this.f1164a;
        Objects.requireNonNull(interfaceC6242p22);
        this.f1045c = new C2084H(interfaceC6242p22, 1);
    }

    @Override // j$.util.stream.AbstractC6218j2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        this.f1164a.mo744m(-1L);
    }

    @Override // j$.util.stream.InterfaceC6234n2, j$.util.stream.InterfaceC6242p2
    public final void accept(int i) {
        IntStream intStream = (IntStream) ((C2165M) this.f1046d.f1040t).apply(i);
        if (intStream != null) {
            try {
                boolean z = this.f1044b;
                C2084H c2084h = this.f1045c;
                if (!z) {
                    intStream.sequential().forEach(c2084h);
                } else {
                    Spliterator.OfInt ofIntSpliterator = intStream.sequential().spliterator();
                    while (!this.f1164a.mo745p() && ofIntSpliterator.tryAdvance((IntConsumer) c2084h)) {
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

    @Override // j$.util.stream.AbstractC6218j2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final boolean mo745p() {
        this.f1044b = true;
        return this.f1164a.mo745p();
    }
}
