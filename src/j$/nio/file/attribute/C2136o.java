package j$.nio.file.attribute;

import java.nio.file.attribute.FileOwnerAttributeView;

/* JADX INFO: renamed from: j$.nio.file.attribute.o */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2136o implements FileOwnerAttributeView {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InterfaceC2137p f515a;

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC2137p interfaceC2137p = this.f515a;
        if (obj instanceof C2136o) {
            obj = ((C2136o) obj).f515a;
        }
        return interfaceC2137p.equals(obj);
    }

    @Override // java.nio.file.attribute.FileOwnerAttributeView
    public final /* synthetic */ java.nio.file.attribute.UserPrincipal getOwner() {
        return C2145x.m607a(this.f515a.getOwner());
    }

    public final /* synthetic */ int hashCode() {
        return this.f515a.hashCode();
    }

    @Override // java.nio.file.attribute.FileOwnerAttributeView, java.nio.file.attribute.AttributeView
    public final /* synthetic */ String name() {
        return this.f515a.name();
    }

    @Override // java.nio.file.attribute.FileOwnerAttributeView
    public final /* synthetic */ void setOwner(java.nio.file.attribute.UserPrincipal userPrincipal) {
        this.f515a.mo603b(C2144w.m606a(userPrincipal));
    }
}
