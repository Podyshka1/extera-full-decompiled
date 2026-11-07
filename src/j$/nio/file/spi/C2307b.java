package j$.nio.file.spi;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import j$.desugar.sun.nio.fs.C2249h;
import j$.nio.channels.C2259a;
import j$.nio.file.C2291e;
import j$.nio.file.C2292f;
import j$.nio.file.C2293g;
import j$.nio.file.C2313w;
import j$.nio.file.C2315y;
import j$.nio.file.C2316z;
import j$.nio.file.CopyOption;
import j$.nio.file.EnumC2261a;
import j$.nio.file.FileStore;
import j$.nio.file.FileSystem;
import j$.nio.file.LinkOption;
import j$.nio.file.OpenOption;
import j$.nio.file.Path;
import j$.nio.file.attribute.BasicFileAttributes;
import j$.nio.file.attribute.C2262a;
import j$.nio.file.attribute.C2264c;
import j$.nio.file.attribute.C2265d;
import j$.nio.file.attribute.C2266e;
import j$.nio.file.attribute.C2268g;
import j$.nio.file.attribute.C2273l;
import j$.nio.file.attribute.C2274m;
import j$.nio.file.attribute.C2275n;
import j$.nio.file.attribute.C2276o;
import j$.nio.file.attribute.C2281t;
import j$.nio.file.attribute.C2283v;
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
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2307b extends AbstractC2309d {

    /* JADX INFO: renamed from: f */
    public static final /* synthetic */ int f578f = 0;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ FileSystemProvider f579e;

    public /* synthetic */ C2307b(FileSystemProvider fileSystemProvider) {
        this.f579e = fileSystemProvider;
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: A */
    public final /* synthetic */ void mo569A(Path path, String str, Object obj, LinkOption[] linkOptionArr) throws IOException {
        this.f579e.setAttribute(C2316z.m660s(path), str, AbstractC2248g.m538k(obj), AbstractC2248g.m549v(linkOptionArr));
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: a */
    public final /* synthetic */ void mo570a(Path path, EnumC2261a[] enumC2261aArr) throws IOException {
        FileSystemProvider fileSystemProvider = this.f579e;
        java.nio.file.Path pathM660s = C2316z.m660s(path);
        AccessMode[] accessModeArr = null;
        if (enumC2261aArr != null) {
            int length = enumC2261aArr.length;
            AccessMode[] accessModeArr2 = new AccessMode[length];
            for (int i = 0; i < length; i++) {
                EnumC2261a enumC2261a = enumC2261aArr[i];
                accessModeArr2[i] = enumC2261a == null ? null : enumC2261a == EnumC2261a.READ ? AccessMode.READ : enumC2261a == EnumC2261a.WRITE ? AccessMode.WRITE : AccessMode.EXECUTE;
            }
            accessModeArr = accessModeArr2;
        }
        fileSystemProvider.checkAccess(pathM660s, accessModeArr);
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: b */
    public final /* synthetic */ void mo571b(Path path, Path path2, CopyOption[] copyOptionArr) throws IOException {
        this.f579e.copy(C2316z.m660s(path), C2316z.m660s(path2), AbstractC2248g.m548u(copyOptionArr));
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: c */
    public final /* synthetic */ void mo572c(Path path, FileAttribute[] fileAttributeArr) throws IOException {
        this.f579e.createDirectory(C2316z.m660s(path), AbstractC2248g.m551x(fileAttributeArr));
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: d */
    public final /* synthetic */ void mo573d(Path path, Path path2) throws IOException {
        this.f579e.createLink(C2316z.m660s(path), C2316z.m660s(path2));
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ void mo574e(Path path, Path path2, FileAttribute[] fileAttributeArr) throws IOException {
        this.f579e.createSymbolicLink(C2316z.m660s(path), C2316z.m660s(path2), AbstractC2248g.m551x(fileAttributeArr));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        FileSystemProvider fileSystemProvider = this.f579e;
        if (obj instanceof C2307b) {
            obj = ((C2307b) obj).f579e;
        }
        return fileSystemProvider.equals(obj);
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: f */
    public final /* synthetic */ void mo575f(Path path) throws IOException {
        this.f579e.delete(C2316z.m660s(path));
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: g */
    public final /* synthetic */ boolean mo576g(Path path) {
        return this.f579e.deleteIfExists(C2316z.m660s(path));
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ FileAttributeView mo577h(Path path, Class cls, LinkOption[] linkOptionArr) {
        java.nio.file.attribute.FileAttributeView fileAttributeView = this.f579e.getFileAttributeView(C2316z.m660s(path), AbstractC2248g.m535h(cls), AbstractC2248g.m549v(linkOptionArr));
        if (fileAttributeView == null) {
            return null;
        }
        if (fileAttributeView instanceof C2274m) {
            return ((C2274m) fileAttributeView).f514a;
        }
        if (fileAttributeView instanceof BasicFileAttributeView) {
            BasicFileAttributeView basicFileAttributeView = (BasicFileAttributeView) fileAttributeView;
            return basicFileAttributeView instanceof C2265d ? ((C2265d) basicFileAttributeView).f505a : basicFileAttributeView instanceof DosFileAttributeView ? new C2268g((DosFileAttributeView) basicFileAttributeView) : basicFileAttributeView instanceof PosixFileAttributeView ? new C2281t((PosixFileAttributeView) basicFileAttributeView) : new C2264c(basicFileAttributeView);
        }
        if (!(fileAttributeView instanceof FileOwnerAttributeView)) {
            return fileAttributeView instanceof UserDefinedFileAttributeView ? new C2283v((UserDefinedFileAttributeView) fileAttributeView) : new C2273l(fileAttributeView);
        }
        FileOwnerAttributeView fileOwnerAttributeView = (FileOwnerAttributeView) fileAttributeView;
        return fileOwnerAttributeView instanceof C2276o ? ((C2276o) fileOwnerAttributeView).f516a : fileOwnerAttributeView instanceof AclFileAttributeView ? new C2262a((AclFileAttributeView) fileOwnerAttributeView) : fileOwnerAttributeView instanceof PosixFileAttributeView ? new C2281t((PosixFileAttributeView) fileOwnerAttributeView) : new C2275n(fileOwnerAttributeView);
    }

    public final /* synthetic */ int hashCode() {
        return this.f579e.hashCode();
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: i */
    public final /* synthetic */ FileStore mo578i(Path path) throws IOException {
        java.nio.file.FileStore fileStore = this.f579e.getFileStore(C2316z.m660s(path));
        if (fileStore == null) {
            return null;
        }
        return fileStore instanceof C2292f ? ((C2292f) fileStore).f535a : new C2291e(fileStore);
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: j */
    public final /* synthetic */ FileSystem mo579j(URI uri) {
        return C2293g.m644i(this.f579e.getFileSystem(uri));
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: k */
    public final /* synthetic */ Path mo580k(URI uri) {
        return C2315y.m659s(this.f579e.getPath(uri));
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: l */
    public final /* synthetic */ String mo581l() {
        return this.f579e.getScheme();
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: m */
    public final /* synthetic */ boolean mo582m(Path path) {
        return this.f579e.isHidden(C2316z.m660s(path));
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: n */
    public final /* synthetic */ boolean mo583n(Path path, Path path2) {
        return this.f579e.isSameFile(C2316z.m660s(path), C2316z.m660s(path2));
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: o */
    public final /* synthetic */ void mo584o(Path path, Path path2, CopyOption[] copyOptionArr) throws IOException {
        this.f579e.move(C2316z.m660s(path), C2316z.m660s(path2), AbstractC2248g.m548u(copyOptionArr));
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ C2259a mo585p(Path path, Set set, ExecutorService executorService, FileAttribute[] fileAttributeArr) throws IOException {
        AsynchronousFileChannel asynchronousFileChannelNewAsynchronousFileChannel = this.f579e.newAsynchronousFileChannel(C2316z.m660s(path), AbstractC2248g.m539l(set), executorService, AbstractC2248g.m551x(fileAttributeArr));
        if (asynchronousFileChannelNewAsynchronousFileChannel == null) {
            return null;
        }
        return new C2259a(asynchronousFileChannelNewAsynchronousFileChannel);
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: q */
    public final /* synthetic */ SeekableByteChannel mo586q(Path path, Set set, FileAttribute[] fileAttributeArr) {
        return this.f579e.newByteChannel(C2316z.m660s(path), AbstractC2248g.m539l(set), AbstractC2248g.m551x(fileAttributeArr));
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: r */
    public final DirectoryStream mo587r(Path path, DirectoryStream.Filter filter) {
        return new b0(this.f579e.newDirectoryStream(C2316z.m660s(path), new C2249h(filter, 2)));
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: s */
    public final /* synthetic */ FileChannel mo588s(Path path, Set set, FileAttribute[] fileAttributeArr) {
        return this.f579e.newFileChannel(C2316z.m660s(path), AbstractC2248g.m539l(set), AbstractC2248g.m551x(fileAttributeArr));
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: t */
    public final /* synthetic */ FileSystem mo654t(Path path, Map map) {
        return C2293g.m644i(this.f579e.newFileSystem(C2316z.m660s(path), (Map<String, ?>) map));
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: u */
    public final /* synthetic */ FileSystem mo589u(URI uri, Map map) {
        return C2293g.m644i(this.f579e.newFileSystem(uri, (Map<String, ?>) map));
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: v */
    public final /* synthetic */ InputStream mo655v(Path path, OpenOption[] openOptionArr) {
        java.nio.file.OpenOption[] openOptionArr2;
        FileSystemProvider fileSystemProvider = this.f579e;
        java.nio.file.Path pathM660s = C2316z.m660s(path);
        if (openOptionArr == null) {
            openOptionArr2 = null;
        } else {
            int length = openOptionArr.length;
            java.nio.file.OpenOption[] openOptionArr3 = new java.nio.file.OpenOption[length];
            for (int i = 0; i < length; i++) {
                openOptionArr3[i] = C2313w.m658a(openOptionArr[i]);
            }
            openOptionArr2 = openOptionArr3;
        }
        return fileSystemProvider.newInputStream(pathM660s, openOptionArr2);
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: w */
    public final /* synthetic */ OutputStream mo656w(Path path, OpenOption[] openOptionArr) {
        java.nio.file.OpenOption[] openOptionArr2;
        FileSystemProvider fileSystemProvider = this.f579e;
        java.nio.file.Path pathM660s = C2316z.m660s(path);
        if (openOptionArr == null) {
            openOptionArr2 = null;
        } else {
            int length = openOptionArr.length;
            java.nio.file.OpenOption[] openOptionArr3 = new java.nio.file.OpenOption[length];
            for (int i = 0; i < length; i++) {
                openOptionArr3[i] = C2313w.m658a(openOptionArr[i]);
            }
            openOptionArr2 = openOptionArr3;
        }
        return fileSystemProvider.newOutputStream(pathM660s, openOptionArr2);
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: x */
    public final /* synthetic */ BasicFileAttributes mo590x(Path path, Class cls, LinkOption[] linkOptionArr) {
        return C2266e.m628a(this.f579e.readAttributes(C2316z.m660s(path), AbstractC2248g.m536i(cls), AbstractC2248g.m549v(linkOptionArr)));
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: y */
    public final /* synthetic */ Map mo591y(Path path, String str, LinkOption[] linkOptionArr) {
        return AbstractC2248g.m537j(this.f579e.readAttributes(C2316z.m660s(path), str, AbstractC2248g.m549v(linkOptionArr)));
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: z */
    public final /* synthetic */ Path mo592z(Path path) {
        return C2315y.m659s(this.f579e.readSymbolicLink(C2316z.m660s(path)));
    }
}
