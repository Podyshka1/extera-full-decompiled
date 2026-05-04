package p022j$.time;

import p022j$.time.temporal.EnumC2186a;

/* JADX INFO: renamed from: j$.time.k */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2176k {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f804a;

    static {
        int[] iArr = new int[EnumC2186a.values().length];
        f804a = iArr;
        try {
            iArr[EnumC2186a.DAY_OF_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f804a[EnumC2186a.MONTH_OF_YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
