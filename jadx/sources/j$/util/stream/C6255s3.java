package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.C2045s;
import j$.util.InterfaceC2101Z;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.stream.s3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6255s3 extends AbstractC6203f3 implements InterfaceC2101Z {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m429l(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1965a.m396B(this, consumer);
    }

    @Override // j$.util.stream.AbstractC6203f3
    /* JADX INFO: renamed from: e */
    public final AbstractC6203f3 mo787e(Spliterator spliterator) {
        return new C6255s3(this.f1136b, spliterator, this.f1135a);
    }

    @Override // j$.util.stream.AbstractC6203f3
    /* JADX INFO: renamed from: d */
    public final void mo786d() {
        X2 x2 = new X2();
        this.f1142h = x2;
        Objects.requireNonNull(x2);
        this.f1139e = this.f1136b.t0(new C6251r3(x2, 1));
        this.f1140f = new C2045s(13, this);
    }

    @Override // j$.util.stream.AbstractC6203f3, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (InterfaceC2101Z) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC6203f3, j$.util.Spliterator
    public final InterfaceC2101Z trySplit() {
        return (InterfaceC2101Z) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC6203f3, j$.util.Spliterator
    public final j$.util.c0 trySplit() {
        return (InterfaceC2101Z) super.trySplit();
    }

    @Override // j$.util.c0
    public final boolean tryAdvance(LongConsumer longConsumer) {
        long j;
        Objects.requireNonNull(longConsumer);
        boolean zM855a = m855a();
        if (zM855a) {
            X2 x2 = (X2) this.f1142h;
            long j2 = this.f1141g;
            int iM832k = x2.m832k(j2);
            if (x2.f1092c == 0 && iM832k == 0) {
                j = ((long[]) x2.f1054e)[(int) j2];
            } else {
                j = ((long[][]) x2.f1055f)[iM832k][(int) (j2 - x2.f1093d[iM832k])];
            }
            longConsumer.accept(j);
        }
        return zM855a;
    }

    @Override // j$.util.c0
    public final void forEachRemaining(LongConsumer longConsumer) {
        if (this.f1142h == null && !this.f1143i) {
            Objects.requireNonNull(longConsumer);
            m857c();
            Objects.requireNonNull(longConsumer);
            C6251r3 c6251r3 = new C6251r3(longConsumer, 0);
            this.f1136b.s0(this.f1138d, c6251r3);
            this.f1143i = true;
            return;
        }
        while (tryAdvance(longConsumer)) {
        }
    }
}
