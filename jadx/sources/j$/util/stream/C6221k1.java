package j$.util.stream;

import j$.util.Spliterator;
import java.util.Deque;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.stream.k1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6221k1 extends AbstractC6225l1 {
    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        I0 i0M861a;
        if (!m863c()) {
            return false;
        }
        boolean zTryAdvance = this.f1185d.tryAdvance(consumer);
        if (!zTryAdvance) {
            if (this.f1184c == null && (i0M861a = AbstractC6225l1.m861a(this.f1186e)) != null) {
                Spliterator spliterator = i0M861a.spliterator();
                this.f1185d = spliterator;
                return spliterator.tryAdvance(consumer);
            }
            this.f1182a = null;
        }
        return zTryAdvance;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        if (this.f1182a == null) {
            return;
        }
        if (this.f1185d == null) {
            Spliterator spliterator = this.f1184c;
            if (spliterator == null) {
                Deque dequeM862b = m862b();
                while (true) {
                    I0 i0M861a = AbstractC6225l1.m861a(dequeM862b);
                    if (i0M861a != null) {
                        i0M861a.forEach(consumer);
                    } else {
                        this.f1182a = null;
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
