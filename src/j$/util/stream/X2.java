package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.InterfaceC2101Z;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* JADX INFO: loaded from: classes2.dex */
public class X2 extends Z2 implements LongConsumer {
    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC1965a.m421d(this, longConsumer);
    }

    @Override // j$.util.stream.Z2
    /* JADX INFO: renamed from: i */
    public final void mo826i(Object obj, int i, int i2, Object obj2) {
        long[] jArr = (long[]) obj;
        LongConsumer longConsumer = (LongConsumer) obj2;
        while (i < i2) {
            longConsumer.accept(jArr[i]);
            i++;
        }
    }

    @Override // j$.util.stream.Z2
    /* JADX INFO: renamed from: j */
    public final int mo827j(Object obj) {
        return ((long[]) obj).length;
    }

    @Override // java.lang.Iterable, j$.lang.InterfaceC1966a
    public final void forEach(Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            mo785d((LongConsumer) consumer);
        } else {
            if (O3.f978a) {
                O3.m816a(getClass(), "{0} calling SpinedBuffer.OfLong.forEach(Consumer)");
                throw null;
            }
            AbstractC1965a.m429l((W2) spliterator(), consumer);
        }
    }

    @Override // j$.util.stream.Z2
    /* JADX INFO: renamed from: o */
    public final Object[] mo828o() {
        return new long[8][];
    }

    @Override // j$.util.stream.Z2
    public final Object newArray(int i) {
        return new long[i];
    }

    @Override // java.util.function.LongConsumer
    public void accept(long j) {
        m834q();
        long[] jArr = (long[]) this.f1054e;
        int i = this.f1091b;
        this.f1091b = i + 1;
        jArr[i] = j;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        InterfaceC2101Z interfaceC2101ZSpliterator = spliterator();
        Objects.requireNonNull(interfaceC2101ZSpliterator);
        return new j$.util.g0(interfaceC2101ZSpliterator);
    }

    @Override // j$.util.stream.Z2, java.lang.Iterable
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public InterfaceC2101Z spliterator() {
        return new W2(this, 0, this.f1092c, 0, this.f1091b);
    }

    public final String toString() {
        long[] jArr = (long[]) mo783b();
        if (jArr.length < 200) {
            return String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f1092c), Arrays.toString(jArr));
        }
        return String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f1092c), Arrays.toString(Arrays.copyOf(jArr, 200)));
    }
}
