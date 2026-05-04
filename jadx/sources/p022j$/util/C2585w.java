package p022j$.util;

import java.util.function.DoubleConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.w */
/* JADX INFO: loaded from: classes2.dex */
public final class C2585w implements DoubleConsumer {

    /* JADX INFO: renamed from: a */
    public double f1536a;

    /* JADX INFO: renamed from: b */
    public double f1537b;
    private long count;
    private double sum;
    private double min = Double.POSITIVE_INFINITY;
    private double max = Double.NEGATIVE_INFINITY;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2104a.m539b(this, doubleConsumer);
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.count++;
        this.f1537b += d;
        m1078b(d);
        this.min = Math.min(this.min, d);
        this.max = Math.max(this.max, d);
    }

    /* JADX INFO: renamed from: a */
    public final void m1077a(C2585w c2585w) {
        this.count += c2585w.count;
        this.f1537b += c2585w.f1537b;
        m1078b(c2585w.sum);
        m1078b(c2585w.f1536a);
        this.min = Math.min(this.min, c2585w.min);
        this.max = Math.max(this.max, c2585w.max);
    }

    /* JADX INFO: renamed from: b */
    public final void m1078b(double d) {
        double d2 = d - this.f1536a;
        double d3 = this.sum;
        double d4 = d3 + d2;
        this.f1536a = (d4 - d3) - d2;
        this.sum = d4;
    }

    public final String toString() {
        double d;
        String simpleName = C2585w.class.getSimpleName();
        Long lValueOf = Long.valueOf(this.count);
        double d2 = this.sum + this.f1536a;
        if (Double.isNaN(d2) && Double.isInfinite(this.f1537b)) {
            d2 = this.f1537b;
        }
        Double dValueOf = Double.valueOf(d2);
        Double dValueOf2 = Double.valueOf(this.min);
        if (this.count > 0) {
            double d3 = this.sum + this.f1536a;
            if (Double.isNaN(d3) && Double.isInfinite(this.f1537b)) {
                d3 = this.f1537b;
            }
            d = d3 / this.count;
        } else {
            d = 0.0d;
        }
        return String.format("%s{count=%d, sum=%f, min=%f, average=%f, max=%f}", simpleName, lValueOf, dValueOf, dValueOf2, Double.valueOf(d), Double.valueOf(this.max));
    }
}
