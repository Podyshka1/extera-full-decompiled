package p022j$.util;

/* JADX INFO: loaded from: classes2.dex */
public final class OptionalInt {

    /* JADX INFO: renamed from: c */
    public static final OptionalInt f913c = new OptionalInt();

    /* JADX INFO: renamed from: a */
    public final boolean f914a;

    /* JADX INFO: renamed from: b */
    public final int f915b;

    public OptionalInt() {
        this.f914a = false;
        this.f915b = 0;
    }

    public OptionalInt(int i) {
        this.f914a = true;
        this.f915b = i;
    }

    public int orElse(int i) {
        return this.f914a ? this.f915b : i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OptionalInt)) {
            return false;
        }
        OptionalInt optionalInt = (OptionalInt) obj;
        boolean z = optionalInt.f914a;
        boolean z2 = this.f914a;
        return (z2 && z) ? this.f915b == optionalInt.f915b : z2 == z;
    }

    public final int hashCode() {
        if (this.f914a) {
            return this.f915b;
        }
        return 0;
    }

    public final String toString() {
        if (this.f914a) {
            return "OptionalInt[" + this.f915b + "]";
        }
        return "OptionalInt.empty";
    }
}
