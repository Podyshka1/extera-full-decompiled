package j$.time.chrono;

import j$.time.temporal.EnumC2393a;

/* JADX INFO: renamed from: j$.time.chrono.m */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2338m {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f684a;

    static {
        int[] iArr = new int[EnumC2393a.values().length];
        f684a = iArr;
        try {
            iArr[EnumC2393a.DAY_OF_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f684a[EnumC2393a.DAY_OF_YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f684a[EnumC2393a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f684a[EnumC2393a.YEAR.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f684a[EnumC2393a.YEAR_OF_ERA.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f684a[EnumC2393a.ERA.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
