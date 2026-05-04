package j$.util;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.x */
/* JADX INFO: loaded from: classes2.dex */
public final class C2208x implements IntConsumer {
    private long count;
    private long sum;
    private int min = Integer.MAX_VALUE;
    private int max = Integer.MIN_VALUE;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC1965a.m420c(this, intConsumer);
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.count++;
        this.sum += (long) i;
        this.min = Math.min(this.min, i);
        this.max = Math.max(this.max, i);
    }

    /* JADX INFO: renamed from: a */
    public final void m912a(C2208x c2208x) {
        this.count += c2208x.count;
        this.sum += c2208x.sum;
        this.min = Math.min(this.min, c2208x.min);
        this.max = Math.max(this.max, c2208x.max);
    }

    public final String toString() {
        String simpleName = C2208x.class.getSimpleName();
        Long lValueOf = Long.valueOf(this.count);
        Long lValueOf2 = Long.valueOf(this.sum);
        Integer numValueOf = Integer.valueOf(this.min);
        long j = this.count;
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", simpleName, lValueOf, lValueOf2, numValueOf, Double.valueOf(j > 0 ? this.sum / j : 0.0d), Integer.valueOf(this.max));
    }
}
