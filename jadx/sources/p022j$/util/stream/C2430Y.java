package p022j$.util.stream;

import java.util.function.IntConsumer;
import p022j$.util.C2223H;
import p022j$.util.Objects;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.Y */
/* JADX INFO: loaded from: classes2.dex */
public final class C2430Y extends AbstractC2497j2 {

    /* JADX INFO: renamed from: b */
    public boolean f1279b;

    /* JADX INFO: renamed from: c */
    public final C2223H f1280c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2420W f1281d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2430Y(C2420W c2420w, InterfaceC2529p2 interfaceC2529p2) {
        super(interfaceC2529p2);
        this.f1281d = c2420w;
        InterfaceC2529p2 interfaceC2529p22 = this.f1400a;
        Objects.requireNonNull(interfaceC2529p22);
        this.f1280c = new C2223H(interfaceC2529p22, 1);
    }

    @Override // p022j$.util.stream.AbstractC2497j2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        this.f1400a.mo873m(-1L);
    }

    @Override // p022j$.util.stream.InterfaceC2519n2, p022j$.util.stream.InterfaceC2529p2
    public final void accept(int i) {
        IntStream intStream = (IntStream) ((C2371M) this.f1281d.f1275t).apply(i);
        if (intStream != null) {
            try {
                boolean z = this.f1279b;
                C2223H c2223h = this.f1280c;
                if (!z) {
                    intStream.sequential().forEach(c2223h);
                } else {
                    Spliterator.OfInt ofIntSpliterator = intStream.sequential().spliterator();
                    while (!this.f1400a.mo874p() && ofIntSpliterator.tryAdvance((IntConsumer) c2223h)) {
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

    @Override // p022j$.util.stream.AbstractC2497j2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final boolean mo874p() {
        this.f1279b = true;
        return this.f1400a.mo874p();
    }
}
