package j$.time.temporal;

import j$.nio.file.C2148b;
import j$.time.C2184b;
import j$.time.chrono.InterfaceC2196k;
import j$.time.format.C2239y;
import j$.time.format.EnumC2240z;
import java.util.Map;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'JULIAN_DAY' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: renamed from: j$.time.temporal.j */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2263j implements InterfaceC2269p {
    public static final EnumC2263j JULIAN_DAY;
    public static final EnumC2263j MODIFIED_JULIAN_DAY;
    public static final EnumC2263j RATA_DIE;

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ EnumC2263j[] f840d;
    private static final long serialVersionUID = -7501623920830201812L;

    /* JADX INFO: renamed from: a */
    public final transient String f841a;

    /* JADX INFO: renamed from: b */
    public final transient C2272s f842b;

    /* JADX INFO: renamed from: c */
    public final transient long f843c;

    static {
        ChronoUnit chronoUnit = ChronoUnit.DAYS;
        ChronoUnit chronoUnit2 = ChronoUnit.FOREVER;
        EnumC2263j enumC2263j = new EnumC2263j("JULIAN_DAY", 0, "JulianDay", chronoUnit, chronoUnit2, 2440588L);
        JULIAN_DAY = enumC2263j;
        EnumC2263j enumC2263j2 = new EnumC2263j("MODIFIED_JULIAN_DAY", 1, "ModifiedJulianDay", chronoUnit, chronoUnit2, 40587L);
        MODIFIED_JULIAN_DAY = enumC2263j2;
        EnumC2263j enumC2263j3 = new EnumC2263j("RATA_DIE", 2, "RataDie", chronoUnit, chronoUnit2, 719163L);
        RATA_DIE = enumC2263j3;
        f840d = new EnumC2263j[]{enumC2263j, enumC2263j2, enumC2263j3};
    }

    public EnumC2263j(String str, int i, String str2, ChronoUnit chronoUnit, ChronoUnit chronoUnit2, long j) {
        this.f841a = str2;
        this.f842b = C2272s.m835f((-365243219162L) + j, 365241780471L + j);
        this.f843c = j;
    }

    public static EnumC2263j valueOf(String str) {
        return (EnumC2263j) Enum.valueOf(EnumC2263j.class, str);
    }

    public static EnumC2263j[] values() {
        return (EnumC2263j[]) f840d.clone();
    }

    @Override // j$.time.temporal.InterfaceC2269p
    /* JADX INFO: renamed from: D */
    public final C2272s mo829D(InterfaceC2265l interfaceC2265l) {
        if (interfaceC2265l.mo531i(EnumC2254a.EPOCH_DAY)) {
            return this.f842b;
        }
        C2148b.m617j("Unsupported field: ", this);
        return null;
    }

    @Override // j$.time.temporal.InterfaceC2269p
    /* JADX INFO: renamed from: I */
    public final InterfaceC2265l mo834I(Map map, C2239y c2239y, EnumC2240z enumC2240z) {
        long jLongValue = ((Long) map.remove(this)).longValue();
        InterfaceC2196k interfaceC2196kM758r = InterfaceC2196k.m758r(c2239y);
        EnumC2240z enumC2240z2 = EnumC2240z.LENIENT;
        long j = this.f843c;
        if (enumC2240z == enumC2240z2) {
            return interfaceC2196kM758r.mo751p(Math.subtractExact(jLongValue, j));
        }
        this.f842b.m838b(jLongValue, this);
        return interfaceC2196kM758r.mo751p(jLongValue - j);
    }

    @Override // j$.time.temporal.InterfaceC2269p
    /* JADX INFO: renamed from: K */
    public final C2272s mo830K() {
        return this.f842b;
    }

    @Override // j$.time.temporal.InterfaceC2269p
    /* JADX INFO: renamed from: S */
    public final long mo831S(InterfaceC2265l interfaceC2265l) {
        return interfaceC2265l.mo532k(EnumC2254a.EPOCH_DAY) + this.f843c;
    }

    @Override // j$.time.temporal.InterfaceC2269p
    /* JADX INFO: renamed from: Y */
    public final Temporal mo832Y(Temporal temporal, long j) {
        if (this.f842b.m841e(j)) {
            return temporal.mo652a(Math.subtractExact(j, this.f843c), EnumC2254a.EPOCH_DAY);
        }
        throw new C2184b("Invalid value: " + this.f841a + " " + j);
    }

    @Override // j$.time.temporal.InterfaceC2269p
    public final boolean isDateBased() {
        return true;
    }

    @Override // j$.time.temporal.InterfaceC2269p
    /* JADX INFO: renamed from: s */
    public final boolean mo833s(InterfaceC2265l interfaceC2265l) {
        return interfaceC2265l.mo531i(EnumC2254a.EPOCH_DAY);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f841a;
    }
}
