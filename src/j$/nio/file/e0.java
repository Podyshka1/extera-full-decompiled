package j$.nio.file;

import java.nio.file.PathMatcher;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class e0 implements g0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ PathMatcher f533a;

    public /* synthetic */ e0(PathMatcher pathMatcher) {
        this.f533a = pathMatcher;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PathMatcher pathMatcher = this.f533a;
        if (obj instanceof e0) {
            obj = ((e0) obj).f533a;
        }
        return pathMatcher.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f533a.hashCode();
    }

    @Override // j$.nio.file.g0
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo557p(Path path) {
        return this.f533a.matches(C2316z.m660s(path));
    }
}
