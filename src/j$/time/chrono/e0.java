package j$.time.chrono;

import j$.time.temporal.EnumC2393a;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class e0 {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f667a;

    static {
        int[] iArr = new int[EnumC2393a.values().length];
        f667a = iArr;
        try {
            iArr[EnumC2393a.PROLEPTIC_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f667a[EnumC2393a.YEAR_OF_ERA.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f667a[EnumC2393a.YEAR.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
