package p022j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.C2276f0;
import p022j$.util.Objects;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.V2 */
/* JADX INFO: loaded from: classes2.dex */
public class C2418V2 extends AbstractC2438Z2 implements IntConsumer {
    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2104a.m540c(this, intConsumer);
    }

    @Override // p022j$.util.stream.AbstractC2438Z2
    /* JADX INFO: renamed from: i */
    public final void mo966i(Object obj, int i, int i2, Object obj2) {
        int[] iArr = (int[]) obj;
        IntConsumer intConsumer = (IntConsumer) obj2;
        while (i < i2) {
            intConsumer.accept(iArr[i]);
            i++;
        }
    }

    @Override // p022j$.util.stream.AbstractC2438Z2
    /* JADX INFO: renamed from: j */
    public final int mo967j(Object obj) {
        return ((int[]) obj).length;
    }

    @Override // java.lang.Iterable, p022j$.lang.InterfaceC2105a
    public final void forEach(Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            mo922d((IntConsumer) consumer);
        } else {
            if (AbstractC2385O3.f1213a) {
                AbstractC2385O3.m956a(getClass(), "{0} calling SpinedBuffer.OfInt.forEach(Consumer)");
                throw null;
            }
            AbstractC2104a.m548k((C2413U2) spliterator(), consumer);
        }
    }

    @Override // p022j$.util.stream.AbstractC2438Z2
    /* JADX INFO: renamed from: o */
    public final Object[] mo968o() {
        return new int[8][];
    }

    @Override // p022j$.util.stream.AbstractC2438Z2
    public final Object newArray(int i) {
        return new int[i];
    }

    @Override // java.util.function.IntConsumer
    public void accept(int i) {
        m974q();
        int[] iArr = (int[]) this.f1289e;
        int i2 = this.f1327b;
        this.f1327b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Spliterator.OfInt ofIntSpliterator = spliterator();
        Objects.requireNonNull(ofIntSpliterator);
        return new C2276f0(ofIntSpliterator);
    }

    @Override // p022j$.util.stream.AbstractC2438Z2, java.lang.Iterable
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public Spliterator.OfInt spliterator() {
        return new C2413U2(this, 0, this.f1328c, 0, this.f1327b);
    }

    public final String toString() {
        int[] iArr = (int[]) mo920b();
        if (iArr.length < 200) {
            return String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f1328c), Arrays.toString(iArr));
        }
        return String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f1328c), Arrays.toString(Arrays.copyOf(iArr, 200)));
    }
}
