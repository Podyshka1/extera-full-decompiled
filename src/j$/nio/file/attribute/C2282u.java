package j$.nio.file.attribute;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import java.nio.file.attribute.PosixFileAttributes;

/* JADX INFO: renamed from: j$.nio.file.attribute.u */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2282u implements BasicFileAttributes {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ PosixFileAttributes f521a;

    public /* synthetic */ C2282u(PosixFileAttributes posixFileAttributes) {
        this.f521a = posixFileAttributes;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ FileTime creationTime() {
        return AbstractC2248g.m530c(this.f521a.creationTime());
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PosixFileAttributes posixFileAttributes = this.f521a;
        if (obj instanceof C2282u) {
            obj = ((C2282u) obj).f521a;
        }
        return posixFileAttributes.equals(obj);
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ Object fileKey() {
        return this.f521a.fileKey();
    }

    public final /* synthetic */ int hashCode() {
        return this.f521a.hashCode();
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ boolean isDirectory() {
        return this.f521a.isDirectory();
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ boolean isOther() {
        return this.f521a.isOther();
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ boolean isRegularFile() {
        return this.f521a.isRegularFile();
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ boolean isSymbolicLink() {
        return this.f521a.isSymbolicLink();
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ FileTime lastAccessTime() {
        return AbstractC2248g.m530c(this.f521a.lastAccessTime());
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ FileTime lastModifiedTime() {
        return AbstractC2248g.m530c(this.f521a.lastModifiedTime());
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ long size() {
        return this.f521a.size();
    }
}
