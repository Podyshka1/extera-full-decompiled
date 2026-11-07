package j$.nio.file.attribute;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import java.nio.file.attribute.DosFileAttributes;
import java.nio.file.attribute.PosixFileAttributes;

/* JADX INFO: renamed from: j$.nio.file.attribute.e */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2126e implements BasicFileAttributes {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ java.nio.file.attribute.BasicFileAttributes f505a;

    public /* synthetic */ C2126e(java.nio.file.attribute.BasicFileAttributes basicFileAttributes) {
        this.f505a = basicFileAttributes;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ BasicFileAttributes m604a(java.nio.file.attribute.BasicFileAttributes basicFileAttributes) {
        if (basicFileAttributes == null) {
            return null;
        }
        return basicFileAttributes instanceof C2127f ? ((C2127f) basicFileAttributes).f506a : basicFileAttributes instanceof DosFileAttributes ? new C2129h((DosFileAttributes) basicFileAttributes) : basicFileAttributes instanceof PosixFileAttributes ? new C2142u((PosixFileAttributes) basicFileAttributes) : new C2126e(basicFileAttributes);
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ FileTime creationTime() {
        return AbstractC2108g.m506c(this.f505a.creationTime());
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.attribute.BasicFileAttributes basicFileAttributes = this.f505a;
        if (obj instanceof C2126e) {
            obj = ((C2126e) obj).f505a;
        }
        return basicFileAttributes.equals(obj);
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ Object fileKey() {
        return this.f505a.fileKey();
    }

    public final /* synthetic */ int hashCode() {
        return this.f505a.hashCode();
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ boolean isDirectory() {
        return this.f505a.isDirectory();
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ boolean isOther() {
        return this.f505a.isOther();
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ boolean isRegularFile() {
        return this.f505a.isRegularFile();
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ boolean isSymbolicLink() {
        return this.f505a.isSymbolicLink();
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ FileTime lastAccessTime() {
        return AbstractC2108g.m506c(this.f505a.lastAccessTime());
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ FileTime lastModifiedTime() {
        return AbstractC2108g.m506c(this.f505a.lastModifiedTime());
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final /* synthetic */ long size() {
        return this.f505a.size();
    }
}
