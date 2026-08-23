package j$.time.chrono;

import j$.time.temporal.EnumC2173a;

/* JADX INFO: renamed from: j$.time.chrono.i */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2112i {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f521a;

    static {
        int[] iArr = new int[EnumC2173a.values().length];
        f521a = iArr;
        try {
            iArr[EnumC2173a.INSTANT_SECONDS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f521a[EnumC2173a.OFFSET_SECONDS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
