package j$.nio.file.attribute;

import java.nio.file.attribute.FileStoreAttributeView;

/* JADX INFO: renamed from: j$.nio.file.attribute.q */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2278q implements InterfaceC2263b {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ FileStoreAttributeView f517a;

    public final /* synthetic */ boolean equals(Object obj) {
        FileStoreAttributeView fileStoreAttributeView = this.f517a;
        if (obj instanceof C2278q) {
            obj = ((C2278q) obj).f517a;
        }
        return fileStoreAttributeView.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f517a.hashCode();
    }

    @Override // j$.nio.file.attribute.InterfaceC2263b
    public final /* synthetic */ String name() {
        throw null;
    }
}
