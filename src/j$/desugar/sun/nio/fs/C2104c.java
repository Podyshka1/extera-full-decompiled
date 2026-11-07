package j$.desugar.sun.nio.fs;

import j$.nio.file.attribute.BasicFileAttributes;
import j$.nio.file.attribute.FileTime;

/* JADX INFO: renamed from: j$.desugar.sun.nio.fs.c */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2104c implements BasicFileAttributes {

    /* JADX INFO: renamed from: a */
    public final FileTime f442a;

    /* JADX INFO: renamed from: b */
    public final FileTime f443b;

    /* JADX INFO: renamed from: c */
    public final FileTime f444c;

    /* JADX INFO: renamed from: d */
    public final boolean f445d;

    /* JADX INFO: renamed from: e */
    public final boolean f446e;

    /* JADX INFO: renamed from: f */
    public final boolean f447f;

    /* JADX INFO: renamed from: g */
    public final boolean f448g;

    /* JADX INFO: renamed from: h */
    public final long f449h;

    /* JADX INFO: renamed from: i */
    public final Object f450i;

    public C2104c(FileTime fileTime, FileTime fileTime2, FileTime fileTime3, boolean z, boolean z2, boolean z3, boolean z4, long j, Object obj) {
        this.f442a = fileTime;
        this.f443b = fileTime2;
        this.f444c = fileTime3;
        this.f445d = z;
        this.f446e = z2;
        this.f447f = z3;
        this.f448g = z4;
        this.f449h = j;
        this.f450i = obj;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final FileTime creationTime() {
        return this.f444c;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final Object fileKey() {
        return this.f450i;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final boolean isDirectory() {
        return this.f446e;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final boolean isOther() {
        return this.f448g;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final boolean isRegularFile() {
        return this.f445d;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final boolean isSymbolicLink() {
        return this.f447f;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final FileTime lastAccessTime() {
        return this.f443b;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final FileTime lastModifiedTime() {
        return this.f442a;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributes
    public final long size() {
        return this.f449h;
    }
}
