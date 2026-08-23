package j$.time.chrono;

import j$.time.temporal.EnumC2173a;

/* JADX INFO: renamed from: j$.time.chrono.m */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2116m {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f526a;

    static {
        int[] iArr = new int[EnumC2173a.values().length];
        f526a = iArr;
        try {
            iArr[EnumC2173a.DAY_OF_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f526a[EnumC2173a.DAY_OF_YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f526a[EnumC2173a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f526a[EnumC2173a.YEAR.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f526a[EnumC2173a.YEAR_OF_ERA.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f526a[EnumC2173a.ERA.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
