package j$.nio.file.attribute;

import java.nio.file.attribute.FileStoreAttributeView;

/* JADX INFO: renamed from: j$.nio.file.attribute.q */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2138q implements InterfaceC2123b {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ FileStoreAttributeView f516a;

    public final /* synthetic */ boolean equals(Object obj) {
        FileStoreAttributeView fileStoreAttributeView = this.f516a;
        if (obj instanceof C2138q) {
            obj = ((C2138q) obj).f516a;
        }
        return fileStoreAttributeView.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f516a.hashCode();
    }

    @Override // j$.nio.file.attribute.InterfaceC2123b
    public final /* synthetic */ String name() {
        throw null;
    }
}
