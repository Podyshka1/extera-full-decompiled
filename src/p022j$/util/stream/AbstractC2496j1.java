package p022j$.util.stream;

import java.util.Deque;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.j1 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2496j1 extends AbstractC2508l1 implements InterfaceC2246c0 {
    @Override // p022j$.util.InterfaceC2246c0
    public final boolean tryAdvance(Object obj) {
        InterfaceC2347H0 interfaceC2347H0;
        if (!m1015c()) {
            return false;
        }
        boolean zTryAdvance = ((InterfaceC2246c0) this.f1421d).tryAdvance(obj);
        if (!zTryAdvance) {
            if (this.f1420c == null && (interfaceC2347H0 = (InterfaceC2347H0) AbstractC2508l1.m1013a(this.f1422e)) != null) {
                InterfaceC2246c0 interfaceC2246c0Spliterator = interfaceC2347H0.spliterator();
                this.f1421d = interfaceC2246c0Spliterator;
                return interfaceC2246c0Spliterator.tryAdvance(obj);
            }
            this.f1418a = null;
        }
        return zTryAdvance;
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final void forEachRemaining(Object obj) {
        if (this.f1418a == null) {
            return;
        }
        if (this.f1421d == null) {
            Spliterator spliterator = this.f1420c;
            if (spliterator == null) {
                Deque dequeM1014b = m1014b();
                while (true) {
                    InterfaceC2347H0 interfaceC2347H0 = (InterfaceC2347H0) AbstractC2508l1.m1013a(dequeM1014b);
                    if (interfaceC2347H0 != null) {
                        interfaceC2347H0.mo922d(obj);
                    } else {
                        this.f1418a = null;
                        return;
                    }
                }
            } else {
                ((InterfaceC2246c0) spliterator).forEachRemaining(obj);
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
