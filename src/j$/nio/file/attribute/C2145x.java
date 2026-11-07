package j$.nio.file.attribute;

import javax.security.auth.Subject;

/* JADX INFO: renamed from: j$.nio.file.attribute.x */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2145x implements java.nio.file.attribute.UserPrincipal {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ UserPrincipal f523a;

    public /* synthetic */ C2145x(UserPrincipal userPrincipal) {
        this.f523a = userPrincipal;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ java.nio.file.attribute.UserPrincipal m607a(UserPrincipal userPrincipal) {
        if (userPrincipal == null) {
            return null;
        }
        return userPrincipal instanceof C2144w ? ((C2144w) userPrincipal).f522a : userPrincipal instanceof C2140s ? ((C2140s) userPrincipal).f518a : new C2145x(userPrincipal);
    }

    @Override // java.security.Principal
    public final /* synthetic */ boolean equals(Object obj) {
        UserPrincipal userPrincipal = this.f523a;
        if (obj instanceof C2145x) {
            obj = ((C2145x) obj).f523a;
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
