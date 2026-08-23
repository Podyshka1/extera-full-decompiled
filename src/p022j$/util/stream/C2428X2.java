package p022j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.C2286g0;
import p022j$.util.InterfaceC2240Z;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.util.stream.X2 */
/* JADX INFO: loaded from: classes2.dex */
public class C2428X2 extends AbstractC2438Z2 implements LongConsumer {
    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2104a.m541d(this, longConsumer);
    }

    @Override // p022j$.util.stream.AbstractC2438Z2
    /* JADX INFO: renamed from: i */
    public final void mo966i(Object obj, int i, int i2, Object obj2) {
        long[] jArr = (long[]) obj;
        LongConsumer longConsumer = (LongConsumer) obj2;
        while (i < i2) {
            longConsumer.accept(jArr[i]);
            i++;
        }
    }

    @Override // p022j$.util.stream.AbstractC2438Z2
    /* JADX INFO: renamed from: j */
    public final int mo967j(Object obj) {
        return ((long[]) obj).length;
    }

    @Override // java.lang.Iterable, p022j$.lang.InterfaceC2105a
    public final void forEach(Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            mo922d((LongConsumer) consumer);
        } else {
            if (AbstractC2385O3.f1213a) {
                AbstractC2385O3.m956a(getClass(), "{0} calling SpinedBuffer.OfLong.forEach(Consumer)");
                throw null;
            }
            AbstractC2104a.m549l((C2423W2) spliterator(), consumer);
        }
    }

    @Override // p022j$.util.stream.AbstractC2438Z2
    /* JADX INFO: renamed from: o */
    public final Object[] mo968o() {
        return new long[8][];
    }

    @Override // p022j$.util.stream.AbstractC2438Z2
    public final Object newArray(int i) {
        return new long[i];
    }

    @Override // java.util.function.LongConsumer
    public void accept(long j) {
        m974q();
        long[] jArr = (long[]) this.f1289e;
        int i = this.f1327b;
        this.f1327b = i + 1;
        jArr[i] = j;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        InterfaceC2240Z interfaceC2240ZSpliterator = spliterator();
        Objects.requireNonNull(interfaceC2240ZSpliterator);
        return new C2286g0(interfaceC2240ZSpliterator);
    }

    @Override // p022j$.util.stream.AbstractC2438Z2, java.lang.Iterable
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public InterfaceC2240Z spliterator() {
        return new C2423W2(this, 0, this.f1328c, 0, this.f1327b);
    }

    public final String toString() {
        long[] jArr = (long[]) mo920b();
        if (jArr.length < 200) {
            return String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f1328c), Arrays.toString(jArr));
        }
        return String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f1328c), Arrays.toString(Arrays.copyOf(jArr, 200)));
    }
}
