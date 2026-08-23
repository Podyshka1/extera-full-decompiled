package p022j$.util.stream;

import java.util.Deque;
import java.util.function.Consumer;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.k1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2502k1 extends AbstractC2508l1 {
    @Override // p022j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        InterfaceC2352I0 interfaceC2352I0M1013a;
        if (!m1015c()) {
            return false;
        }
        boolean zTryAdvance = this.f1421d.tryAdvance(consumer);
        if (!zTryAdvance) {
            if (this.f1420c == null && (interfaceC2352I0M1013a = AbstractC2508l1.m1013a(this.f1422e)) != null) {
                Spliterator spliterator = interfaceC2352I0M1013a.spliterator();
                this.f1421d = spliterator;
                return spliterator.tryAdvance(consumer);
            }
            this.f1418a = null;
        }
        return zTryAdvance;
    }

    @Override // p022j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        if (this.f1418a == null) {
            return;
        }
        if (this.f1421d == null) {
            Spliterator spliterator = this.f1420c;
            if (spliterator == null) {
                Deque dequeM1014b = m1014b();
                while (true) {
                    InterfaceC2352I0 interfaceC2352I0M1013a = AbstractC2508l1.m1013a(dequeM1014b);
                    if (interfaceC2352I0M1013a != null) {
                        interfaceC2352I0M1013a.forEach(consumer);
                    } else {
                        this.f1418a = null;
                        return;
                    }
                }
            } else {
                spliterator.forEachRemaining(consumer);
            }
        } else {
            while (tryAdvance(consumer)) {
            }
        }
    }
}
