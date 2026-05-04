package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntPredicate;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g4 extends j4 implements IntConsumer, Spliterator.OfInt {

    /* JADX INFO: renamed from: e */
    public final IntPredicate f1149e;

    /* JADX INFO: renamed from: f */
    public int f1150f;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC1965a.m420c(this, intConsumer);
    }

    @Override // j$.util.stream.j4, j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m428k(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1965a.m395A(this, consumer);
    }

    @Override // j$.util.c0
    public final void forEachRemaining(IntConsumer intConsumer) {
        while (tryAdvance(intConsumer)) {
        }
    }

    public g4(Spliterator.OfInt ofInt, IntPredicate intPredicate) {
        super(ofInt);
        this.f1149e = intPredicate;
    }

    public g4(Spliterator.OfInt ofInt, g4 g4Var) {
        super(ofInt, g4Var);
        this.f1149e = g4Var.f1149e;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.f1169d = (this.f1169d + 1) & 63;
        this.f1150f = i;
    }

    @Override // j$.util.c0
    public /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        return tryAdvance((IntConsumer) obj);
    }
}
