package j$.nio.file;

import java.nio.file.PathMatcher;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class e0 implements g0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ PathMatcher f532a;

    public /* synthetic */ e0(PathMatcher pathMatcher) {
        this.f532a = pathMatcher;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PathMatcher pathMatcher = this.f532a;
        if (obj instanceof e0) {
            obj = ((e0) obj).f532a;
        }
        return pathMatcher.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f532a.hashCode();
    }

    @Override // j$.nio.file.g0
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo533p(Path path) {
        return this.f532a.matches(C2176z.m636s(path));
    }
}
