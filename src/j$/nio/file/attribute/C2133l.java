package j$.nio.file.attribute;

/* JADX INFO: renamed from: j$.nio.file.attribute.l */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2133l implements FileAttributeView {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ java.nio.file.attribute.FileAttributeView f512a;

    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.attribute.FileAttributeView fileAttributeView = this.f512a;
        if (obj instanceof C2133l) {
            obj = ((C2133l) obj).f512a;
        }
        return fileAttributeView.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f512a.hashCode();
    }

    @Override // j$.nio.file.attribute.InterfaceC2123b
    public final /* synthetic */ String name() {
        return this.f512a.name();
    }
}
