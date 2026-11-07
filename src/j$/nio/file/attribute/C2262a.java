package j$.nio.file.attribute;

import java.io.IOException;
import java.nio.file.attribute.AclFileAttributeView;

/* JADX INFO: renamed from: j$.nio.file.attribute.a */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2262a implements InterfaceC2277p {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ AclFileAttributeView f503a;

    @Override // j$.nio.file.attribute.InterfaceC2277p
    /* JADX INFO: renamed from: b */
    public final /* synthetic */ void mo627b(UserPrincipal userPrincipal) throws IOException {
        this.f503a.setOwner(C2285x.m631a(userPrincipal));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        AclFileAttributeView aclFileAttributeView = this.f503a;
        if (obj instanceof C2262a) {
            obj = ((C2262a) obj).f503a;
        }
        return aclFileAttributeView.equals(obj);
    }

    @Override // j$.nio.file.attribute.InterfaceC2277p
    public final /* synthetic */ UserPrincipal getOwner() {
        return C2284w.m630a(this.f503a.getOwner());
    }

    public final /* synthetic */ int hashCode() {
        return this.f503a.hashCode();
    }

    @Override // j$.nio.file.attribute.InterfaceC2263b
    public final /* synthetic */ String name() {
        return this.f503a.name();
    }
}
