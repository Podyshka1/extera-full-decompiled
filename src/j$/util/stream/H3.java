package j$.util.stream;

import j$.time.C2045s;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public final class H3 extends AbstractC6203f3 {
    @Override // j$.util.stream.AbstractC6203f3
    /* JADX INFO: renamed from: e */
    public final AbstractC6203f3 mo787e(Spliterator spliterator) {
        return new H3(this.f1136b, spliterator, this.f1135a);
    }

    @Override // j$.util.stream.AbstractC6203f3
    /* JADX INFO: renamed from: d */
    public final void mo786d() {
        C6183a3 c6183a3 = new C6183a3();
        this.f1142h = c6183a3;
        Objects.requireNonNull(c6183a3);
        this.f1139e = this.f1136b.t0(new G3(c6183a3, 0));
        this.f1140f = new C2045s(14, this);
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean zM855a = m855a();
        if (!zM855a) {
            return zM855a;
        }
        C6183a3 c6183a3 = (C6183a3) this.f1142h;
        long j = this.f1141g;
        if (c6183a3.f1092c != 0) {
            if (j >= c6183a3.count()) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            }
            for (int i = 0; i <= c6183a3.f1092c; i++) {
                long j2 = c6183a3.f1093d[i];
                Object[] objArr = c6183a3.f1060f[i];
                if (j < ((long) objArr.length) + j2) {
                    obj = objArr[(int) (j - j2)];
                }
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        if (j < c6183a3.f1091b) {
            obj = c6183a3.f1059e[(int) j];
        } else {
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        consumer.m800v(obj);
        return zM855a;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        if (this.f1142h == null && !this.f1143i) {
            Objects.requireNonNull(consumer);
            m857c();
            Objects.requireNonNull(consumer);
            G3 g3 = new G3(consumer, 1);
            this.f1136b.s0(this.f1138d, g3);
            this.f1143i = true;
            return;
        }
        while (tryAdvance(consumer)) {
        }
    }
}
