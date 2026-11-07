package j$.nio.file.attribute;

import java.nio.file.attribute.UserPrincipalLookupService;

/* JADX INFO: renamed from: j$.nio.file.attribute.y */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2286y {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ UserPrincipalLookupService f525a;

    public C2286y(UserPrincipalLookupService userPrincipalLookupService) {
        this.f525a = userPrincipalLookupService;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        UserPrincipalLookupService userPrincipalLookupService = this.f525a;
        if (obj instanceof C2286y) {
            obj = ((C2286y) obj).f525a;
        }
        return userPrincipalLookupService.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f525a.hashCode();
    }
}
