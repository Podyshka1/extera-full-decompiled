package j$.desugar.sun.nio.fs;

import j$.nio.file.EnumC2261a;

/* JADX INFO: renamed from: j$.desugar.sun.nio.fs.j */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2251j {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f464a;

    static {
        int[] iArr = new int[EnumC2261a.values().length];
        f464a = iArr;
        try {
            iArr[EnumC2261a.READ.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f464a[EnumC2261a.WRITE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f464a[EnumC2261a.EXECUTE.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
