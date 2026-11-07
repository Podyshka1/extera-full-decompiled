package j$.time;

import j$.nio.file.C2288b;
import j$.time.chrono.C2343r;
import j$.time.chrono.InterfaceC2336k;
import j$.time.format.C2371q;
import j$.time.format.EnumC2380z;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.C2410r;
import j$.time.temporal.C2411s;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2404l;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.Temporal;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class MonthDay implements InterfaceC2404l, InterfaceC2405m, Comparable<MonthDay>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f627c = 0;
    private static final long serialVersionUID = -939150713474957432L;

    /* JADX INFO: renamed from: a */
    public final int f628a;

    /* JADX INFO: renamed from: b */
    public final int f629b;

    static {
        C2371q c2371q = new C2371q();
        c2371q.m838d("--");
        c2371q.m841g(EnumC2393a.MONTH_OF_YEAR, 2);
        c2371q.m837c(SignatureVisitor.SUPER);
        c2371q.m841g(EnumC2393a.DAY_OF_MONTH, 2);
        c2371q.m846l(Locale.getDefault(), EnumC2380z.SMART, null);
    }

    public MonthDay(int i, int i2) {
        this.f628a = i;
        this.f629b = i2;
    }

    public static MonthDay of(int i, int i2) {
        EnumC2384j enumC2384jM866K = EnumC2384j.m866K(i);
        Objects.requireNonNull(enumC2384jM866K, "month");
        EnumC2393a.DAY_OF_MONTH.m877Y(i2);
        if (i2 <= enumC2384jM866K.m868I()) {
            return new MonthDay(enumC2384jM866K.getValue(), i2);
        }
        throw new DateTimeException("Illegal value for DayOfMonth field, value " + i2 + " is not valid for month " + enumC2384jM866K.name());
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2388n((byte) 13, this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(MonthDay monthDay) {
        MonthDay monthDay2 = monthDay;
        int i = this.f628a - monthDay2.f628a;
        return i == 0 ? this.f629b - monthDay2.f629b : i;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: d */
    public final Object mo554d(C2352d c2352d) {
        return c2352d == AbstractC2409q.f850b ? C2343r.f701c : super.mo554d(c2352d);
    }

    @Override // j$.time.temporal.InterfaceC2405m
    /* JADX INFO: renamed from: e */
    public final Temporal mo665e(Temporal temporal) {
        if (!InterfaceC2336k.m795r(temporal).equals(C2343r.f701c)) {
            C2288b.m639h("Adjustment only supported on ISO date-time");
            return null;
        }
        Temporal temporalMo676a = temporal.mo676a(this.f628a, EnumC2393a.MONTH_OF_YEAR);
        EnumC2393a enumC2393a = EnumC2393a.DAY_OF_MONTH;
        return temporalMo676a.mo676a(Math.min(temporalMo676a.mo667l(enumC2393a).f859d, this.f629b), enumC2393a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MonthDay) {
            MonthDay monthDay = (MonthDay) obj;
            if (this.f628a == monthDay.f628a && this.f629b == monthDay.f629b) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: g */
    public final int mo666g(InterfaceC2408p interfaceC2408p) {
        return mo667l(interfaceC2408p).m885a(mo556k(interfaceC2408p), interfaceC2408p);
    }

    public int getDayOfMonth() {
        return this.f629b;
    }

    public int getMonthValue() {
        return this.f628a;
    }

    public final int hashCode() {
        return (this.f628a << 6) + this.f629b;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: i */
    public final boolean mo555i(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? interfaceC2408p == EnumC2393a.MONTH_OF_YEAR || interfaceC2408p == EnumC2393a.DAY_OF_MONTH : interfaceC2408p != null && interfaceC2408p.mo879s(this);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    public final long mo556k(InterfaceC2408p interfaceC2408p) {
        int i;
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return interfaceC2408p.mo875R(this);
        }
        int i2 = AbstractC2385k.f814a[((EnumC2393a) interfaceC2408p).ordinal()];
        if (i2 == 1) {
            i = this.f629b;
        } else {
            if (i2 != 2) {
                throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
            }
            i = this.f628a;
        }
        return i;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: l */
    public final C2411s mo667l(InterfaceC2408p interfaceC2408p) {
        if (interfaceC2408p == EnumC2393a.MONTH_OF_YEAR) {
            return interfaceC2408p.mo874K();
        }
        if (interfaceC2408p != EnumC2393a.DAY_OF_MONTH) {
            return super.mo667l(interfaceC2408p);
        }
        EnumC2384j enumC2384jM866K = EnumC2384j.m866K(this.f628a);
        enumC2384jM866K.getClass();
        int i = AbstractC2383i.f811a[enumC2384jM866K.ordinal()];
        return C2411s.m884g(i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : 28, EnumC2384j.m866K(this.f628a).m868I());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(10);
        sb.append("--");
        sb.append(this.f628a < 10 ? MVEL.VERSION_SUB : _UrlKt.FRAGMENT_ENCODE_SET);
        sb.append(this.f628a);
        sb.append(this.f629b < 10 ? "-0" : "-");
        sb.append(this.f629b);
        return sb.toString();
    }
}
