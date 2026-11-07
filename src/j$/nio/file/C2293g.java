package j$.nio.file;

import j$.nio.file.attribute.C2286y;
import j$.nio.file.spi.AbstractC2309d;
import j$.nio.file.spi.C2307b;
import j$.nio.file.spi.C2308c;
import java.io.IOException;
import java.nio.file.PathMatcher;
import java.nio.file.attribute.UserPrincipalLookupService;
import java.nio.file.spi.FileSystemProvider;
import java.util.Set;

/* JADX INFO: renamed from: j$.nio.file.g */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2293g extends FileSystem {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ java.nio.file.FileSystem f537a;

    public C2293g(java.nio.file.FileSystem fileSystem) {
        this.f537a = fileSystem;
    }

    /* JADX INFO: renamed from: i */
    public static /* synthetic */ FileSystem m644i(java.nio.file.FileSystem fileSystem) {
        if (fileSystem == null) {
            return null;
        }
        return fileSystem instanceof C2294h ? ((C2294h) fileSystem).f538a : new C2293g(fileSystem);
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Iterable mo558a() {
        return this.f537a.getFileStores();
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: b */
    public final /* synthetic */ g0 mo559b(String str) {
        PathMatcher pathMatcher = this.f537a.getPathMatcher(str);
        if (pathMatcher == null) {
            return null;
        }
        return pathMatcher instanceof f0 ? ((f0) pathMatcher).f536a : new e0(pathMatcher);
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: c */
    public final Iterable mo560c() {
        return new c0(this.f537a.getRootDirectories());
    }

    @Override // j$.nio.file.FileSystem, java.io.Closeable, java.lang.AutoCloseable
    public final /* synthetic */ void close() throws IOException {
        this.f537a.close();
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2286y mo561d() {
        UserPrincipalLookupService userPrincipalLookupService = this.f537a.getUserPrincipalLookupService();
        if (userPrincipalLookupService == null) {
            return null;
        }
        return new C2286y(userPrincipalLookupService);
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ boolean mo562e() {
        return this.f537a.isReadOnly();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.FileSystem fileSystem = this.f537a;
        if (obj instanceof C2293g) {
            obj = ((C2293g) obj).f537a;
        }
        return fileSystem.equals(obj);
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: f */
    public final /* synthetic */ q0 mo563f() {
        return q0.m653a(this.f537a.newWatchService());
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: g */
    public final /* synthetic */ AbstractC2309d mo564g() {
        FileSystemProvider fileSystemProviderProvider = this.f537a.provider();
        int i = C2307b.f578f;
        if (fileSystemProviderProvider == null) {
            return null;
        }
        return fileSystemProviderProvider instanceof C2308c ? ((C2308c) fileSystemProviderProvider).f581a : new C2307b(fileSystemProviderProvider);
    }

    @Override // j$.nio.file.FileSystem
    public final /* synthetic */ Path getPath(String str, String[] strArr) {
        return C2315y.m659s(this.f537a.getPath(str, strArr));
    }

    @Override // j$.nio.file.FileSystem
    public final /* synthetic */ String getSeparator() {
        return this.f537a.getSeparator();
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ Set mo565h() {
        return this.f537a.supportedFileAttributeViews();
    }

    public final /* synthetic */ int hashCode() {
        return this.f537a.hashCode();
    }

    @Override // j$.nio.file.FileSystem
    public final /* synthetic */ boolean isOpen() {
        return this.f537a.isOpen();
    }
}
