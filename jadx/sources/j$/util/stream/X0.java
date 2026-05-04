package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes2.dex */
public final class X0 extends AbstractC6185b1 implements C0 {
    @Override // j$.util.stream.AbstractC6185b1, j$.util.stream.I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ I0 mo788e(long j, long j2, IntFunction intFunction) {
        return AbstractC6277y1.m897P(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC6277y1.m894M(this, consumer);
    }

    @Override // j$.util.stream.AbstractC6185b1, j$.util.stream.I0
    /* JADX INFO: renamed from: a */
    public final /* bridge */ /* synthetic */ I0 mo782a(int i) {
        mo782a(i);
        throw null;
    }

    @Override // j$.util.stream.AbstractC6185b1, j$.util.stream.I0
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
    /* JADX INFO: renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo783b() {
        return AbstractC6277y1.f1279g;
    }

    @Override // j$.util.stream.I0
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return Spliterators.f687d;
    }

    @Override // j$.util.stream.I0
    public final /* bridge */ /* synthetic */ j$.util.c0 spliterator() {
        return Spliterators.f687d;
    }
}
