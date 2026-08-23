package j$.time;

import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2048b;

/* JADX INFO: renamed from: j$.time.r */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2044r {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f583a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int[] f584b;

    static {
        int[] iArr = new int[EnumC2048b.values().length];
        f584b = iArr;
        try {
            iArr[EnumC2048b.MONTHS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f584b[EnumC2048b.YEARS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f584b[EnumC2048b.DECADES.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f584b[EnumC2048b.CENTURIES.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f584b[EnumC2048b.MILLENNIA.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f584b[EnumC2048b.ERAS.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        int[] iArr2 = new int[EnumC2047a.values().length];
        f583a = iArr2;
        try {
            iArr2[EnumC2047a.MONTH_OF_YEAR.ordinal()] = 1;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f583a[EnumC2047a.PROLEPTIC_MONTH.ordinal()] = 2;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f583a[EnumC2047a.YEAR_OF_ERA.ordinal()] = 3;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f583a[EnumC2047a.YEAR.ordinal()] = 4;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f583a[EnumC2047a.ERA.ordinal()] = 5;
        } catch (NoSuchFieldError unused11) {
        }
    }
}
