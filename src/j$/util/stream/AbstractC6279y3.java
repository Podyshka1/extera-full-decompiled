package j$.util.stream;

import j$.util.InterfaceC2096U;
import j$.util.InterfaceC2101Z;
import j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.y3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC6279y3 {

    /* JADX INFO: renamed from: a */
    public final long f1281a;

    /* JADX INFO: renamed from: b */
    public final long f1282b;

    /* JADX INFO: renamed from: c */
    public Spliterator f1283c;

    /* JADX INFO: renamed from: d */
    public long f1284d;

    /* JADX INFO: renamed from: e */
    public long f1285e;

    /* JADX INFO: renamed from: a */
    public abstract Spliterator mo879a(Spliterator spliterator, long j, long j2, long j3, long j4);

    public AbstractC6279y3(Spliterator spliterator, long j, long j2, long j3, long j4) {
        this.f1283c = spliterator;
        this.f1281a = j;
        this.f1282b = j2;
        this.f1284d = j3;
        this.f1285e = j4;
    }

    /* JADX INFO: renamed from: trySplit, reason: collision with other method in class */
    public final Spliterator m3277trySplit() {
        long j = this.f1285e;
        if (this.f1281a >= j || this.f1284d >= j) {
            return null;
        }
        while (true) {
            Spliterator spliteratorTrySplit = this.f1283c.trySplit();
            if (spliteratorTrySplit == null) {
                return null;
            }
            long jEstimateSize = spliteratorTrySplit.estimateSize() + this.f1284d;
            long jMin = Math.min(jEstimateSize, this.f1282b);
            long j2 = this.f1281a;
            if (j2 >= jMin) {
                this.f1284d = jMin;
            } else {
                long j3 = this.f1282b;
                if (jMin >= j3) {
                    this.f1283c = spliteratorTrySplit;
                    this.f1285e = jMin;
                } else {
                    long j4 = this.f1284d;
                    if (j4 >= j2 && jEstimateSize <= j3) {
                        this.f1284d = jMin;
                        return spliteratorTrySplit;
                    }
                    this.f1284d = jMin;
                    return mo879a(spliteratorTrySplit, j2, j3, j4, jMin);
                }
            }
        }
    }

    public final long estimateSize() {
        long j = this.f1285e;
        long j2 = this.f1281a;
        if (j2 < j) {
            return j - Math.max(j2, this.f1284d);
        }
        return 0L;
    }

    public final int characteristics() {
        return this.f1283c.characteristics();
    }

    /* JADX INFO: renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.c0 m3280trySplit() {
        return (j$.util.c0) m3277trySplit();
    }

    public /* bridge */ /* synthetic */ Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) m3277trySplit();
    }

    /* JADX INFO: renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2101Z m3279trySplit() {
        return (InterfaceC2101Z) m3277trySplit();
    }

    /* JADX INFO: renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2096U m3278trySplit() {
        return (InterfaceC2096U) m3277trySplit();
    }
}
