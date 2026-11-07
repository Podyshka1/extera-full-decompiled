package j$.nio.file;

import j$.desugar.sun.nio.fs.AbstractC2248g;

/* JADX INFO: renamed from: j$.nio.file.w */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2313w implements java.nio.file.OpenOption {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ OpenOption f588a;

    public /* synthetic */ C2313w(OpenOption openOption) {
        this.f588a = openOption;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ java.nio.file.OpenOption m658a(OpenOption openOption) {
        if (openOption == null) {
            return null;
        }
        return openOption instanceof C2312v ? ((C2312v) openOption).f587a : openOption instanceof LinkOption ? java.nio.file.LinkOption.NOFOLLOW_LINKS : openOption instanceof StandardOpenOption ? AbstractC2248g.m531d((StandardOpenOption) openOption) : new C2313w(openOption);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        OpenOption openOption = this.f588a;
        if (obj instanceof C2313w) {
            obj = ((C2313w) obj).f588a;
        }
        return openOption.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f588a.hashCode();
    }
}
