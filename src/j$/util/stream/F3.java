package j$.util.stream;

import j$.util.InterfaceC2096U;
import j$.util.InterfaceC2101Z;
import j$.util.Spliterator;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
public abstract class F3 {

    /* JADX INFO: renamed from: a */
    public final Spliterator f897a;

    /* JADX INFO: renamed from: b */
    public final boolean f898b;

    /* JADX INFO: renamed from: c */
    public final int f899c;

    /* JADX INFO: renamed from: d */
    public final long f900d;

    /* JADX INFO: renamed from: e */
    public final AtomicLong f901e;

    /* JADX INFO: renamed from: b */
    public abstract Spliterator mo756b(Spliterator spliterator);

    public F3(Spliterator spliterator, long j, long j2) {
        this.f897a = spliterator;
        this.f898b = j2 < 0;
        this.f900d = j2 >= 0 ? j2 : 0L;
        this.f899c = 128;
        this.f901e = new AtomicLong(j2 >= 0 ? j + j2 : j);
    }

    public F3(Spliterator spliterator, F3 f3) {
        this.f897a = spliterator;
        this.f898b = f3.f898b;
        this.f901e = f3.f901e;
        this.f900d = f3.f900d;
        this.f899c = f3.f899c;
    }

    /* JADX INFO: renamed from: a */
    public final long m776a(long j) {
        long j2;
        boolean z;
        long jMin;
        do {
            j2 = this.f901e.get();
            z = this.f898b;
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
        } while (!this.f901e.compareAndSet(j2, j2 - jMin));
        if (z) {
            return Math.max(j - jMin, 0L);
        }
        long j3 = this.f900d;
        return j2 > j3 ? Math.max(jMin - (j2 - j3), 0L) : jMin;
    }

    /* JADX INFO: renamed from: c */
    public final E3 m777c() {
        if (this.f901e.get() > 0) {
            return E3.MAYBE_MORE;
        }
        return this.f898b ? E3.UNLIMITED : E3.NO_MORE;
    }

    /* JADX INFO: renamed from: trySplit, reason: collision with other method in class */
    public final Spliterator m3273trySplit() {
        Spliterator spliteratorTrySplit;
        if (this.f901e.get() == 0 || (spliteratorTrySplit = this.f897a.trySplit()) == null) {
            return null;
        }
        return mo756b(spliteratorTrySplit);
    }

    public final long estimateSize() {
        return this.f897a.estimateSize();
    }

    public final int characteristics() {
        return this.f897a.characteristics() & (-16465);
    }

    /* JADX INFO: renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.c0 m3276trySplit() {
        return (j$.util.c0) m3273trySplit();
    }

    public /* bridge */ /* synthetic */ Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) m3273trySplit();
    }

    /* JADX INFO: renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2101Z m3275trySplit() {
        return (InterfaceC2101Z) m3273trySplit();
    }

    /* JADX INFO: renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2096U m3274trySplit() {
        return (InterfaceC2096U) m3273trySplit();
    }
}
