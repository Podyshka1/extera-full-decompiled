package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class A3 extends C3 implements Spliterator.OfInt, IntConsumer {

    /* JADX INFO: renamed from: f */
    public int f861f;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC1965a.m420c(this, intConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m428k(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1965a.m395A(this, consumer);
    }

    @Override // j$.util.stream.F3
    /* JADX INFO: renamed from: b */
    public final Spliterator mo756b(Spliterator spliterator) {
        return new A3((Spliterator.OfInt) spliterator, this);
    }

    @Override // j$.util.stream.C3
    /* JADX INFO: renamed from: d */
    public final void mo757d(Object obj) {
        ((IntConsumer) obj).accept(this.f861f);
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.f861f = i;
    }

    @Override // j$.util.stream.C3
    /* JADX INFO: renamed from: e */
    public final AbstractC6219j3 mo758e(int i) {
        return new C6211h3(i);
    }
}
