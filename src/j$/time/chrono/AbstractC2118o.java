package j$.time.chrono;

import j$.time.temporal.EnumC2173a;

/* JADX INFO: renamed from: j$.time.chrono.o */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2118o {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f537a;

    static {
        int[] iArr = new int[EnumC2173a.values().length];
        f537a = iArr;
        try {
            iArr[EnumC2173a.DAY_OF_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f537a[EnumC2173a.DAY_OF_YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f537a[EnumC2173a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f537a[EnumC2173a.DAY_OF_WEEK.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f537a[EnumC2173a.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f537a[EnumC2173a.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f537a[EnumC2173a.EPOCH_DAY.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f537a[EnumC2173a.ALIGNED_WEEK_OF_YEAR.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f537a[EnumC2173a.MONTH_OF_YEAR.ordinal()] = 9;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f537a[EnumC2173a.PROLEPTIC_MONTH.ordinal()] = 10;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f537a[EnumC2173a.YEAR_OF_ERA.ordinal()] = 11;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            f537a[EnumC2173a.YEAR.ordinal()] = 12;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            f537a[EnumC2173a.ERA.ordinal()] = 13;
        } catch (NoSuchFieldError unused13) {
        }
    }
}
