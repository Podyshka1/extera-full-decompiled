package j$.util;

/* JADX INFO: renamed from: j$.util.C */
/* JADX INFO: loaded from: classes2.dex */
public final class C2079C {

    /* JADX INFO: renamed from: c */
    public static final C2079C f661c = new C2079C();

    /* JADX INFO: renamed from: a */
    public final boolean f662a;

    /* JADX INFO: renamed from: b */
    public final long f663b;

    public C2079C() {
        this.f662a = false;
        this.f663b = 0L;
    }

    public C2079C(long j) {
        this.f662a = true;
        this.f663b = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2079C)) {
            return false;
        }
        C2079C c2079c = (C2079C) obj;
        boolean z = c2079c.f662a;
        boolean z2 = this.f662a;
        return (z2 && z) ? this.f663b == c2079c.f663b : z2 == z;
    }

    public final int hashCode() {
        if (!this.f662a) {
            return 0;
        }
        long j = this.f663b;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        if (this.f662a) {
            return "OptionalLong[" + this.f663b + "]";
        }
        return "OptionalLong.empty";
    }
}
