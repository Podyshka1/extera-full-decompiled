package j$.time.chrono;

import j$.time.temporal.EnumC2047a;

/* JADX INFO: renamed from: j$.time.chrono.G */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC1977G {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f444a;

    static {
        int[] iArr = new int[EnumC2047a.values().length];
        f444a = iArr;
        try {
            iArr[EnumC2047a.DAY_OF_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f444a[EnumC2047a.DAY_OF_YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f444a[EnumC2047a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f444a[EnumC2047a.YEAR_OF_ERA.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f444a[EnumC2047a.PROLEPTIC_MONTH.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f444a[EnumC2047a.YEAR.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f444a[EnumC2047a.ERA.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
    }
}
