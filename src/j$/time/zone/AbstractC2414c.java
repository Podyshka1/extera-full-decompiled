package j$.time.zone;

/* JADX INFO: renamed from: j$.time.zone.c */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2414c {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f879a;

    static {
        int[] iArr = new int[EnumC2415d.values().length];
        f879a = iArr;
        try {
            iArr[EnumC2415d.UTC.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f879a[EnumC2415d.STANDARD.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
