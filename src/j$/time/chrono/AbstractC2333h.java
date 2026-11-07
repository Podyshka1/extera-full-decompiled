package j$.time.chrono;

import j$.time.temporal.EnumC2393a;

/* JADX INFO: renamed from: j$.time.chrono.h */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2333h {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f677a;

    static {
        int[] iArr = new int[EnumC2393a.values().length];
        f677a = iArr;
        try {
            iArr[EnumC2393a.INSTANT_SECONDS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f677a[EnumC2393a.OFFSET_SECONDS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
