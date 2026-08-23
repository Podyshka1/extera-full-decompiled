package j$.time;

import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;

/* JADX INFO: renamed from: j$.time.f */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2132f {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f561a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int[] f562b;

    static {
        int[] iArr = new int[ChronoUnit.values().length];
        f562b = iArr;
        try {
            iArr[ChronoUnit.DAYS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f562b[ChronoUnit.WEEKS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f562b[ChronoUnit.MONTHS.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f562b[ChronoUnit.YEARS.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f562b[ChronoUnit.DECADES.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f562b[ChronoUnit.CENTURIES.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f562b[ChronoUnit.MILLENNIA.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f562b[ChronoUnit.ERAS.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        int[] iArr2 = new int[EnumC2173a.values().length];
        f561a = iArr2;
        try {
            iArr2[EnumC2173a.DAY_OF_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f561a[EnumC2173a.DAY_OF_YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f561a[EnumC2173a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            f561a[EnumC2173a.YEAR_OF_ERA.ordinal()] = 4;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            f561a[EnumC2173a.DAY_OF_WEEK.ordinal()] = 5;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            f561a[EnumC2173a.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 6;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            f561a[EnumC2173a.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 7;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            f561a[EnumC2173a.EPOCH_DAY.ordinal()] = 8;
        } catch (NoSuchFieldError unused16) {
        }
        try {
            f561a[EnumC2173a.ALIGNED_WEEK_OF_YEAR.ordinal()] = 9;
        } catch (NoSuchFieldError unused17) {
        }
        try {
            f561a[EnumC2173a.MONTH_OF_YEAR.ordinal()] = 10;
        } catch (NoSuchFieldError unused18) {
        }
        try {
            f561a[EnumC2173a.PROLEPTIC_MONTH.ordinal()] = 11;
        } catch (NoSuchFieldError unused19) {
        }
        try {
            f561a[EnumC2173a.YEAR.ordinal()] = 12;
        } catch (NoSuchFieldError unused20) {
        }
        try {
            f561a[EnumC2173a.ERA.ordinal()] = 13;
        } catch (NoSuchFieldError unused21) {
        }
    }
}
