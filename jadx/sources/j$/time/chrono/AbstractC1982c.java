package j$.time.chrono;

import j$.time.temporal.EnumC2048b;

/* JADX INFO: renamed from: j$.time.chrono.c */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC1982c {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f449a;

    static {
        int[] iArr = new int[EnumC2048b.values().length];
        f449a = iArr;
        try {
            iArr[EnumC2048b.DAYS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f449a[EnumC2048b.WEEKS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f449a[EnumC2048b.MONTHS.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f449a[EnumC2048b.YEARS.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f449a[EnumC2048b.DECADES.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f449a[EnumC2048b.CENTURIES.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f449a[EnumC2048b.MILLENNIA.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f449a[EnumC2048b.ERAS.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
    }
}
