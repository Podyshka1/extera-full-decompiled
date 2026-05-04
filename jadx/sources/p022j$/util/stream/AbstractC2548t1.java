package p022j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.function.Consumer;
import p022j$.util.Spliterator;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.t1 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2548t1 extends CountedCompleter implements InterfaceC2529p2 {

    /* JADX INFO: renamed from: a */
    public final Spliterator f1473a;

    /* JADX INFO: renamed from: b */
    public final AbstractC2573y1 f1474b;

    /* JADX INFO: renamed from: c */
    public final long f1475c;

    /* JADX INFO: renamed from: d */
    public final long f1476d;

    /* JADX INFO: renamed from: e */
    public final long f1477e;

    /* JADX INFO: renamed from: f */
    public int f1478f;

    /* JADX INFO: renamed from: g */
    public int f1479g;

    /* JADX INFO: renamed from: a */
    public abstract AbstractC2548t1 mo1024a(Spliterator spliterator, long j, long j2);

    public /* synthetic */ void accept(double d) {
        AbstractC2573y1.m1074z();
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC2573y1.m1042G();
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC2573y1.m1043H();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void end() {
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo874p() {
        return false;
    }

    public AbstractC2548t1(Spliterator spliterator, AbstractC2573y1 abstractC2573y1, int i) {
        this.f1473a = spliterator;
        this.f1474b = abstractC2573y1;
        this.f1475c = AbstractC2464e.m1003e(spliterator.estimateSize());
        this.f1476d = 0L;
        this.f1477e = i;
    }

    public AbstractC2548t1(AbstractC2548t1 abstractC2548t1, Spliterator spliterator, long j, long j2, int i) {
        super(abstractC2548t1);
        this.f1473a = spliterator;
        this.f1474b = abstractC2548t1.f1474b;
        this.f1475c = abstractC2548t1.f1475c;
        this.f1476d = j;
        this.f1477e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator spliteratorTrySplit;
        Spliterator spliterator = this.f1473a;
        AbstractC2548t1 abstractC2548t1Mo1024a = this;
        while (spliterator.estimateSize() > abstractC2548t1Mo1024a.f1475c && (spliteratorTrySplit = spliterator.trySplit()) != null) {
            abstractC2548t1Mo1024a.setPendingCount(1);
            long jEstimateSize = spliteratorTrySplit.estimateSize();
            AbstractC2548t1 abstractC2548t1 = abstractC2548t1Mo1024a;
            abstractC2548t1.mo1024a(spliteratorTrySplit, abstractC2548t1Mo1024a.f1476d, jEstimateSize).fork();
            abstractC2548t1Mo1024a = abstractC2548t1.mo1024a(spliterator, abstractC2548t1.f1476d + jEstimateSize, abstractC2548t1.f1477e - jEstimateSize);
        }
        AbstractC2548t1 abstractC2548t12 = abstractC2548t1Mo1024a;
        abstractC2548t12.f1474b.mo982s0(spliterator, abstractC2548t12);
        abstractC2548t12.propagateCompletion();
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        long j2 = this.f1477e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.f1476d;
        this.f1478f = i;
        this.f1479g = i + ((int) j2);
    }
}
