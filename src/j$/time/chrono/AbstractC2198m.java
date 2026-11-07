package j$.time.chrono;

import j$.time.temporal.EnumC2254a;

/* JADX INFO: renamed from: j$.time.chrono.m */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2198m {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f682a;

    static {
        int[] iArr = new int[EnumC2254a.values().length];
        f682a = iArr;
        try {
            iArr[EnumC2254a.DAY_OF_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f682a[EnumC2254a.DAY_OF_YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f682a[EnumC2254a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f682a[EnumC2254a.YEAR.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f682a[EnumC2254a.YEAR_OF_ERA.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f682a[EnumC2254a.ERA.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
