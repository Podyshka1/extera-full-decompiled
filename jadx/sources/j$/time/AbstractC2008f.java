package j$.time;

import j$.time.temporal.EnumC2048b;

/* JADX INFO: renamed from: j$.time.f */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2008f {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f500a;

    static {
        int[] iArr = new int[EnumC2048b.values().length];
        f500a = iArr;
        try {
            iArr[EnumC2048b.NANOS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f500a[EnumC2048b.MICROS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f500a[EnumC2048b.MILLIS.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f500a[EnumC2048b.SECONDS.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f500a[EnumC2048b.MINUTES.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f500a[EnumC2048b.HOURS.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f500a[EnumC2048b.HALF_DAYS.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
    }
}
