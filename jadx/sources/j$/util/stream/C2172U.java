package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;

/* JADX INFO: renamed from: j$.util.stream.U */
/* JADX INFO: loaded from: classes2.dex */
public final class C2172U extends CountedCompleter {

    /* JADX INFO: renamed from: a */
    public Spliterator f1027a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC6242p2 f1028b;

    /* JADX INFO: renamed from: c */
    public final AbstractC6277y1 f1029c;

    /* JADX INFO: renamed from: d */
    public long f1030d;

    public C2172U(AbstractC6277y1 abstractC6277y1, Spliterator spliterator, InterfaceC6242p2 interfaceC6242p2) {
        super(null);
        this.f1028b = interfaceC6242p2;
        this.f1029c = abstractC6277y1;
        this.f1027a = spliterator;
        this.f1030d = 0L;
    }

    public C2172U(C2172U c2172u, Spliterator spliterator) {
        super(c2172u);
        this.f1027a = spliterator;
        this.f1028b = c2172u.f1028b;
        this.f1030d = c2172u.f1030d;
        this.f1029c = c2172u.f1029c;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator spliteratorTrySplit;
        Spliterator spliterator = this.f1027a;
        long jEstimateSize = spliterator.estimateSize();
        long jM852e = this.f1030d;
        if (jM852e == 0) {
            jM852e = AbstractC2182e.m852e(jEstimateSize);
            this.f1030d = jM852e;
        }
        boolean zM850k = EnumC6195d3.SHORT_CIRCUIT.m850k(((AbstractC2179b) this.f1029c).f1066m);
        InterfaceC6242p2 interfaceC6242p2 = this.f1028b;
        boolean z = false;
        C2172U c2172u = this;
        while (true) {
            if (zM850k && interfaceC6242p2.mo745p()) {
                break;
            }
            if (jEstimateSize <= jM852e || (spliteratorTrySplit = spliterator.trySplit()) == null) {
                break;
            }
            C2172U c2172u2 = new C2172U(c2172u, spliteratorTrySplit);
            c2172u.addToPendingCount(1);
            if (z) {
                spliterator = spliteratorTrySplit;
            } else {
                C2172U c2172u3 = c2172u;
                c2172u = c2172u2;
                c2172u2 = c2172u3;
            }
            z = !z;
            c2172u.fork();
            c2172u = c2172u2;
            jEstimateSize = spliterator.estimateSize();
        }
        c2172u.f1029c.mo836Z(spliterator, interfaceC6242p2);
        c2172u.f1027a = null;
        c2172u.propagateCompletion();
    }
}
