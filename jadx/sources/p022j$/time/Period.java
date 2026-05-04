package p022j$.time;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;
import p022j$.time.temporal.EnumC2187b;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class Period implements Serializable {

    /* JADX INFO: renamed from: d */
    public static final Period f650d = new Period(0, 0, 0);
    private static final long serialVersionUID = -3587258372562876L;

    /* JADX INFO: renamed from: a */
    public final int f651a;

    /* JADX INFO: renamed from: b */
    public final int f652b;

    /* JADX INFO: renamed from: c */
    public final int f653c;

    static {
        Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?", 2);
        Object[] objArr = {EnumC2187b.YEARS, EnumC2187b.MONTHS, EnumC2187b.DAYS};
        ArrayList arrayList = new ArrayList(3);
        for (int i = 0; i < 3; i++) {
            arrayList.add(Objects.requireNonNull(objArr[i]));
        }
        Collections.unmodifiableList(arrayList);
    }

    public static Period between(LocalDate localDate, LocalDate localDate2) {
        localDate.getClass();
        LocalDate localDateM593D = LocalDate.m593D(localDate2);
        long jM601H = localDateM593D.m601H() - localDate.m601H();
        int iM603J = localDateM593D.f642c - localDate.f642c;
        if (jM601H > 0 && iM603J < 0) {
            jM601H--;
            iM603J = (int) (localDateM593D.mo612x() - localDate.m605M(jM601H).mo612x());
        } else if (jM601H < 0 && iM603J > 0) {
            jM601H++;
            iM603J -= localDateM593D.m603J();
        }
        long j = jM601H / 12;
        int i = (int) (jM601H % 12);
        int i2 = (int) j;
        if (j == i2) {
            return ((i2 | i) | iM603J) == 0 ? f650d : new Period(i2, i, iM603J);
        }
        throw new ArithmeticException();
    }

    public Period(int i, int i2, int i3) {
        this.f651a = i;
        this.f652b = i2;
        this.f653c = i3;
    }

    public int getYears() {
        return this.f651a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Period) {
            Period period = (Period) obj;
            if (this.f651a == period.f651a && this.f652b == period.f652b && this.f653c == period.f653c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.f653c, 16) + Integer.rotateLeft(this.f652b, 8) + this.f651a;
    }

    public final String toString() {
        if (this == f650d) {
            return "P0D";
        }
        StringBuilder sb = new StringBuilder("P");
        int i = this.f651a;
        if (i != 0) {
            sb.append(i);
            sb.append('Y');
        }
        int i2 = this.f652b;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        int i3 = this.f653c;
        if (i3 != 0) {
            sb.append(i3);
            sb.append('D');
        }
        return sb.toString();
    }

    private Object writeReplace() {
        return new C2180o((byte) 14, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
