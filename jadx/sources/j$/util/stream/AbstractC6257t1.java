package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.concurrent.CountedCompleter;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.stream.t1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC6257t1 extends CountedCompleter implements InterfaceC6242p2 {

    /* JADX INFO: renamed from: a */
    public final Spliterator f1237a;

    /* JADX INFO: renamed from: b */
    public final AbstractC6277y1 f1238b;

    /* JADX INFO: renamed from: c */
    public final long f1239c;

    /* JADX INFO: renamed from: d */
    public final long f1240d;

    /* JADX INFO: renamed from: e */
    public final long f1241e;

    /* JADX INFO: renamed from: f */
    public int f1242f;

    /* JADX INFO: renamed from: g */
    public int f1243g;

    /* JADX INFO: renamed from: a */
    public abstract AbstractC6257t1 mo870a(Spliterator spliterator, long j, long j2);

    public /* synthetic */ void accept(double d) {
        AbstractC6277y1.m907z();
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC6277y1.m888G();
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC6277y1.m889H();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void end() {
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo745p() {
        return false;
    }

    public AbstractC6257t1(Spliterator spliterator, AbstractC6277y1 abstractC6277y1, int i) {
        this.f1237a = spliterator;
        this.f1238b = abstractC6277y1;
        this.f1239c = AbstractC2182e.m852e(spliterator.estimateSize());
        this.f1240d = 0L;
        this.f1241e = i;
    }

    public AbstractC6257t1(AbstractC6257t1 abstractC6257t1, Spliterator spliterator, long j, long j2, int i) {
        super(abstractC6257t1);
        this.f1237a = spliterator;
        this.f1238b = abstractC6257t1.f1238b;
        this.f1239c = abstractC6257t1.f1239c;
        this.f1240d = j;
        this.f1241e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator spliteratorTrySplit;
        Spliterator spliterator = this.f1237a;
        AbstractC6257t1 abstractC6257t1Mo870a = this;
        while (spliterator.estimateSize() > abstractC6257t1Mo870a.f1239c && (spliteratorTrySplit = spliterator.trySplit()) != null) {
            abstractC6257t1Mo870a.setPendingCount(1);
            long jEstimateSize = spliteratorTrySplit.estimateSize();
            AbstractC6257t1 abstractC6257t1 = abstractC6257t1Mo870a;
            abstractC6257t1.mo870a(spliteratorTrySplit, abstractC6257t1Mo870a.f1240d, jEstimateSize).fork();
            abstractC6257t1Mo870a = abstractC6257t1.mo870a(spliterator, abstractC6257t1.f1240d + jEstimateSize, abstractC6257t1.f1241e - jEstimateSize);
        }
        AbstractC6257t1 abstractC6257t12 = abstractC6257t1Mo870a;
        abstractC6257t12.f1238b.s0(spliterator, abstractC6257t12);
        abstractC6257t12.propagateCompletion();
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        long j2 = this.f1241e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.f1240d;
        this.f1242f = i;
        this.f1243g = i + ((int) j2);
    }
}
