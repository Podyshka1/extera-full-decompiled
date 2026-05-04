package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.InterfaceC2096U;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.DoublePredicate;

/* JADX INFO: loaded from: classes2.dex */
public final class d4 extends j4 implements DoubleConsumer, InterfaceC2096U {

    /* JADX INFO: renamed from: e */
    public double f1122e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ int f1123f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d4(Spliterator spliterator, int i) {
        super(spliterator);
        this.f1123f = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d4(Spliterator spliterator, j4 j4Var, int i) {
        super(spliterator, j4Var);
        this.f1123f = i;
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC1965a.m419b(this, doubleConsumer);
    }

    @Override // j$.util.stream.j4, j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m427j(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1965a.m443z(this, consumer);
    }

    @Override // j$.util.c0
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        while (tryAdvance(doubleConsumer)) {
        }
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.f1169d = (this.f1169d + 1) & 63;
        this.f1122e = d;
    }

    @Override // j$.util.stream.j4
    /* JADX INFO: renamed from: b */
    public final Spliterator mo851b(Spliterator spliterator) {
        switch (this.f1123f) {
            case 0:
                return new d4((InterfaceC2096U) spliterator, this, 0);
            default:
                return new d4((InterfaceC2096U) spliterator, this, 1);
        }
    }

    @Override // j$.util.stream.j4, j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator trySplit() {
        switch (this.f1123f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.stream.j4, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.c0 trySplit() {
        switch (this.f1123f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.InterfaceC2096U
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        switch (this.f1123f) {
            case 0:
                boolean z = this.f1168c;
                Spliterator spliterator = this.f1166a;
                if (z) {
                    this.f1168c = false;
                    boolean zTryAdvance = ((InterfaceC2096U) spliterator).tryAdvance((DoubleConsumer) this);
                    if (zTryAdvance && m860a()) {
                        DoublePredicate doublePredicate = null;
                        doublePredicate.test(this.f1122e);
                        throw null;
                    }
                    if (!zTryAdvance) {
                        return zTryAdvance;
                    }
                    doubleConsumer.accept(this.f1122e);
                    return zTryAdvance;
                }
                return ((InterfaceC2096U) spliterator).tryAdvance(doubleConsumer);
            default:
                if (this.f1168c && m860a() && ((InterfaceC2096U) this.f1166a).tryAdvance((DoubleConsumer) this)) {
                    DoublePredicate doublePredicate2 = null;
                    doublePredicate2.test(this.f1122e);
                    throw null;
                }
                this.f1168c = false;
                return false;
        }
    }

    @Override // j$.util.stream.j4, j$.util.Spliterator
    public InterfaceC2096U trySplit() {
        switch (this.f1123f) {
            case 1:
                if (this.f1167b.get()) {
                    return null;
                }
                return (InterfaceC2096U) super.trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.c0
    public /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        switch (this.f1123f) {
            case 1:
                tryAdvance((DoubleConsumer) obj);
                return false;
            default:
                return tryAdvance((DoubleConsumer) obj);
        }
    }
}
