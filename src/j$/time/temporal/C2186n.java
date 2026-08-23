package j$.time.temporal;

/* JADX INFO: renamed from: j$.time.temporal.n */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2186n implements InterfaceC2185m {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f695a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f696b;

    public /* synthetic */ C2186n(int i, int i2) {
        this.f695a = i2;
        this.f696b = i;
    }

    @Override // j$.time.temporal.InterfaceC2185m
    /* JADX INFO: renamed from: e */
    public final Temporal mo483e(Temporal temporal) {
        int i = this.f695a;
        int i2 = this.f696b;
        switch (i) {
            case 0:
                int iMo484g = temporal.mo484g(EnumC2173a.DAY_OF_WEEK);
                if (iMo484g == i2) {
                    return temporal;
                }
                return temporal.mo497b(iMo484g - i2 >= 0 ? 7 - r0 : -r0, ChronoUnit.DAYS);
            default:
                int iMo484g2 = temporal.mo484g(EnumC2173a.DAY_OF_WEEK);
                if (iMo484g2 == i2) {
                    return temporal;
                }
                return temporal.mo498c(i2 - iMo484g2 >= 0 ? 7 - r2 : -r2, ChronoUnit.DAYS);
        }
    }
}
