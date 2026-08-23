package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes2.dex */
public class U0 implements C0 {

    /* JADX INFO: renamed from: a */
    public final double[] f1031a;

    /* JADX INFO: renamed from: b */
    public int f1032b;

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ I0 mo788e(long j, long j2, IntFunction intFunction) {
        return AbstractC6277y1.m897P(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC6277y1.m894M(this, consumer);
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: g */
    public final /* synthetic */ Object[] mo790g(IntFunction intFunction) {
        return AbstractC6277y1.m890I(this, intFunction);
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo791h() {
        return 0;
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: a */
    public final /* bridge */ /* synthetic */ I0 mo782a(int i) {
        mo782a(i);
        throw null;
    }

    @Override // j$.util.stream.H0, j$.util.stream.I0
    /* JADX INFO: renamed from: a */
    public final H0 mo782a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: f */
    public final /* synthetic */ void mo789f(Object[] objArr, int i) {
        AbstractC6277y1.m891J(this, (Double[]) objArr, i);
    }

    @Override // j$.util.stream.H0
    /* JADX INFO: renamed from: c */
    public final void mo784c(int i, Object obj) {
        int i2 = this.f1032b;
        System.arraycopy(this.f1031a, 0, (double[]) obj, i, i2);
    }

    @Override // j$.util.stream.H0
    /* JADX INFO: renamed from: d */
    public final void mo785d(Object obj) {
        DoubleConsumer doubleConsumer = (DoubleConsumer) obj;
        for (int i = 0; i < this.f1032b; i++) {
            doubleConsumer.accept(this.f1031a[i]);
        }
    }

    public U0(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f1031a = new double[(int) j];
        this.f1032b = 0;
    }

    public U0(double[] dArr) {
        this.f1031a = dArr;
        this.f1032b = dArr.length;
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        int i = this.f1032b;
        double[] dArr = this.f1031a;
        Spliterators.m690a(((double[]) Objects.requireNonNull(dArr)).length, 0, i);
        return new j$.util.j0(dArr, 0, i, 1040);
    }

    @Override // j$.util.stream.H0, j$.util.stream.I0
    public final j$.util.c0 spliterator() {
        int i = this.f1032b;
        double[] dArr = this.f1031a;
        Spliterators.m690a(((double[]) Objects.requireNonNull(dArr)).length, 0, i);
        return new j$.util.j0(dArr, 0, i, 1040);
    }

    @Override // j$.util.stream.H0
    /* JADX INFO: renamed from: b */
    public final Object mo783b() {
        double[] dArr = this.f1031a;
        int length = dArr.length;
        int i = this.f1032b;
        return length == i ? dArr : Arrays.copyOf(dArr, i);
    }

    @Override // j$.util.stream.I0
    public final long count() {
        return this.f1032b;
    }

    public String toString() {
        double[] dArr = this.f1031a;
        return String.format("DoubleArrayNode[%d][%s]", Integer.valueOf(dArr.length - this.f1032b), Arrays.toString(dArr));
    }
}
