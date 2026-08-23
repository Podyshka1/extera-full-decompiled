package p022j$.util.stream;

import p022j$.util.InterfaceC2235U;
import p022j$.util.InterfaceC2240Z;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.y3 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2575y3 {

    /* JADX INFO: renamed from: a */
    public final long f1517a;

    /* JADX INFO: renamed from: b */
    public final long f1518b;

    /* JADX INFO: renamed from: c */
    public Spliterator f1519c;

    /* JADX INFO: renamed from: d */
    public long f1520d;

    /* JADX INFO: renamed from: e */
    public long f1521e;

    /* JADX INFO: renamed from: a */
    public abstract Spliterator mo1033a(Spliterator spliterator, long j, long j2, long j3, long j4);

    public AbstractC2575y3(Spliterator spliterator, long j, long j2, long j3, long j4) {
        this.f1519c = spliterator;
        this.f1517a = j;
        this.f1518b = j2;
        this.f1520d = j3;
        this.f1521e = j4;
    }

    /* JADX INFO: renamed from: trySplit, reason: collision with other method in class */
    public final Spliterator m3599trySplit() {
        long j = this.f1521e;
        if (this.f1517a >= j || this.f1520d >= j) {
            return null;
        }
        while (true) {
            Spliterator spliteratorTrySplit = this.f1519c.trySplit();
            if (spliteratorTrySplit == null) {
                return null;
            }
            long jEstimateSize = spliteratorTrySplit.estimateSize() + this.f1520d;
            long jMin = Math.min(jEstimateSize, this.f1518b);
            long j2 = this.f1517a;
            if (j2 >= jMin) {
                this.f1520d = jMin;
            } else {
                long j3 = this.f1518b;
                if (jMin >= j3) {
                    this.f1519c = spliteratorTrySplit;
                    this.f1521e = jMin;
                } else {
                    long j4 = this.f1520d;
                    if (j4 >= j2 && jEstimateSize <= j3) {
                        this.f1520d = jMin;
                        return spliteratorTrySplit;
                    }
                    this.f1520d = jMin;
                    return mo1033a(spliteratorTrySplit, j2, j3, j4, jMin);
                }
            }
        }
    }

    public final long estimateSize() {
        long j = this.f1521e;
        long j2 = this.f1517a;
        if (j2 < j) {
            return j - Math.max(j2, this.f1520d);
        }
        return 0L;
    }

    public final int characteristics() {
        return this.f1519c.characteristics();
    }

    /* JADX INFO: renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2246c0 m3602trySplit() {
        return (InterfaceC2246c0) m3599trySplit();
    }

    public /* bridge */ /* synthetic */ Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) m3599trySplit();
    }

    /* JADX INFO: renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2240Z m3601trySplit() {
        return (InterfaceC2240Z) m3599trySplit();
    }

    /* JADX INFO: renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2235U m3600trySplit() {
        return (InterfaceC2235U) m3599trySplit();
    }
}
