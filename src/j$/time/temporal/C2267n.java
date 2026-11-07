package j$.time.temporal;

/* JADX INFO: renamed from: j$.time.temporal.n */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2267n implements InterfaceC2266m {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f845a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f846b;

    public /* synthetic */ C2267n(int i, int i2) {
        this.f845a = i2;
        this.f846b = i;
    }

    @Override // j$.time.temporal.InterfaceC2266m
    /* JADX INFO: renamed from: e */
    public final Temporal mo641e(Temporal temporal) {
        int i = this.f845a;
        int i2 = this.f846b;
        switch (i) {
            case 0:
                int iMo642g = temporal.mo642g(EnumC2254a.DAY_OF_WEEK);
                if (iMo642g == i2) {
                    return temporal;
                }
                return temporal.mo653b(iMo642g - i2 >= 0 ? 7 - r0 : -r0, ChronoUnit.DAYS);
            default:
                int iMo642g2 = temporal.mo642g(EnumC2254a.DAY_OF_WEEK);
                if (iMo642g2 == i2) {
                    return temporal;
                }
                return temporal.mo654c(i2 - iMo642g2 >= 0 ? 7 - r2 : -r2, ChronoUnit.DAYS);
        }
    }
}
