package j$.nio.file.attribute;

import j$.desugar.sun.nio.fs.AbstractC2248g;

/* JADX INFO: renamed from: j$.nio.file.attribute.f */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2267f implements java.nio.file.attribute.BasicFileAttributes {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ BasicFileAttributes f507a;

    public /* synthetic */ C2267f(BasicFileAttributes basicFileAttributes) {
        this.f507a = basicFileAttributes;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ java.nio.file.attribute.BasicFileAttributes m629a(BasicFileAttributes basicFileAttributes) {
        if (basicFileAttributes == null) {
            return null;
        }
        return basicFileAttributes instanceof C2266e ? ((C2266e) basicFileAttributes).f506a : basicFileAttributes instanceof C2269h ? ((C2269h) basicFileAttributes).f509a : basicFileAttributes instanceof C2282u ? ((C2282u) basicFileAttributes).f521a : new C2267f(basicFileAttributes);
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ java.nio.file.attribute.FileTime creationTime() {
        return AbstractC2248g.m532e(this.f507a.creationTime());
    }

    public final /* synthetic */ boolean equals(Object obj) {
        BasicFileAttributes basicFileAttributes = this.f507a;
        if (obj instanceof C2267f) {
            obj = ((C2267f) obj).f507a;
        }
        return basicFileAttributes.equals(obj);
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ Object fileKey() {
        return this.f507a.fileKey();
    }

    public final /* synthetic */ int hashCode() {
        return this.f507a.hashCode();
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ boolean isDirectory() {
        return this.f507a.isDirectory();
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ boolean isOther() {
        return this.f507a.isOther();
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ boolean isRegularFile() {
        return this.f507a.isRegularFile();
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ boolean isSymbolicLink() {
        return this.f507a.isSymbolicLink();
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ java.nio.file.attribute.FileTime lastAccessTime() {
        return AbstractC2248g.m532e(this.f507a.lastAccessTime());
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ java.nio.file.attribute.FileTime lastModifiedTime() {
        return AbstractC2248g.m532e(this.f507a.lastModifiedTime());
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ long size() {
        return this.f507a.size();
    }
}
