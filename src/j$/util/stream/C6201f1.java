package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;

/* JADX INFO: renamed from: j$.util.stream.f1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6201f1 extends V2 implements E0, InterfaceC6276y0 {
    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void accept(double d) {
        AbstractC6277y1.m907z();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC6242p2, j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        AbstractC6277y1.m889H();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m800v(Object obj) {
        mo814n((Integer) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC6276y0, j$.util.stream.A0
    public final E0 build() {
        return this;
    }

    @Override // j$.util.stream.A0
    public final I0 build() {
        return this;
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ I0 mo788e(long j, long j2, IntFunction intFunction) {
        return AbstractC6277y1.m898Q(this, j, j2);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final void end() {
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

    @Override // j$.util.stream.InterfaceC6234n2
    /* JADX INFO: renamed from: n */
    public final /* synthetic */ void mo814n(Integer num) {
        AbstractC6277y1.m884C(this, num);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo745p() {
        return false;
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

    @Override // j$.util.stream.Z2, j$.util.stream.H0
    /* JADX INFO: renamed from: c */
    public final void mo784c(int i, Object obj) {
        super.mo784c(i, (int[]) obj);
    }

    @Override // j$.util.stream.Z2, j$.util.stream.H0
    /* JADX INFO: renamed from: d */
    public final void mo785d(Object obj) {
        super.mo785d((IntConsumer) obj);
    }

    @Override // j$.util.stream.V2, j$.util.stream.Z2, java.lang.Iterable
    public final Spliterator spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.V2, j$.util.stream.Z2, java.lang.Iterable
    public final j$.util.c0 spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        clear();
        m833l(j);
    }

    @Override // j$.util.stream.Z2, j$.util.stream.H0
    /* JADX INFO: renamed from: b */
    public final Object mo783b() {
        return (int[]) super.mo783b();
    }
}
