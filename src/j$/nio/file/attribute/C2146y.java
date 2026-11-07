package j$.nio.file.attribute;

import java.nio.file.attribute.UserPrincipalLookupService;

/* JADX INFO: renamed from: j$.nio.file.attribute.y */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2146y {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ UserPrincipalLookupService f524a;

    public C2146y(UserPrincipalLookupService userPrincipalLookupService) {
        this.f524a = userPrincipalLookupService;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        UserPrincipalLookupService userPrincipalLookupService = this.f524a;
        if (obj instanceof C2146y) {
            obj = ((C2146y) obj).f524a;
        }
        return userPrincipalLookupService.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f524a.hashCode();
    }
}
