package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.DesugarArrays;
import p022j$.util.InterfaceC2240Z;
import p022j$.util.InterfaceC2246c0;

/* JADX INFO: renamed from: j$.util.stream.W2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2423W2 extends AbstractC2433Y2 implements InterfaceC2240Z {

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ C2428X2 f1276g;

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2104a.m549l(this, consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC2104a.m516B(this, consumer);
    }

    @Override // p022j$.util.stream.AbstractC2433Y2
    /* JADX INFO: renamed from: a */
    public final void mo959a(int i, Object obj, Object obj2) {
        ((LongConsumer) obj2).accept(((long[]) obj)[i]);
    }

    @Override // p022j$.util.stream.AbstractC2433Y2
    /* JADX INFO: renamed from: b */
    public final InterfaceC2246c0 mo960b(Object obj, int i, int i2) {
        return DesugarArrays.m812b((long[]) obj, i, i2 + i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2423W2(C2428X2 c2428x2, int i, int i2, int i3, int i4) {
        super(c2428x2, i, i2, i3, i4);
        this.f1276g = c2428x2;
    }

    @Override // p022j$.util.stream.AbstractC2433Y2
    /* JADX INFO: renamed from: c */
    public final InterfaceC2246c0 mo961c(int i, int i2, int i3, int i4) {
        return new C2423W2(this.f1276g, i, i2, i3, i4);
    }
}
