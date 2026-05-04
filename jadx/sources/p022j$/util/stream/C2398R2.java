package p022j$.util.stream;

import java.util.Comparator;
import java.util.function.Consumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.C2290i0;
import p022j$.util.DesugarArrays;
import p022j$.util.Objects;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.R2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2398R2 implements Spliterator {

    /* JADX INFO: renamed from: a */
    public int f1235a;

    /* JADX INFO: renamed from: b */
    public final int f1236b;

    /* JADX INFO: renamed from: c */
    public int f1237c;

    /* JADX INFO: renamed from: d */
    public final int f1238d;

    /* JADX INFO: renamed from: e */
    public Object[] f1239e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ C2444a3 f1240f;

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

    public C2398R2(C2444a3 c2444a3, int i, int i2, int i3, int i4) {
        this.f1240f = c2444a3;
        this.f1235a = i;
        this.f1236b = i2;
        this.f1237c = i3;
        this.f1238d = i4;
        Object[][] objArr = c2444a3.f1295f;
        this.f1239e = objArr == null ? c2444a3.f1294e : objArr[i];
    }

    @Override // p022j$.util.Spliterator
    public final long estimateSize() {
        int i = this.f1235a;
        int i2 = this.f1238d;
        int i3 = this.f1236b;
        if (i == i3) {
            return ((long) i2) - ((long) this.f1237c);
        }
        long[] jArr = this.f1240f.f1329d;
        return ((jArr[i3] + ((long) i2)) - jArr[i]) - ((long) this.f1237c);
    }

    @Override // p022j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f1235a;
        int i2 = this.f1236b;
        if (i >= i2 && (i != i2 || this.f1237c >= this.f1238d)) {
            return false;
        }
        Object[] objArr = this.f1239e;
        int i3 = this.f1237c;
        this.f1237c = i3 + 1;
        consumer.m940v(objArr[i3]);
        if (this.f1237c == this.f1239e.length) {
            this.f1237c = 0;
            int i4 = this.f1235a + 1;
            this.f1235a = i4;
            Object[][] objArr2 = this.f1240f.f1295f;
            if (objArr2 != null && i4 <= i2) {
                this.f1239e = objArr2[i4];
            }
        }
        return true;
    }

    @Override // p022j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        C2444a3 c2444a3;
        Objects.requireNonNull(consumer);
        int i = this.f1235a;
        int i2 = this.f1238d;
        int i3 = this.f1236b;
        if (i < i3 || (i == i3 && this.f1237c < i2)) {
            int i4 = this.f1237c;
            while (true) {
                c2444a3 = this.f1240f;
                if (i >= i3) {
                    break;
                }
                Object[] objArr = c2444a3.f1295f[i];
                while (i4 < objArr.length) {
                    consumer.m940v(objArr[i4]);
                    i4++;
                }
                i++;
                i4 = 0;
            }
            Object[] objArr2 = this.f1235a == i3 ? this.f1239e : c2444a3.f1295f[i3];
            while (i4 < i2) {
                consumer.m940v(objArr2[i4]);
                i4++;
            }
            this.f1235a = i3;
            this.f1237c = i2;
        }
    }

    @Override // p022j$.util.Spliterator
    public final Spliterator trySplit() {
        int i = this.f1235a;
        int i2 = this.f1236b;
        if (i < i2) {
            int i3 = i2 - 1;
            int i4 = this.f1237c;
            C2444a3 c2444a3 = this.f1240f;
            C2398R2 c2398r2 = new C2398R2(c2444a3, i, i3, i4, c2444a3.f1295f[i3].length);
            this.f1235a = i2;
            this.f1237c = 0;
            this.f1239e = c2444a3.f1295f[i2];
            return c2398r2;
        }
        if (i != i2) {
            return null;
        }
        int i5 = this.f1237c;
        int i6 = (this.f1238d - i5) / 2;
        if (i6 == 0) {
            return null;
        }
        C2290i0 c2290i0M811a = DesugarArrays.m811a(this.f1239e, i5, i5 + i6);
        this.f1237c += i6;
        return c2290i0M811a;
    }

    @Override // p022j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }
}
