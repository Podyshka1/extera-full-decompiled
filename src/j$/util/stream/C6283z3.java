package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.InterfaceC2096U;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.stream.z3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6283z3 extends C3 implements InterfaceC2096U, DoubleConsumer {

    /* JADX INFO: renamed from: f */
    public double f1294f;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC1965a.m419b(this, doubleConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m427j(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1965a.m443z(this, consumer);
    }

    @Override // j$.util.stream.F3
    /* JADX INFO: renamed from: b */
    public final Spliterator mo756b(Spliterator spliterator) {
        return new C6283z3((InterfaceC2096U) spliterator, this);
    }

    @Override // j$.util.stream.C3
    /* JADX INFO: renamed from: d */
    public final void mo757d(Object obj) {
        ((DoubleConsumer) obj).accept(this.f1294f);
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.f1294f = d;
    }

    @Override // j$.util.stream.C3
    /* JADX INFO: renamed from: e */
    public final AbstractC6219j3 mo758e(int i) {
        return new C6207g3(i);
    }
}
