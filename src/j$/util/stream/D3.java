package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.Comparator;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public final class D3 extends F3 implements Spliterator, Consumer {

    /* JADX INFO: renamed from: f */
    public Object f883f;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC1965a.m432o(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC1965a.m434q(this, i);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m800v(Object obj) {
        this.f883f = obj;
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Objects.requireNonNull(consumer);
        while (m777c() != E3.NO_MORE && this.f897a.tryAdvance(this)) {
            if (m776a(1L) == 1) {
                consumer.m800v(this.f883f);
                this.f883f = null;
                return true;
            }
        }
        return false;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C6223k3 c6223k3 = null;
        while (true) {
            E3 e3M777c = m777c();
            if (e3M777c == E3.NO_MORE) {
                return;
            }
            E3 e3 = E3.MAYBE_MORE;
            Spliterator spliterator = this.f897a;
            if (e3M777c == e3) {
                int i = this.f899c;
                if (c6223k3 == null) {
                    c6223k3 = new C6223k3(i);
                } else {
                    c6223k3.f1188a = 0;
                }
                long j = 0;
                while (spliterator.tryAdvance(c6223k3)) {
                    j++;
                    if (j >= i) {
                        break;
                    }
                }
                if (j == 0) {
                    return;
                }
                long jM776a = m776a(j);
                for (int i2 = 0; i2 < jM776a; i2++) {
                    consumer.m800v(c6223k3.f1174b[i2]);
                }
            } else {
                spliterator.forEachRemaining(consumer);
                return;
            }
        }
    }

    @Override // j$.util.stream.F3
    /* JADX INFO: renamed from: b */
    public final Spliterator mo756b(Spliterator spliterator) {
        return new D3(spliterator, this);
    }
}
