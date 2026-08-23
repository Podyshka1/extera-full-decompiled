package p022j$.time.chrono;

import p022j$.time.temporal.EnumC2186a;

/* JADX INFO: renamed from: j$.time.chrono.y */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2143y {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f729a;

    static {
        int[] iArr = new int[EnumC2186a.values().length];
        f729a = iArr;
        try {
            iArr[EnumC2186a.PROLEPTIC_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f729a[EnumC2186a.YEAR_OF_ERA.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f729a[EnumC2186a.YEAR.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
