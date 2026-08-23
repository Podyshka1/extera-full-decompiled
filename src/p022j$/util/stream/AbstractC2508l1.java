package p022j$.util.stream;

import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.Deque;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.InterfaceC2235U;
import p022j$.util.InterfaceC2240Z;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.l1 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2508l1 implements Spliterator {

    /* JADX INFO: renamed from: a */
    public InterfaceC2352I0 f1418a;

    /* JADX INFO: renamed from: b */
    public int f1419b;

    /* JADX INFO: renamed from: c */
    public Spliterator f1420c;

    /* JADX INFO: renamed from: d */
    public Spliterator f1421d;

    /* JADX INFO: renamed from: e */
    public Deque f1422e;

    @Override // p022j$.util.Spliterator
    public final int characteristics() {
        return 64;
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2104a.m552o(this);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2104a.m554q(this, i);
    }

    @Override // p022j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    public AbstractC2508l1(InterfaceC2352I0 interfaceC2352I0) {
        this.f1418a = interfaceC2352I0;
    }

    /* JADX INFO: renamed from: b */
    public final Deque m1014b() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int iMo928h = this.f1418a.mo928h();
        while (true) {
            iMo928h--;
            if (iMo928h < this.f1419b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.f1418a.mo919a(iMo928h));
        }
    }

    /* JADX INFO: renamed from: a */
    public static InterfaceC2352I0 m1013a(Deque deque) {
        while (true) {
            ArrayDeque arrayDeque = (ArrayDeque) deque;
            InterfaceC2352I0 interfaceC2352I0 = (InterfaceC2352I0) arrayDeque.pollFirst();
            if (interfaceC2352I0 == null) {
                return null;
            }
            if (interfaceC2352I0.mo928h() != 0) {
                for (int iMo928h = interfaceC2352I0.mo928h() - 1; iMo928h >= 0; iMo928h--) {
                    arrayDeque.addFirst(interfaceC2352I0.mo919a(iMo928h));
                }
            } else if (interfaceC2352I0.count() > 0) {
                return interfaceC2352I0;
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public final boolean m1015c() {
        if (this.f1418a == null) {
            return false;
        }
        if (this.f1421d != null) {
            return true;
        }
        Spliterator spliterator = this.f1420c;
        if (spliterator == null) {
            Deque dequeM1014b = m1014b();
            this.f1422e = dequeM1014b;
            InterfaceC2352I0 interfaceC2352I0M1013a = m1013a(dequeM1014b);
            if (interfaceC2352I0M1013a != null) {
                this.f1421d = interfaceC2352I0M1013a.spliterator();
                return true;
            }
            this.f1418a = null;
            return false;
        }
        this.f1421d = spliterator;
        return true;
    }

    @Override // p022j$.util.Spliterator
    public final Spliterator trySplit() {
        InterfaceC2352I0 interfaceC2352I0 = this.f1418a;
        if (interfaceC2352I0 == null || this.f1421d != null) {
            return null;
        }
        Spliterator spliterator = this.f1420c;
        if (spliterator != null) {
            return spliterator.trySplit();
        }
        if (this.f1419b < interfaceC2352I0.mo928h() - 1) {
            InterfaceC2352I0 interfaceC2352I02 = this.f1418a;
            int i = this.f1419b;
            this.f1419b = i + 1;
            return interfaceC2352I02.mo919a(i).spliterator();
        }
        InterfaceC2352I0 interfaceC2352I0Mo919a = this.f1418a.mo919a(this.f1419b);
        this.f1418a = interfaceC2352I0Mo919a;
        if (interfaceC2352I0Mo919a.mo928h() == 0) {
            Spliterator spliterator2 = this.f1418a.spliterator();
            this.f1420c = spliterator2;
            return spliterator2.trySplit();
        }
        InterfaceC2352I0 interfaceC2352I03 = this.f1418a;
        this.f1419b = 1;
        return interfaceC2352I03.mo919a(0).spliterator();
    }

    @Override // p022j$.util.Spliterator
    public final long estimateSize() {
        long jCount = 0;
        if (this.f1418a == null) {
            return 0L;
        }
        Spliterator spliterator = this.f1420c;
        if (spliterator != null) {
            return spliterator.estimateSize();
        }
        for (int i = this.f1419b; i < this.f1418a.mo928h(); i++) {
            jCount += this.f1418a.mo919a(i).count();
        }
        return jCount;
    }

    @Override // p022j$.util.Spliterator
    public /* bridge */ /* synthetic */ InterfaceC2246c0 trySplit() {
        return (InterfaceC2246c0) trySplit();
    }

    @Override // p022j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) trySplit();
    }

    @Override // p022j$.util.Spliterator
    public /* bridge */ /* synthetic */ InterfaceC2240Z trySplit() {
        return (InterfaceC2240Z) trySplit();
    }

    @Override // p022j$.util.Spliterator
    public /* bridge */ /* synthetic */ InterfaceC2235U trySplit() {
        return (InterfaceC2235U) trySplit();
    }
}
