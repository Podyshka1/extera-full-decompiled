package j$.util;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.z */
/* JADX INFO: loaded from: classes2.dex */
public final class C2210z implements LongConsumer, IntConsumer {
    private long count;
    private long sum;
    private long min = Long.MAX_VALUE;
    private long max = Long.MIN_VALUE;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC1965a.m420c(this, intConsumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC1965a.m421d(this, longConsumer);
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        accept(i);
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.count++;
        this.sum += j;
        this.min = Math.min(this.min, j);
        this.max = Math.max(this.max, j);
    }

    /* JADX INFO: renamed from: a */
    public final void m913a(C2210z c2210z) {
        this.count += c2210z.count;
        this.sum += c2210z.sum;
        this.min = Math.min(this.min, c2210z.min);
        this.max = Math.max(this.max, c2210z.max);
    }

    public final String toString() {
        String simpleName = C2210z.class.getSimpleName();
        Long lValueOf = Long.valueOf(this.count);
        Long lValueOf2 = Long.valueOf(this.sum);
        Long lValueOf3 = Long.valueOf(this.min);
        long j = this.count;
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", simpleName, lValueOf, lValueOf2, lValueOf3, Double.valueOf(j > 0 ? this.sum / j : 0.0d), Long.valueOf(this.max));
    }
}
