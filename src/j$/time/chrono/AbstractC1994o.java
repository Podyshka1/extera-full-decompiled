package j$.time.chrono;

import j$.time.temporal.EnumC2047a;

/* JADX INFO: renamed from: j$.time.chrono.o */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC1994o {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f474a;

    static {
        int[] iArr = new int[EnumC2047a.values().length];
        f474a = iArr;
        try {
            iArr[EnumC2047a.DAY_OF_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f474a[EnumC2047a.DAY_OF_YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f474a[EnumC2047a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f474a[EnumC2047a.DAY_OF_WEEK.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f474a[EnumC2047a.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f474a[EnumC2047a.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f474a[EnumC2047a.EPOCH_DAY.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f474a[EnumC2047a.ALIGNED_WEEK_OF_YEAR.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f474a[EnumC2047a.MONTH_OF_YEAR.ordinal()] = 9;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f474a[EnumC2047a.PROLEPTIC_MONTH.ordinal()] = 10;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f474a[EnumC2047a.YEAR_OF_ERA.ordinal()] = 11;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            f474a[EnumC2047a.YEAR.ordinal()] = 12;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            f474a[EnumC2047a.ERA.ordinal()] = 13;
        } catch (NoSuchFieldError unused13) {
        }
    }
}
