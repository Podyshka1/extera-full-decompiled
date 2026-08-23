package p022j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.U */
/* JADX INFO: loaded from: classes2.dex */
public final class C2410U extends CountedCompleter {

    /* JADX INFO: renamed from: a */
    public Spliterator f1262a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC2529p2 f1263b;

    /* JADX INFO: renamed from: c */
    public final AbstractC2573y1 f1264c;

    /* JADX INFO: renamed from: d */
    public long f1265d;

    public C2410U(AbstractC2573y1 abstractC2573y1, Spliterator spliterator, InterfaceC2529p2 interfaceC2529p2) {
        super(null);
        this.f1263b = interfaceC2529p2;
        this.f1264c = abstractC2573y1;
        this.f1262a = spliterator;
        this.f1265d = 0L;
    }

    public C2410U(C2410U c2410u, Spliterator spliterator) {
        super(c2410u);
        this.f1262a = spliterator;
        this.f1263b = c2410u.f1263b;
        this.f1265d = c2410u.f1265d;
        this.f1264c = c2410u.f1264c;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator spliteratorTrySplit;
        Spliterator spliterator = this.f1262a;
        long jEstimateSize = spliterator.estimateSize();
        long jM1003e = this.f1265d;
        if (jM1003e == 0) {
            jM1003e = AbstractC2464e.m1003e(jEstimateSize);
            this.f1265d = jM1003e;
        }
        boolean zM1001k = EnumC2462d3.SHORT_CIRCUIT.m1001k(((AbstractC2446b) this.f1264c).f1301m);
        InterfaceC2529p2 interfaceC2529p2 = this.f1263b;
        boolean z = false;
        C2410U c2410u = this;
        while (true) {
            if (zM1001k && interfaceC2529p2.mo874p()) {
                break;
            }
            if (jEstimateSize <= jM1003e || (spliteratorTrySplit = spliterator.trySplit()) == null) {
                break;
            }
            C2410U c2410u2 = new C2410U(c2410u, spliteratorTrySplit);
            c2410u.addToPendingCount(1);
            if (z) {
                spliterator = spliteratorTrySplit;
            } else {
                C2410U c2410u3 = c2410u;
                c2410u = c2410u2;
                c2410u2 = c2410u3;
            }
            z = !z;
            c2410u.fork();
            c2410u = c2410u2;
            jEstimateSize = spliterator.estimateSize();
        }
        c2410u.f1264c.mo978Z(spliterator, interfaceC2529p2);
        c2410u.f1262a = null;
        c2410u.propagateCompletion();
    }
}
