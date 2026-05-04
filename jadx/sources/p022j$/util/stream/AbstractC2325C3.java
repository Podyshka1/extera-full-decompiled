package p022j$.util.stream;

import java.util.Comparator;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Objects;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.C3 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2325C3 extends AbstractC2340F3 implements InterfaceC2246c0 {
    /* JADX INFO: renamed from: d */
    public abstract void mo886d(Object obj);

    /* JADX INFO: renamed from: e */
    public abstract AbstractC2498j3 mo887e(int i);

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

    @Override // p022j$.util.InterfaceC2246c0
    public final boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        while (m914c() != EnumC2335E3.NO_MORE && ((InterfaceC2246c0) this.f1132a).tryAdvance(this)) {
            if (m913a(1L) == 1) {
                mo886d(obj);
                return true;
            }
        }
        return false;
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final void forEachRemaining(Object obj) {
        Objects.requireNonNull(obj);
        AbstractC2498j3 abstractC2498j3Mo887e = null;
        while (true) {
            EnumC2335E3 enumC2335E3M914c = m914c();
            if (enumC2335E3M914c == EnumC2335E3.NO_MORE) {
                return;
            }
            EnumC2335E3 enumC2335E3 = EnumC2335E3.MAYBE_MORE;
            Spliterator spliterator = this.f1132a;
            if (enumC2335E3M914c == enumC2335E3) {
                int i = this.f1134c;
                if (abstractC2498j3Mo887e == null) {
                    abstractC2498j3Mo887e = mo887e(i);
                } else {
                    abstractC2498j3Mo887e.f1401b = 0;
                }
                long j = 0;
                while (((InterfaceC2246c0) spliterator).tryAdvance(abstractC2498j3Mo887e)) {
                    j++;
                    if (j >= i) {
                        break;
                    }
                }
                if (j == 0) {
                    return;
                } else {
                    abstractC2498j3Mo887e.mo1010a(obj, m913a(j));
                }
            } else {
                ((InterfaceC2246c0) spliterator).forEachRemaining(obj);
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
