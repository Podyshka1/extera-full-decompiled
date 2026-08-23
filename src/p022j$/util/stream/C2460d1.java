package p022j$.util.stream;

import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Spliterator;
import p022j$.util.Spliterators;

/* JADX INFO: renamed from: j$.util.stream.d1 */
/* JADX INFO: loaded from: classes2.dex */
public class C2460d1 implements InterfaceC2332E0 {

    /* JADX INFO: renamed from: a */
    public final int[] f1331a;

    /* JADX INFO: renamed from: b */
    public int f1332b;

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ InterfaceC2352I0 mo925e(long j, long j2, IntFunction intFunction) {
        return AbstractC2573y1.m1052Q(this, j, j2);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2573y1.m1049N(this, consumer);
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
        AbstractC2573y1.m1046K(this, (Integer[]) objArr, i);
    }

    @Override // p022j$.util.stream.InterfaceC2347H0
    /* JADX INFO: renamed from: c */
    public final void mo921c(int i, Object obj) {
        int i2 = this.f1332b;
        System.arraycopy(this.f1331a, 0, (int[]) obj, i, i2);
    }

    @Override // p022j$.util.stream.InterfaceC2347H0
    /* JADX INFO: renamed from: d */
    public final void mo922d(Object obj) {
        IntConsumer intConsumer = (IntConsumer) obj;
        for (int i = 0; i < this.f1332b; i++) {
            intConsumer.accept(this.f1331a[i]);
        }
    }

    public C2460d1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f1331a = new int[(int) j];
        this.f1332b = 0;
    }

    public C2460d1(int[] iArr) {
        this.f1331a = iArr;
        this.f1332b = iArr.length;
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final Spliterator spliterator() {
        return Spliterators.spliterator(this.f1331a, 0, this.f1332b, 1040);
    }

    @Override // p022j$.util.stream.InterfaceC2347H0, p022j$.util.stream.InterfaceC2352I0
    public final InterfaceC2246c0 spliterator() {
        return Spliterators.spliterator(this.f1331a, 0, this.f1332b, 1040);
    }

    @Override // p022j$.util.stream.InterfaceC2347H0
    /* JADX INFO: renamed from: b */
    public final Object mo920b() {
        int[] iArr = this.f1331a;
        int length = iArr.length;
        int i = this.f1332b;
        return length == i ? iArr : Arrays.copyOf(iArr, i);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final long count() {
        return this.f1332b;
    }

    public String toString() {
        int[] iArr = this.f1331a;
        return String.format("IntArrayNode[%d][%s]", Integer.valueOf(iArr.length - this.f1332b), Arrays.toString(iArr));
    }
}
