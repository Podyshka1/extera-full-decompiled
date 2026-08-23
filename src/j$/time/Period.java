package j$.time;

import j$.time.temporal.EnumC2048b;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class Period implements Serializable {

    /* JADX INFO: renamed from: d */
    public static final Period f418d = new Period(0, 0, 0);
    private static final long serialVersionUID = -3587258372562876L;

    /* JADX INFO: renamed from: a */
    public final int f419a;

    /* JADX INFO: renamed from: b */
    public final int f420b;

    /* JADX INFO: renamed from: c */
    public final int f421c;

    static {
        Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?", 2);
        Object[] objArr = {EnumC2048b.YEARS, EnumC2048b.MONTHS, EnumC2048b.DAYS};
        ArrayList arrayList = new ArrayList(3);
        for (int i = 0; i < 3; i++) {
            arrayList.add(Objects.requireNonNull(objArr[i]));
        }
        Collections.unmodifiableList(arrayList);
    }

    public static Period between(LocalDate localDate, LocalDate localDate2) {
        localDate.getClass();
        LocalDate localDateM473D = LocalDate.m473D(localDate2);
        long jM480H = localDateM473D.m480H() - localDate.m480H();
        int iM482J = localDateM473D.f410c - localDate.f410c;
        if (jM480H > 0 && iM482J < 0) {
            jM480H--;
            iM482J = (int) (localDateM473D.mo491x() - localDate.m484M(jM480H).mo491x());
        } else if (jM480H < 0 && iM482J > 0) {
            jM480H++;
            iM482J -= localDateM473D.m482J();
        }
        long j = jM480H / 12;
        int i = (int) (jM480H % 12);
        int i2 = (int) j;
        if (j == i2) {
            return ((i2 | i) | iM482J) == 0 ? f418d : new Period(i2, i, iM482J);
        }
        throw new ArithmeticException();
    }

    public Period(int i, int i2, int i3) {
        this.f419a = i;
        this.f420b = i2;
        this.f421c = i3;
    }

    public int getYears() {
        return this.f419a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Period) {
            Period period = (Period) obj;
            if (this.f419a == period.f419a && this.f420b == period.f420b && this.f421c == period.f421c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.f421c, 16) + Integer.rotateLeft(this.f420b, 8) + this.f419a;
    }

    public final String toString() {
        if (this == f418d) {
            return "P0D";
        }
        StringBuilder sb = new StringBuilder("P");
        int i = this.f419a;
        if (i != 0) {
            sb.append(i);
            sb.append('Y');
        }
        int i2 = this.f420b;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        int i3 = this.f421c;
        if (i3 != 0) {
            sb.append(i3);
            sb.append('D');
        }
        return sb.toString();
    }

    private Object writeReplace() {
        return new C2041o((byte) 14, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
