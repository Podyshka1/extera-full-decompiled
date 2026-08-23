package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;

/* JADX INFO: renamed from: j$.util.stream.d1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public class C6193d1 implements E0 {

    /* JADX INFO: renamed from: a */
    public final int[] f1095a;

    /* JADX INFO: renamed from: b */
    public int f1096b;

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ I0 mo788e(long j, long j2, IntFunction intFunction) {
        return AbstractC6277y1.m898Q(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC6277y1.m895N(this, consumer);
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
        AbstractC6277y1.m892K(this, (Integer[]) objArr, i);
    }

    @Override // j$.util.stream.H0
    /* JADX INFO: renamed from: c */
    public final void mo784c(int i, Object obj) {
        int i2 = this.f1096b;
        System.arraycopy(this.f1095a, 0, (int[]) obj, i, i2);
    }

    @Override // j$.util.stream.H0
    /* JADX INFO: renamed from: d */
    public final void mo785d(Object obj) {
        IntConsumer intConsumer = (IntConsumer) obj;
        for (int i = 0; i < this.f1096b; i++) {
            intConsumer.accept(this.f1095a[i]);
        }
    }

    public C6193d1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f1095a = new int[(int) j];
        this.f1096b = 0;
    }

    public C6193d1(int[] iArr) {
        this.f1095a = iArr;
        this.f1096b = iArr.length;
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return Spliterators.spliterator(this.f1095a, 0, this.f1096b, 1040);
    }

    @Override // j$.util.stream.H0, j$.util.stream.I0
    public final j$.util.c0 spliterator() {
        return Spliterators.spliterator(this.f1095a, 0, this.f1096b, 1040);
    }

    @Override // j$.util.stream.H0
    /* JADX INFO: renamed from: b */
    public final Object mo783b() {
        int[] iArr = this.f1095a;
        int length = iArr.length;
        int i = this.f1096b;
        return length == i ? iArr : Arrays.copyOf(iArr, i);
    }

    @Override // j$.util.stream.I0
    public final long count() {
        return this.f1096b;
    }

    public String toString() {
        int[] iArr = this.f1095a;
        return String.format("IntArrayNode[%d][%s]", Integer.valueOf(iArr.length - this.f1096b), Arrays.toString(iArr));
    }
}
