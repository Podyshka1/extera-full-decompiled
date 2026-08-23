package j$.time;

import j$.time.temporal.EnumC2173a;

/* JADX INFO: renamed from: j$.time.m */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2165m {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f662a;

    static {
        int[] iArr = new int[EnumC2173a.values().length];
        f662a = iArr;
        try {
            iArr[EnumC2173a.DAY_OF_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f662a[EnumC2173a.MONTH_OF_YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
