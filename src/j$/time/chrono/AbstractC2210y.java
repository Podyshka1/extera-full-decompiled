package j$.time.chrono;

import j$.time.temporal.EnumC2254a;

/* JADX INFO: renamed from: j$.time.chrono.y */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2210y {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f713a;

    static {
        int[] iArr = new int[EnumC2254a.values().length];
        f713a = iArr;
        try {
            iArr[EnumC2254a.PROLEPTIC_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f713a[EnumC2254a.YEAR_OF_ERA.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f713a[EnumC2254a.YEAR.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
