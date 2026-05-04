package j$.time.chrono;

import j$.time.temporal.EnumC2047a;

/* JADX INFO: renamed from: j$.time.chrono.E */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC1975E {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f442a;

    static {
        int[] iArr = new int[EnumC2047a.values().length];
        f442a = iArr;
        try {
            iArr[EnumC2047a.PROLEPTIC_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f442a[EnumC2047a.YEAR_OF_ERA.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f442a[EnumC2047a.YEAR.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
