package p022j$.time.temporal;

import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.C2108b;

/* JADX INFO: renamed from: j$.time.temporal.k */
/* JADX INFO: loaded from: classes2.dex */
public enum EnumC2196k implements InterfaceC2202q {
    JULIAN_DAY("JulianDay", 2440588),
    MODIFIED_JULIAN_DAY("ModifiedJulianDay", 40587),
    RATA_DIE("RataDie", 719163);

    private static final long serialVersionUID = -7501623920830201812L;

    /* JADX INFO: renamed from: a */
    public final transient String f839a;

    /* JADX INFO: renamed from: b */
    public final transient C2206u f840b;

    /* JADX INFO: renamed from: c */
    public final transient long f841c;

    @Override // p022j$.time.temporal.InterfaceC2202q
    public final boolean isDateBased() {
        return true;
    }

    static {
        EnumC2187b enumC2187b = EnumC2187b.NANOS;
    }

    EnumC2196k(String str, long j) {
        this.f839a = str;
        this.f840b = C2206u.m784e((-365243219162L) + j, 365241780471L + j);
        this.f841c = j;
    }

    @Override // p022j$.time.temporal.InterfaceC2202q
    /* JADX INFO: renamed from: j */
    public final C2206u mo771j() {
        return this.f840b;
    }

    @Override // p022j$.time.temporal.InterfaceC2202q
    /* JADX INFO: renamed from: n */
    public final InterfaceC2198m mo773n(InterfaceC2198m interfaceC2198m, long j) {
        if (!this.f840b.m789d(j)) {
            throw new C2108b("Invalid value: " + this.f839a + " " + j);
        }
        return interfaceC2198m.mo588c(AbstractC2104a.m535U(j, this.f841c), EnumC2186a.EPOCH_DAY);
    }

    @Override // p022j$.time.temporal.InterfaceC2202q
    /* JADX INFO: renamed from: h */
    public final boolean mo769h(InterfaceC2199n interfaceC2199n) {
        return interfaceC2199n.mo575e(EnumC2186a.EPOCH_DAY);
    }

    @Override // p022j$.time.temporal.InterfaceC2202q
    /* JADX INFO: renamed from: i */
    public final C2206u mo770i(InterfaceC2199n interfaceC2199n) {
        if (interfaceC2199n.mo575e(EnumC2186a.EPOCH_DAY)) {
            return this.f840b;
        }
        throw new C2108b("Unsupported field: " + this);
    }

    @Override // p022j$.time.temporal.InterfaceC2202q
    /* JADX INFO: renamed from: k */
    public final long mo772k(InterfaceC2199n interfaceC2199n) {
        return interfaceC2199n.mo580w(EnumC2186a.EPOCH_DAY) + this.f841c;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f839a;
    }
}
