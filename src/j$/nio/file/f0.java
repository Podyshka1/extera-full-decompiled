package j$.nio.file;

import java.nio.file.PathMatcher;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class f0 implements PathMatcher {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ g0 f535a;

    public /* synthetic */ f0(g0 g0Var) {
        this.f535a = g0Var;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        g0 g0Var = this.f535a;
        if (obj instanceof f0) {
            obj = ((f0) obj).f535a;
        }
        return g0Var.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f535a.hashCode();
    }

    @Override // java.nio.file.PathMatcher
    public final /* synthetic */ boolean matches(java.nio.file.Path path) {
        return this.f535a.mo533p(C2175y.m635s(path));
    }
}
