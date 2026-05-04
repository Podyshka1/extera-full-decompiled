package p022j$.time.zone;

/* JADX INFO: renamed from: j$.time.zone.c */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2210c {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f876a;

    static {
        int[] iArr = new int[EnumC2211d.values().length];
        f876a = iArr;
        try {
            iArr[EnumC2211d.UTC.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f876a[EnumC2211d.STANDARD.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
