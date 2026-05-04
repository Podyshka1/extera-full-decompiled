package p022j$.time.format;

/* JADX INFO: renamed from: j$.time.format.c */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2150c {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f745a;

    static {
        int[] iArr = new int[EnumC2171x.values().length];
        f745a = iArr;
        try {
            iArr[EnumC2171x.EXCEEDS_PAD.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f745a[EnumC2171x.ALWAYS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f745a[EnumC2171x.NORMAL.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f745a[EnumC2171x.NOT_NEGATIVE.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
    }
}
