package j$.time;

import j$.nio.file.C2148b;
import j$.time.chrono.C2203r;
import j$.time.chrono.InterfaceC2196k;
import j$.time.format.C2231q;
import j$.time.format.EnumC2240z;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.C2271r;
import j$.time.temporal.C2272s;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2265l;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.Temporal;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class MonthDay implements InterfaceC2265l, InterfaceC2266m, Comparable<MonthDay>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f626c = 0;
    private static final long serialVersionUID = -939150713474957432L;

    /* JADX INFO: renamed from: a */
    public final int f627a;

    /* JADX INFO: renamed from: b */
    public final int f628b;

    static {
        C2231q c2231q = new C2231q();
        c2231q.m794d("--");
        c2231q.m797g(EnumC2254a.MONTH_OF_YEAR, 2);
        c2231q.m793c(SignatureVisitor.SUPER);
        c2231q.m797g(EnumC2254a.DAY_OF_MONTH, 2);
        c2231q.m802l(Locale.getDefault(), EnumC2240z.SMART, null);
    }

    public MonthDay(int i, int i2) {
        this.f627a = i;
        this.f628b = i2;
    }

    public static MonthDay of(int i, int i2) {
        EnumC2245k enumC2245kM822K = EnumC2245k.m822K(i);
        Objects.requireNonNull(enumC2245kM822K, "month");
        EnumC2254a.DAY_OF_MONTH.a0(i2);
        if (i2 <= enumC2245kM822K.m824I()) {
            return new MonthDay(enumC2245kM822K.getValue(), i2);
        }
        throw new C2184b("Illegal value for DayOfMonth field, value " + i2 + " is not valid for month " + enumC2245kM822K.name());
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2249o((byte) 13, this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(MonthDay monthDay) {
        MonthDay monthDay2 = monthDay;
        int i = this.f627a - monthDay2.f627a;
        return i == 0 ? this.f628b - monthDay2.f628b : i;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: d */
    public final Object mo530d(C2213e c2213e) {
        return c2213e == AbstractC2270q.f848b ? C2203r.f699c : super.mo530d(c2213e);
    }

    @Override // j$.time.temporal.InterfaceC2266m
    /* JADX INFO: renamed from: e */
    public final Temporal mo641e(Temporal temporal) {
        if (!InterfaceC2196k.m758r(temporal).equals(C2203r.f699c)) {
            C2148b.m615h("Adjustment only supported on ISO date-time");
            return null;
        }
        Temporal temporalMo652a = temporal.mo652a(this.f627a, EnumC2254a.MONTH_OF_YEAR);
        EnumC2254a enumC2254a = EnumC2254a.DAY_OF_MONTH;
        return temporalMo652a.mo652a(Math.min(temporalMo652a.mo643l(enumC2254a).f857d, this.f628b), enumC2254a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MonthDay) {
            MonthDay monthDay = (MonthDay) obj;
            if (this.f627a == monthDay.f627a && this.f628b == monthDay.f628b) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: g */
    public final int mo642g(InterfaceC2269p interfaceC2269p) {
        return mo643l(interfaceC2269p).m837a(mo532k(interfaceC2269p), interfaceC2269p);
    }

    public int getDayOfMonth() {
        return this.f628b;
    }

    public int getMonthValue() {
        return this.f627a;
    }

    public final int hashCode() {
        return (this.f627a << 6) + this.f628b;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: i */
    public final boolean mo531i(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? interfaceC2269p == EnumC2254a.MONTH_OF_YEAR || interfaceC2269p == EnumC2254a.DAY_OF_MONTH : interfaceC2269p != null && interfaceC2269p.mo833s(this);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    public final long mo532k(InterfaceC2269p interfaceC2269p) {
        int i;
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return interfaceC2269p.mo831S(this);
        }
        int i2 = AbstractC2246l.f812a[((EnumC2254a) interfaceC2269p).ordinal()];
        if (i2 == 1) {
            i = this.f628b;
        } else {
            if (i2 != 2) {
                throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
            }
            i = this.f627a;
        }
        return i;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: l */
    public final C2272s mo643l(InterfaceC2269p interfaceC2269p) {
        if (interfaceC2269p == EnumC2254a.MONTH_OF_YEAR) {
            return interfaceC2269p.mo830K();
        }
        if (interfaceC2269p != EnumC2254a.DAY_OF_MONTH) {
            return super.mo643l(interfaceC2269p);
        }
        EnumC2245k enumC2245kM822K = EnumC2245k.m822K(this.f627a);
        enumC2245kM822K.getClass();
        int i = AbstractC2244j.f809a[enumC2245kM822K.ordinal()];
        return C2272s.m836g(i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : 28, EnumC2245k.m822K(this.f627a).m824I());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(10);
        sb.append("--");
        sb.append(this.f627a < 10 ? MVEL.VERSION_SUB : _UrlKt.FRAGMENT_ENCODE_SET);
        sb.append(this.f627a);
        sb.append(this.f628b < 10 ? "-0" : "-");
        sb.append(this.f628b);
        return sb.toString();
    }
}
