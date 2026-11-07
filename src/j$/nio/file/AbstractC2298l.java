package j$.nio.file;

/* JADX INFO: renamed from: j$.nio.file.l */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2298l {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f553a;

    static {
        int[] iArr = new int[FileVisitOption.values().length];
        f553a = iArr;
        try {
            iArr[FileVisitOption.FOLLOW_LINKS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
    }
}
