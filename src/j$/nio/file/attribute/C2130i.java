package j$.nio.file.attribute;

/* JADX INFO: renamed from: j$.nio.file.attribute.i */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2130i implements FileAttribute {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ java.nio.file.attribute.FileAttribute f509a;

    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.attribute.FileAttribute fileAttribute = this.f509a;
        if (obj instanceof C2130i) {
            obj = ((C2130i) obj).f509a;
        }
        return fileAttribute.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f509a.hashCode();
    }

    @Override // j$.nio.file.attribute.FileAttribute
    public final /* synthetic */ String name() {
        return this.f509a.name();
    }

    @Override // j$.nio.file.attribute.FileAttribute
    public final /* synthetic */ Object value() {
        return this.f509a.value();
    }
}
