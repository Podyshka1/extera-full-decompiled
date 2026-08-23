package j$.time;

import j$.time.temporal.EnumC2047a;

/* JADX INFO: renamed from: j$.time.k */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2037k {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f569a;

    static {
        int[] iArr = new int[EnumC2047a.values().length];
        f569a = iArr;
        try {
            iArr[EnumC2047a.DAY_OF_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f569a[EnumC2047a.MONTH_OF_YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
