package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.DoublePredicate;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.InterfaceC2235U;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.d4 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2463d4 extends AbstractC2499j4 implements DoubleConsumer, InterfaceC2235U {

    /* JADX INFO: renamed from: e */
    public double f1358e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ int f1359f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2463d4(Spliterator spliterator, int i) {
        super(spliterator);
        this.f1359f = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2463d4(Spliterator spliterator, AbstractC2499j4 abstractC2499j4, int i) {
        super(spliterator, abstractC2499j4);
        this.f1359f = i;
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2104a.m539b(this, doubleConsumer);
    }

    @Override // p022j$.util.stream.AbstractC2499j4, p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2104a.m547j(this, consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC2104a.m563z(this, consumer);
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        while (tryAdvance(doubleConsumer)) {
        }
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.f1405d = (this.f1405d + 1) & 63;
        this.f1358e = d;
    }

    @Override // p022j$.util.stream.AbstractC2499j4
    /* JADX INFO: renamed from: b */
    public final Spliterator mo1002b(Spliterator spliterator) {
        switch (this.f1359f) {
            case 0:
                return new C2463d4((InterfaceC2235U) spliterator, this, 0);
            default:
                return new C2463d4((InterfaceC2235U) spliterator, this, 1);
        }
    }

    @Override // p022j$.util.stream.AbstractC2499j4, p022j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator trySplit() {
        switch (this.f1359f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // p022j$.util.stream.AbstractC2499j4, p022j$.util.Spliterator
    public /* bridge */ /* synthetic */ InterfaceC2246c0 trySplit() {
        switch (this.f1359f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // p022j$.util.InterfaceC2235U
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        switch (this.f1359f) {
            case 0:
                boolean z = this.f1404c;
                Spliterator spliterator = this.f1402a;
                if (z) {
                    this.f1404c = false;
                    boolean zTryAdvance = ((InterfaceC2235U) spliterator).tryAdvance((DoubleConsumer) this);
                    if (zTryAdvance && m1011a()) {
                        DoublePredicate doublePredicate = null;
                        doublePredicate.test(this.f1358e);
                        throw null;
                    }
                    if (!zTryAdvance) {
                        return zTryAdvance;
                    }
                    doubleConsumer.accept(this.f1358e);
                    return zTryAdvance;
                }
                return ((InterfaceC2235U) spliterator).tryAdvance(doubleConsumer);
            default:
                if (this.f1404c && m1011a() && ((InterfaceC2235U) this.f1402a).tryAdvance((DoubleConsumer) this)) {
                    DoublePredicate doublePredicate2 = null;
                    doublePredicate2.test(this.f1358e);
                    throw null;
                }
                this.f1404c = false;
                return false;
        }
    }

    @Override // p022j$.util.stream.AbstractC2499j4, p022j$.util.Spliterator
    public InterfaceC2235U trySplit() {
        switch (this.f1359f) {
            case 1:
                if (this.f1403b.get()) {
                    return null;
                }
                return (InterfaceC2235U) super.trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // p022j$.util.InterfaceC2246c0
    public /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        switch (this.f1359f) {
            case 1:
                tryAdvance((DoubleConsumer) obj);
                return false;
            default:
                return tryAdvance((DoubleConsumer) obj);
        }
    }
}
