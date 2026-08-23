package p022j$.util.stream;

import java.util.function.IntConsumer;
import p022j$.time.C2184s;
import p022j$.util.C2223H;
import p022j$.util.Objects;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.d2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2461d2 extends AbstractC2509l2 {

    /* JADX INFO: renamed from: b */
    public boolean f1333b;

    /* JADX INFO: renamed from: c */
    public final C2223H f1334c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2420W f1335d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2461d2(C2420W c2420w, InterfaceC2529p2 interfaceC2529p2) {
        super(interfaceC2529p2);
        this.f1335d = c2420w;
        InterfaceC2529p2 interfaceC2529p22 = this.f1423a;
        Objects.requireNonNull(interfaceC2529p22);
        this.f1334c = new C2223H(interfaceC2529p22, 1);
    }

    @Override // p022j$.util.stream.AbstractC2509l2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        this.f1423a.mo873m(-1L);
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m940v(Object obj) {
        IntStream intStream = (IntStream) ((C2184s) this.f1335d.f1275t).apply(obj);
        if (intStream != null) {
            try {
                boolean z = this.f1333b;
                C2223H c2223h = this.f1334c;
                if (!z) {
                    intStream.sequential().forEach(c2223h);
                } else {
                    Spliterator.OfInt ofIntSpliterator = intStream.sequential().spliterator();
                    while (!this.f1423a.mo874p() && ofIntSpliterator.tryAdvance((IntConsumer) c2223h)) {
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

    @Override // p022j$.util.stream.AbstractC2509l2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final boolean mo874p() {
        this.f1333b = true;
        return this.f1423a.mo874p();
    }
}
