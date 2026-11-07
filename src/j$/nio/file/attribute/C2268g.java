package j$.nio.file.attribute;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import java.io.IOException;
import java.nio.file.attribute.DosFileAttributeView;

/* JADX INFO: renamed from: j$.nio.file.attribute.g */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2268g implements BasicFileAttributeView {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ DosFileAttributeView f508a;

    public /* synthetic */ C2268g(DosFileAttributeView dosFileAttributeView) {
        this.f508a = dosFileAttributeView;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributeView
    /* JADX INFO: renamed from: a */
    public final /* synthetic */ void mo526a(FileTime fileTime, FileTime fileTime2, FileTime fileTime3) throws IOException {
        this.f508a.setTimes(AbstractC2248g.m532e(fileTime), AbstractC2248g.m532e(fileTime2), AbstractC2248g.m532e(fileTime3));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        DosFileAttributeView dosFileAttributeView = this.f508a;
        if (obj instanceof C2268g) {
            obj = ((C2268g) obj).f508a;
        }
        return dosFileAttributeView.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f508a.hashCode();
    }

    @Override // j$.nio.file.attribute.InterfaceC2263b
    public final /* synthetic */ String name() {
        return this.f508a.name();
    }

    @Override // j$.nio.file.attribute.BasicFileAttributeView
    public final /* synthetic */ BasicFileAttributes readAttributes() {
        return C2266e.m628a(this.f508a.readAttributes());
    }
}
