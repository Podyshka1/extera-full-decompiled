package j$.time.temporal;

/* JADX INFO: renamed from: j$.time.temporal.c */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2049c {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f595a;

    static {
        int[] iArr = new int[EnumC2055i.values().length];
        f595a = iArr;
        try {
            iArr[EnumC2055i.WEEK_BASED_YEARS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f595a[EnumC2055i.QUARTER_YEARS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
