package j$.time;

import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2048b;

/* JADX INFO: renamed from: j$.time.d */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2006d {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f496a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int[] f497b;

    static {
        int[] iArr = new int[EnumC2048b.values().length];
        f497b = iArr;
        try {
            iArr[EnumC2048b.NANOS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f497b[EnumC2048b.MICROS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f497b[EnumC2048b.MILLIS.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f497b[EnumC2048b.SECONDS.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f497b[EnumC2048b.MINUTES.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f497b[EnumC2048b.HOURS.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f497b[EnumC2048b.HALF_DAYS.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f497b[EnumC2048b.DAYS.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        int[] iArr2 = new int[EnumC2047a.values().length];
        f496a = iArr2;
        try {
            iArr2[EnumC2047a.NANO_OF_SECOND.ordinal()] = 1;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f496a[EnumC2047a.MICRO_OF_SECOND.ordinal()] = 2;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f496a[EnumC2047a.MILLI_OF_SECOND.ordinal()] = 3;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            f496a[EnumC2047a.INSTANT_SECONDS.ordinal()] = 4;
        } catch (NoSuchFieldError unused12) {
        }
    }
}
