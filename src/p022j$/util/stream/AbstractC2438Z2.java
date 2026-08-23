package p022j$.util.stream;

import java.util.Arrays;
import p022j$.lang.InterfaceC2105a;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.Z2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2438Z2 extends AbstractC2458d implements Iterable, InterfaceC2105a {

    /* JADX INFO: renamed from: e */
    public Object f1289e;

    /* JADX INFO: renamed from: f */
    public Object[] f1290f;

    /* JADX INFO: renamed from: i */
    public abstract void mo966i(Object obj, int i, int i2, Object obj2);

    /* JADX INFO: renamed from: j */
    public abstract int mo967j(Object obj);

    public abstract Object newArray(int i);

    /* JADX INFO: renamed from: o */
    public abstract Object[] mo968o();

    public abstract Spliterator spliterator();

    @Override // java.lang.Iterable
    public final /* synthetic */ java.util.Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    public AbstractC2438Z2(int i) {
        super(i);
        this.f1289e = newArray(1 << this.f1326a);
    }

    public AbstractC2438Z2() {
        this.f1289e = newArray(16);
    }

    /* JADX INFO: renamed from: l */
    public final void m973l(long j) {
        long jMo967j;
        int i = this.f1328c;
        if (i == 0) {
            jMo967j = mo967j(this.f1289e);
        } else {
            jMo967j = ((long) mo967j(this.f1290f[i])) + this.f1329d[i];
        }
        if (j > jMo967j) {
            if (this.f1290f == null) {
                Object[] objArrMo968o = mo968o();
                this.f1290f = objArrMo968o;
                this.f1329d = new long[8];
                objArrMo968o[0] = this.f1289e;
            }
            int i2 = this.f1328c + 1;
            while (j > jMo967j) {
                Object[] objArr = this.f1290f;
                if (i2 >= objArr.length) {
                    int length = objArr.length * 2;
                    this.f1290f = Arrays.copyOf(objArr, length);
                    this.f1329d = Arrays.copyOf(this.f1329d, length);
                }
                int iMin = this.f1326a;
                if (i2 != 0 && i2 != 1) {
                    iMin = Math.min((iMin + i2) - 1, 30);
                }
                int i3 = 1 << iMin;
                this.f1290f[i2] = newArray(i3);
                long[] jArr = this.f1329d;
                int i4 = i2 - 1;
                jArr[i2] = jArr[i4] + ((long) mo967j(this.f1290f[i4]));
                jMo967j += (long) i3;
                i2++;
            }
        }
    }

    /* JADX INFO: renamed from: k */
    public final int m972k(long j) {
        if (this.f1328c == 0) {
            if (j < this.f1327b) {
                return 0;
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        if (j >= count()) {
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        for (int i = 0; i <= this.f1328c; i++) {
            if (j < this.f1329d[i] + ((long) mo967j(this.f1290f[i]))) {
                return i;
            }
        }
        throw new IndexOutOfBoundsException(Long.toString(j));
    }

    /* JADX INFO: renamed from: c */
    public void mo921c(int i, Object obj) {
        long j = i;
        long jCount = count() + j;
        if (jCount > mo967j(obj) || jCount < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f1328c == 0) {
            System.arraycopy(this.f1289e, 0, obj, i, this.f1327b);
            return;
        }
        for (int i2 = 0; i2 < this.f1328c; i2++) {
            Object obj2 = this.f1290f[i2];
            System.arraycopy(obj2, 0, obj, i, mo967j(obj2));
            i += mo967j(this.f1290f[i2]);
        }
        int i3 = this.f1327b;
        if (i3 > 0) {
            System.arraycopy(this.f1289e, 0, obj, i, i3);
        }
    }

    /* JADX INFO: renamed from: b */
    public Object mo920b() {
        long jCount = count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object objNewArray = newArray((int) jCount);
        mo921c(0, objNewArray);
        return objNewArray;
    }

    /* JADX INFO: renamed from: q */
    public final void m974q() {
        long jMo967j;
        if (this.f1327b == mo967j(this.f1289e)) {
            if (this.f1290f == null) {
                Object[] objArrMo968o = mo968o();
                this.f1290f = objArrMo968o;
                this.f1329d = new long[8];
                objArrMo968o[0] = this.f1289e;
            }
            int i = this.f1328c;
            int i2 = i + 1;
            Object[] objArr = this.f1290f;
            if (i2 >= objArr.length || objArr[i2] == null) {
                if (i == 0) {
                    jMo967j = mo967j(this.f1289e);
                } else {
                    jMo967j = ((long) mo967j(objArr[i])) + this.f1329d[i];
                }
                m973l(jMo967j + 1);
            }
            this.f1327b = 0;
            int i3 = this.f1328c + 1;
            this.f1328c = i3;
            this.f1289e = this.f1290f[i3];
        }
    }

    @Override // p022j$.util.stream.AbstractC2458d
    public final void clear() {
        Object[] objArr = this.f1290f;
        if (objArr != null) {
            this.f1289e = objArr[0];
            this.f1290f = null;
            this.f1329d = null;
        }
        this.f1327b = 0;
        this.f1328c = 0;
    }

    /* JADX INFO: renamed from: d */
    public void mo922d(Object obj) {
        for (int i = 0; i < this.f1328c; i++) {
            Object obj2 = this.f1290f[i];
            mo966i(obj2, 0, mo967j(obj2), obj);
        }
        mo966i(this.f1289e, 0, this.f1327b, obj);
    }
}
