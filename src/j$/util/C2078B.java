package j$.util;

/* JADX INFO: renamed from: j$.util.B */
/* JADX INFO: loaded from: classes2.dex */
public final class C2078B {

    /* JADX INFO: renamed from: c */
    public static final C2078B f656c = new C2078B();

    /* JADX INFO: renamed from: a */
    public final boolean f657a;

    /* JADX INFO: renamed from: b */
    public final double f658b;

    public C2078B() {
        this.f657a = false;
        this.f658b = Double.NaN;
    }

    public C2078B(double d) {
        this.f657a = true;
        this.f658b = d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2078B)) {
            return false;
        }
        C2078B c2078b = (C2078B) obj;
        boolean z = c2078b.f657a;
        boolean z2 = this.f657a;
        return (z2 && z) ? Double.compare(this.f658b, c2078b.f658b) == 0 : z2 == z;
    }

    public final int hashCode() {
        if (!this.f657a) {
            return 0;
        }
        long jDoubleToLongBits = Double.doubleToLongBits(this.f658b);
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }

    public final String toString() {
        if (this.f657a) {
            return "OptionalDouble[" + this.f658b + "]";
        }
        return "OptionalDouble.empty";
    }
}
