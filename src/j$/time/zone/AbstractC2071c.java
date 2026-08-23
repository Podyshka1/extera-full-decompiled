package j$.time.zone;

/* JADX INFO: renamed from: j$.time.zone.c */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2071c {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f641a;

    static {
        int[] iArr = new int[EnumC2072d.values().length];
        f641a = iArr;
        try {
            iArr[EnumC2072d.UTC.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f641a[EnumC2072d.STANDARD.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
