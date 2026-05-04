package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.stream.o1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6237o1 extends X2 implements G0, InterfaceC6280z0 {
    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void accept(double d) {
        AbstractC6277y1.m907z();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void accept(int i) {
        AbstractC6277y1.m888G();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m800v(Object obj) {
        mo747v((Long) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC6280z0, j$.util.stream.A0
    public final G0 build() {
        return this;
    }

    @Override // j$.util.stream.A0
    public final I0 build() {
        return this;
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ I0 mo788e(long j, long j2, IntFunction intFunction) {
        return AbstractC6277y1.m899R(this, j, j2);
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

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo745p() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC6238o2
    /* JADX INFO: renamed from: v */
    public final /* synthetic */ void mo747v(Long l) {
        AbstractC6277y1.m886E(this, l);
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

    @Override // j$.util.stream.Z2, j$.util.stream.H0
    /* JADX INFO: renamed from: c */
    public final void mo784c(int i, Object obj) {
        super.mo784c(i, (long[]) obj);
    }

    @Override // j$.util.stream.Z2, j$.util.stream.H0
    /* JADX INFO: renamed from: d */
    public final void mo785d(Object obj) {
        super.mo785d((LongConsumer) obj);
    }

    @Override // j$.util.stream.X2, j$.util.stream.Z2, java.lang.Iterable
    public final Spliterator spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.X2, j$.util.stream.Z2, java.lang.Iterable
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
        return (long[]) super.mo783b();
    }
}
