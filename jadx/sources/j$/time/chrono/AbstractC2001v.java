package j$.time.chrono;

import j$.time.temporal.EnumC2047a;

/* JADX INFO: renamed from: j$.time.chrono.v */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2001v {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f484a;

    static {
        int[] iArr = new int[EnumC2047a.values().length];
        f484a = iArr;
        try {
            iArr[EnumC2047a.DAY_OF_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f484a[EnumC2047a.DAY_OF_YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f484a[EnumC2047a.YEAR_OF_ERA.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f484a[EnumC2047a.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f484a[EnumC2047a.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f484a[EnumC2047a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f484a[EnumC2047a.ALIGNED_WEEK_OF_YEAR.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f484a[EnumC2047a.ERA.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f484a[EnumC2047a.YEAR.ordinal()] = 9;
        } catch (NoSuchFieldError unused9) {
        }
    }
}
