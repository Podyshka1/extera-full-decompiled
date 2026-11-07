package j$.nio.file.attribute;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import java.io.IOException;
import java.nio.file.attribute.DosFileAttributeView;

/* JADX INFO: renamed from: j$.nio.file.attribute.g */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2128g implements BasicFileAttributeView {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ DosFileAttributeView f507a;

    public /* synthetic */ C2128g(DosFileAttributeView dosFileAttributeView) {
        this.f507a = dosFileAttributeView;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributeView
    /* JADX INFO: renamed from: a */
    public final /* synthetic */ void mo502a(FileTime fileTime, FileTime fileTime2, FileTime fileTime3) throws IOException {
        this.f507a.setTimes(AbstractC2108g.m508e(fileTime), AbstractC2108g.m508e(fileTime2), AbstractC2108g.m508e(fileTime3));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        DosFileAttributeView dosFileAttributeView = this.f507a;
        if (obj instanceof C2128g) {
            obj = ((C2128g) obj).f507a;
        }
        return dosFileAttributeView.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f507a.hashCode();
    }

    @Override // j$.nio.file.attribute.InterfaceC2123b
    public final /* synthetic */ String name() {
        return this.f507a.name();
    }

    @Override // j$.nio.file.attribute.BasicFileAttributeView
    public final /* synthetic */ BasicFileAttributes readAttributes() {
        return C2126e.m604a(this.f507a.readAttributes());
    }
}
