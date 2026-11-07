package j$.nio.file.attribute;

/* JADX INFO: renamed from: j$.nio.file.attribute.j */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2131j implements java.nio.file.attribute.FileAttribute {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ FileAttribute f510a;

    public final /* synthetic */ boolean equals(Object obj) {
        FileAttribute fileAttribute = this.f510a;
        if (obj instanceof C2131j) {
            obj = ((C2131j) obj).f510a;
        }
        return fileAttribute.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f510a.hashCode();
    }

    @Override // java.nio.file.attribute.FileAttribute
    public final /* synthetic */ String name() {
        return this.f510a.name();
    }

    @Override // java.nio.file.attribute.FileAttribute
    public final /* synthetic */ Object value() {
        return this.f510a.value();
    }
}
