package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.C2292j0;
import p022j$.util.InterfaceC2235U;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Objects;
import p022j$.util.Spliterators;

/* JADX INFO: renamed from: j$.util.stream.S2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2403S2 extends AbstractC2433Y2 implements InterfaceC2235U {

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ C2408T2 f1247g;

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2104a.m547j(this, consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC2104a.m563z(this, consumer);
    }

    @Override // p022j$.util.stream.AbstractC2433Y2
    /* JADX INFO: renamed from: a */
    public final void mo959a(int i, Object obj, Object obj2) {
        ((DoubleConsumer) obj2).accept(((double[]) obj)[i]);
    }

    @Override // p022j$.util.stream.AbstractC2433Y2
    /* JADX INFO: renamed from: b */
    public final InterfaceC2246c0 mo960b(Object obj, int i, int i2) {
        double[] dArr = (double[]) obj;
        int i3 = i2 + i;
        Spliterators.m816a(((double[]) Objects.requireNonNull(dArr)).length, i, i3);
        return new C2292j0(dArr, i, i3, 1040);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2403S2(C2408T2 c2408t2, int i, int i2, int i3, int i4) {
        super(c2408t2, i, i2, i3, i4);
        this.f1247g = c2408t2;
    }

    @Override // p022j$.util.stream.AbstractC2433Y2
    /* JADX INFO: renamed from: c */
    public final InterfaceC2246c0 mo961c(int i, int i2, int i3, int i4) {
        return new C2403S2(this.f1247g, i, i2, i3, i4);
    }
}
