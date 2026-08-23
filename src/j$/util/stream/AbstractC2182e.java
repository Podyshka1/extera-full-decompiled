package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;

/* JADX INFO: renamed from: j$.util.stream.e */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2182e extends CountedCompleter {

    /* JADX INFO: renamed from: g */
    public static final int f1124g = ForkJoinPool.getCommonPoolParallelism() << 2;

    /* JADX INFO: renamed from: a */
    public final AbstractC6277y1 f1125a;

    /* JADX INFO: renamed from: b */
    public Spliterator f1126b;

    /* JADX INFO: renamed from: c */
    public long f1127c;

    /* JADX INFO: renamed from: d */
    public AbstractC2182e f1128d;

    /* JADX INFO: renamed from: e */
    public AbstractC2182e f1129e;

    /* JADX INFO: renamed from: f */
    public Object f1130f;

    /* JADX INFO: renamed from: a */
    public abstract Object mo801a();

    /* JADX INFO: renamed from: c */
    public abstract AbstractC2182e mo802c(Spliterator spliterator);

    public AbstractC2182e(AbstractC6277y1 abstractC6277y1, Spliterator spliterator) {
        super(null);
        this.f1125a = abstractC6277y1;
        this.f1126b = spliterator;
        this.f1127c = 0L;
    }

    public AbstractC2182e(AbstractC2182e abstractC2182e, Spliterator spliterator) {
        super(abstractC2182e);
        this.f1126b = spliterator;
        this.f1125a = abstractC2182e.f1125a;
        this.f1127c = abstractC2182e.f1127c;
    }

    /* JADX INFO: renamed from: e */
    public static long m852e(long j) {
        long j2 = j / ((long) f1124g);
        if (j2 > 0) {
            return j2;
        }
        return 1L;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return this.f1130f;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public final void setRawResult(Object obj) {
        if (obj != null) {
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: renamed from: d */
    public void mo840d(Object obj) {
        this.f1130f = obj;
    }

    /* JADX INFO: renamed from: b */
    public final boolean m853b() {
        return ((AbstractC2182e) getCompleter()) == null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        Spliterator spliteratorTrySplit;
        Spliterator spliterator = this.f1126b;
        long jEstimateSize = spliterator.estimateSize();
        long jM852e = this.f1127c;
        if (jM852e == 0) {
            jM852e = m852e(jEstimateSize);
            this.f1127c = jM852e;
        }
        boolean z = false;
        AbstractC2182e abstractC2182e = this;
        while (jEstimateSize > jM852e && (spliteratorTrySplit = spliterator.trySplit()) != null) {
            AbstractC2182e abstractC2182eMo802c = abstractC2182e.mo802c(spliteratorTrySplit);
            abstractC2182e.f1128d = abstractC2182eMo802c;
            AbstractC2182e abstractC2182eMo802c2 = abstractC2182e.mo802c(spliterator);
            abstractC2182e.f1129e = abstractC2182eMo802c2;
            abstractC2182e.setPendingCount(1);
            if (z) {
                spliterator = spliteratorTrySplit;
                abstractC2182e = abstractC2182eMo802c;
                abstractC2182eMo802c = abstractC2182eMo802c2;
            } else {
                abstractC2182e = abstractC2182eMo802c2;
            }
            z = !z;
            abstractC2182eMo802c.fork();
            jEstimateSize = spliterator.estimateSize();
        }
        abstractC2182e.mo840d(abstractC2182e.mo801a());
        abstractC2182e.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        this.f1126b = null;
        this.f1129e = null;
        this.f1128d = null;
    }
}
