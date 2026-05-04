package j$.util;

/* JADX INFO: loaded from: classes2.dex */
public final class OptionalInt {

    /* JADX INFO: renamed from: c */
    public static final OptionalInt f678c = new OptionalInt();

    /* JADX INFO: renamed from: a */
    public final boolean f679a;

    /* JADX INFO: renamed from: b */
    public final int f680b;

    public OptionalInt() {
        this.f679a = false;
        this.f680b = 0;
    }

    public OptionalInt(int i) {
        this.f679a = true;
        this.f680b = i;
    }

    public int orElse(int i) {
        return this.f679a ? this.f680b : i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OptionalInt)) {
            return false;
        }
        OptionalInt optionalInt = (OptionalInt) obj;
        boolean z = optionalInt.f679a;
        boolean z2 = this.f679a;
        return (z2 && z) ? this.f680b == optionalInt.f680b : z2 == z;
    }

    public final int hashCode() {
        if (this.f679a) {
            return this.f680b;
        }
        return 0;
    }

    public final String toString() {
        if (this.f679a) {
            return "OptionalInt[" + this.f680b + "]";
        }
        return "OptionalInt.empty";
    }
}
