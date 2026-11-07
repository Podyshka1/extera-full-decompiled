package j$.nio.file.attribute;

/* JADX INFO: renamed from: j$.nio.file.attribute.m */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2274m implements java.nio.file.attribute.FileAttributeView {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ FileAttributeView f514a;

    public final /* synthetic */ boolean equals(Object obj) {
        FileAttributeView fileAttributeView = this.f514a;
        if (obj instanceof C2274m) {
            obj = ((C2274m) obj).f514a;
        }
        return fileAttributeView.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f514a.hashCode();
    }

    @Override // java.nio.file.attribute.AttributeView
    public final /* synthetic */ String name() {
        return this.f514a.name();
    }
}
