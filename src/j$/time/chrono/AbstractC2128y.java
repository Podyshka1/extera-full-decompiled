package j$.time.chrono;

import j$.time.temporal.EnumC2173a;

/* JADX INFO: renamed from: j$.time.chrono.y */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2128y {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f557a;

    static {
        int[] iArr = new int[EnumC2173a.values().length];
        f557a = iArr;
        try {
            iArr[EnumC2173a.PROLEPTIC_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f557a[EnumC2173a.YEAR_OF_ERA.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f557a[EnumC2173a.YEAR.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
