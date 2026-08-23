package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Spliterator;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.f1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2472f1 extends C2418V2 implements InterfaceC2332E0, InterfaceC2572y0 {
    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void accept(double d) {
        AbstractC2573y1.m1074z();
        throw null;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2, p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        AbstractC2573y1.m1043H();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m940v(Object obj) {
        mo954n((Integer) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // p022j$.util.stream.InterfaceC2572y0, p022j$.util.stream.InterfaceC2312A0
    public final InterfaceC2332E0 build() {
        return this;
    }

    @Override // p022j$.util.stream.InterfaceC2312A0
    public final InterfaceC2352I0 build() {
        return this;
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ InterfaceC2352I0 mo925e(long j, long j2, IntFunction intFunction) {
        return AbstractC2573y1.m1052Q(this, j, j2);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final void end() {
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

    @Override // p022j$.util.stream.InterfaceC2519n2
    /* JADX INFO: renamed from: n */
    public final /* synthetic */ void mo954n(Integer num) {
        AbstractC2573y1.m1038C(this, num);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo874p() {
        return false;
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

    @Override // p022j$.util.stream.AbstractC2438Z2, p022j$.util.stream.InterfaceC2347H0
    /* JADX INFO: renamed from: c */
    public final void mo921c(int i, Object obj) {
        super.mo921c(i, (int[]) obj);
    }

    @Override // p022j$.util.stream.AbstractC2438Z2, p022j$.util.stream.InterfaceC2347H0
    /* JADX INFO: renamed from: d */
    public final void mo922d(Object obj) {
        super.mo922d((IntConsumer) obj);
    }

    @Override // p022j$.util.stream.C2418V2, p022j$.util.stream.AbstractC2438Z2, java.lang.Iterable
    public final Spliterator spliterator() {
        return super.spliterator();
    }

    @Override // p022j$.util.stream.C2418V2, p022j$.util.stream.AbstractC2438Z2, java.lang.Iterable
    public final InterfaceC2246c0 spliterator() {
        return super.spliterator();
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        clear();
        m973l(j);
    }

    @Override // p022j$.util.stream.AbstractC2438Z2, p022j$.util.stream.InterfaceC2347H0
    /* JADX INFO: renamed from: b */
    public final Object mo920b() {
        return (int[]) super.mo920b();
    }
}
