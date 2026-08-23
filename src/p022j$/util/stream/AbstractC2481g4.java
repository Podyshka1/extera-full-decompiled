package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntPredicate;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.g4 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2481g4 extends AbstractC2499j4 implements IntConsumer, Spliterator.OfInt {

    /* JADX INFO: renamed from: e */
    public final IntPredicate f1385e;

    /* JADX INFO: renamed from: f */
    public int f1386f;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2104a.m540c(this, intConsumer);
    }

    @Override // p022j$.util.stream.AbstractC2499j4, p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2104a.m548k(this, consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC2104a.m515A(this, consumer);
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final void forEachRemaining(IntConsumer intConsumer) {
        while (tryAdvance(intConsumer)) {
        }
    }

    public AbstractC2481g4(Spliterator.OfInt ofInt, IntPredicate intPredicate) {
        super(ofInt);
        this.f1385e = intPredicate;
    }

    public AbstractC2481g4(Spliterator.OfInt ofInt, AbstractC2481g4 abstractC2481g4) {
        super(ofInt, abstractC2481g4);
        this.f1385e = abstractC2481g4.f1385e;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.f1405d = (this.f1405d + 1) & 63;
        this.f1386f = i;
    }

    @Override // p022j$.util.InterfaceC2246c0
    public /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        return tryAdvance((IntConsumer) obj);
    }
}
