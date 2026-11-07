package j$.nio.file.attribute;

import j$.desugar.sun.nio.fs.AbstractC2248g;

/* JADX INFO: renamed from: j$.nio.file.attribute.d */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2265d implements java.nio.file.attribute.BasicFileAttributeView {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ BasicFileAttributeView f505a;

    public /* synthetic */ C2265d(BasicFileAttributeView basicFileAttributeView) {
        this.f505a = basicFileAttributeView;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        BasicFileAttributeView basicFileAttributeView = this.f505a;
        if (obj instanceof C2265d) {
            obj = ((C2265d) obj).f505a;
        }
        return basicFileAttributeView.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f505a.hashCode();
    }

    @Override // java.nio.file.attribute.BasicFileAttributeView, java.nio.file.attribute.AttributeView
    public final /* synthetic */ String name() {
        return this.f505a.name();
    }

    @Override // java.nio.file.attribute.BasicFileAttributeView
    public final /* synthetic */ java.nio.file.attribute.BasicFileAttributes readAttributes() {
        return C2267f.m629a(this.f505a.readAttributes());
    }

    @Override // java.nio.file.attribute.BasicFileAttributeView
    public final /* synthetic */ void setTimes(java.nio.file.attribute.FileTime fileTime, java.nio.file.attribute.FileTime fileTime2, java.nio.file.attribute.FileTime fileTime3) {
        this.f505a.mo526a(AbstractC2248g.m530c(fileTime), AbstractC2248g.m530c(fileTime2), AbstractC2248g.m530c(fileTime3));
    }
}
