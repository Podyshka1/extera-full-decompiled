package j$.time.zone;

/* JADX INFO: renamed from: j$.time.zone.c */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2275c {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f877a;

    static {
        int[] iArr = new int[EnumC2276d.values().length];
        f877a = iArr;
        try {
            iArr[EnumC2276d.UTC.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f877a[EnumC2276d.STANDARD.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
