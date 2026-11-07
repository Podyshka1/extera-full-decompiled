package j$.nio.file.attribute;

/* JADX INFO: renamed from: j$.nio.file.attribute.m */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2134m implements java.nio.file.attribute.FileAttributeView {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ FileAttributeView f513a;

    public final /* synthetic */ boolean equals(Object obj) {
        FileAttributeView fileAttributeView = this.f513a;
        if (obj instanceof C2134m) {
            obj = ((C2134m) obj).f513a;
        }
        return fileAttributeView.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f513a.hashCode();
    }

    @Override // java.nio.file.attribute.AttributeView
    public final /* synthetic */ String name() {
        return this.f513a.name();
    }
}
