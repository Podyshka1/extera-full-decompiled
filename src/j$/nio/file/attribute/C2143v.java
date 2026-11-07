package j$.nio.file.attribute;

import java.nio.file.attribute.UserDefinedFileAttributeView;

/* JADX INFO: renamed from: j$.nio.file.attribute.v */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2143v implements FileAttributeView {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ UserDefinedFileAttributeView f521a;

    public final /* synthetic */ boolean equals(Object obj) {
        UserDefinedFileAttributeView userDefinedFileAttributeView = this.f521a;
        if (obj instanceof C2143v) {
            obj = ((C2143v) obj).f521a;
        }
        return userDefinedFileAttributeView.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f521a.hashCode();
    }

    @Override // j$.nio.file.attribute.InterfaceC2123b
    public final /* synthetic */ String name() {
        return this.f521a.name();
    }
}
