package j$.time.chrono;

import j$.time.temporal.EnumC2047a;

/* JADX INFO: renamed from: j$.time.chrono.t */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC1999t {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f482a;

    static {
        int[] iArr = new int[EnumC2047a.values().length];
        f482a = iArr;
        try {
            iArr[EnumC2047a.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f482a[EnumC2047a.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f482a[EnumC2047a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f482a[EnumC2047a.ALIGNED_WEEK_OF_YEAR.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f482a[EnumC2047a.YEAR_OF_ERA.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f482a[EnumC2047a.DAY_OF_YEAR.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f482a[EnumC2047a.YEAR.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f482a[EnumC2047a.ERA.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
    }
}
