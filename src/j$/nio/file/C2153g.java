package j$.nio.file;

import j$.nio.file.attribute.C2146y;
import j$.nio.file.spi.AbstractC2169d;
import j$.nio.file.spi.C2167b;
import j$.nio.file.spi.C2168c;
import java.io.IOException;
import java.nio.file.PathMatcher;
import java.nio.file.attribute.UserPrincipalLookupService;
import java.nio.file.spi.FileSystemProvider;
import java.util.Set;

/* JADX INFO: renamed from: j$.nio.file.g */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2153g extends FileSystem {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ java.nio.file.FileSystem f536a;

    public C2153g(java.nio.file.FileSystem fileSystem) {
        this.f536a = fileSystem;
    }

    /* JADX INFO: renamed from: i */
    public static /* synthetic */ FileSystem m620i(java.nio.file.FileSystem fileSystem) {
        if (fileSystem == null) {
            return null;
        }
        return fileSystem instanceof C2154h ? ((C2154h) fileSystem).f537a : new C2153g(fileSystem);
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Iterable mo534a() {
        return this.f536a.getFileStores();
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: b */
    public final /* synthetic */ g0 mo535b(String str) {
        PathMatcher pathMatcher = this.f536a.getPathMatcher(str);
        if (pathMatcher == null) {
            return null;
        }
        return pathMatcher instanceof f0 ? ((f0) pathMatcher).f535a : new e0(pathMatcher);
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: c */
    public final Iterable mo536c() {
        return new c0(this.f536a.getRootDirectories());
    }

    @Override // j$.nio.file.FileSystem, java.io.Closeable, java.lang.AutoCloseable
    public final /* synthetic */ void close() throws IOException {
        this.f536a.close();
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2146y mo537d() {
        UserPrincipalLookupService userPrincipalLookupService = this.f536a.getUserPrincipalLookupService();
        if (userPrincipalLookupService == null) {
            return null;
        }
        return new C2146y(userPrincipalLookupService);
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ boolean mo538e() {
        return this.f536a.isReadOnly();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.FileSystem fileSystem = this.f536a;
        if (obj instanceof C2153g) {
            obj = ((C2153g) obj).f536a;
        }
        return fileSystem.equals(obj);
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: f */
    public final /* synthetic */ q0 mo539f() {
        return q0.m629a(this.f536a.newWatchService());
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: g */
    public final /* synthetic */ AbstractC2169d mo540g() {
        FileSystemProvider fileSystemProviderProvider = this.f536a.provider();
        int i = C2167b.f577f;
        if (fileSystemProviderProvider == null) {
            return null;
        }
        return fileSystemProviderProvider instanceof C2168c ? ((C2168c) fileSystemProviderProvider).f580a : new C2167b(fileSystemProviderProvider);
    }

    @Override // j$.nio.file.FileSystem
    public final /* synthetic */ Path getPath(String str, String[] strArr) {
        return C2175y.m635s(this.f536a.getPath(str, strArr));
    }

    @Override // j$.nio.file.FileSystem
    public final /* synthetic */ String getSeparator() {
        return this.f536a.getSeparator();
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ Set mo541h() {
        return this.f536a.supportedFileAttributeViews();
    }

    public final /* synthetic */ int hashCode() {
        return this.f536a.hashCode();
    }

    @Override // j$.nio.file.FileSystem
    public final /* synthetic */ boolean isOpen() {
        return this.f536a.isOpen();
    }
}
