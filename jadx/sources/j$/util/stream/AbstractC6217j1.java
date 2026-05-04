package j$.util.stream;

import j$.util.Spliterator;
import java.util.Deque;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.stream.j1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC6217j1 extends AbstractC6225l1 implements j$.util.c0 {
    @Override // j$.util.c0
    public final boolean tryAdvance(Object obj) {
        H0 h0;
        if (!m863c()) {
            return false;
        }
        boolean zTryAdvance = ((j$.util.c0) this.f1185d).tryAdvance(obj);
        if (!zTryAdvance) {
            if (this.f1184c == null && (h0 = (H0) AbstractC6225l1.m861a(this.f1186e)) != null) {
                j$.util.c0 c0VarSpliterator = h0.spliterator();
                this.f1185d = c0VarSpliterator;
                return c0VarSpliterator.tryAdvance(obj);
            }
            this.f1182a = null;
        }
        return zTryAdvance;
    }

    @Override // j$.util.c0
    public final void forEachRemaining(Object obj) {
        if (this.f1182a == null) {
            return;
        }
        if (this.f1185d == null) {
            Spliterator spliterator = this.f1184c;
            if (spliterator == null) {
                Deque dequeM862b = m862b();
                while (true) {
                    H0 h0 = (H0) AbstractC6225l1.m861a(dequeM862b);
                    if (h0 != null) {
                        h0.mo785d(obj);
                    } else {
                        this.f1182a = null;
                        return;
                    }
                }
            } else {
                ((j$.util.c0) spliterator).forEachRemaining(obj);
            }
        } else {
            while (tryAdvance(obj)) {
            }
        }
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        forEachRemaining((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return tryAdvance((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        forEachRemaining((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return tryAdvance((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        forEachRemaining((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return tryAdvance((Object) doubleConsumer);
    }
}
