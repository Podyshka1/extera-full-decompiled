package j$.nio.file.attribute;

import j$.desugar.sun.nio.fs.AbstractC2108g;

/* JADX INFO: renamed from: j$.nio.file.attribute.d */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2125d implements java.nio.file.attribute.BasicFileAttributeView {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ BasicFileAttributeView f504a;

    public /* synthetic */ C2125d(BasicFileAttributeView basicFileAttributeView) {
        this.f504a = basicFileAttributeView;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        BasicFileAttributeView basicFileAttributeView = this.f504a;
        if (obj instanceof C2125d) {
            obj = ((C2125d) obj).f504a;
        }
        return basicFileAttributeView.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f504a.hashCode();
    }

    @Override // java.nio.file.attribute.BasicFileAttributeView, java.nio.file.attribute.AttributeView
    public final /* synthetic */ String name() {
        return this.f504a.name();
    }

    @Override // java.nio.file.attribute.BasicFileAttributeView
    public final /* synthetic */ java.nio.file.attribute.BasicFileAttributes readAttributes() {
        return C2127f.m605a(this.f504a.readAttributes());
    }

    @Override // java.nio.file.attribute.BasicFileAttributeView
    public final /* synthetic */ void setTimes(java.nio.file.attribute.FileTime fileTime, java.nio.file.attribute.FileTime fileTime2, java.nio.file.attribute.FileTime fileTime3) {
        this.f504a.mo502a(AbstractC2108g.m506c(fileTime), AbstractC2108g.m506c(fileTime2), AbstractC2108g.m506c(fileTime3));
    }
}
