package j$.time;

import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2048b;

/* JADX INFO: renamed from: j$.time.g */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2033g {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f556a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int[] f557b;

    static {
        int[] iArr = new int[EnumC2048b.values().length];
        f557b = iArr;
        try {
            iArr[EnumC2048b.NANOS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f557b[EnumC2048b.MICROS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f557b[EnumC2048b.MILLIS.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f557b[EnumC2048b.SECONDS.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f557b[EnumC2048b.MINUTES.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f557b[EnumC2048b.HOURS.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f557b[EnumC2048b.HALF_DAYS.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        int[] iArr2 = new int[EnumC2047a.values().length];
        f556a = iArr2;
        try {
            iArr2[EnumC2047a.NANO_OF_SECOND.ordinal()] = 1;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f556a[EnumC2047a.NANO_OF_DAY.ordinal()] = 2;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f556a[EnumC2047a.MICRO_OF_SECOND.ordinal()] = 3;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f556a[EnumC2047a.MICRO_OF_DAY.ordinal()] = 4;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            f556a[EnumC2047a.MILLI_OF_SECOND.ordinal()] = 5;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            f556a[EnumC2047a.MILLI_OF_DAY.ordinal()] = 6;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            f556a[EnumC2047a.SECOND_OF_MINUTE.ordinal()] = 7;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            f556a[EnumC2047a.SECOND_OF_DAY.ordinal()] = 8;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            f556a[EnumC2047a.MINUTE_OF_HOUR.ordinal()] = 9;
        } catch (NoSuchFieldError unused16) {
        }
        try {
            f556a[EnumC2047a.MINUTE_OF_DAY.ordinal()] = 10;
        } catch (NoSuchFieldError unused17) {
        }
        try {
            f556a[EnumC2047a.HOUR_OF_AMPM.ordinal()] = 11;
        } catch (NoSuchFieldError unused18) {
        }
        try {
            f556a[EnumC2047a.CLOCK_HOUR_OF_AMPM.ordinal()] = 12;
        } catch (NoSuchFieldError unused19) {
        }
        try {
            f556a[EnumC2047a.HOUR_OF_DAY.ordinal()] = 13;
        } catch (NoSuchFieldError unused20) {
        }
        try {
            f556a[EnumC2047a.CLOCK_HOUR_OF_DAY.ordinal()] = 14;
        } catch (NoSuchFieldError unused21) {
        }
        try {
            f556a[EnumC2047a.AMPM_OF_DAY.ordinal()] = 15;
        } catch (NoSuchFieldError unused22) {
        }
    }
}
