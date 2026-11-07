package j$.nio.file;

import java.nio.file.PathMatcher;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class f0 implements PathMatcher {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ g0 f536a;

    public /* synthetic */ f0(g0 g0Var) {
        this.f536a = g0Var;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        g0 g0Var = this.f536a;
        if (obj instanceof f0) {
            obj = ((f0) obj).f536a;
        }
        return g0Var.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f536a.hashCode();
    }

    @Override // java.nio.file.PathMatcher
    public final /* synthetic */ boolean matches(java.nio.file.Path path) {
        return this.f536a.mo557p(C2315y.m659s(path));
    }
}
