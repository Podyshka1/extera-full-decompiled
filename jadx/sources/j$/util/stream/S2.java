package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.InterfaceC2096U;
import j$.util.Objects;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class S2 extends Y2 implements InterfaceC2096U {

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ T2 f1012g;

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m427j(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1965a.m443z(this, consumer);
    }

    @Override // j$.util.stream.Y2
    /* JADX INFO: renamed from: a */
    public final void mo819a(int i, Object obj, Object obj2) {
        ((DoubleConsumer) obj2).accept(((double[]) obj)[i]);
    }

    @Override // j$.util.stream.Y2
    /* JADX INFO: renamed from: b */
    public final j$.util.c0 mo820b(Object obj, int i, int i2) {
        double[] dArr = (double[]) obj;
        int i3 = i2 + i;
        Spliterators.m690a(((double[]) Objects.requireNonNull(dArr)).length, i, i3);
        return new j$.util.j0(dArr, i, i3, 1040);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public S2(T2 t2, int i, int i2, int i3, int i4) {
        super(t2, i, i2, i3, i4);
        this.f1012g = t2;
    }

    @Override // j$.util.stream.Y2
    /* JADX INFO: renamed from: c */
    public final j$.util.c0 mo821c(int i, int i2, int i3, int i4) {
        return new S2(this.f1012g, i, i2, i3, i4);
    }
}
