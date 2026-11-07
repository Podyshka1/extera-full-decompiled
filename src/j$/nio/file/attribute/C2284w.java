package j$.nio.file.attribute;

import java.nio.file.attribute.GroupPrincipal;
import javax.security.auth.Subject;

/* JADX INFO: renamed from: j$.nio.file.attribute.w */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2284w implements UserPrincipal {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ java.nio.file.attribute.UserPrincipal f523a;

    public /* synthetic */ C2284w(java.nio.file.attribute.UserPrincipal userPrincipal) {
        this.f523a = userPrincipal;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ UserPrincipal m630a(java.nio.file.attribute.UserPrincipal userPrincipal) {
        if (userPrincipal == null) {
            return null;
        }
        return userPrincipal instanceof C2285x ? ((C2285x) userPrincipal).f524a : userPrincipal instanceof GroupPrincipal ? new C2280s((GroupPrincipal) userPrincipal) : new C2284w(userPrincipal);
    }

    @Override // java.security.Principal
    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.attribute.UserPrincipal userPrincipal = this.f523a;
        if (obj instanceof C2284w) {
            obj = ((C2284w) obj).f523a;
        }
        return userPrincipal.equals(obj);
    }

    @Override // java.security.Principal
    public final /* synthetic */ String getName() {
        return this.f523a.getName();
    }

    @Override // java.security.Principal
    public final /* synthetic */ int hashCode() {
        return this.f523a.hashCode();
    }

    @Override // java.security.Principal
    public final /* synthetic */ boolean implies(Subject subject) {
        return this.f523a.implies(subject);
    }

    @Override // java.security.Principal
    public final /* synthetic */ String toString() {
        return this.f523a.toString();
    }
}
