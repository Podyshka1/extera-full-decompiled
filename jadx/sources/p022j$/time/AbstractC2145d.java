package p022j$.time;

import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.EnumC2187b;

/* JADX INFO: renamed from: j$.time.d */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2145d {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f731a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int[] f732b;

    static {
        int[] iArr = new int[EnumC2187b.values().length];
        f732b = iArr;
        try {
            iArr[EnumC2187b.NANOS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f732b[EnumC2187b.MICROS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f732b[EnumC2187b.MILLIS.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f732b[EnumC2187b.SECONDS.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f732b[EnumC2187b.MINUTES.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f732b[EnumC2187b.HOURS.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f732b[EnumC2187b.HALF_DAYS.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f732b[EnumC2187b.DAYS.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        int[] iArr2 = new int[EnumC2186a.values().length];
        f731a = iArr2;
        try {
            iArr2[EnumC2186a.NANO_OF_SECOND.ordinal()] = 1;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f731a[EnumC2186a.MICRO_OF_SECOND.ordinal()] = 2;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f731a[EnumC2186a.MILLI_OF_SECOND.ordinal()] = 3;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            f731a[EnumC2186a.INSTANT_SECONDS.ordinal()] = 4;
        } catch (NoSuchFieldError unused12) {
        }
    }
}
