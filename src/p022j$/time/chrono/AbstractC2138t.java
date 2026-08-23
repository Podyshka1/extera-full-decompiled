package p022j$.time.chrono;

import p022j$.time.temporal.EnumC2186a;

/* JADX INFO: renamed from: j$.time.chrono.t */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2138t {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f717a;

    static {
        int[] iArr = new int[EnumC2186a.values().length];
        f717a = iArr;
        try {
            iArr[EnumC2186a.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f717a[EnumC2186a.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f717a[EnumC2186a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f717a[EnumC2186a.ALIGNED_WEEK_OF_YEAR.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f717a[EnumC2186a.YEAR_OF_ERA.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f717a[EnumC2186a.DAY_OF_YEAR.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f717a[EnumC2186a.YEAR.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f717a[EnumC2186a.ERA.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
    }
}
