package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Spliterator;
import p022j$.util.Spliterators;

/* JADX INFO: renamed from: j$.util.stream.U2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2413U2 extends AbstractC2433Y2 implements Spliterator.OfInt {

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ C2418V2 f1269g;

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2104a.m548k(this, consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC2104a.m515A(this, consumer);
    }

    @Override // p022j$.util.stream.AbstractC2433Y2
    /* JADX INFO: renamed from: a */
    public final void mo959a(int i, Object obj, Object obj2) {
        ((IntConsumer) obj2).accept(((int[]) obj)[i]);
    }

    @Override // p022j$.util.stream.AbstractC2433Y2
    /* JADX INFO: renamed from: b */
    public final InterfaceC2246c0 mo960b(Object obj, int i, int i2) {
        return Spliterators.spliterator((int[]) obj, i, i2 + i, 1040);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2413U2(C2418V2 c2418v2, int i, int i2, int i3, int i4) {
        super(c2418v2, i, i2, i3, i4);
        this.f1269g = c2418v2;
    }

    @Override // p022j$.util.stream.AbstractC2433Y2
    /* JADX INFO: renamed from: c */
    public final InterfaceC2246c0 mo961c(int i, int i2, int i3, int i4) {
        return new C2413U2(this.f1269g, i, i2, i3, i4);
    }
}
