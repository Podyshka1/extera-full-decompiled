package p022j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.e */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2464e extends CountedCompleter {

    /* JADX INFO: renamed from: g */
    public static final int f1360g = ForkJoinPool.getCommonPoolParallelism() << 2;

    /* JADX INFO: renamed from: a */
    public final AbstractC2573y1 f1361a;

    /* JADX INFO: renamed from: b */
    public Spliterator f1362b;

    /* JADX INFO: renamed from: c */
    public long f1363c;

    /* JADX INFO: renamed from: d */
    public AbstractC2464e f1364d;

    /* JADX INFO: renamed from: e */
    public AbstractC2464e f1365e;

    /* JADX INFO: renamed from: f */
    public Object f1366f;

    /* JADX INFO: renamed from: a */
    public abstract Object mo941a();

    /* JADX INFO: renamed from: c */
    public abstract AbstractC2464e mo942c(Spliterator spliterator);

    public AbstractC2464e(AbstractC2573y1 abstractC2573y1, Spliterator spliterator) {
        super(null);
        this.f1361a = abstractC2573y1;
        this.f1362b = spliterator;
        this.f1363c = 0L;
    }

    public AbstractC2464e(AbstractC2464e abstractC2464e, Spliterator spliterator) {
        super(abstractC2464e);
        this.f1362b = spliterator;
        this.f1361a = abstractC2464e.f1361a;
        this.f1363c = abstractC2464e.f1363c;
    }

    /* JADX INFO: renamed from: e */
    public static long m1003e(long j) {
        long j2 = j / ((long) f1360g);
        if (j2 > 0) {
            return j2;
        }
        return 1L;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return this.f1366f;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public final void setRawResult(Object obj) {
        if (obj != null) {
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: renamed from: d */
    public void mo990d(Object obj) {
        this.f1366f = obj;
    }

    /* JADX INFO: renamed from: b */
    public final boolean m1004b() {
        return ((AbstractC2464e) getCompleter()) == null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        Spliterator spliteratorTrySplit;
        Spliterator spliterator = this.f1362b;
        long jEstimateSize = spliterator.estimateSize();
        long jM1003e = this.f1363c;
        if (jM1003e == 0) {
            jM1003e = m1003e(jEstimateSize);
            this.f1363c = jM1003e;
        }
        boolean z = false;
        AbstractC2464e abstractC2464e = this;
        while (jEstimateSize > jM1003e && (spliteratorTrySplit = spliterator.trySplit()) != null) {
            AbstractC2464e abstractC2464eMo942c = abstractC2464e.mo942c(spliteratorTrySplit);
            abstractC2464e.f1364d = abstractC2464eMo942c;
            AbstractC2464e abstractC2464eMo942c2 = abstractC2464e.mo942c(spliterator);
            abstractC2464e.f1365e = abstractC2464eMo942c2;
            abstractC2464e.setPendingCount(1);
            if (z) {
                spliterator = spliteratorTrySplit;
                abstractC2464e = abstractC2464eMo942c;
                abstractC2464eMo942c = abstractC2464eMo942c2;
            } else {
                abstractC2464e = abstractC2464eMo942c2;
            }
            z = !z;
            abstractC2464eMo942c.fork();
            jEstimateSize = spliterator.estimateSize();
        }
        abstractC2464e.mo990d(abstractC2464e.mo941a());
        abstractC2464e.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        this.f1362b = null;
        this.f1365e = null;
        this.f1364d = null;
    }
}
