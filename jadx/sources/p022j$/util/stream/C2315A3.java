package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.A3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2315A3 extends AbstractC2325C3 implements Spliterator.OfInt, IntConsumer {

    /* JADX INFO: renamed from: f */
    public int f1096f;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2104a.m540c(this, intConsumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2104a.m548k(this, consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC2104a.m515A(this, consumer);
    }

    @Override // p022j$.util.stream.AbstractC2340F3
    /* JADX INFO: renamed from: b */
    public final Spliterator mo885b(Spliterator spliterator) {
        return new C2315A3((Spliterator.OfInt) spliterator, this);
    }

    @Override // p022j$.util.stream.AbstractC2325C3
    /* JADX INFO: renamed from: d */
    public final void mo886d(Object obj) {
        ((IntConsumer) obj).accept(this.f1096f);
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.f1096f = i;
    }

    @Override // p022j$.util.stream.AbstractC2325C3
    /* JADX INFO: renamed from: e */
    public final AbstractC2498j3 mo887e(int i) {
        return new C2486h3(i);
    }
}
