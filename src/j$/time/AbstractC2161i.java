package j$.time;

import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;

/* JADX INFO: renamed from: j$.time.i */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2161i {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f649a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int[] f650b;

    static {
        int[] iArr = new int[ChronoUnit.values().length];
        f650b = iArr;
        try {
            iArr[ChronoUnit.NANOS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f650b[ChronoUnit.MICROS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f650b[ChronoUnit.MILLIS.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f650b[ChronoUnit.SECONDS.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f650b[ChronoUnit.MINUTES.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f650b[ChronoUnit.HOURS.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f650b[ChronoUnit.HALF_DAYS.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        int[] iArr2 = new int[EnumC2173a.values().length];
        f649a = iArr2;
        try {
            iArr2[EnumC2173a.NANO_OF_SECOND.ordinal()] = 1;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f649a[EnumC2173a.NANO_OF_DAY.ordinal()] = 2;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f649a[EnumC2173a.MICRO_OF_SECOND.ordinal()] = 3;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f649a[EnumC2173a.MICRO_OF_DAY.ordinal()] = 4;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            f649a[EnumC2173a.MILLI_OF_SECOND.ordinal()] = 5;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            f649a[EnumC2173a.MILLI_OF_DAY.ordinal()] = 6;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            f649a[EnumC2173a.SECOND_OF_MINUTE.ordinal()] = 7;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            f649a[EnumC2173a.SECOND_OF_DAY.ordinal()] = 8;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            f649a[EnumC2173a.MINUTE_OF_HOUR.ordinal()] = 9;
        } catch (NoSuchFieldError unused16) {
        }
        try {
            f649a[EnumC2173a.MINUTE_OF_DAY.ordinal()] = 10;
        } catch (NoSuchFieldError unused17) {
        }
        try {
            f649a[EnumC2173a.HOUR_OF_AMPM.ordinal()] = 11;
        } catch (NoSuchFieldError unused18) {
        }
        try {
            f649a[EnumC2173a.CLOCK_HOUR_OF_AMPM.ordinal()] = 12;
        } catch (NoSuchFieldError unused19) {
        }
        try {
            f649a[EnumC2173a.HOUR_OF_DAY.ordinal()] = 13;
        } catch (NoSuchFieldError unused20) {
        }
        try {
            f649a[EnumC2173a.CLOCK_HOUR_OF_DAY.ordinal()] = 14;
        } catch (NoSuchFieldError unused21) {
        }
        try {
            f649a[EnumC2173a.AMPM_OF_DAY.ordinal()] = 15;
        } catch (NoSuchFieldError unused22) {
        }
    }
}
