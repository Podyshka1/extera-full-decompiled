package j$.nio.file;

import j$.desugar.sun.nio.fs.AbstractC2248g;

/* JADX INFO: renamed from: j$.nio.file.v */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2312v implements OpenOption {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ java.nio.file.OpenOption f587a;

    public /* synthetic */ C2312v(java.nio.file.OpenOption openOption) {
        this.f587a = openOption;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [j$.nio.file.OpenOption, java.nio.file.StandardOpenOption] */
    /* JADX WARN: Type inference failed for: r1v4, types: [j$.nio.file.OpenOption, java.nio.file.LinkOption] */
    /* JADX INFO: renamed from: a */
    public static /* synthetic */ OpenOption m657a(java.nio.file.OpenOption openOption) {
        if (openOption == 0) {
            return null;
        }
        if (openOption instanceof C2313w) {
            return ((C2313w) openOption).f588a;
        }
        if (!(openOption instanceof LinkOption)) {
            return openOption instanceof StandardOpenOption ? AbstractC2248g.m531d((StandardOpenOption) openOption) : new C2312v(openOption);
        }
        return java.nio.file.LinkOption.NOFOLLOW_LINKS;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.OpenOption openOption = this.f587a;
        if (obj instanceof C2312v) {
            obj = ((C2312v) obj).f587a;
        }
        return openOption.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f587a.hashCode();
    }
}
