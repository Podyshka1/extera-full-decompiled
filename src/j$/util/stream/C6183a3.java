package j$.util.stream;

import j$.lang.InterfaceC1966a;
import j$.time.C2045s;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.stream.a3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public class C6183a3 extends AbstractC2181d implements Consumer, Iterable, InterfaceC1966a {

    /* JADX INFO: renamed from: e */
    public Object[] f1059e = new Object[1 << 4];

    /* JADX INFO: renamed from: f */
    public Object[][] f1060f;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    /* JADX INFO: renamed from: i */
    public final void m835i(long j) {
        long length;
        int i = this.f1092c;
        if (i == 0) {
            length = this.f1059e.length;
        } else {
            length = this.f1093d[i] + ((long) this.f1060f[i].length);
        }
        if (j > length) {
            if (this.f1060f == null) {
                Object[][] objArr = new Object[8][];
                this.f1060f = objArr;
                this.f1093d = new long[8];
                objArr[0] = this.f1059e;
            }
            int i2 = i + 1;
            while (j > length) {
                Object[][] objArr2 = this.f1060f;
                if (i2 >= objArr2.length) {
                    int length2 = objArr2.length * 2;
                    this.f1060f = (Object[][]) Arrays.copyOf(objArr2, length2);
                    this.f1093d = Arrays.copyOf(this.f1093d, length2);
                }
                int iMin = this.f1090a;
                if (i2 != 0 && i2 != 1) {
                    iMin = Math.min((iMin + i2) - 1, 30);
                }
                int i3 = 1 << iMin;
                Object[][] objArr3 = this.f1060f;
                objArr3[i2] = new Object[i3];
                long[] jArr = this.f1093d;
                int i4 = i2 - 1;
                jArr[i2] = jArr[i4] + ((long) objArr3[i4].length);
                length += (long) i3;
                i2++;
            }
        }
    }

    @Override // j$.util.stream.AbstractC2181d
    public final void clear() {
        Object[][] objArr = this.f1060f;
        if (objArr != null) {
            this.f1059e = objArr[0];
            int i = 0;
            while (true) {
                Object[] objArr2 = this.f1059e;
                if (i >= objArr2.length) {
                    break;
                }
                objArr2[i] = null;
                i++;
            }
            this.f1060f = null;
            this.f1093d = null;
        } else {
            for (int i2 = 0; i2 < this.f1091b; i2++) {
                this.f1059e[i2] = null;
            }
        }
        this.f1091b = 0;
        this.f1092c = 0;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        j$.util.Spliterator spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.e0(spliterator);
    }

    @Override // java.lang.Iterable, j$.lang.InterfaceC1966a
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f1092c; i++) {
            for (Object obj : this.f1060f[i]) {
                consumer.m800v(obj);
            }
        }
        for (int i2 = 0; i2 < this.f1091b; i2++) {
            consumer.m800v(this.f1059e[i2]);
        }
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public void m800v(Object obj) {
        long length;
        int i = this.f1091b;
        Object[] objArr = this.f1059e;
        if (i == objArr.length) {
            if (this.f1060f == null) {
                Object[][] objArr2 = new Object[8][];
                this.f1060f = objArr2;
                this.f1093d = new long[8];
                objArr2[0] = objArr;
            }
            int i2 = this.f1092c;
            int i3 = i2 + 1;
            Object[][] objArr3 = this.f1060f;
            if (i3 >= objArr3.length || objArr3[i3] == null) {
                if (i2 == 0) {
                    length = objArr.length;
                } else {
                    length = ((long) objArr3[i2].length) + this.f1093d[i2];
                }
                m835i(length + 1);
            }
            this.f1091b = 0;
            int i4 = this.f1092c + 1;
            this.f1092c = i4;
            this.f1059e = this.f1060f[i4];
        }
        Object[] objArr4 = this.f1059e;
        int i5 = this.f1091b;
        this.f1091b = i5 + 1;
        objArr4[i5] = obj;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        Objects.requireNonNull(arrayList);
        forEach(new C2045s(9, arrayList));
        return "SpinedBuffer:" + arrayList.toString();
    }

    @Override // java.lang.Iterable
    public j$.util.Spliterator spliterator() {
        return new R2(this, 0, this.f1092c, 0, this.f1091b);
    }
}
