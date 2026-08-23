package j$.time.chrono;

import j$.time.temporal.EnumC2173a;

/* JADX INFO: renamed from: j$.time.chrono.t */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2123t {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f545a;

    static {
        int[] iArr = new int[EnumC2173a.values().length];
        f545a = iArr;
        try {
            iArr[EnumC2173a.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f545a[EnumC2173a.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f545a[EnumC2173a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f545a[EnumC2173a.ALIGNED_WEEK_OF_YEAR.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f545a[EnumC2173a.YEAR_OF_ERA.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f545a[EnumC2173a.DAY_OF_YEAR.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f545a[EnumC2173a.YEAR.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f545a[EnumC2173a.ERA.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
    }
}
