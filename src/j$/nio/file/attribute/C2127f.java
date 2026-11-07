package j$.nio.file.attribute;

import j$.desugar.sun.nio.fs.AbstractC2108g;

/* JADX INFO: renamed from: j$.nio.file.attribute.f */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2127f implements java.nio.file.attribute.BasicFileAttributes {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ BasicFileAttributes f506a;

    public /* synthetic */ C2127f(BasicFileAttributes basicFileAttributes) {
        this.f506a = basicFileAttributes;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ java.nio.file.attribute.BasicFileAttributes m605a(BasicFileAttributes basicFileAttributes) {
        if (basicFileAttributes == null) {
            return null;
        }
        return basicFileAttributes instanceof C2126e ? ((C2126e) basicFileAttributes).f505a : basicFileAttributes instanceof C2129h ? ((C2129h) basicFileAttributes).f508a : basicFileAttributes instanceof C2142u ? ((C2142u) basicFileAttributes).f520a : new C2127f(basicFileAttributes);
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ java.nio.file.attribute.FileTime creationTime() {
        return AbstractC2108g.m508e(this.f506a.creationTime());
    }

    public final /* synthetic */ boolean equals(Object obj) {
        BasicFileAttributes basicFileAttributes = this.f506a;
        if (obj instanceof C2127f) {
            obj = ((C2127f) obj).f506a;
        }
        return basicFileAttributes.equals(obj);
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ Object fileKey() {
        return this.f506a.fileKey();
    }

    public final /* synthetic */ int hashCode() {
        return this.f506a.hashCode();
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ boolean isDirectory() {
        return this.f506a.isDirectory();
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ boolean isOther() {
        return this.f506a.isOther();
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ boolean isRegularFile() {
        return this.f506a.isRegularFile();
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ boolean isSymbolicLink() {
        return this.f506a.isSymbolicLink();
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ java.nio.file.attribute.FileTime lastAccessTime() {
        return AbstractC2108g.m508e(this.f506a.lastAccessTime());
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ java.nio.file.attribute.FileTime lastModifiedTime() {
        return AbstractC2108g.m508e(this.f506a.lastModifiedTime());
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ long size() {
        return this.f506a.size();
    }
}
