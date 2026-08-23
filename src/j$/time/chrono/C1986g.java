package j$.time.chrono;

import j$.time.temporal.EnumC2048b;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: renamed from: j$.time.chrono.g */
/* JADX INFO: loaded from: classes2.dex */
public final class C1986g implements Serializable {

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ int f453e = 0;
    private static final long serialVersionUID = 57387258289L;

    /* JADX INFO: renamed from: a */
    public final InterfaceC1990k f454a;

    /* JADX INFO: renamed from: b */
    public final int f455b;

    /* JADX INFO: renamed from: c */
    public final int f456c;

    /* JADX INFO: renamed from: d */
    public final int f457d;

    static {
        Object[] objArr = {EnumC2048b.YEARS, EnumC2048b.MONTHS, EnumC2048b.DAYS};
        ArrayList arrayList = new ArrayList(3);
        for (int i = 0; i < 3; i++) {
            arrayList.add(Objects.requireNonNull(objArr[i]));
        }
        Collections.unmodifiableList(arrayList);
    }

    public C1986g(InterfaceC1990k interfaceC1990k, int i, int i2, int i3) {
        Objects.requireNonNull(interfaceC1990k, "chrono");
        this.f454a = interfaceC1990k;
        this.f455b = i;
        this.f456c = i2;
        this.f457d = i3;
    }

    public final String toString() {
        if (this.f455b == 0 && this.f456c == 0 && this.f457d == 0) {
            return this.f454a.toString() + " P0D";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f454a.toString());
        sb.append(" P");
        int i = this.f455b;
        if (i != 0) {
            sb.append(i);
            sb.append('Y');
        }
        int i2 = this.f456c;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        int i3 = this.f457d;
        if (i3 != 0) {
            sb.append(i3);
            sb.append('D');
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1986g) {
            C1986g c1986g = (C1986g) obj;
            if (this.f455b == c1986g.f455b && this.f456c == c1986g.f456c && this.f457d == c1986g.f457d && this.f454a.equals(c1986g.f454a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (Integer.rotateLeft(this.f457d, 16) + (Integer.rotateLeft(this.f456c, 8) + this.f455b)) ^ this.f454a.hashCode();
    }

    public Object writeReplace() {
        return new C1974D((byte) 9, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
