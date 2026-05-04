package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class C3 extends F3 implements j$.util.c0 {
    /* JADX INFO: renamed from: d */
    public abstract void mo757d(Object obj);

    /* JADX INFO: renamed from: e */
    public abstract AbstractC6219j3 mo758e(int i);

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

    @Override // j$.util.c0
    public final boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        while (m777c() != E3.NO_MORE && ((j$.util.c0) this.f897a).tryAdvance(this)) {
            if (m776a(1L) == 1) {
                mo757d(obj);
                return true;
            }
        }
        return false;
    }

    @Override // j$.util.c0
    public final void forEachRemaining(Object obj) {
        Objects.requireNonNull(obj);
        AbstractC6219j3 abstractC6219j3Mo758e = null;
        while (true) {
            E3 e3M777c = m777c();
            if (e3M777c == E3.NO_MORE) {
                return;
            }
            E3 e3 = E3.MAYBE_MORE;
            Spliterator spliterator = this.f897a;
            if (e3M777c == e3) {
                int i = this.f899c;
                if (abstractC6219j3Mo758e == null) {
                    abstractC6219j3Mo758e = mo758e(i);
                } else {
                    abstractC6219j3Mo758e.f1165b = 0;
                }
                long j = 0;
                while (((j$.util.c0) spliterator).tryAdvance(abstractC6219j3Mo758e)) {
                    j++;
                    if (j >= i) {
                        break;
                    }
                }
                if (j == 0) {
                    return;
                } else {
                    abstractC6219j3Mo758e.mo859a(obj, m776a(j));
                }
            } else {
                ((j$.util.c0) spliterator).forEachRemaining(obj);
                return;
            }
        }
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        forEachRemaining((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return tryAdvance((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        forEachRemaining((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return tryAdvance((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        forEachRemaining((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return tryAdvance((Object) doubleConsumer);
    }
}
