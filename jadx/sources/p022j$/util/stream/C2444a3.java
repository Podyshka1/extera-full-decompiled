package p022j$.util.stream;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p022j$.lang.InterfaceC2105a;
import p022j$.time.C2184s;
import p022j$.util.C2274e0;
import p022j$.util.Objects;
import p022j$.util.Spliterator;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.a3 */
/* JADX INFO: loaded from: classes2.dex */
public class C2444a3 extends AbstractC2458d implements Consumer, Iterable, InterfaceC2105a {

    /* JADX INFO: renamed from: e */
    public Object[] f1294e = new Object[1 << 4];

    /* JADX INFO: renamed from: f */
    public Object[][] f1295f;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    /* JADX INFO: renamed from: i */
    public final void m975i(long j) {
        long length;
        int i = this.f1328c;
        if (i == 0) {
            length = this.f1294e.length;
        } else {
            length = this.f1329d[i] + ((long) this.f1295f[i].length);
        }
        if (j > length) {
            if (this.f1295f == null) {
                Object[][] objArr = new Object[8][];
                this.f1295f = objArr;
                this.f1329d = new long[8];
                objArr[0] = this.f1294e;
            }
            int i2 = i + 1;
            while (j > length) {
                Object[][] objArr2 = this.f1295f;
                if (i2 >= objArr2.length) {
                    int length2 = objArr2.length * 2;
                    this.f1295f = (Object[][]) Arrays.copyOf(objArr2, length2);
                    this.f1329d = Arrays.copyOf(this.f1329d, length2);
                }
                int iMin = this.f1326a;
                if (i2 != 0 && i2 != 1) {
                    iMin = Math.min((iMin + i2) - 1, 30);
                }
                int i3 = 1 << iMin;
                Object[][] objArr3 = this.f1295f;
                objArr3[i2] = new Object[i3];
                long[] jArr = this.f1329d;
                int i4 = i2 - 1;
                jArr[i2] = jArr[i4] + ((long) objArr3[i4].length);
                length += (long) i3;
                i2++;
            }
        }
    }

    @Override // p022j$.util.stream.AbstractC2458d
    public final void clear() {
        Object[][] objArr = this.f1295f;
        if (objArr != null) {
            this.f1294e = objArr[0];
            int i = 0;
            while (true) {
                Object[] objArr2 = this.f1294e;
                if (i >= objArr2.length) {
                    break;
                }
                objArr2[i] = null;
                i++;
            }
            this.f1295f = null;
            this.f1329d = null;
        } else {
            for (int i2 = 0; i2 < this.f1327b; i2++) {
                this.f1294e[i2] = null;
            }
        }
        this.f1327b = 0;
        this.f1328c = 0;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        p022j$.util.Spliterator spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new C2274e0(spliterator);
    }

    @Override // java.lang.Iterable, p022j$.lang.InterfaceC2105a
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f1328c; i++) {
            for (Object obj : this.f1295f[i]) {
                consumer.m940v(obj);
            }
        }
        for (int i2 = 0; i2 < this.f1327b; i2++) {
            consumer.m940v(this.f1294e[i2]);
        }
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public void m940v(Object obj) {
        long length;
        int i = this.f1327b;
        Object[] objArr = this.f1294e;
        if (i == objArr.length) {
            if (this.f1295f == null) {
                Object[][] objArr2 = new Object[8][];
                this.f1295f = objArr2;
                this.f1329d = new long[8];
                objArr2[0] = objArr;
            }
            int i2 = this.f1328c;
            int i3 = i2 + 1;
            Object[][] objArr3 = this.f1295f;
            if (i3 >= objArr3.length || objArr3[i3] == null) {
                if (i2 == 0) {
                    length = objArr.length;
                } else {
                    length = ((long) objArr3[i2].length) + this.f1329d[i2];
                }
                m975i(length + 1);
            }
            this.f1327b = 0;
            int i4 = this.f1328c + 1;
            this.f1328c = i4;
            this.f1294e = this.f1295f[i4];
        }
        Object[] objArr4 = this.f1294e;
        int i5 = this.f1327b;
        this.f1327b = i5 + 1;
        objArr4[i5] = obj;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        Objects.requireNonNull(arrayList);
        forEach(new C2184s(9, arrayList));
        return "SpinedBuffer:" + arrayList.toString();
    }

    @Override // java.lang.Iterable
    public p022j$.util.Spliterator spliterator() {
        return new C2398R2(this, 0, this.f1328c, 0, this.f1327b);
    }
}
