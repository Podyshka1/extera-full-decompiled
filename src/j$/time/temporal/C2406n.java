package j$.time.temporal;

/* JADX INFO: renamed from: j$.time.temporal.n */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2406n implements InterfaceC2405m {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f847a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f848b;

    public /* synthetic */ C2406n(int i, int i2) {
        this.f847a = i2;
        this.f848b = i;
    }

    @Override // j$.time.temporal.InterfaceC2405m
    /* JADX INFO: renamed from: e */
    public final Temporal mo665e(Temporal temporal) {
        int i = this.f847a;
        int i2 = this.f848b;
        switch (i) {
            case 0:
                int iMo666g = temporal.mo666g(EnumC2393a.DAY_OF_WEEK);
                if (iMo666g == i2) {
                    return temporal;
                }
                return temporal.mo677b(iMo666g - i2 >= 0 ? 7 - r0 : -r0, ChronoUnit.DAYS);
            default:
                int iMo666g2 = temporal.mo666g(EnumC2393a.DAY_OF_WEEK);
                if (iMo666g2 == i2) {
                    return temporal;
                }
                return temporal.mo678c(i2 - iMo666g2 >= 0 ? 7 - r2 : -r2, ChronoUnit.DAYS);
        }
    }
}
