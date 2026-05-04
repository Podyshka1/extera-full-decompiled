package j$.time;

import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2048b;

/* JADX INFO: renamed from: j$.time.e */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2007e {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f498a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int[] f499b;

    static {
        int[] iArr = new int[EnumC2048b.values().length];
        f499b = iArr;
        try {
            iArr[EnumC2048b.DAYS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f499b[EnumC2048b.WEEKS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f499b[EnumC2048b.MONTHS.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f499b[EnumC2048b.YEARS.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f499b[EnumC2048b.DECADES.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f499b[EnumC2048b.CENTURIES.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f499b[EnumC2048b.MILLENNIA.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f499b[EnumC2048b.ERAS.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        int[] iArr2 = new int[EnumC2047a.values().length];
        f498a = iArr2;
        try {
            iArr2[EnumC2047a.DAY_OF_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f498a[EnumC2047a.DAY_OF_YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f498a[EnumC2047a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            f498a[EnumC2047a.YEAR_OF_ERA.ordinal()] = 4;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            f498a[EnumC2047a.DAY_OF_WEEK.ordinal()] = 5;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            f498a[EnumC2047a.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 6;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            f498a[EnumC2047a.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 7;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            f498a[EnumC2047a.EPOCH_DAY.ordinal()] = 8;
        } catch (NoSuchFieldError unused16) {
        }
        try {
            f498a[EnumC2047a.ALIGNED_WEEK_OF_YEAR.ordinal()] = 9;
        } catch (NoSuchFieldError unused17) {
        }
        try {
            f498a[EnumC2047a.MONTH_OF_YEAR.ordinal()] = 10;
        } catch (NoSuchFieldError unused18) {
        }
        try {
            f498a[EnumC2047a.PROLEPTIC_MONTH.ordinal()] = 11;
        } catch (NoSuchFieldError unused19) {
        }
        try {
            f498a[EnumC2047a.YEAR.ordinal()] = 12;
        } catch (NoSuchFieldError unused20) {
        }
        try {
            f498a[EnumC2047a.ERA.ordinal()] = 13;
        } catch (NoSuchFieldError unused21) {
        }
    }
}
