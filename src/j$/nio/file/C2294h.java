package j$.nio.file;

import j$.nio.file.attribute.AbstractC2287z;
import j$.nio.file.attribute.C2286y;
import j$.nio.file.spi.AbstractC2309d;
import j$.nio.file.spi.C2307b;
import j$.nio.file.spi.C2308c;
import java.nio.file.PathMatcher;
import java.nio.file.WatchService;
import java.nio.file.attribute.UserPrincipalLookupService;
import java.nio.file.spi.FileSystemProvider;
import java.util.Set;

/* JADX INFO: renamed from: j$.nio.file.h */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2294h extends java.nio.file.FileSystem {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ FileSystem f538a;

    public /* synthetic */ C2294h(FileSystem fileSystem) {
        this.f538a = fileSystem;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ java.nio.file.FileSystem m645a(FileSystem fileSystem) {
        if (fileSystem == null) {
            return null;
        }
        return fileSystem instanceof C2293g ? ((C2293g) fileSystem).f537a : new C2294h(fileSystem);
    }

    @Override // java.nio.file.FileSystem, java.io.Closeable, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f538a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        FileSystem fileSystem = this.f538a;
        if (obj instanceof C2294h) {
            obj = ((C2294h) obj).f538a;
        }
        return fileSystem.equals(obj);
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ Iterable getFileStores() {
        return this.f538a.mo558a();
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ java.nio.file.Path getPath(String str, String[] strArr) {
        return C2316z.m660s(this.f538a.getPath(str, strArr));
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ PathMatcher getPathMatcher(String str) {
        g0 g0VarMo559b = this.f538a.mo559b(str);
        if (g0VarMo559b == null) {
            return null;
        }
        return g0VarMo559b instanceof e0 ? ((e0) g0VarMo559b).f533a : new f0(g0VarMo559b);
    }

    @Override // java.nio.file.FileSystem
    public final Iterable getRootDirectories() {
        return new c0(this.f538a.mo560c());
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ String getSeparator() {
        return this.f538a.getSeparator();
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ UserPrincipalLookupService getUserPrincipalLookupService() {
        C2286y c2286yMo561d = this.f538a.mo561d();
        int i = AbstractC2287z.f526a;
        if (c2286yMo561d == null) {
            return null;
        }
        return c2286yMo561d.f525a;
    }

    public final /* synthetic */ int hashCode() {
        return this.f538a.hashCode();
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ boolean isOpen() {
        return this.f538a.isOpen();
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ boolean isReadOnly() {
        return this.f538a.mo562e();
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ WatchService newWatchService() {
        q0 q0VarMo563f = this.f538a.mo563f();
        if (q0VarMo563f == null) {
            return null;
        }
        return q0VarMo563f.f574a;
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ FileSystemProvider provider() {
        AbstractC2309d abstractC2309dMo564g = this.f538a.mo564g();
        int i = C2308c.f580b;
        if (abstractC2309dMo564g == null) {
            return null;
        }
        return abstractC2309dMo564g instanceof C2307b ? ((C2307b) abstractC2309dMo564g).f579e : new C2308c(abstractC2309dMo564g);
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ Set supportedFileAttributeViews() {
        return this.f538a.mo565h();
    }
}
