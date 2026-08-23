package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.InterfaceC2096U;
import j$.util.InterfaceC2101Z;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Y2 implements j$.util.c0 {

    /* JADX INFO: renamed from: a */
    public int f1047a;

    /* JADX INFO: renamed from: b */
    public final int f1048b;

    /* JADX INFO: renamed from: c */
    public int f1049c;

    /* JADX INFO: renamed from: d */
    public final int f1050d;

    /* JADX INFO: renamed from: e */
    public Object f1051e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ Z2 f1052f;

    /* JADX INFO: renamed from: a */
    public abstract void mo819a(int i, Object obj, Object obj2);

    /* JADX INFO: renamed from: b */
    public abstract j$.util.c0 mo820b(Object obj, int i, int i2);

    /* JADX INFO: renamed from: c */
    public abstract j$.util.c0 mo821c(int i, int i2, int i3, int i4);

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 16464;
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

    public Y2(Z2 z2, int i, int i2, int i3, int i4) {
        this.f1052f = z2;
        this.f1047a = i;
        this.f1048b = i2;
        this.f1049c = i3;
        this.f1050d = i4;
        Object[] objArr = z2.f1055f;
        this.f1051e = objArr == null ? z2.f1054e : objArr[i];
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        int i = this.f1047a;
        int i2 = this.f1050d;
        int i3 = this.f1048b;
        if (i == i3) {
            return ((long) i2) - ((long) this.f1049c);
        }
        long[] jArr = this.f1052f.f1093d;
        return ((jArr[i3] + ((long) i2)) - jArr[i]) - ((long) this.f1049c);
    }

    @Override // j$.util.c0
    public final boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        int i = this.f1047a;
        int i2 = this.f1048b;
        if (i >= i2 && (i != i2 || this.f1049c >= this.f1050d)) {
            return false;
        }
        Object obj2 = this.f1051e;
        int i3 = this.f1049c;
        this.f1049c = i3 + 1;
        mo819a(i3, obj2, obj);
        int i4 = this.f1049c;
        Object obj3 = this.f1051e;
        Z2 z2 = this.f1052f;
        if (i4 == z2.mo827j(obj3)) {
            this.f1049c = 0;
            int i5 = this.f1047a + 1;
            this.f1047a = i5;
            Object[] objArr = z2.f1055f;
            if (objArr != null && i5 <= i2) {
                this.f1051e = objArr[i5];
            }
        }
        return true;
    }

    @Override // j$.util.c0
    public final void forEachRemaining(Object obj) {
        Z2 z2;
        Objects.requireNonNull(obj);
        int i = this.f1047a;
        int i2 = this.f1050d;
        int i3 = this.f1048b;
        if (i < i3 || (i == i3 && this.f1049c < i2)) {
            int i4 = this.f1049c;
            while (true) {
                z2 = this.f1052f;
                if (i >= i3) {
                    break;
                }
                Object obj2 = z2.f1055f[i];
                z2.mo826i(obj2, i4, z2.mo827j(obj2), obj);
                i++;
                i4 = 0;
            }
            z2.mo826i(this.f1047a == i3 ? this.f1051e : z2.f1055f[i3], i4, i2, obj);
            this.f1047a = i3;
            this.f1049c = i2;
        }
    }

    @Override // j$.util.Spliterator
    public final j$.util.c0 trySplit() {
        int i = this.f1047a;
        int i2 = this.f1048b;
        if (i < i2) {
            int i3 = i2 - 1;
            int i4 = this.f1049c;
            Z2 z2 = this.f1052f;
            j$.util.c0 c0VarMo821c = mo821c(i, i3, i4, z2.mo827j(z2.f1055f[i3]));
            this.f1047a = i2;
            this.f1049c = 0;
            this.f1051e = z2.f1055f[i2];
            return c0VarMo821c;
        }
        if (i != i2) {
            return null;
        }
        int i5 = this.f1049c;
        int i6 = (this.f1050d - i5) / 2;
        if (i6 == 0) {
            return null;
        }
        j$.util.c0 c0VarMo820b = mo820b(this.f1051e, i5, i6);
        this.f1049c += i6;
        return c0VarMo820b;
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        forEachRemaining((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return tryAdvance((Object) intConsumer);
    }

    @Override // j$.util.c0, j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) trySplit();
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        forEachRemaining((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return tryAdvance((Object) longConsumer);
    }

    @Override // j$.util.c0, j$.util.Spliterator
    public /* bridge */ /* synthetic */ InterfaceC2101Z trySplit() {
        return (InterfaceC2101Z) trySplit();
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        forEachRemaining((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return tryAdvance((Object) doubleConsumer);
    }

    @Override // j$.util.c0, j$.util.Spliterator
    public /* bridge */ /* synthetic */ InterfaceC2096U trySplit() {
        return (InterfaceC2096U) trySplit();
    }
}
