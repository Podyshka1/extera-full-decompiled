package p022j$.time.chrono;

import p022j$.time.temporal.EnumC2187b;

/* JADX INFO: renamed from: j$.time.chrono.e */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2123e {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f683a;

    static {
        int[] iArr = new int[EnumC2187b.values().length];
        f683a = iArr;
        try {
            iArr[EnumC2187b.NANOS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f683a[EnumC2187b.MICROS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f683a[EnumC2187b.MILLIS.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f683a[EnumC2187b.SECONDS.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f683a[EnumC2187b.MINUTES.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f683a[EnumC2187b.HOURS.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f683a[EnumC2187b.HALF_DAYS.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
    }
}
