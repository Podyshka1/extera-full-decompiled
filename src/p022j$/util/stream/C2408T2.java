package p022j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.C2288h0;
import p022j$.util.InterfaceC2235U;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.util.stream.T2 */
/* JADX INFO: loaded from: classes2.dex */
public class C2408T2 extends AbstractC2438Z2 implements DoubleConsumer {
    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2104a.m539b(this, doubleConsumer);
    }

    @Override // p022j$.util.stream.AbstractC2438Z2
    /* JADX INFO: renamed from: i */
    public final void mo966i(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        DoubleConsumer doubleConsumer = (DoubleConsumer) obj2;
        while (i < i2) {
            doubleConsumer.accept(dArr[i]);
            i++;
        }
    }

    @Override // p022j$.util.stream.AbstractC2438Z2
    /* JADX INFO: renamed from: j */
    public final int mo967j(Object obj) {
        return ((double[]) obj).length;
    }

    @Override // java.lang.Iterable, p022j$.lang.InterfaceC2105a
    public final void forEach(Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            mo922d((DoubleConsumer) consumer);
        } else {
            if (AbstractC2385O3.f1213a) {
                AbstractC2385O3.m956a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
                throw null;
            }
            AbstractC2104a.m547j((C2403S2) spliterator(), consumer);
        }
    }

    @Override // p022j$.util.stream.AbstractC2438Z2
    /* JADX INFO: renamed from: o */
    public final Object[] mo968o() {
        return new double[8][];
    }

    @Override // p022j$.util.stream.AbstractC2438Z2
    public final Object newArray(int i) {
        return new double[i];
    }

    @Override // java.util.function.DoubleConsumer
    public void accept(double d) {
        m974q();
        double[] dArr = (double[]) this.f1289e;
        int i = this.f1327b;
        this.f1327b = i + 1;
        dArr[i] = d;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        InterfaceC2235U interfaceC2235USpliterator = spliterator();
        Objects.requireNonNull(interfaceC2235USpliterator);
        return new C2288h0(interfaceC2235USpliterator);
    }

    @Override // p022j$.util.stream.AbstractC2438Z2, java.lang.Iterable
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public InterfaceC2235U spliterator() {
        return new C2403S2(this, 0, this.f1328c, 0, this.f1327b);
    }

    public final String toString() {
        double[] dArr = (double[]) mo920b();
        if (dArr.length < 200) {
            return String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f1328c), Arrays.toString(dArr));
        }
        return String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f1328c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }
}
