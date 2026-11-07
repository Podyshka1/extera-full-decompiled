package j$.nio.file.spi;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import j$.desugar.sun.nio.fs.C2109h;
import j$.nio.channels.C2119a;
import j$.nio.file.C2151e;
import j$.nio.file.C2152f;
import j$.nio.file.C2153g;
import j$.nio.file.C2173w;
import j$.nio.file.C2175y;
import j$.nio.file.C2176z;
import j$.nio.file.CopyOption;
import j$.nio.file.EnumC2121a;
import j$.nio.file.FileStore;
import j$.nio.file.FileSystem;
import j$.nio.file.LinkOption;
import j$.nio.file.OpenOption;
import j$.nio.file.Path;
import j$.nio.file.attribute.BasicFileAttributes;
import j$.nio.file.attribute.C2122a;
import j$.nio.file.attribute.C2124c;
import j$.nio.file.attribute.C2125d;
import j$.nio.file.attribute.C2126e;
import j$.nio.file.attribute.C2128g;
import j$.nio.file.attribute.C2133l;
import j$.nio.file.attribute.C2134m;
import j$.nio.file.attribute.C2135n;
import j$.nio.file.attribute.C2136o;
import j$.nio.file.attribute.C2141t;
import j$.nio.file.attribute.C2143v;
import j$.nio.file.attribute.FileAttribute;
import j$.nio.file.attribute.FileAttributeView;
import j$.nio.file.b0;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.nio.channels.AsynchronousFileChannel;
import java.nio.channels.FileChannel;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.AccessMode;
import java.nio.file.DirectoryStream;
import java.nio.file.attribute.AclFileAttributeView;
import java.nio.file.attribute.BasicFileAttributeView;
import java.nio.file.attribute.DosFileAttributeView;
import java.nio.file.attribute.FileOwnerAttributeView;
import java.nio.file.attribute.PosixFileAttributeView;
import java.nio.file.attribute.UserDefinedFileAttributeView;
import java.nio.file.spi.FileSystemProvider;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* JADX INFO: renamed from: j$.nio.file.spi.b */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2167b extends AbstractC2169d {

    /* JADX INFO: renamed from: f */
    public static final /* synthetic */ int f577f = 0;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ FileSystemProvider f578e;

    public /* synthetic */ C2167b(FileSystemProvider fileSystemProvider) {
        this.f578e = fileSystemProvider;
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: A */
    public final /* synthetic */ void mo545A(Path path, String str, Object obj, LinkOption[] linkOptionArr) throws IOException {
        this.f578e.setAttribute(C2176z.m636s(path), str, AbstractC2108g.m514k(obj), AbstractC2108g.m525v(linkOptionArr));
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: a */
    public final /* synthetic */ void mo546a(Path path, EnumC2121a[] enumC2121aArr) throws IOException {
        FileSystemProvider fileSystemProvider = this.f578e;
        java.nio.file.Path pathM636s = C2176z.m636s(path);
        AccessMode[] accessModeArr = null;
        if (enumC2121aArr != null) {
            int length = enumC2121aArr.length;
            AccessMode[] accessModeArr2 = new AccessMode[length];
            for (int i = 0; i < length; i++) {
                EnumC2121a enumC2121a = enumC2121aArr[i];
                accessModeArr2[i] = enumC2121a == null ? null : enumC2121a == EnumC2121a.READ ? AccessMode.READ : enumC2121a == EnumC2121a.WRITE ? AccessMode.WRITE : AccessMode.EXECUTE;
            }
            accessModeArr = accessModeArr2;
        }
        fileSystemProvider.checkAccess(pathM636s, accessModeArr);
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: b */
    public final /* synthetic */ void mo547b(Path path, Path path2, CopyOption[] copyOptionArr) throws IOException {
        this.f578e.copy(C2176z.m636s(path), C2176z.m636s(path2), AbstractC2108g.m524u(copyOptionArr));
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: c */
    public final /* synthetic */ void mo548c(Path path, FileAttribute[] fileAttributeArr) throws IOException {
        this.f578e.createDirectory(C2176z.m636s(path), AbstractC2108g.m527x(fileAttributeArr));
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: d */
    public final /* synthetic */ void mo549d(Path path, Path path2) throws IOException {
        this.f578e.createLink(C2176z.m636s(path), C2176z.m636s(path2));
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ void mo550e(Path path, Path path2, FileAttribute[] fileAttributeArr) throws IOException {
        this.f578e.createSymbolicLink(C2176z.m636s(path), C2176z.m636s(path2), AbstractC2108g.m527x(fileAttributeArr));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        FileSystemProvider fileSystemProvider = this.f578e;
        if (obj instanceof C2167b) {
            obj = ((C2167b) obj).f578e;
        }
        return fileSystemProvider.equals(obj);
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: f */
    public final /* synthetic */ void mo551f(Path path) throws IOException {
        this.f578e.delete(C2176z.m636s(path));
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: g */
    public final /* synthetic */ boolean mo552g(Path path) {
        return this.f578e.deleteIfExists(C2176z.m636s(path));
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ FileAttributeView mo553h(Path path, Class cls, LinkOption[] linkOptionArr) {
        java.nio.file.attribute.FileAttributeView fileAttributeView = this.f578e.getFileAttributeView(C2176z.m636s(path), AbstractC2108g.m511h(cls), AbstractC2108g.m525v(linkOptionArr));
        if (fileAttributeView == null) {
            return null;
        }
        if (fileAttributeView instanceof C2134m) {
            return ((C2134m) fileAttributeView).f513a;
        }
        if (fileAttributeView instanceof BasicFileAttributeView) {
            BasicFileAttributeView basicFileAttributeView = (BasicFileAttributeView) fileAttributeView;
            return basicFileAttributeView instanceof C2125d ? ((C2125d) basicFileAttributeView).f504a : basicFileAttributeView instanceof DosFileAttributeView ? new C2128g((DosFileAttributeView) basicFileAttributeView) : basicFileAttributeView instanceof PosixFileAttributeView ? new C2141t((PosixFileAttributeView) basicFileAttributeView) : new C2124c(basicFileAttributeView);
        }
        if (!(fileAttributeView instanceof FileOwnerAttributeView)) {
            return fileAttributeView instanceof UserDefinedFileAttributeView ? new C2143v((UserDefinedFileAttributeView) fileAttributeView) : new C2133l(fileAttributeView);
        }
        FileOwnerAttributeView fileOwnerAttributeView = (FileOwnerAttributeView) fileAttributeView;
        return fileOwnerAttributeView instanceof C2136o ? ((C2136o) fileOwnerAttributeView).f515a : fileOwnerAttributeView instanceof AclFileAttributeView ? new C2122a((AclFileAttributeView) fileOwnerAttributeView) : fileOwnerAttributeView instanceof PosixFileAttributeView ? new C2141t((PosixFileAttributeView) fileOwnerAttributeView) : new C2135n(fileOwnerAttributeView);
    }

    public final /* synthetic */ int hashCode() {
        return this.f578e.hashCode();
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: i */
    public final /* synthetic */ FileStore mo554i(Path path) throws IOException {
        java.nio.file.FileStore fileStore = this.f578e.getFileStore(C2176z.m636s(path));
        if (fileStore == null) {
            return null;
        }
        return fileStore instanceof C2152f ? ((C2152f) fileStore).f534a : new C2151e(fileStore);
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: j */
    public final /* synthetic */ FileSystem mo555j(URI uri) {
        return C2153g.m620i(this.f578e.getFileSystem(uri));
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: k */
    public final /* synthetic */ Path mo556k(URI uri) {
        return C2175y.m635s(this.f578e.getPath(uri));
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: l */
    public final /* synthetic */ String mo557l() {
        return this.f578e.getScheme();
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: m */
    public final /* synthetic */ boolean mo558m(Path path) {
        return this.f578e.isHidden(C2176z.m636s(path));
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: n */
    public final /* synthetic */ boolean mo559n(Path path, Path path2) {
        return this.f578e.isSameFile(C2176z.m636s(path), C2176z.m636s(path2));
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: o */
    public final /* synthetic */ void mo560o(Path path, Path path2, CopyOption[] copyOptionArr) throws IOException {
        this.f578e.move(C2176z.m636s(path), C2176z.m636s(path2), AbstractC2108g.m524u(copyOptionArr));
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ C2119a mo561p(Path path, Set set, ExecutorService executorService, FileAttribute[] fileAttributeArr) throws IOException {
        AsynchronousFileChannel asynchronousFileChannelNewAsynchronousFileChannel = this.f578e.newAsynchronousFileChannel(C2176z.m636s(path), AbstractC2108g.m515l(set), executorService, AbstractC2108g.m527x(fileAttributeArr));
        if (asynchronousFileChannelNewAsynchronousFileChannel == null) {
            return null;
        }
        return new C2119a(asynchronousFileChannelNewAsynchronousFileChannel);
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: q */
    public final /* synthetic */ SeekableByteChannel mo562q(Path path, Set set, FileAttribute[] fileAttributeArr) {
        return this.f578e.newByteChannel(C2176z.m636s(path), AbstractC2108g.m515l(set), AbstractC2108g.m527x(fileAttributeArr));
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: r */
    public final DirectoryStream mo563r(Path path, DirectoryStream.Filter filter) {
        return new b0(this.f578e.newDirectoryStream(C2176z.m636s(path), new C2109h(filter, 2)));
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: s */
    public final /* synthetic */ FileChannel mo564s(Path path, Set set, FileAttribute[] fileAttributeArr) {
        return this.f578e.newFileChannel(C2176z.m636s(path), AbstractC2108g.m515l(set), AbstractC2108g.m527x(fileAttributeArr));
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: t */
    public final /* synthetic */ FileSystem mo630t(Path path, Map map) {
        return C2153g.m620i(this.f578e.newFileSystem(C2176z.m636s(path), (Map<String, ?>) map));
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: u */
    public final /* synthetic */ FileSystem mo565u(URI uri, Map map) {
        return C2153g.m620i(this.f578e.newFileSystem(uri, (Map<String, ?>) map));
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: v */
    public final /* synthetic */ InputStream mo631v(Path path, OpenOption[] openOptionArr) {
        java.nio.file.OpenOption[] openOptionArr2;
        FileSystemProvider fileSystemProvider = this.f578e;
        java.nio.file.Path pathM636s = C2176z.m636s(path);
        if (openOptionArr == null) {
            openOptionArr2 = null;
        } else {
            int length = openOptionArr.length;
            java.nio.file.OpenOption[] openOptionArr3 = new java.nio.file.OpenOption[length];
            for (int i = 0; i < length; i++) {
                openOptionArr3[i] = C2173w.m634a(openOptionArr[i]);
            }
            openOptionArr2 = openOptionArr3;
        }
        return fileSystemProvider.newInputStream(pathM636s, openOptionArr2);
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: w */
    public final /* synthetic */ OutputStream mo632w(Path path, OpenOption[] openOptionArr) {
        java.nio.file.OpenOption[] openOptionArr2;
        FileSystemProvider fileSystemProvider = this.f578e;
        java.nio.file.Path pathM636s = C2176z.m636s(path);
        if (openOptionArr == null) {
            openOptionArr2 = null;
        } else {
            int length = openOptionArr.length;
            java.nio.file.OpenOption[] openOptionArr3 = new java.nio.file.OpenOption[length];
            for (int i = 0; i < length; i++) {
                openOptionArr3[i] = C2173w.m634a(openOptionArr[i]);
            }
            openOptionArr2 = openOptionArr3;
        }
        return fileSystemProvider.newOutputStream(pathM636s, openOptionArr2);
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: x */
    public final /* synthetic */ BasicFileAttributes mo566x(Path path, Class cls, LinkOption[] linkOptionArr) {
        return C2126e.m604a(this.f578e.readAttributes(C2176z.m636s(path), AbstractC2108g.m512i(cls), AbstractC2108g.m525v(linkOptionArr)));
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: y */
    public final /* synthetic */ Map mo567y(Path path, String str, LinkOption[] linkOptionArr) {
        return AbstractC2108g.m513j(this.f578e.readAttributes(C2176z.m636s(path), str, AbstractC2108g.m525v(linkOptionArr)));
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: z */
    public final /* synthetic */ Path mo568z(Path path) {
        return C2175y.m635s(this.f578e.readSymbolicLink(C2176z.m636s(path)));
    }
}
