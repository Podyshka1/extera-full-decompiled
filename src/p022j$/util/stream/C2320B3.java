package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.InterfaceC2240Z;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.B3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2320B3 extends AbstractC2325C3 implements InterfaceC2240Z, LongConsumer {

    /* JADX INFO: renamed from: f */
    public long f1101f;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2104a.m541d(this, longConsumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2104a.m549l(this, consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC2104a.m516B(this, consumer);
    }

    @Override // p022j$.util.stream.AbstractC2340F3
    /* JADX INFO: renamed from: b */
    public final Spliterator mo885b(Spliterator spliterator) {
        return new C2320B3((InterfaceC2240Z) spliterator, this);
    }

    @Override // p022j$.util.stream.AbstractC2325C3
    /* JADX INFO: renamed from: d */
    public final void mo886d(Object obj) {
        ((LongConsumer) obj).accept(this.f1101f);
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.f1101f = j;
    }

    @Override // p022j$.util.stream.AbstractC2325C3
    /* JADX INFO: renamed from: e */
    public final AbstractC2498j3 mo887e(int i) {
        return new C2492i3(i);
    }
}
