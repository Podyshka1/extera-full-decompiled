package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: loaded from: classes2.dex */
public class V2 extends Z2 implements IntConsumer {
    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC1965a.m420c(this, intConsumer);
    }

    @Override // j$.util.stream.Z2
    /* JADX INFO: renamed from: i */
    public final void mo826i(Object obj, int i, int i2, Object obj2) {
        int[] iArr = (int[]) obj;
        IntConsumer intConsumer = (IntConsumer) obj2;
        while (i < i2) {
            intConsumer.accept(iArr[i]);
            i++;
        }
    }

    @Override // j$.util.stream.Z2
    /* JADX INFO: renamed from: j */
    public final int mo827j(Object obj) {
        return ((int[]) obj).length;
    }

    @Override // java.lang.Iterable, j$.lang.InterfaceC1966a
    public final void forEach(Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            mo785d((IntConsumer) consumer);
        } else {
            if (O3.f978a) {
                O3.m816a(getClass(), "{0} calling SpinedBuffer.OfInt.forEach(Consumer)");
                throw null;
            }
            AbstractC1965a.m428k((U2) spliterator(), consumer);
        }
    }

    @Override // j$.util.stream.Z2
    /* JADX INFO: renamed from: o */
    public final Object[] mo828o() {
        return new int[8][];
    }

    @Override // j$.util.stream.Z2
    public final Object newArray(int i) {
        return new int[i];
    }

    @Override // java.util.function.IntConsumer
    public void accept(int i) {
        m834q();
        int[] iArr = (int[]) this.f1054e;
        int i2 = this.f1091b;
        this.f1091b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Spliterator.OfInt ofIntSpliterator = spliterator();
        Objects.requireNonNull(ofIntSpliterator);
        return new j$.util.f0(ofIntSpliterator);
    }

    @Override // j$.util.stream.Z2, java.lang.Iterable
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public Spliterator.OfInt spliterator() {
        return new U2(this, 0, this.f1092c, 0, this.f1091b);
    }

    public final String toString() {
        int[] iArr = (int[]) mo783b();
        if (iArr.length < 200) {
            return String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f1092c), Arrays.toString(iArr));
        }
        return String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f1092c), Arrays.toString(Arrays.copyOf(iArr, 200)));
    }
}
