package p022j$.util;

/* JADX INFO: renamed from: j$.util.C */
/* JADX INFO: loaded from: classes2.dex */
public final class C2218C {

    /* JADX INFO: renamed from: c */
    public static final C2218C f896c = new C2218C();

    /* JADX INFO: renamed from: a */
    public final boolean f897a;

    /* JADX INFO: renamed from: b */
    public final long f898b;

    public C2218C() {
        this.f897a = false;
        this.f898b = 0L;
    }

    public C2218C(long j) {
        this.f897a = true;
        this.f898b = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2218C)) {
            return false;
        }
        C2218C c2218c = (C2218C) obj;
        boolean z = c2218c.f897a;
        boolean z2 = this.f897a;
        return (z2 && z) ? this.f898b == c2218c.f898b : z2 == z;
    }

    public final int hashCode() {
        if (!this.f897a) {
            return 0;
        }
        long j = this.f898b;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        if (this.f897a) {
            return "OptionalLong[" + this.f898b + "]";
        }
        return "OptionalLong.empty";
    }
}
