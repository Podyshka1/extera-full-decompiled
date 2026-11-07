package j$.time;

import j$.time.temporal.EnumC2393a;

/* JADX INFO: renamed from: j$.time.k */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2385k {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f814a;

    static {
        int[] iArr = new int[EnumC2393a.values().length];
        f814a = iArr;
        try {
            iArr[EnumC2393a.DAY_OF_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f814a[EnumC2393a.MONTH_OF_YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
