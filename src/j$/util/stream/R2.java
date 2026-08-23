package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.DesugarArrays;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public final class R2 implements Spliterator {

    /* JADX INFO: renamed from: a */
    public int f1000a;

    /* JADX INFO: renamed from: b */
    public final int f1001b;

    /* JADX INFO: renamed from: c */
    public int f1002c;

    /* JADX INFO: renamed from: d */
    public final int f1003d;

    /* JADX INFO: renamed from: e */
    public Object[] f1004e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ C6183a3 f1005f;

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

    public R2(C6183a3 c6183a3, int i, int i2, int i3, int i4) {
        this.f1005f = c6183a3;
        this.f1000a = i;
        this.f1001b = i2;
        this.f1002c = i3;
        this.f1003d = i4;
        Object[][] objArr = c6183a3.f1060f;
        this.f1004e = objArr == null ? c6183a3.f1059e : objArr[i];
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        int i = this.f1000a;
        int i2 = this.f1003d;
        int i3 = this.f1001b;
        if (i == i3) {
            return ((long) i2) - ((long) this.f1002c);
        }
        long[] jArr = this.f1005f.f1093d;
        return ((jArr[i3] + ((long) i2)) - jArr[i]) - ((long) this.f1002c);
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f1000a;
        int i2 = this.f1001b;
        if (i >= i2 && (i != i2 || this.f1002c >= this.f1003d)) {
            return false;
        }
        Object[] objArr = this.f1004e;
        int i3 = this.f1002c;
        this.f1002c = i3 + 1;
        consumer.m800v(objArr[i3]);
        if (this.f1002c == this.f1004e.length) {
            this.f1002c = 0;
            int i4 = this.f1000a + 1;
            this.f1000a = i4;
            Object[][] objArr2 = this.f1005f.f1060f;
            if (objArr2 != null && i4 <= i2) {
                this.f1004e = objArr2[i4];
            }
        }
        return true;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        C6183a3 c6183a3;
        Objects.requireNonNull(consumer);
        int i = this.f1000a;
        int i2 = this.f1003d;
        int i3 = this.f1001b;
        if (i < i3 || (i == i3 && this.f1002c < i2)) {
            int i4 = this.f1002c;
            while (true) {
                c6183a3 = this.f1005f;
                if (i >= i3) {
                    break;
                }
                Object[] objArr = c6183a3.f1060f[i];
                while (i4 < objArr.length) {
                    consumer.m800v(objArr[i4]);
                    i4++;
                }
                i++;
                i4 = 0;
            }
            Object[] objArr2 = this.f1000a == i3 ? this.f1004e : c6183a3.f1060f[i3];
            while (i4 < i2) {
                consumer.m800v(objArr2[i4]);
                i4++;
            }
            this.f1000a = i3;
            this.f1002c = i2;
        }
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        int i = this.f1000a;
        int i2 = this.f1001b;
        if (i < i2) {
            int i3 = i2 - 1;
            int i4 = this.f1002c;
            C6183a3 c6183a3 = this.f1005f;
            R2 r2 = new R2(c6183a3, i, i3, i4, c6183a3.f1060f[i3].length);
            this.f1000a = i2;
            this.f1002c = 0;
            this.f1004e = c6183a3.f1060f[i2];
            return r2;
        }
        if (i != i2) {
            return null;
        }
        int i5 = this.f1002c;
        int i6 = (this.f1003d - i5) / 2;
        if (i6 == 0) {
            return null;
        }
        j$.util.i0 i0VarM686a = DesugarArrays.m686a(this.f1004e, i5, i5 + i6);
        this.f1002c += i6;
        return i0VarM686a;
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }
}
