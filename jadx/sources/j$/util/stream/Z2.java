package j$.util.stream;

import j$.lang.InterfaceC1966a;
import j$.util.Spliterator;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Z2 extends AbstractC2181d implements Iterable, InterfaceC1966a {

    /* JADX INFO: renamed from: e */
    public Object f1054e;

    /* JADX INFO: renamed from: f */
    public Object[] f1055f;

    /* JADX INFO: renamed from: i */
    public abstract void mo826i(Object obj, int i, int i2, Object obj2);

    /* JADX INFO: renamed from: j */
    public abstract int mo827j(Object obj);

    public abstract Object newArray(int i);

    /* JADX INFO: renamed from: o */
    public abstract Object[] mo828o();

    public abstract Spliterator spliterator();

    @Override // java.lang.Iterable
    public final /* synthetic */ java.util.Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    public Z2(int i) {
        super(i);
        this.f1054e = newArray(1 << this.f1090a);
    }

    public Z2() {
        this.f1054e = newArray(16);
    }

    /* JADX INFO: renamed from: l */
    public final void m833l(long j) {
        long jMo827j;
        int i = this.f1092c;
        if (i == 0) {
            jMo827j = mo827j(this.f1054e);
        } else {
            jMo827j = ((long) mo827j(this.f1055f[i])) + this.f1093d[i];
        }
        if (j > jMo827j) {
            if (this.f1055f == null) {
                Object[] objArrMo828o = mo828o();
                this.f1055f = objArrMo828o;
                this.f1093d = new long[8];
                objArrMo828o[0] = this.f1054e;
            }
            int i2 = this.f1092c + 1;
            while (j > jMo827j) {
                Object[] objArr = this.f1055f;
                if (i2 >= objArr.length) {
                    int length = objArr.length * 2;
                    this.f1055f = Arrays.copyOf(objArr, length);
                    this.f1093d = Arrays.copyOf(this.f1093d, length);
                }
                int iMin = this.f1090a;
                if (i2 != 0 && i2 != 1) {
                    iMin = Math.min((iMin + i2) - 1, 30);
                }
                int i3 = 1 << iMin;
                this.f1055f[i2] = newArray(i3);
                long[] jArr = this.f1093d;
                int i4 = i2 - 1;
                jArr[i2] = jArr[i4] + ((long) mo827j(this.f1055f[i4]));
                jMo827j += (long) i3;
                i2++;
            }
        }
    }

    /* JADX INFO: renamed from: k */
    public final int m832k(long j) {
        if (this.f1092c == 0) {
            if (j < this.f1091b) {
                return 0;
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        if (j >= count()) {
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        for (int i = 0; i <= this.f1092c; i++) {
            if (j < this.f1093d[i] + ((long) mo827j(this.f1055f[i]))) {
                return i;
            }
        }
        throw new IndexOutOfBoundsException(Long.toString(j));
    }

    /* JADX INFO: renamed from: c */
    public void mo784c(int i, Object obj) {
        long j = i;
        long jCount = count() + j;
        if (jCount > mo827j(obj) || jCount < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f1092c == 0) {
            System.arraycopy(this.f1054e, 0, obj, i, this.f1091b);
            return;
        }
        for (int i2 = 0; i2 < this.f1092c; i2++) {
            Object obj2 = this.f1055f[i2];
            System.arraycopy(obj2, 0, obj, i, mo827j(obj2));
            i += mo827j(this.f1055f[i2]);
        }
        int i3 = this.f1091b;
        if (i3 > 0) {
            System.arraycopy(this.f1054e, 0, obj, i, i3);
        }
    }

    /* JADX INFO: renamed from: b */
    public Object mo783b() {
        long jCount = count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object objNewArray = newArray((int) jCount);
        mo784c(0, objNewArray);
        return objNewArray;
    }

    /* JADX INFO: renamed from: q */
    public final void m834q() {
        long jMo827j;
        if (this.f1091b == mo827j(this.f1054e)) {
            if (this.f1055f == null) {
                Object[] objArrMo828o = mo828o();
                this.f1055f = objArrMo828o;
                this.f1093d = new long[8];
                objArrMo828o[0] = this.f1054e;
            }
            int i = this.f1092c;
            int i2 = i + 1;
            Object[] objArr = this.f1055f;
            if (i2 >= objArr.length || objArr[i2] == null) {
                if (i == 0) {
                    jMo827j = mo827j(this.f1054e);
                } else {
                    jMo827j = ((long) mo827j(objArr[i])) + this.f1093d[i];
                }
                m833l(jMo827j + 1);
            }
            this.f1091b = 0;
            int i3 = this.f1092c + 1;
            this.f1092c = i3;
            this.f1054e = this.f1055f[i3];
        }
    }

    @Override // j$.util.stream.AbstractC2181d
    public final void clear() {
        Object[] objArr = this.f1055f;
        if (objArr != null) {
            this.f1054e = objArr[0];
            this.f1055f = null;
            this.f1093d = null;
        }
        this.f1091b = 0;
        this.f1092c = 0;
    }

    /* JADX INFO: renamed from: d */
    public void mo785d(Object obj) {
        for (int i = 0; i < this.f1092c; i++) {
            Object obj2 = this.f1055f[i];
            mo826i(obj2, 0, mo827j(obj2), obj);
        }
        mo826i(this.f1054e, 0, this.f1091b, obj);
    }
}
