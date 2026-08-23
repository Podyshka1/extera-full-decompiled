package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.InterfaceC2096U;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: loaded from: classes2.dex */
public class T2 extends Z2 implements DoubleConsumer {
    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC1965a.m419b(this, doubleConsumer);
    }

    @Override // j$.util.stream.Z2
    /* JADX INFO: renamed from: i */
    public final void mo826i(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        DoubleConsumer doubleConsumer = (DoubleConsumer) obj2;
        while (i < i2) {
            doubleConsumer.accept(dArr[i]);
            i++;
        }
    }

    @Override // j$.util.stream.Z2
    /* JADX INFO: renamed from: j */
    public final int mo827j(Object obj) {
        return ((double[]) obj).length;
    }

    @Override // java.lang.Iterable, j$.lang.InterfaceC1966a
    public final void forEach(Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            mo785d((DoubleConsumer) consumer);
        } else {
            if (O3.f978a) {
                O3.m816a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
                throw null;
            }
            AbstractC1965a.m427j((S2) spliterator(), consumer);
        }
    }

    @Override // j$.util.stream.Z2
    /* JADX INFO: renamed from: o */
    public final Object[] mo828o() {
        return new double[8][];
    }

    @Override // j$.util.stream.Z2
    public final Object newArray(int i) {
        return new double[i];
    }

    @Override // java.util.function.DoubleConsumer
    public void accept(double d) {
        m834q();
        double[] dArr = (double[]) this.f1054e;
        int i = this.f1091b;
        this.f1091b = i + 1;
        dArr[i] = d;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        InterfaceC2096U interfaceC2096USpliterator = spliterator();
        Objects.requireNonNull(interfaceC2096USpliterator);
        return new j$.util.h0(interfaceC2096USpliterator);
    }

    @Override // j$.util.stream.Z2, java.lang.Iterable
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public InterfaceC2096U spliterator() {
        return new S2(this, 0, this.f1092c, 0, this.f1091b);
    }

    public final String toString() {
        double[] dArr = (double[]) mo783b();
        if (dArr.length < 200) {
            return String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f1092c), Arrays.toString(dArr));
        }
        return String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f1092c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }
}
