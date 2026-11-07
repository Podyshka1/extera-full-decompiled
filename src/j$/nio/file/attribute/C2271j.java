package j$.nio.file.attribute;

/* JADX INFO: renamed from: j$.nio.file.attribute.j */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2271j implements java.nio.file.attribute.FileAttribute {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ FileAttribute f511a;

    public final /* synthetic */ boolean equals(Object obj) {
        FileAttribute fileAttribute = this.f511a;
        if (obj instanceof C2271j) {
            obj = ((C2271j) obj).f511a;
        }
        return fileAttribute.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f511a.hashCode();
    }

    @Override // java.nio.file.attribute.FileAttribute
    public final /* synthetic */ String name() {
        return this.f511a.name();
    }

    @Override // java.nio.file.attribute.FileAttribute
    public final /* synthetic */ Object value() {
        return this.f511a.value();
    }
}
