package j$.nio.file.attribute;

import javax.security.auth.Subject;

/* JADX INFO: renamed from: j$.nio.file.attribute.x */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2285x implements java.nio.file.attribute.UserPrincipal {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ UserPrincipal f524a;

    public /* synthetic */ C2285x(UserPrincipal userPrincipal) {
        this.f524a = userPrincipal;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ java.nio.file.attribute.UserPrincipal m631a(UserPrincipal userPrincipal) {
        if (userPrincipal == null) {
            return null;
        }
        return userPrincipal instanceof C2284w ? ((C2284w) userPrincipal).f523a : userPrincipal instanceof C2280s ? ((C2280s) userPrincipal).f519a : new C2285x(userPrincipal);
    }

    @Override // java.security.Principal
    public final /* synthetic */ boolean equals(Object obj) {
        UserPrincipal userPrincipal = this.f524a;
        if (obj instanceof C2285x) {
            obj = ((C2285x) obj).f524a;
        }
        return userPrincipal.equals(obj);
    }

    @Override // java.security.Principal
    public final /* synthetic */ String getName() {
        return this.f524a.getName();
    }

    @Override // java.security.Principal
    public final /* synthetic */ int hashCode() {
        return this.f524a.hashCode();
    }

    @Override // java.security.Principal
    public final /* synthetic */ boolean implies(Subject subject) {
        return this.f524a.implies(subject);
    }

    @Override // java.security.Principal
    public final /* synthetic */ String toString() {
        return this.f524a.toString();
    }
}
