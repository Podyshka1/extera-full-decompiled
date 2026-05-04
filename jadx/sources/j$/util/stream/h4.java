package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.InterfaceC2101Z;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import java.util.function.LongPredicate;

/* JADX INFO: loaded from: classes2.dex */
public final class h4 extends j4 implements LongConsumer, InterfaceC2101Z {

    /* JADX INFO: renamed from: e */
    public long f1155e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ int f1156f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h4(Spliterator spliterator, int i) {
        super(spliterator);
        this.f1156f = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h4(Spliterator spliterator, j4 j4Var, int i) {
        super(spliterator, j4Var);
        this.f1156f = i;
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC1965a.m421d(this, longConsumer);
    }

    @Override // j$.util.stream.j4, j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m429l(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1965a.m396B(this, consumer);
    }

    @Override // j$.util.c0
    public final void forEachRemaining(LongConsumer longConsumer) {
        while (tryAdvance(longConsumer)) {
        }
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.f1169d = (this.f1169d + 1) & 63;
        this.f1155e = j;
    }

    @Override // j$.util.stream.j4
    /* JADX INFO: renamed from: b */
    public final Spliterator mo851b(Spliterator spliterator) {
        switch (this.f1156f) {
            case 0:
                return new h4((InterfaceC2101Z) spliterator, this, 0);
            default:
                return new h4((InterfaceC2101Z) spliterator, this, 1);
        }
    }

    @Override // j$.util.stream.j4, j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator trySplit() {
        switch (this.f1156f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.stream.j4, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.c0 trySplit() {
        switch (this.f1156f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.InterfaceC2101Z
    public final boolean tryAdvance(LongConsumer longConsumer) {
        switch (this.f1156f) {
            case 0:
                boolean z = this.f1168c;
                Spliterator spliterator = this.f1166a;
                if (z) {
                    this.f1168c = false;
                    boolean zTryAdvance = ((InterfaceC2101Z) spliterator).tryAdvance((LongConsumer) this);
                    if (zTryAdvance && m860a()) {
                        LongPredicate longPredicate = null;
                        longPredicate.test(this.f1155e);
                        throw null;
                    }
                    if (!zTryAdvance) {
                        return zTryAdvance;
                    }
                    longConsumer.accept(this.f1155e);
                    return zTryAdvance;
                }
                return ((InterfaceC2101Z) spliterator).tryAdvance(longConsumer);
            default:
                if (this.f1168c && m860a() && ((InterfaceC2101Z) this.f1166a).tryAdvance((LongConsumer) this)) {
                    LongPredicate longPredicate2 = null;
                    longPredicate2.test(this.f1155e);
                    throw null;
                }
                this.f1168c = false;
                return false;
        }
    }

    @Override // j$.util.stream.j4, j$.util.Spliterator
    public InterfaceC2101Z trySplit() {
        switch (this.f1156f) {
            case 1:
                if (this.f1167b.get()) {
                    return null;
                }
                return (InterfaceC2101Z) super.trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.c0
    public /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        switch (this.f1156f) {
            case 1:
                tryAdvance((LongConsumer) obj);
                return false;
            default:
                return tryAdvance((LongConsumer) obj);
        }
    }
}
