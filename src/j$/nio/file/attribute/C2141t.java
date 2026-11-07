package j$.nio.file.attribute;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import java.io.IOException;
import java.nio.file.attribute.PosixFileAttributeView;

/* JADX INFO: renamed from: j$.nio.file.attribute.t */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2141t implements BasicFileAttributeView, InterfaceC2137p {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ PosixFileAttributeView f519a;

    public /* synthetic */ C2141t(PosixFileAttributeView posixFileAttributeView) {
        this.f519a = posixFileAttributeView;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributeView
    /* JADX INFO: renamed from: a */
    public final /* synthetic */ void mo502a(FileTime fileTime, FileTime fileTime2, FileTime fileTime3) throws IOException {
        this.f519a.setTimes(AbstractC2108g.m508e(fileTime), AbstractC2108g.m508e(fileTime2), AbstractC2108g.m508e(fileTime3));
    }

    @Override // j$.nio.file.attribute.InterfaceC2137p
    /* JADX INFO: renamed from: b */
    public final /* synthetic */ void mo603b(UserPrincipal userPrincipal) throws IOException {
        this.f519a.setOwner(C2145x.m607a(userPrincipal));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PosixFileAttributeView posixFileAttributeView = this.f519a;
        if (obj instanceof C2141t) {
            obj = ((C2141t) obj).f519a;
        }
        return posixFileAttributeView.equals(obj);
    }

    @Override // j$.nio.file.attribute.InterfaceC2137p
    public final /* synthetic */ UserPrincipal getOwner() {
        return C2144w.m606a(this.f519a.getOwner());
    }

    public final /* synthetic */ int hashCode() {
        return this.f519a.hashCode();
    }

    @Override // j$.nio.file.attribute.InterfaceC2123b
    public final /* synthetic */ String name() {
        return this.f519a.name();
    }

    @Override // j$.nio.file.attribute.BasicFileAttributeView
    public final /* synthetic */ BasicFileAttributes readAttributes() {
        return C2126e.m604a(this.f519a.readAttributes());
    }
}
