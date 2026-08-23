package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.InterfaceC2096U;
import j$.util.InterfaceC2101Z;
import j$.util.Spliterator;
import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.Deque;

/* JADX INFO: renamed from: j$.util.stream.l1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC6225l1 implements Spliterator {

    /* JADX INFO: renamed from: a */
    public I0 f1182a;

    /* JADX INFO: renamed from: b */
    public int f1183b;

    /* JADX INFO: renamed from: c */
    public Spliterator f1184c;

    /* JADX INFO: renamed from: d */
    public Spliterator f1185d;

    /* JADX INFO: renamed from: e */
    public Deque f1186e;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 64;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC1965a.m432o(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC1965a.m434q(this, i);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    public AbstractC6225l1(I0 i0) {
        this.f1182a = i0;
    }

    /* JADX INFO: renamed from: b */
    public final Deque m862b() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int iMo791h = this.f1182a.mo791h();
        while (true) {
            iMo791h--;
            if (iMo791h < this.f1183b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.f1182a.mo782a(iMo791h));
        }
    }

    /* JADX INFO: renamed from: a */
    public static I0 m861a(Deque deque) {
        while (true) {
            ArrayDeque arrayDeque = (ArrayDeque) deque;
            I0 i0 = (I0) arrayDeque.pollFirst();
            if (i0 == null) {
                return null;
            }
            if (i0.mo791h() != 0) {
                for (int iMo791h = i0.mo791h() - 1; iMo791h >= 0; iMo791h--) {
                    arrayDeque.addFirst(i0.mo782a(iMo791h));
                }
            } else if (i0.count() > 0) {
                return i0;
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public final boolean m863c() {
        if (this.f1182a == null) {
            return false;
        }
        if (this.f1185d != null) {
            return true;
        }
        Spliterator spliterator = this.f1184c;
        if (spliterator == null) {
            Deque dequeM862b = m862b();
            this.f1186e = dequeM862b;
            I0 i0M861a = m861a(dequeM862b);
            if (i0M861a != null) {
                this.f1185d = i0M861a.spliterator();
                return true;
            }
            this.f1182a = null;
            return false;
        }
        this.f1185d = spliterator;
        return true;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        I0 i0 = this.f1182a;
        if (i0 == null || this.f1185d != null) {
            return null;
        }
        Spliterator spliterator = this.f1184c;
        if (spliterator != null) {
            return spliterator.trySplit();
        }
        if (this.f1183b < i0.mo791h() - 1) {
            I0 i02 = this.f1182a;
            int i = this.f1183b;
            this.f1183b = i + 1;
            return i02.mo782a(i).spliterator();
        }
        I0 i0Mo782a = this.f1182a.mo782a(this.f1183b);
        this.f1182a = i0Mo782a;
        if (i0Mo782a.mo791h() == 0) {
            Spliterator spliterator2 = this.f1182a.spliterator();
            this.f1184c = spliterator2;
            return spliterator2.trySplit();
        }
        I0 i03 = this.f1182a;
        this.f1183b = 1;
        return i03.mo782a(0).spliterator();
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        long jCount = 0;
        if (this.f1182a == null) {
            return 0L;
        }
        Spliterator spliterator = this.f1184c;
        if (spliterator != null) {
            return spliterator.estimateSize();
        }
        for (int i = this.f1183b; i < this.f1182a.mo791h(); i++) {
            jCount += this.f1182a.mo782a(i).count();
        }
        return jCount;
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.c0 trySplit() {
        return (j$.util.c0) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ InterfaceC2101Z trySplit() {
        return (InterfaceC2101Z) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ InterfaceC2096U trySplit() {
        return (InterfaceC2096U) trySplit();
    }
}
