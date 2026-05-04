package j$.util.stream;

import j$.util.DesugarArrays;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes2.dex */
public class L0 implements I0 {

    /* JADX INFO: renamed from: a */
    public final Object[] f948a;

    /* JADX INFO: renamed from: b */
    public int f949b;

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ I0 mo788e(long j, long j2, IntFunction intFunction) {
        return AbstractC6277y1.m900S(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo791h() {
        return 0;
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: a */
    public final I0 mo782a(int i) {
        throw new IndexOutOfBoundsException();
    }

    public L0(long j, IntFunction intFunction) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f948a = (Object[]) intFunction.apply((int) j);
        this.f949b = 0;
    }

    public L0(Object[] objArr) {
        this.f948a = objArr;
        this.f949b = objArr.length;
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return DesugarArrays.m686a(this.f948a, 0, this.f949b);
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: f */
    public final void mo789f(Object[] objArr, int i) {
        System.arraycopy(this.f948a, 0, objArr, i, this.f949b);
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: g */
    public final Object[] mo790g(IntFunction intFunction) {
        Object[] objArr = this.f948a;
        if (objArr.length == this.f949b) {
            return objArr;
        }
        throw new IllegalStateException();
    }

    @Override // j$.util.stream.I0
    public final long count() {
        return this.f949b;
    }

    @Override // j$.util.stream.I0
    public final void forEach(Consumer consumer) {
        for (int i = 0; i < this.f949b; i++) {
            consumer.m800v(this.f948a[i]);
        }
    }

    public String toString() {
        Object[] objArr = this.f948a;
        return String.format("ArrayNode[%d][%s]", Integer.valueOf(objArr.length - this.f949b), Arrays.toString(objArr));
    }
}
