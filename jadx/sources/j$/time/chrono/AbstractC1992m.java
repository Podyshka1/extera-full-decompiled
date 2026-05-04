package j$.time.chrono;

import j$.time.temporal.EnumC2047a;

/* JADX INFO: renamed from: j$.time.chrono.m */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC1992m {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f463a;

    static {
        int[] iArr = new int[EnumC2047a.values().length];
        f463a = iArr;
        try {
            iArr[EnumC2047a.DAY_OF_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f463a[EnumC2047a.DAY_OF_YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f463a[EnumC2047a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f463a[EnumC2047a.YEAR.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f463a[EnumC2047a.YEAR_OF_ERA.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f463a[EnumC2047a.ERA.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
