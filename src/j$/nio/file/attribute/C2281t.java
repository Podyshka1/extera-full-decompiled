package j$.nio.file.attribute;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import java.io.IOException;
import java.nio.file.attribute.PosixFileAttributeView;

/* JADX INFO: renamed from: j$.nio.file.attribute.t */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2281t implements BasicFileAttributeView, InterfaceC2277p {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ PosixFileAttributeView f520a;

    public /* synthetic */ C2281t(PosixFileAttributeView posixFileAttributeView) {
        this.f520a = posixFileAttributeView;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributeView
    /* JADX INFO: renamed from: a */
    public final /* synthetic */ void mo526a(FileTime fileTime, FileTime fileTime2, FileTime fileTime3) throws IOException {
        this.f520a.setTimes(AbstractC2248g.m532e(fileTime), AbstractC2248g.m532e(fileTime2), AbstractC2248g.m532e(fileTime3));
    }

    @Override // j$.nio.file.attribute.InterfaceC2277p
    /* JADX INFO: renamed from: b */
    public final /* synthetic */ void mo627b(UserPrincipal userPrincipal) throws IOException {
        this.f520a.setOwner(C2285x.m631a(userPrincipal));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PosixFileAttributeView posixFileAttributeView = this.f520a;
        if (obj instanceof C2281t) {
            obj = ((C2281t) obj).f520a;
        }
        return posixFileAttributeView.equals(obj);
    }

    @Override // j$.nio.file.attribute.InterfaceC2277p
    public final /* synthetic */ UserPrincipal getOwner() {
        return C2284w.m630a(this.f520a.getOwner());
    }

    public final /* synthetic */ int hashCode() {
        return this.f520a.hashCode();
    }

    @Override // j$.nio.file.attribute.InterfaceC2263b
    public final /* synthetic */ String name() {
        return this.f520a.name();
    }

    @Override // j$.nio.file.attribute.BasicFileAttributeView
    public final /* synthetic */ BasicFileAttributes readAttributes() {
        return C2266e.m628a(this.f520a.readAttributes());
    }
}
