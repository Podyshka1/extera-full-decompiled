package j$.util.stream;

import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountedCompleter;

/* JADX INFO: renamed from: j$.util.stream.T */
/* JADX INFO: loaded from: classes2.dex */
public final class C2171T extends CountedCompleter {

    /* JADX INFO: renamed from: a */
    public final AbstractC6277y1 f1016a;

    /* JADX INFO: renamed from: b */
    public Spliterator f1017b;

    /* JADX INFO: renamed from: c */
    public final long f1018c;

    /* JADX INFO: renamed from: d */
    public final ConcurrentHashMap f1019d;

    /* JADX INFO: renamed from: e */
    public final AbstractC2170S f1020e;

    /* JADX INFO: renamed from: f */
    public final C2171T f1021f;

    /* JADX INFO: renamed from: g */
    public I0 f1022g;

    public C2171T(AbstractC6277y1 abstractC6277y1, Spliterator spliterator, AbstractC2170S abstractC2170S) {
        super(null);
        this.f1016a = abstractC6277y1;
        this.f1017b = spliterator;
        this.f1018c = AbstractC2182e.m852e(spliterator.estimateSize());
        this.f1019d = new ConcurrentHashMap(Math.max(16, AbstractC2182e.f1124g << 1));
        this.f1020e = abstractC2170S;
        this.f1021f = null;
    }

    public C2171T(C2171T c2171t, Spliterator spliterator, C2171T c2171t2) {
        super(c2171t);
        this.f1016a = c2171t.f1016a;
        this.f1017b = spliterator;
        this.f1018c = c2171t.f1018c;
        this.f1019d = c2171t.f1019d;
        this.f1020e = c2171t.f1020e;
        this.f1021f = c2171t2;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator spliteratorTrySplit;
        Spliterator spliterator = this.f1017b;
        long j = this.f1018c;
        boolean z = false;
        C2171T c2171t = this;
        while (spliterator.estimateSize() > j && (spliteratorTrySplit = spliterator.trySplit()) != null) {
            C2171T c2171t2 = new C2171T(c2171t, spliteratorTrySplit, c2171t.f1021f);
            C2171T c2171t3 = new C2171T(c2171t, spliterator, c2171t2);
            c2171t.addToPendingCount(1);
            c2171t3.addToPendingCount(1);
            c2171t.f1019d.put(c2171t2, c2171t3);
            if (c2171t.f1021f != null) {
                c2171t2.addToPendingCount(1);
                if (c2171t.f1019d.replace(c2171t.f1021f, c2171t, c2171t2)) {
                    c2171t.addToPendingCount(-1);
                } else {
                    c2171t2.addToPendingCount(-1);
                }
            }
            if (z) {
                spliterator = spliteratorTrySplit;
                c2171t = c2171t2;
                c2171t2 = c2171t3;
            } else {
                c2171t = c2171t3;
            }
            z = !z;
            c2171t2.fork();
        }
        if (c2171t.getPendingCount() > 0) {
            C2193p c2193p = new C2193p(10);
            AbstractC6277y1 abstractC6277y1 = c2171t.f1016a;
            A0 a0P0 = abstractC6277y1.p0(abstractC6277y1.e0(spliterator), c2193p);
            c2171t.f1016a.s0(spliterator, a0P0);
            c2171t.f1022g = a0P0.build();
            c2171t.f1017b = null;
        }
        c2171t.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        I0 i0 = this.f1022g;
        if (i0 != null) {
            i0.forEach(this.f1020e);
            this.f1022g = null;
        } else {
            Spliterator spliterator = this.f1017b;
            if (spliterator != null) {
                this.f1016a.s0(spliterator, this.f1020e);
                this.f1017b = null;
            }
        }
        C2171T c2171t = (C2171T) this.f1019d.remove(this);
        if (c2171t != null) {
            c2171t.tryComplete();
        }
    }
}
