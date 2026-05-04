package p022j$.util.stream;

import java.util.concurrent.atomic.AtomicLong;
import p022j$.util.InterfaceC2235U;
import p022j$.util.InterfaceC2240Z;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.F3 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2340F3 {

    /* JADX INFO: renamed from: a */
    public final Spliterator f1132a;

    /* JADX INFO: renamed from: b */
    public final boolean f1133b;

    /* JADX INFO: renamed from: c */
    public final int f1134c;

    /* JADX INFO: renamed from: d */
    public final long f1135d;

    /* JADX INFO: renamed from: e */
    public final AtomicLong f1136e;

    /* JADX INFO: renamed from: b */
    public abstract Spliterator mo885b(Spliterator spliterator);

    public AbstractC2340F3(Spliterator spliterator, long j, long j2) {
        this.f1132a = spliterator;
        this.f1133b = j2 < 0;
        this.f1135d = j2 >= 0 ? j2 : 0L;
        this.f1134c = 128;
        this.f1136e = new AtomicLong(j2 >= 0 ? j + j2 : j);
    }

    public AbstractC2340F3(Spliterator spliterator, AbstractC2340F3 abstractC2340F3) {
        this.f1132a = spliterator;
        this.f1133b = abstractC2340F3.f1133b;
        this.f1136e = abstractC2340F3.f1136e;
        this.f1135d = abstractC2340F3.f1135d;
        this.f1134c = abstractC2340F3.f1134c;
    }

    /* JADX INFO: renamed from: a */
    public final long m913a(long j) {
        long j2;
        boolean z;
        long jMin;
        do {
            j2 = this.f1136e.get();
            z = this.f1133b;
            if (j2 != 0) {
                jMin = Math.min(j2, j);
                if (jMin <= 0) {
                    break;
                }
            } else {
                if (z) {
                    return j;
                }
                return 0L;
            }
        } while (!this.f1136e.compareAndSet(j2, j2 - jMin));
        if (z) {
            return Math.max(j - jMin, 0L);
        }
        long j3 = this.f1135d;
        return j2 > j3 ? Math.max(jMin - (j2 - j3), 0L) : jMin;
    }

    /* JADX INFO: renamed from: c */
    public final EnumC2335E3 m914c() {
        if (this.f1136e.get() > 0) {
            return EnumC2335E3.MAYBE_MORE;
        }
        return this.f1133b ? EnumC2335E3.UNLIMITED : EnumC2335E3.NO_MORE;
    }

    /* JADX INFO: renamed from: trySplit, reason: collision with other method in class */
    public final Spliterator m3595trySplit() {
        Spliterator spliteratorTrySplit;
        if (this.f1136e.get() == 0 || (spliteratorTrySplit = this.f1132a.trySplit()) == null) {
            return null;
        }
        return mo885b(spliteratorTrySplit);
    }

    public final long estimateSize() {
        return this.f1132a.estimateSize();
    }

    public final int characteristics() {
        return this.f1132a.characteristics() & (-16465);
    }

    /* JADX INFO: renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2246c0 m3598trySplit() {
        return (InterfaceC2246c0) m3595trySplit();
    }

    public /* bridge */ /* synthetic */ Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) m3595trySplit();
    }

    /* JADX INFO: renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2240Z m3597trySplit() {
        return (InterfaceC2240Z) m3595trySplit();
    }

    /* JADX INFO: renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2235U m3596trySplit() {
        return (InterfaceC2235U) m3595trySplit();
    }
}
