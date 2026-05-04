package p022j$.util.stream;

import java.util.Comparator;
import java.util.function.Consumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Objects;
import p022j$.util.Spliterator;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.D3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2330D3 extends AbstractC2340F3 implements Spliterator, Consumer {

    /* JADX INFO: renamed from: f */
    public Object f1118f;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2104a.m552o(this);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2104a.m554q(this, i);
    }

    @Override // p022j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m940v(Object obj) {
        this.f1118f = obj;
    }

    @Override // p022j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Objects.requireNonNull(consumer);
        while (m914c() != EnumC2335E3.NO_MORE && this.f1132a.tryAdvance(this)) {
            if (m913a(1L) == 1) {
                consumer.m940v(this.f1118f);
                this.f1118f = null;
                return true;
            }
        }
        return false;
    }

    @Override // p022j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C2504k3 c2504k3 = null;
        while (true) {
            EnumC2335E3 enumC2335E3M914c = m914c();
            if (enumC2335E3M914c == EnumC2335E3.NO_MORE) {
                return;
            }
            EnumC2335E3 enumC2335E3 = EnumC2335E3.MAYBE_MORE;
            Spliterator spliterator = this.f1132a;
            if (enumC2335E3M914c == enumC2335E3) {
                int i = this.f1134c;
                if (c2504k3 == null) {
                    c2504k3 = new C2504k3(i);
                } else {
                    c2504k3.f1424a = 0;
                }
                long j = 0;
                while (spliterator.tryAdvance(c2504k3)) {
                    j++;
                    if (j >= i) {
                        break;
                    }
                }
                if (j == 0) {
                    return;
                }
                long jM913a = m913a(j);
                for (int i2 = 0; i2 < jM913a; i2++) {
                    consumer.m940v(c2504k3.f1410b[i2]);
                }
            } else {
                spliterator.forEachRemaining(consumer);
                return;
            }
        }
    }

    @Override // p022j$.util.stream.AbstractC2340F3
    /* JADX INFO: renamed from: b */
    public final Spliterator mo885b(Spliterator spliterator) {
        return new C2330D3(spliterator, this);
    }
}
