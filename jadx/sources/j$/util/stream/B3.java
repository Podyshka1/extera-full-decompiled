package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.InterfaceC2101Z;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class B3 extends C3 implements InterfaceC2101Z, LongConsumer {

    /* JADX INFO: renamed from: f */
    public long f866f;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC1965a.m421d(this, longConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m429l(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1965a.m396B(this, consumer);
    }

    @Override // j$.util.stream.F3
    /* JADX INFO: renamed from: b */
    public final Spliterator mo756b(Spliterator spliterator) {
        return new B3((InterfaceC2101Z) spliterator, this);
    }

    @Override // j$.util.stream.C3
    /* JADX INFO: renamed from: d */
    public final void mo757d(Object obj) {
        ((LongConsumer) obj).accept(this.f866f);
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.f866f = j;
    }

    @Override // j$.util.stream.C3
    /* JADX INFO: renamed from: e */
    public final AbstractC6219j3 mo758e(int i) {
        return new C6215i3(i);
    }
}
