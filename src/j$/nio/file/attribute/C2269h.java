package j$.nio.file.attribute;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import java.nio.file.attribute.DosFileAttributes;

/* JADX INFO: renamed from: j$.nio.file.attribute.h */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2269h implements BasicFileAttributes {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ DosFileAttributes f509a;

    public /* synthetic */ C2269h(DosFileAttributes dosFileAttributes) {
        this.f509a = dosFileAttributes;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ FileTime creationTime() {
        return AbstractC2248g.m530c(this.f509a.creationTime());
    }

    public final /* synthetic */ boolean equals(Object obj) {
        DosFileAttributes dosFileAttributes = this.f509a;
        if (obj instanceof C2269h) {
            obj = ((C2269h) obj).f509a;
        }
        return dosFileAttributes.equals(obj);
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ Object fileKey() {
        return this.f509a.fileKey();
    }

    public final /* synthetic */ int hashCode() {
        return this.f509a.hashCode();
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ boolean isDirectory() {
        return this.f509a.isDirectory();
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ boolean isOther() {
        return this.f509a.isOther();
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ boolean isRegularFile() {
        return this.f509a.isRegularFile();
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ boolean isSymbolicLink() {
        return this.f509a.isSymbolicLink();
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ FileTime lastAccessTime() {
        return AbstractC2248g.m530c(this.f509a.lastAccessTime());
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ FileTime lastModifiedTime() {
        return AbstractC2248g.m530c(this.f509a.lastModifiedTime());
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ long size() {
        return this.f509a.size();
    }
}
