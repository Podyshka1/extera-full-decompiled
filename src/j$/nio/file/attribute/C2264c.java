package j$.nio.file.attribute;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import java.io.IOException;

/* JADX INFO: renamed from: j$.nio.file.attribute.c */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2264c implements BasicFileAttributeView {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ java.nio.file.attribute.BasicFileAttributeView f504a;

    public /* synthetic */ C2264c(java.nio.file.attribute.BasicFileAttributeView basicFileAttributeView) {
        this.f504a = basicFileAttributeView;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributeView
    /* JADX INFO: renamed from: a */
    public final /* synthetic */ void mo526a(FileTime fileTime, FileTime fileTime2, FileTime fileTime3) throws IOException {
        this.f504a.setTimes(AbstractC2248g.m532e(fileTime), AbstractC2248g.m532e(fileTime2), AbstractC2248g.m532e(fileTime3));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.attribute.BasicFileAttributeView basicFileAttributeView = this.f504a;
        if (obj instanceof C2264c) {
            obj = ((C2264c) obj).f504a;
        }
        return basicFileAttributeView.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f504a.hashCode();
    }

    @Override // j$.nio.file.attribute.InterfaceC2263b
    public final /* synthetic */ String name() {
        return this.f504a.name();
    }

    @Override // j$.nio.file.attribute.BasicFileAttributeView
    public final /* synthetic */ BasicFileAttributes readAttributes() {
        return C2266e.m628a(this.f504a.readAttributes());
    }
}
