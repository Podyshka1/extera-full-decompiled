package p022j$.util.stream;

import java.util.Comparator;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.InterfaceC2235U;
import p022j$.util.InterfaceC2240Z;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Objects;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.Y2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2433Y2 implements InterfaceC2246c0 {

    /* JADX INFO: renamed from: a */
    public int f1282a;

    /* JADX INFO: renamed from: b */
    public final int f1283b;

    /* JADX INFO: renamed from: c */
    public int f1284c;

    /* JADX INFO: renamed from: d */
    public final int f1285d;

    /* JADX INFO: renamed from: e */
    public Object f1286e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ AbstractC2438Z2 f1287f;

    /* JADX INFO: renamed from: a */
    public abstract void mo959a(int i, Object obj, Object obj2);

    /* JADX INFO: renamed from: b */
    public abstract InterfaceC2246c0 mo960b(Object obj, int i, int i2);

    /* JADX INFO: renamed from: c */
    public abstract InterfaceC2246c0 mo961c(int i, int i2, int i3, int i4);

    @Override // p022j$.util.Spliterator
    public final int characteristics() {
        return 16464;
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

    public AbstractC2433Y2(AbstractC2438Z2 abstractC2438Z2, int i, int i2, int i3, int i4) {
        this.f1287f = abstractC2438Z2;
        this.f1282a = i;
        this.f1283b = i2;
        this.f1284c = i3;
        this.f1285d = i4;
        Object[] objArr = abstractC2438Z2.f1290f;
        this.f1286e = objArr == null ? abstractC2438Z2.f1289e : objArr[i];
    }

    @Override // p022j$.util.Spliterator
    public final long estimateSize() {
        int i = this.f1282a;
        int i2 = this.f1285d;
        int i3 = this.f1283b;
        if (i == i3) {
            return ((long) i2) - ((long) this.f1284c);
        }
        long[] jArr = this.f1287f.f1329d;
        return ((jArr[i3] + ((long) i2)) - jArr[i]) - ((long) this.f1284c);
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        int i = this.f1282a;
        int i2 = this.f1283b;
        if (i >= i2 && (i != i2 || this.f1284c >= this.f1285d)) {
            return false;
        }
        Object obj2 = this.f1286e;
        int i3 = this.f1284c;
        this.f1284c = i3 + 1;
        mo959a(i3, obj2, obj);
        int i4 = this.f1284c;
        Object obj3 = this.f1286e;
        AbstractC2438Z2 abstractC2438Z2 = this.f1287f;
        if (i4 == abstractC2438Z2.mo967j(obj3)) {
            this.f1284c = 0;
            int i5 = this.f1282a + 1;
            this.f1282a = i5;
            Object[] objArr = abstractC2438Z2.f1290f;
            if (objArr != null && i5 <= i2) {
                this.f1286e = objArr[i5];
            }
        }
        return true;
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final void forEachRemaining(Object obj) {
        AbstractC2438Z2 abstractC2438Z2;
        Objects.requireNonNull(obj);
        int i = this.f1282a;
        int i2 = this.f1285d;
        int i3 = this.f1283b;
        if (i < i3 || (i == i3 && this.f1284c < i2)) {
            int i4 = this.f1284c;
            while (true) {
                abstractC2438Z2 = this.f1287f;
                if (i >= i3) {
                    break;
                }
                Object obj2 = abstractC2438Z2.f1290f[i];
                abstractC2438Z2.mo966i(obj2, i4, abstractC2438Z2.mo967j(obj2), obj);
                i++;
                i4 = 0;
            }
            abstractC2438Z2.mo966i(this.f1282a == i3 ? this.f1286e : abstractC2438Z2.f1290f[i3], i4, i2, obj);
            this.f1282a = i3;
            this.f1284c = i2;
        }
    }

    @Override // p022j$.util.Spliterator
    public final InterfaceC2246c0 trySplit() {
        int i = this.f1282a;
        int i2 = this.f1283b;
        if (i < i2) {
            int i3 = i2 - 1;
            int i4 = this.f1284c;
            AbstractC2438Z2 abstractC2438Z2 = this.f1287f;
            InterfaceC2246c0 interfaceC2246c0Mo961c = mo961c(i, i3, i4, abstractC2438Z2.mo967j(abstractC2438Z2.f1290f[i3]));
            this.f1282a = i2;
            this.f1284c = 0;
            this.f1286e = abstractC2438Z2.f1290f[i2];
            return interfaceC2246c0Mo961c;
        }
        if (i != i2) {
            return null;
        }
        int i5 = this.f1284c;
        int i6 = (this.f1285d - i5) / 2;
        if (i6 == 0) {
            return null;
        }
        InterfaceC2246c0 interfaceC2246c0Mo960b = mo960b(this.f1286e, i5, i6);
        this.f1284c += i6;
        return interfaceC2246c0Mo960b;
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        forEachRemaining((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return tryAdvance((Object) intConsumer);
    }

    @Override // p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) trySplit();
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        forEachRemaining((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return tryAdvance((Object) longConsumer);
    }

    @Override // p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    public /* bridge */ /* synthetic */ InterfaceC2240Z trySplit() {
        return (InterfaceC2240Z) trySplit();
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        forEachRemaining((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return tryAdvance((Object) doubleConsumer);
    }

    @Override // p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    public /* bridge */ /* synthetic */ InterfaceC2235U trySplit() {
        return (InterfaceC2235U) trySplit();
    }
}
