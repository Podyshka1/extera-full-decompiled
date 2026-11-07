package j$.nio.file.attribute;

import java.io.IOException;
import java.nio.file.attribute.FileOwnerAttributeView;

/* JADX INFO: renamed from: j$.nio.file.attribute.n */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2135n implements InterfaceC2137p {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ FileOwnerAttributeView f514a;

    @Override // j$.nio.file.attribute.InterfaceC2137p
    /* JADX INFO: renamed from: b */
    public final /* synthetic */ void mo603b(UserPrincipal userPrincipal) throws IOException {
        this.f514a.setOwner(C2145x.m607a(userPrincipal));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        FileOwnerAttributeView fileOwnerAttributeView = this.f514a;
        if (obj instanceof C2135n) {
            obj = ((C2135n) obj).f514a;
        }
        return fileOwnerAttributeView.equals(obj);
    }

    @Override // j$.nio.file.attribute.InterfaceC2137p
    public final /* synthetic */ UserPrincipal getOwner() {
        return C2144w.m606a(this.f514a.getOwner());
    }

    public final /* synthetic */ int hashCode() {
        return this.f514a.hashCode();
    }

    @Override // j$.nio.file.attribute.InterfaceC2123b
    public final /* synthetic */ String name() {
        return this.f514a.name();
    }
}
