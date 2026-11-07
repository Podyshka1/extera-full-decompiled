package j$.nio.file.attribute;

import java.nio.file.attribute.GroupPrincipal;
import javax.security.auth.Subject;

/* JADX INFO: renamed from: j$.nio.file.attribute.w */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2144w implements UserPrincipal {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ java.nio.file.attribute.UserPrincipal f522a;

    public /* synthetic */ C2144w(java.nio.file.attribute.UserPrincipal userPrincipal) {
        this.f522a = userPrincipal;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ UserPrincipal m606a(java.nio.file.attribute.UserPrincipal userPrincipal) {
        if (userPrincipal == null) {
            return null;
        }
        return userPrincipal instanceof C2145x ? ((C2145x) userPrincipal).f523a : userPrincipal instanceof GroupPrincipal ? new C2140s((GroupPrincipal) userPrincipal) : new C2144w(userPrincipal);
    }

    @Override // java.security.Principal
    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.attribute.UserPrincipal userPrincipal = this.f522a;
        if (obj instanceof C2144w) {
            obj = ((C2144w) obj).f522a;
        }
        return userPrincipal.equals(obj);
    }

    @Override // java.security.Principal
    public final /* synthetic */ String getName() {
        return this.f522a.getName();
    }

    @Override // java.security.Principal
    public final /* synthetic */ int hashCode() {
        return this.f522a.hashCode();
    }

    @Override // java.security.Principal
    public final /* synthetic */ boolean implies(Subject subject) {
        return this.f522a.implies(subject);
    }

    @Override // java.security.Principal
    public final /* synthetic */ String toString() {
        return this.f522a.toString();
    }
}
