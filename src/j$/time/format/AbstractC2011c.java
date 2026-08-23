package j$.time.format;

/* JADX INFO: renamed from: j$.time.format.c */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2011c {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f510a;

    static {
        int[] iArr = new int[EnumC2032x.values().length];
        f510a = iArr;
        try {
            iArr[EnumC2032x.EXCEEDS_PAD.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f510a[EnumC2032x.ALWAYS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f510a[EnumC2032x.NORMAL.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f510a[EnumC2032x.NOT_NEGATIVE.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
    }
}
