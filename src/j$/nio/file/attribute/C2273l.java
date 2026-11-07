package j$.nio.file.attribute;

/* JADX INFO: renamed from: j$.nio.file.attribute.l */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2273l implements FileAttributeView {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ java.nio.file.attribute.FileAttributeView f513a;

    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.attribute.FileAttributeView fileAttributeView = this.f513a;
        if (obj instanceof C2273l) {
            obj = ((C2273l) obj).f513a;
        }
        return fileAttributeView.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f513a.hashCode();
    }

    @Override // j$.nio.file.attribute.InterfaceC2263b
    public final /* synthetic */ String name() {
        return this.f513a.name();
    }
}
