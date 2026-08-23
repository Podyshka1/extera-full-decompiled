package p022j$.time.chrono;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import p022j$.time.temporal.EnumC2187b;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.time.chrono.g */
/* JADX INFO: loaded from: classes2.dex */
public final class C2125g implements Serializable {

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ int f686e = 0;
    private static final long serialVersionUID = 57387258289L;

    /* JADX INFO: renamed from: a */
    public final InterfaceC2129k f687a;

    /* JADX INFO: renamed from: b */
    public final int f688b;

    /* JADX INFO: renamed from: c */
    public final int f689c;

    /* JADX INFO: renamed from: d */
    public final int f690d;

    static {
        Object[] objArr = {EnumC2187b.YEARS, EnumC2187b.MONTHS, EnumC2187b.DAYS};
        ArrayList arrayList = new ArrayList(3);
        for (int i = 0; i < 3; i++) {
            arrayList.add(Objects.requireNonNull(objArr[i]));
        }
        Collections.unmodifiableList(arrayList);
    }

    public C2125g(InterfaceC2129k interfaceC2129k, int i, int i2, int i3) {
        Objects.requireNonNull(interfaceC2129k, "chrono");
        this.f687a = interfaceC2129k;
        this.f688b = i;
        this.f689c = i2;
        this.f690d = i3;
    }

    public final String toString() {
        if (this.f688b == 0 && this.f689c == 0 && this.f690d == 0) {
            return this.f687a.toString() + " P0D";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f687a.toString());
        sb.append(" P");
        int i = this.f688b;
        if (i != 0) {
            sb.append(i);
            sb.append('Y');
        }
        int i2 = this.f689c;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        int i3 = this.f690d;
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
        if (obj instanceof C2125g) {
            C2125g c2125g = (C2125g) obj;
            if (this.f688b == c2125g.f688b && this.f689c == c2125g.f689c && this.f690d == c2125g.f690d && this.f687a.equals(c2125g.f687a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (Integer.rotateLeft(this.f690d, 16) + (Integer.rotateLeft(this.f689c, 8) + this.f688b)) ^ this.f687a.hashCode();
    }

    public Object writeReplace() {
        return new C2113D((byte) 9, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
