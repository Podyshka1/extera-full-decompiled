package j$.desugar.sun.nio.fs;

import j$.nio.file.attribute.BasicFileAttributes;
import j$.nio.file.attribute.FileTime;

/* JADX INFO: renamed from: j$.desugar.sun.nio.fs.c */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2244c implements BasicFileAttributes {

    /* JADX INFO: renamed from: a */
    public final FileTime f443a;

    /* JADX INFO: renamed from: b */
    public final FileTime f444b;

    /* JADX INFO: renamed from: c */
    public final FileTime f445c;

    /* JADX INFO: renamed from: d */
    public final boolean f446d;

    /* JADX INFO: renamed from: e */
    public final boolean f447e;

    /* JADX INFO: renamed from: f */
    public final boolean f448f;

    /* JADX INFO: renamed from: g */
    public final boolean f449g;

    /* JADX INFO: renamed from: h */
    public final long f450h;

    /* JADX INFO: renamed from: i */
    public final Object f451i;

    public C2244c(FileTime fileTime, FileTime fileTime2, FileTime fileTime3, boolean z, boolean z2, boolean z3, boolean z4, long j, Object obj) {
        this.f443a = fileTime;
        this.f444b = fileTime2;
        this.f445c = fileTime3;
        this.f446d = z;
        this.f447e = z2;
        this.f448f = z3;
        this.f449g = z4;
        this.f450h = j;
        this.f451i = obj;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final FileTime creationTime() {
        return this.f445c;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final Object fileKey() {
        return this.f451i;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final boolean isDirectory() {
        return this.f447e;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final boolean isOther() {
        return this.f449g;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final boolean isRegularFile() {
        return this.f446d;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final boolean isSymbolicLink() {
        return this.f448f;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final FileTime lastAccessTime() {
        return this.f444b;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final FileTime lastModifiedTime() {
        return this.f443a;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final long size() {
        return this.f450h;
    }
}
