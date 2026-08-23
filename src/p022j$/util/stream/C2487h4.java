package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.LongConsumer;
import java.util.function.LongPredicate;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.InterfaceC2240Z;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.h4 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2487h4 extends AbstractC2499j4 implements LongConsumer, InterfaceC2240Z {

    /* JADX INFO: renamed from: e */
    public long f1391e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ int f1392f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2487h4(Spliterator spliterator, int i) {
        super(spliterator);
        this.f1392f = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2487h4(Spliterator spliterator, AbstractC2499j4 abstractC2499j4, int i) {
        super(spliterator, abstractC2499j4);
        this.f1392f = i;
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2104a.m541d(this, longConsumer);
    }

    @Override // p022j$.util.stream.AbstractC2499j4, p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2104a.m549l(this, consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC2104a.m516B(this, consumer);
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final void forEachRemaining(LongConsumer longConsumer) {
        while (tryAdvance(longConsumer)) {
        }
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.f1405d = (this.f1405d + 1) & 63;
        this.f1391e = j;
    }

    @Override // p022j$.util.stream.AbstractC2499j4
    /* JADX INFO: renamed from: b */
    public final Spliterator mo1002b(Spliterator spliterator) {
        switch (this.f1392f) {
            case 0:
                return new C2487h4((InterfaceC2240Z) spliterator, this, 0);
            default:
                return new C2487h4((InterfaceC2240Z) spliterator, this, 1);
        }
    }

    @Override // p022j$.util.stream.AbstractC2499j4, p022j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator trySplit() {
        switch (this.f1392f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // p022j$.util.stream.AbstractC2499j4, p022j$.util.Spliterator
    public /* bridge */ /* synthetic */ InterfaceC2246c0 trySplit() {
        switch (this.f1392f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // p022j$.util.InterfaceC2240Z
    public final boolean tryAdvance(LongConsumer longConsumer) {
        switch (this.f1392f) {
            case 0:
                boolean z = this.f1404c;
                Spliterator spliterator = this.f1402a;
                if (z) {
                    this.f1404c = false;
                    boolean zTryAdvance = ((InterfaceC2240Z) spliterator).tryAdvance((LongConsumer) this);
                    if (zTryAdvance && m1011a()) {
                        LongPredicate longPredicate = null;
                        longPredicate.test(this.f1391e);
                        throw null;
                    }
                    if (!zTryAdvance) {
                        return zTryAdvance;
                    }
                    longConsumer.accept(this.f1391e);
                    return zTryAdvance;
                }
                return ((InterfaceC2240Z) spliterator).tryAdvance(longConsumer);
            default:
                if (this.f1404c && m1011a() && ((InterfaceC2240Z) this.f1402a).tryAdvance((LongConsumer) this)) {
                    LongPredicate longPredicate2 = null;
                    longPredicate2.test(this.f1391e);
                    throw null;
                }
                this.f1404c = false;
                return false;
        }
    }

    @Override // p022j$.util.stream.AbstractC2499j4, p022j$.util.Spliterator
    public InterfaceC2240Z trySplit() {
        switch (this.f1392f) {
            case 1:
                if (this.f1403b.get()) {
                    return null;
                }
                return (InterfaceC2240Z) super.trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // p022j$.util.InterfaceC2246c0
    public /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        switch (this.f1392f) {
            case 1:
                tryAdvance((LongConsumer) obj);
                return false;
            default:
                return tryAdvance((LongConsumer) obj);
        }
    }
}
