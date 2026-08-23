package j$.time.zone;

/* JADX INFO: renamed from: j$.time.zone.c */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2200c {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f735a;

    static {
        int[] iArr = new int[EnumC2201d.values().length];
        f735a = iArr;
        try {
            iArr[EnumC2201d.UTC.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f735a[EnumC2201d.STANDARD.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
