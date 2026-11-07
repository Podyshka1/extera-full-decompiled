package j$.time.temporal;

import j$.nio.file.C2288b;
import j$.time.DateTimeException;
import j$.time.chrono.InterfaceC2336k;
import j$.time.format.C2379y;
import j$.time.format.EnumC2380z;
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
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2402j implements InterfaceC2408p {
    public static final EnumC2402j JULIAN_DAY;
    public static final EnumC2402j MODIFIED_JULIAN_DAY;
    public static final EnumC2402j RATA_DIE;

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ EnumC2402j[] f842d;
    private static final long serialVersionUID = -7501623920830201812L;

    /* JADX INFO: renamed from: a */
    public final transient String f843a;

    /* JADX INFO: renamed from: b */
    public final transient C2411s f844b;

    /* JADX INFO: renamed from: c */
    public final transient long f845c;

    static {
        ChronoUnit chronoUnit = ChronoUnit.DAYS;
        ChronoUnit chronoUnit2 = ChronoUnit.FOREVER;
        EnumC2402j enumC2402j = new EnumC2402j("JULIAN_DAY", 0, "JulianDay", chronoUnit, chronoUnit2, 2440588L);
        JULIAN_DAY = enumC2402j;
        EnumC2402j enumC2402j2 = new EnumC2402j("MODIFIED_JULIAN_DAY", 1, "ModifiedJulianDay", chronoUnit, chronoUnit2, 40587L);
        MODIFIED_JULIAN_DAY = enumC2402j2;
        EnumC2402j enumC2402j3 = new EnumC2402j("RATA_DIE", 2, "RataDie", chronoUnit, chronoUnit2, 719163L);
        RATA_DIE = enumC2402j3;
        f842d = new EnumC2402j[]{enumC2402j, enumC2402j2, enumC2402j3};
    }

    public EnumC2402j(String str, int i, String str2, ChronoUnit chronoUnit, ChronoUnit chronoUnit2, long j) {
        this.f843a = str2;
        this.f844b = C2411s.m883f((-365243219162L) + j, 365241780471L + j);
        this.f845c = j;
    }

    public static EnumC2402j valueOf(String str) {
        return (EnumC2402j) Enum.valueOf(EnumC2402j.class, str);
    }

    public static EnumC2402j[] values() {
        return (EnumC2402j[]) f842d.clone();
    }

    @Override // j$.time.temporal.InterfaceC2408p
    /* JADX INFO: renamed from: D */
    public final C2411s mo873D(InterfaceC2404l interfaceC2404l) {
        if (interfaceC2404l.mo555i(EnumC2393a.EPOCH_DAY)) {
            return this.f844b;
        }
        C2288b.m641j("Unsupported field: ", this);
        return null;
    }

    @Override // j$.time.temporal.InterfaceC2408p
    /* JADX INFO: renamed from: I */
    public final InterfaceC2404l mo880I(Map map, C2379y c2379y, EnumC2380z enumC2380z) {
        long jLongValue = ((Long) map.remove(this)).longValue();
        InterfaceC2336k interfaceC2336kM795r = InterfaceC2336k.m795r(c2379y);
        EnumC2380z enumC2380z2 = EnumC2380z.LENIENT;
        long j = this.f845c;
        if (enumC2380z == enumC2380z2) {
            return interfaceC2336kM795r.mo786p(Math.subtractExact(jLongValue, j));
        }
        this.f844b.m886b(jLongValue, this);
        return interfaceC2336kM795r.mo786p(jLongValue - j);
    }

    @Override // j$.time.temporal.InterfaceC2408p
    /* JADX INFO: renamed from: K */
    public final C2411s mo874K() {
        return this.f844b;
    }

    @Override // j$.time.temporal.InterfaceC2408p
    /* JADX INFO: renamed from: R */
    public final long mo875R(InterfaceC2404l interfaceC2404l) {
        return interfaceC2404l.mo556k(EnumC2393a.EPOCH_DAY) + this.f845c;
    }

    @Override // j$.time.temporal.InterfaceC2408p
    /* JADX INFO: renamed from: X */
    public final Temporal mo876X(Temporal temporal, long j) {
        if (this.f844b.m889e(j)) {
            return temporal.mo676a(Math.subtractExact(j, this.f845c), EnumC2393a.EPOCH_DAY);
        }
        throw new DateTimeException("Invalid value: " + this.f843a + " " + j);
    }

    @Override // j$.time.temporal.InterfaceC2408p
    public final boolean isDateBased() {
        return true;
    }

    @Override // j$.time.temporal.InterfaceC2408p
    /* JADX INFO: renamed from: s */
    public final boolean mo879s(InterfaceC2404l interfaceC2404l) {
        return interfaceC2404l.mo555i(EnumC2393a.EPOCH_DAY);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f843a;
    }
}
