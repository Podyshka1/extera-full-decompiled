package j$.nio.file;

import j$.desugar.sun.nio.fs.AbstractC2108g;

/* JADX INFO: renamed from: j$.nio.file.v */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2172v implements OpenOption {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ java.nio.file.OpenOption f586a;

    public /* synthetic */ C2172v(java.nio.file.OpenOption openOption) {
        this.f586a = openOption;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [j$.nio.file.OpenOption, java.nio.file.StandardOpenOption] */
    /* JADX WARN: Type inference failed for: r1v4, types: [j$.nio.file.OpenOption, java.nio.file.LinkOption] */
    /* JADX INFO: renamed from: a */
    public static /* synthetic */ OpenOption m633a(java.nio.file.OpenOption openOption) {
        if (openOption == 0) {
            return null;
        }
        if (openOption instanceof C2173w) {
            return ((C2173w) openOption).f587a;
        }
        if (!(openOption instanceof LinkOption)) {
            return openOption instanceof StandardOpenOption ? AbstractC2108g.m507d((StandardOpenOption) openOption) : new C2172v(openOption);
        }
        return java.nio.file.LinkOption.NOFOLLOW_LINKS;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.OpenOption openOption = this.f586a;
        if (obj instanceof C2172v) {
            obj = ((C2172v) obj).f586a;
        }
        return openOption.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f586a.hashCode();
    }
}
