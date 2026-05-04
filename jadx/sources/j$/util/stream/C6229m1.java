package j$.util.stream;

import j$.util.DesugarArrays;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.stream.m1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public class C6229m1 implements G0 {

    /* JADX INFO: renamed from: a */
    public final long[] f1193a;

    /* JADX INFO: renamed from: b */
    public int f1194b;

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ I0 mo788e(long j, long j2, IntFunction intFunction) {
        return AbstractC6277y1.m899R(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC6277y1.m896O(this, consumer);
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
        AbstractC6277y1.m893L(this, (Long[]) objArr, i);
    }

    @Override // j$.util.stream.H0
    /* JADX INFO: renamed from: c */
    public final void mo784c(int i, Object obj) {
        int i2 = this.f1194b;
        System.arraycopy(this.f1193a, 0, (long[]) obj, i, i2);
    }

    @Override // j$.util.stream.H0
    /* JADX INFO: renamed from: d */
    public final void mo785d(Object obj) {
        LongConsumer longConsumer = (LongConsumer) obj;
        for (int i = 0; i < this.f1194b; i++) {
            longConsumer.accept(this.f1193a[i]);
        }
    }

    public C6229m1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f1193a = new long[(int) j];
        this.f1194b = 0;
    }

    public C6229m1(long[] jArr) {
        this.f1193a = jArr;
        this.f1194b = jArr.length;
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return DesugarArrays.m687b(this.f1193a, 0, this.f1194b);
    }

    @Override // j$.util.stream.H0, j$.util.stream.I0
    public final j$.util.c0 spliterator() {
        return DesugarArrays.m687b(this.f1193a, 0, this.f1194b);
    }

    @Override // j$.util.stream.H0
    /* JADX INFO: renamed from: b */
    public final Object mo783b() {
        long[] jArr = this.f1193a;
        int length = jArr.length;
        int i = this.f1194b;
        return length == i ? jArr : Arrays.copyOf(jArr, i);
    }

    @Override // j$.util.stream.I0
    public final long count() {
        return this.f1194b;
    }

    public String toString() {
        long[] jArr = this.f1193a;
        return String.format("LongArrayNode[%d][%s]", Integer.valueOf(jArr.length - this.f1194b), Arrays.toString(jArr));
    }
}
