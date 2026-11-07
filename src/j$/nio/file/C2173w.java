package j$.nio.file;

import j$.desugar.sun.nio.fs.AbstractC2108g;

/* JADX INFO: renamed from: j$.nio.file.w */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2173w implements java.nio.file.OpenOption {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ OpenOption f587a;

    public /* synthetic */ C2173w(OpenOption openOption) {
        this.f587a = openOption;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ java.nio.file.OpenOption m634a(OpenOption openOption) {
        if (openOption == null) {
            return null;
        }
        return openOption instanceof C2172v ? ((C2172v) openOption).f586a : openOption instanceof LinkOption ? java.nio.file.LinkOption.NOFOLLOW_LINKS : openOption instanceof StandardOpenOption ? AbstractC2108g.m507d((StandardOpenOption) openOption) : new C2173w(openOption);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        OpenOption openOption = this.f587a;
        if (obj instanceof C2173w) {
            obj = ((C2173w) obj).f587a;
        }
        return openOption.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f587a.hashCode();
    }
}
