package j$.nio.file.attribute;

/* JADX INFO: renamed from: j$.nio.file.attribute.i */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2270i implements FileAttribute {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ java.nio.file.attribute.FileAttribute f510a;

    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.attribute.FileAttribute fileAttribute = this.f510a;
        if (obj instanceof C2270i) {
            obj = ((C2270i) obj).f510a;
        }
        return fileAttribute.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f510a.hashCode();
    }

    @Override // j$.nio.file.attribute.FileAttribute
    public final /* synthetic */ String name() {
        return this.f510a.name();
    }

    @Override // j$.nio.file.attribute.FileAttribute
    public final /* synthetic */ Object value() {
        return this.f510a.value();
    }
}
