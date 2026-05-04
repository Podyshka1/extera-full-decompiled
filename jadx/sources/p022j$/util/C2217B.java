package p022j$.util;

/* JADX INFO: renamed from: j$.util.B */
/* JADX INFO: loaded from: classes2.dex */
public final class C2217B {

    /* JADX INFO: renamed from: c */
    public static final C2217B f891c = new C2217B();

    /* JADX INFO: renamed from: a */
    public final boolean f892a;

    /* JADX INFO: renamed from: b */
    public final double f893b;

    public C2217B() {
        this.f892a = false;
        this.f893b = Double.NaN;
    }

    public C2217B(double d) {
        this.f892a = true;
        this.f893b = d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2217B)) {
            return false;
        }
        C2217B c2217b = (C2217B) obj;
        boolean z = c2217b.f892a;
        boolean z2 = this.f892a;
        return (z2 && z) ? Double.compare(this.f893b, c2217b.f893b) == 0 : z2 == z;
    }

    public final int hashCode() {
        if (!this.f892a) {
            return 0;
        }
        long jDoubleToLongBits = Double.doubleToLongBits(this.f893b);
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }

    public final String toString() {
        if (this.f892a) {
            return "OptionalDouble[" + this.f893b + "]";
        }
        return "OptionalDouble.empty";
    }
}
