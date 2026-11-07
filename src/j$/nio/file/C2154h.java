package j$.nio.file;

import j$.nio.file.attribute.AbstractC2147z;
import j$.nio.file.attribute.C2146y;
import j$.nio.file.spi.AbstractC2169d;
import j$.nio.file.spi.C2167b;
import j$.nio.file.spi.C2168c;
import java.nio.file.PathMatcher;
import java.nio.file.WatchService;
import java.nio.file.attribute.UserPrincipalLookupService;
import java.nio.file.spi.FileSystemProvider;
import java.util.Set;

/* JADX INFO: renamed from: j$.nio.file.h */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2154h extends java.nio.file.FileSystem {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ FileSystem f537a;

    public /* synthetic */ C2154h(FileSystem fileSystem) {
        this.f537a = fileSystem;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ java.nio.file.FileSystem m621a(FileSystem fileSystem) {
        if (fileSystem == null) {
            return null;
        }
        return fileSystem instanceof C2153g ? ((C2153g) fileSystem).f536a : new C2154h(fileSystem);
    }

    @Override // java.nio.file.FileSystem, java.io.Closeable, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f537a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        FileSystem fileSystem = this.f537a;
        if (obj instanceof C2154h) {
            obj = ((C2154h) obj).f537a;
        }
        return fileSystem.equals(obj);
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ Iterable getFileStores() {
        return this.f537a.mo534a();
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ java.nio.file.Path getPath(String str, String[] strArr) {
        return C2176z.m636s(this.f537a.getPath(str, strArr));
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ PathMatcher getPathMatcher(String str) {
        g0 g0VarMo535b = this.f537a.mo535b(str);
        if (g0VarMo535b == null) {
            return null;
        }
        return g0VarMo535b instanceof e0 ? ((e0) g0VarMo535b).f532a : new f0(g0VarMo535b);
    }

    @Override // java.nio.file.FileSystem
    public final Iterable getRootDirectories() {
        return new c0(this.f537a.mo536c());
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ String getSeparator() {
        return this.f537a.getSeparator();
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ UserPrincipalLookupService getUserPrincipalLookupService() {
        C2146y c2146yMo537d = this.f537a.mo537d();
        int i = AbstractC2147z.f525a;
        if (c2146yMo537d == null) {
            return null;
        }
        return c2146yMo537d.f524a;
    }

    public final /* synthetic */ int hashCode() {
        return this.f537a.hashCode();
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ boolean isOpen() {
        return this.f537a.isOpen();
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ boolean isReadOnly() {
        return this.f537a.mo538e();
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ WatchService newWatchService() {
        q0 q0VarMo539f = this.f537a.mo539f();
        if (q0VarMo539f == null) {
            return null;
        }
        return q0VarMo539f.f573a;
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ FileSystemProvider provider() {
        AbstractC2169d abstractC2169dMo540g = this.f537a.mo540g();
        int i = C2168c.f579b;
        if (abstractC2169dMo540g == null) {
            return null;
        }
        return abstractC2169dMo540g instanceof C2167b ? ((C2167b) abstractC2169dMo540g).f578e : new C2168c(abstractC2169dMo540g);
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ Set supportedFileAttributeViews() {
        return this.f537a.mo541h();
    }
}
