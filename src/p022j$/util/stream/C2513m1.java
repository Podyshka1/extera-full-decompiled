package p022j$.util.stream;

import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;
import p022j$.util.DesugarArrays;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.m1 */
/* JADX INFO: loaded from: classes2.dex */
public class C2513m1 implements InterfaceC2342G0 {

    /* JADX INFO: renamed from: a */
    public final long[] f1429a;

    /* JADX INFO: renamed from: b */
    public int f1430b;

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ InterfaceC2352I0 mo925e(long j, long j2, IntFunction intFunction) {
        return AbstractC2573y1.m1053R(this, j, j2);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2573y1.m1050O(this, consumer);
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
        AbstractC2573y1.m1047L(this, (Long[]) objArr, i);
    }

    @Override // p022j$.util.stream.InterfaceC2347H0
    /* JADX INFO: renamed from: c */
    public final void mo921c(int i, Object obj) {
        int i2 = this.f1430b;
        System.arraycopy(this.f1429a, 0, (long[]) obj, i, i2);
    }

    @Override // p022j$.util.stream.InterfaceC2347H0
    /* JADX INFO: renamed from: d */
    public final void mo922d(Object obj) {
        LongConsumer longConsumer = (LongConsumer) obj;
        for (int i = 0; i < this.f1430b; i++) {
            longConsumer.accept(this.f1429a[i]);
        }
    }

    public C2513m1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f1429a = new long[(int) j];
        this.f1430b = 0;
    }

    public C2513m1(long[] jArr) {
        this.f1429a = jArr;
        this.f1430b = jArr.length;
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final Spliterator spliterator() {
        return DesugarArrays.m812b(this.f1429a, 0, this.f1430b);
    }

    @Override // p022j$.util.stream.InterfaceC2347H0, p022j$.util.stream.InterfaceC2352I0
    public final InterfaceC2246c0 spliterator() {
        return DesugarArrays.m812b(this.f1429a, 0, this.f1430b);
    }

    @Override // p022j$.util.stream.InterfaceC2347H0
    /* JADX INFO: renamed from: b */
    public final Object mo920b() {
        long[] jArr = this.f1429a;
        int length = jArr.length;
        int i = this.f1430b;
        return length == i ? jArr : Arrays.copyOf(jArr, i);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final long count() {
        return this.f1430b;
    }

    public String toString() {
        long[] jArr = this.f1429a;
        return String.format("LongArrayNode[%d][%s]", Integer.valueOf(jArr.length - this.f1430b), Arrays.toString(jArr));
    }
}
