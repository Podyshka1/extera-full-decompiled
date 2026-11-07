package j$.desugar.sun.nio.fs;

import j$.nio.file.EnumC2121a;

/* JADX INFO: renamed from: j$.desugar.sun.nio.fs.j */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2111j {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f463a;

    static {
        int[] iArr = new int[EnumC2121a.values().length];
        f463a = iArr;
        try {
            iArr[EnumC2121a.READ.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f463a[EnumC2121a.WRITE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f463a[EnumC2121a.EXECUTE.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
