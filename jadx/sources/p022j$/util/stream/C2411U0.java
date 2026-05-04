package p022j$.util.stream;

import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntFunction;
import p022j$.util.C2292j0;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Objects;
import p022j$.util.Spliterator;
import p022j$.util.Spliterators;

/* JADX INFO: renamed from: j$.util.stream.U0 */
/* JADX INFO: loaded from: classes2.dex */
public class C2411U0 implements InterfaceC2322C0 {

    /* JADX INFO: renamed from: a */
    public final double[] f1266a;

    /* JADX INFO: renamed from: b */
    public int f1267b;

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ InterfaceC2352I0 mo925e(long j, long j2, IntFunction intFunction) {
        return AbstractC2573y1.m1051P(this, j, j2);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2573y1.m1048M(this, consumer);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: g */
    public final /* synthetic */ Object[] mo927g(IntFunction intFunction) {
        return AbstractC2573y1.m1044I(this, intFunction);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo928h() {
        return 0;
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: a */
    public final /* bridge */ /* synthetic */ InterfaceC2352I0 mo919a(int i) {
        mo919a(i);
        throw null;
    }

    @Override // p022j$.util.stream.InterfaceC2347H0, p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: a */
    public final InterfaceC2347H0 mo919a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: f */
    public final /* synthetic */ void mo926f(Object[] objArr, int i) {
        AbstractC2573y1.m1045J(this, (Double[]) objArr, i);
    }

    @Override // p022j$.util.stream.InterfaceC2347H0
    /* JADX INFO: renamed from: c */
    public final void mo921c(int i, Object obj) {
        int i2 = this.f1267b;
        System.arraycopy(this.f1266a, 0, (double[]) obj, i, i2);
    }

    @Override // p022j$.util.stream.InterfaceC2347H0
    /* JADX INFO: renamed from: d */
    public final void mo922d(Object obj) {
        DoubleConsumer doubleConsumer = (DoubleConsumer) obj;
        for (int i = 0; i < this.f1267b; i++) {
            doubleConsumer.accept(this.f1266a[i]);
        }
    }

    public C2411U0(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f1266a = new double[(int) j];
        this.f1267b = 0;
    }

    public C2411U0(double[] dArr) {
        this.f1266a = dArr;
        this.f1267b = dArr.length;
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final Spliterator spliterator() {
        int i = this.f1267b;
        double[] dArr = this.f1266a;
        Spliterators.m816a(((double[]) Objects.requireNonNull(dArr)).length, 0, i);
        return new C2292j0(dArr, 0, i, 1040);
    }

    @Override // p022j$.util.stream.InterfaceC2347H0, p022j$.util.stream.InterfaceC2352I0
    public final InterfaceC2246c0 spliterator() {
        int i = this.f1267b;
        double[] dArr = this.f1266a;
        Spliterators.m816a(((double[]) Objects.requireNonNull(dArr)).length, 0, i);
        return new C2292j0(dArr, 0, i, 1040);
    }

    @Override // p022j$.util.stream.InterfaceC2347H0
    /* JADX INFO: renamed from: b */
    public final Object mo920b() {
        double[] dArr = this.f1266a;
        int length = dArr.length;
        int i = this.f1267b;
        return length == i ? dArr : Arrays.copyOf(dArr, i);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final long count() {
        return this.f1267b;
    }

    public String toString() {
        double[] dArr = this.f1266a;
        return String.format("DoubleArrayNode[%d][%s]", Integer.valueOf(dArr.length - this.f1267b), Arrays.toString(dArr));
    }
}
