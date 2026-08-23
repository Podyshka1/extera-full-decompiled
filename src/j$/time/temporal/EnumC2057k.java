package j$.time.temporal;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.C1969b;

/* JADX INFO: renamed from: j$.time.temporal.k */
/* JADX INFO: loaded from: classes2.dex */
public enum EnumC2057k implements InterfaceC2063q {
    JULIAN_DAY("JulianDay", 2440588),
    MODIFIED_JULIAN_DAY("ModifiedJulianDay", 40587),
    RATA_DIE("RataDie", 719163);

    private static final long serialVersionUID = -7501623920830201812L;

    /* JADX INFO: renamed from: a */
    public final transient String f604a;

    /* JADX INFO: renamed from: b */
    public final transient C2067u f605b;

    /* JADX INFO: renamed from: c */
    public final transient long f606c;

    @Override // j$.time.temporal.InterfaceC2063q
    public final boolean isDateBased() {
        return true;
    }

    static {
        EnumC2048b enumC2048b = EnumC2048b.NANOS;
    }

    EnumC2057k(String str, long j) {
        this.f604a = str;
        this.f605b = C2067u.m659e((-365243219162L) + j, 365241780471L + j);
        this.f606c = j;
    }

    @Override // j$.time.temporal.InterfaceC2063q
    /* JADX INFO: renamed from: j */
    public final C2067u mo646j() {
        return this.f605b;
    }

    @Override // j$.time.temporal.InterfaceC2063q
    /* JADX INFO: renamed from: n */
    public final InterfaceC2059m mo648n(InterfaceC2059m interfaceC2059m, long j) {
        if (!this.f605b.m664d(j)) {
            throw new C1969b("Invalid value: " + this.f604a + " " + j);
        }
        return interfaceC2059m.mo468c(AbstractC1965a.m415U(j, this.f606c), EnumC2047a.EPOCH_DAY);
    }

    @Override // j$.time.temporal.InterfaceC2063q
    /* JADX INFO: renamed from: h */
    public final boolean mo644h(InterfaceC2060n interfaceC2060n) {
        return interfaceC2060n.mo455e(EnumC2047a.EPOCH_DAY);
    }

    @Override // j$.time.temporal.InterfaceC2063q
    /* JADX INFO: renamed from: i */
    public final C2067u mo645i(InterfaceC2060n interfaceC2060n) {
        if (interfaceC2060n.mo455e(EnumC2047a.EPOCH_DAY)) {
            return this.f605b;
        }
        throw new C1969b("Unsupported field: " + this);
    }

    @Override // j$.time.temporal.InterfaceC2063q
    /* JADX INFO: renamed from: k */
    public final long mo647k(InterfaceC2060n interfaceC2060n) {
        return interfaceC2060n.mo460w(EnumC2047a.EPOCH_DAY) + this.f606c;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f604a;
    }
}
