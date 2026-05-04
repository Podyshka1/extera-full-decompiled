package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.InterfaceC2235U;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.z3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2580z3 extends AbstractC2325C3 implements InterfaceC2235U, DoubleConsumer {

    /* JADX INFO: renamed from: f */
    public double f1530f;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2104a.m539b(this, doubleConsumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2104a.m547j(this, consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC2104a.m563z(this, consumer);
    }

    @Override // p022j$.util.stream.AbstractC2340F3
    /* JADX INFO: renamed from: b */
    public final Spliterator mo885b(Spliterator spliterator) {
        return new C2580z3((InterfaceC2235U) spliterator, this);
    }

    @Override // p022j$.util.stream.AbstractC2325C3
    /* JADX INFO: renamed from: d */
    public final void mo886d(Object obj) {
        ((DoubleConsumer) obj).accept(this.f1530f);
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.f1530f = d;
    }

    @Override // p022j$.util.stream.AbstractC2325C3
    /* JADX INFO: renamed from: e */
    public final AbstractC2498j3 mo887e(int i) {
        return new C2480g3(i);
    }
}
