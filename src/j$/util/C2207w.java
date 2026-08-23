package j$.util;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.w */
/* JADX INFO: loaded from: classes2.dex */
public final class C2207w implements DoubleConsumer {

    /* JADX INFO: renamed from: a */
    public double f1300a;

    /* JADX INFO: renamed from: b */
    public double f1301b;
    private long count;
    private double sum;
    private double min = Double.POSITIVE_INFINITY;
    private double max = Double.NEGATIVE_INFINITY;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC1965a.m419b(this, doubleConsumer);
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.count++;
        this.f1301b += d;
        m911b(d);
        this.min = Math.min(this.min, d);
        this.max = Math.max(this.max, d);
    }

    /* JADX INFO: renamed from: a */
    public final void m910a(C2207w c2207w) {
        this.count += c2207w.count;
        this.f1301b += c2207w.f1301b;
        m911b(c2207w.sum);
        m911b(c2207w.f1300a);
        this.min = Math.min(this.min, c2207w.min);
        this.max = Math.max(this.max, c2207w.max);
    }

    /* JADX INFO: renamed from: b */
    public final void m911b(double d) {
        double d2 = d - this.f1300a;
        double d3 = this.sum;
        double d4 = d3 + d2;
        this.f1300a = (d4 - d3) - d2;
        this.sum = d4;
    }

    public final String toString() {
        double d;
        String simpleName = C2207w.class.getSimpleName();
        Long lValueOf = Long.valueOf(this.count);
        double d2 = this.sum + this.f1300a;
        if (Double.isNaN(d2) && Double.isInfinite(this.f1301b)) {
            d2 = this.f1301b;
        }
        Double dValueOf = Double.valueOf(d2);
        Double dValueOf2 = Double.valueOf(this.min);
        if (this.count > 0) {
            double d3 = this.sum + this.f1300a;
            if (Double.isNaN(d3) && Double.isInfinite(this.f1301b)) {
                d3 = this.f1301b;
            }
            d = d3 / this.count;
        } else {
            d = 0.0d;
        }
        return String.format("%s{count=%d, sum=%f, min=%f, average=%f, max=%f}", simpleName, lValueOf, dValueOf, dValueOf2, Double.valueOf(d), Double.valueOf(this.max));
    }
}
