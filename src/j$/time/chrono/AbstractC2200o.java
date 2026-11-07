package j$.time.chrono;

import j$.time.temporal.EnumC2254a;

/* JADX INFO: renamed from: j$.time.chrono.o */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2200o {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f693a;

    static {
        int[] iArr = new int[EnumC2254a.values().length];
        f693a = iArr;
        try {
            iArr[EnumC2254a.DAY_OF_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f693a[EnumC2254a.DAY_OF_YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f693a[EnumC2254a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f693a[EnumC2254a.DAY_OF_WEEK.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f693a[EnumC2254a.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f693a[EnumC2254a.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f693a[EnumC2254a.EPOCH_DAY.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f693a[EnumC2254a.ALIGNED_WEEK_OF_YEAR.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f693a[EnumC2254a.MONTH_OF_YEAR.ordinal()] = 9;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f693a[EnumC2254a.PROLEPTIC_MONTH.ordinal()] = 10;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f693a[EnumC2254a.YEAR_OF_ERA.ordinal()] = 11;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            f693a[EnumC2254a.YEAR.ordinal()] = 12;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            f693a[EnumC2254a.ERA.ordinal()] = 13;
        } catch (NoSuchFieldError unused13) {
        }
    }
}
