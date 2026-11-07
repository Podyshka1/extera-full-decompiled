package j$.nio.file.attribute;

import java.nio.file.attribute.FileOwnerAttributeView;

/* JADX INFO: renamed from: j$.nio.file.attribute.o */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2276o implements FileOwnerAttributeView {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InterfaceC2277p f516a;

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC2277p interfaceC2277p = this.f516a;
        if (obj instanceof C2276o) {
            obj = ((C2276o) obj).f516a;
        }
        return interfaceC2277p.equals(obj);
    }

    @Override // java.nio.file.attribute.FileOwnerAttributeView
    public final /* synthetic */ java.nio.file.attribute.UserPrincipal getOwner() {
        return C2285x.m631a(this.f516a.getOwner());
    }

    public final /* synthetic */ int hashCode() {
        return this.f516a.hashCode();
    }

    @Override // java.nio.file.attribute.FileOwnerAttributeView, java.nio.file.attribute.AttributeView
    public final /* synthetic */ String name() {
        return this.f516a.name();
    }

    @Override // java.nio.file.attribute.FileOwnerAttributeView
    public final /* synthetic */ void setOwner(java.nio.file.attribute.UserPrincipal userPrincipal) {
        this.f516a.mo627b(C2284w.m630a(userPrincipal));
    }
}
