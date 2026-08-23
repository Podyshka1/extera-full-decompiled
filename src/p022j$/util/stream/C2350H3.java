package p022j$.util.stream;

import java.util.function.Consumer;
import p022j$.time.C2184s;
import p022j$.util.Objects;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.H3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2350H3 extends AbstractC2474f3 {
    @Override // p022j$.util.stream.AbstractC2474f3
    /* JADX INFO: renamed from: e */
    public final AbstractC2474f3 mo924e(Spliterator spliterator) {
        return new C2350H3(this.f1372b, spliterator, this.f1371a);
    }

    @Override // p022j$.util.stream.AbstractC2474f3
    /* JADX INFO: renamed from: d */
    public final void mo923d() {
        C2444a3 c2444a3 = new C2444a3();
        this.f1378h = c2444a3;
        Objects.requireNonNull(c2444a3);
        this.f1375e = this.f1372b.mo983t0(new C2345G3(c2444a3, 0));
        this.f1376f = new C2184s(14, this);
    }

    @Override // p022j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean zM1006a = m1006a();
        if (!zM1006a) {
            return zM1006a;
        }
        C2444a3 c2444a3 = (C2444a3) this.f1378h;
        long j = this.f1377g;
        if (c2444a3.f1328c != 0) {
            if (j >= c2444a3.count()) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            }
            for (int i = 0; i <= c2444a3.f1328c; i++) {
                long j2 = c2444a3.f1329d[i];
                Object[] objArr = c2444a3.f1295f[i];
                if (j < ((long) objArr.length) + j2) {
                    obj = objArr[(int) (j - j2)];
                }
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        if (j < c2444a3.f1327b) {
            obj = c2444a3.f1294e[(int) j];
        } else {
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        consumer.m940v(obj);
        return zM1006a;
    }

    @Override // p022j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        if (this.f1378h == null && !this.f1379i) {
            Objects.requireNonNull(consumer);
            m1008c();
            Objects.requireNonNull(consumer);
            C2345G3 c2345g3 = new C2345G3(consumer, 1);
            this.f1372b.mo982s0(this.f1374d, c2345g3);
            this.f1379i = true;
            return;
        }
        while (tryAdvance(consumer)) {
        }
    }
}
