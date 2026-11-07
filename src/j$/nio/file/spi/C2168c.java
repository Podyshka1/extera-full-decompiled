package j$.nio.file.spi;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import j$.desugar.sun.nio.fs.C2109h;
import j$.nio.channels.AbstractC2120b;
import j$.nio.channels.C2119a;
import j$.nio.file.C2149c;
import j$.nio.file.C2151e;
import j$.nio.file.C2152f;
import j$.nio.file.C2154h;
import j$.nio.file.C2172v;
import j$.nio.file.C2175y;
import j$.nio.file.C2176z;
import j$.nio.file.EnumC2121a;
import j$.nio.file.attribute.BasicFileAttributeView;
import j$.nio.file.attribute.C2122a;
import j$.nio.file.attribute.C2124c;
import j$.nio.file.attribute.C2125d;
import j$.nio.file.attribute.C2127f;
import j$.nio.file.attribute.C2128g;
import j$.nio.file.attribute.C2133l;
import j$.nio.file.attribute.C2134m;
import j$.nio.file.attribute.C2135n;
import j$.nio.file.attribute.C2136o;
import j$.nio.file.attribute.C2141t;
import j$.nio.file.attribute.C2143v;
import j$.nio.file.attribute.InterfaceC2137p;
import j$.nio.file.b0;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.nio.channels.AsynchronousFileChannel;
import java.nio.channels.FileChannel;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.AccessMode;
import java.nio.file.CopyOption;
import java.nio.file.DirectoryStream;
import java.nio.file.FileStore;
import java.nio.file.FileSystem;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileAttributeView;
import java.nio.file.spi.FileSystemProvider;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* JADX INFO: renamed from: j$.nio.file.spi.c */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2168c extends FileSystemProvider {

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int f579b = 0;

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ AbstractC2169d f580a;

    public /* synthetic */ C2168c(AbstractC2169d abstractC2169d) {
        this.f580a = abstractC2169d;
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void checkAccess(Path path, AccessMode[] accessModeArr) {
        AbstractC2169d abstractC2169d = this.f580a;
        j$.nio.file.Path pathM635s = C2175y.m635s(path);
        EnumC2121a[] enumC2121aArr = null;
        if (accessModeArr != null) {
            int length = accessModeArr.length;
            EnumC2121a[] enumC2121aArr2 = new EnumC2121a[length];
            for (int i = 0; i < length; i++) {
                AccessMode accessMode = accessModeArr[i];
                enumC2121aArr2[i] = accessMode == null ? null : accessMode == AccessMode.READ ? EnumC2121a.READ : accessMode == AccessMode.WRITE ? EnumC2121a.WRITE : EnumC2121a.EXECUTE;
            }
            enumC2121aArr = enumC2121aArr2;
        }
        abstractC2169d.mo546a(pathM635s, enumC2121aArr);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void copy(Path path, Path path2, CopyOption[] copyOptionArr) {
        j$.nio.file.CopyOption[] copyOptionArr2;
        AbstractC2169d abstractC2169d = this.f580a;
        j$.nio.file.Path pathM635s = C2175y.m635s(path);
        j$.nio.file.Path pathM635s2 = C2175y.m635s(path2);
        if (copyOptionArr == null) {
            copyOptionArr2 = null;
        } else {
            int length = copyOptionArr.length;
            j$.nio.file.CopyOption[] copyOptionArr3 = new j$.nio.file.CopyOption[length];
            for (int i = 0; i < length; i++) {
                copyOptionArr3[i] = C2149c.m619a(copyOptionArr[i]);
            }
            copyOptionArr2 = copyOptionArr3;
        }
        abstractC2169d.mo547b(pathM635s, pathM635s2, copyOptionArr2);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void createDirectory(Path path, FileAttribute[] fileAttributeArr) {
        this.f580a.mo548c(C2175y.m635s(path), AbstractC2108g.m523t(fileAttributeArr));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void createLink(Path path, Path path2) {
        this.f580a.mo549d(C2175y.m635s(path), C2175y.m635s(path2));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void createSymbolicLink(Path path, Path path2, FileAttribute[] fileAttributeArr) {
        this.f580a.mo550e(C2175y.m635s(path), C2175y.m635s(path2), AbstractC2108g.m523t(fileAttributeArr));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void delete(Path path) {
        this.f580a.mo551f(C2175y.m635s(path));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ boolean deleteIfExists(Path path) {
        return this.f580a.mo552g(C2175y.m635s(path));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        AbstractC2169d abstractC2169d = this.f580a;
        if (obj instanceof C2168c) {
            obj = ((C2168c) obj).f580a;
        }
        return abstractC2169d.equals(obj);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ FileAttributeView getFileAttributeView(Path path, Class cls, LinkOption[] linkOptionArr) {
        j$.nio.file.attribute.FileAttributeView fileAttributeViewMo553h = this.f580a.mo553h(C2175y.m635s(path), AbstractC2108g.m511h(cls), AbstractC2108g.m521r(linkOptionArr));
        if (fileAttributeViewMo553h == null) {
            return null;
        }
        if (fileAttributeViewMo553h instanceof C2133l) {
            return ((C2133l) fileAttributeViewMo553h).f512a;
        }
        if (fileAttributeViewMo553h instanceof BasicFileAttributeView) {
            BasicFileAttributeView basicFileAttributeView = (BasicFileAttributeView) fileAttributeViewMo553h;
            return basicFileAttributeView instanceof C2124c ? ((C2124c) basicFileAttributeView).f503a : basicFileAttributeView instanceof C2128g ? ((C2128g) basicFileAttributeView).f507a : basicFileAttributeView instanceof C2141t ? ((C2141t) basicFileAttributeView).f519a : new C2125d(basicFileAttributeView);
        }
        if (!(fileAttributeViewMo553h instanceof InterfaceC2137p)) {
            return fileAttributeViewMo553h instanceof C2143v ? ((C2143v) fileAttributeViewMo553h).f521a : new C2134m(fileAttributeViewMo553h);
        }
        InterfaceC2137p interfaceC2137p = (InterfaceC2137p) fileAttributeViewMo553h;
        return interfaceC2137p instanceof C2135n ? ((C2135n) interfaceC2137p).f514a : interfaceC2137p instanceof C2122a ? ((C2122a) interfaceC2137p).f502a : interfaceC2137p instanceof C2141t ? ((C2141t) interfaceC2137p).f519a : new C2136o(interfaceC2137p);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ FileStore getFileStore(Path path) {
        j$.nio.file.FileStore fileStoreMo554i = this.f580a.mo554i(C2175y.m635s(path));
        int i = C2152f.f533b;
        if (fileStoreMo554i == null) {
            return null;
        }
        return fileStoreMo554i instanceof C2151e ? ((C2151e) fileStoreMo554i).f531a : new C2152f(fileStoreMo554i);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ FileSystem getFileSystem(URI uri) {
        return C2154h.m621a(this.f580a.mo555j(uri));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ Path getPath(URI uri) {
        return C2176z.m636s(this.f580a.mo556k(uri));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ String getScheme() {
        return this.f580a.mo557l();
    }

    public final /* synthetic */ int hashCode() {
        return this.f580a.hashCode();
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ boolean isHidden(Path path) {
        return this.f580a.mo558m(C2175y.m635s(path));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ boolean isSameFile(Path path, Path path2) {
        return this.f580a.mo559n(C2175y.m635s(path), C2175y.m635s(path2));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void move(Path path, Path path2, CopyOption[] copyOptionArr) {
        j$.nio.file.CopyOption[] copyOptionArr2;
        AbstractC2169d abstractC2169d = this.f580a;
        j$.nio.file.Path pathM635s = C2175y.m635s(path);
        j$.nio.file.Path pathM635s2 = C2175y.m635s(path2);
        if (copyOptionArr == null) {
            copyOptionArr2 = null;
        } else {
            int length = copyOptionArr.length;
            j$.nio.file.CopyOption[] copyOptionArr3 = new j$.nio.file.CopyOption[length];
            for (int i = 0; i < length; i++) {
                copyOptionArr3[i] = C2149c.m619a(copyOptionArr[i]);
            }
            copyOptionArr2 = copyOptionArr3;
        }
        abstractC2169d.mo560o(pathM635s, pathM635s2, copyOptionArr2);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ AsynchronousFileChannel newAsynchronousFileChannel(Path path, Set set, ExecutorService executorService, FileAttribute[] fileAttributeArr) {
        C2119a c2119aMo561p = this.f580a.mo561p(C2175y.m635s(path), AbstractC2108g.m515l(set), executorService, AbstractC2108g.m523t(fileAttributeArr));
        int i = AbstractC2120b.f488a;
        if (c2119aMo561p == null) {
            return null;
        }
        return c2119aMo561p.f487a;
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ SeekableByteChannel newByteChannel(Path path, Set set, FileAttribute[] fileAttributeArr) {
        return this.f580a.mo562q(C2175y.m635s(path), AbstractC2108g.m515l(set), AbstractC2108g.m523t(fileAttributeArr));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final DirectoryStream newDirectoryStream(Path path, DirectoryStream.Filter filter) {
        return new b0(this.f580a.mo563r(C2175y.m635s(path), new C2109h(filter, 2)));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ FileChannel newFileChannel(Path path, Set set, FileAttribute[] fileAttributeArr) {
        return this.f580a.mo564s(C2175y.m635s(path), AbstractC2108g.m515l(set), AbstractC2108g.m523t(fileAttributeArr));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ FileSystem newFileSystem(Path path, Map map) {
        return C2154h.m621a(this.f580a.mo630t(C2175y.m635s(path), map));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ InputStream newInputStream(Path path, OpenOption[] openOptionArr) {
        j$.nio.file.OpenOption[] openOptionArr2;
        AbstractC2169d abstractC2169d = this.f580a;
        j$.nio.file.Path pathM635s = C2175y.m635s(path);
        if (openOptionArr == null) {
            openOptionArr2 = null;
        } else {
            int length = openOptionArr.length;
            j$.nio.file.OpenOption[] openOptionArr3 = new j$.nio.file.OpenOption[length];
            for (int i = 0; i < length; i++) {
                openOptionArr3[i] = C2172v.m633a(openOptionArr[i]);
            }
            openOptionArr2 = openOptionArr3;
        }
        return abstractC2169d.mo631v(pathM635s, openOptionArr2);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ OutputStream newOutputStream(Path path, OpenOption[] openOptionArr) {
        j$.nio.file.OpenOption[] openOptionArr2;
        AbstractC2169d abstractC2169d = this.f580a;
        j$.nio.file.Path pathM635s = C2175y.m635s(path);
        if (openOptionArr == null) {
            openOptionArr2 = null;
        } else {
            int length = openOptionArr.length;
            j$.nio.file.OpenOption[] openOptionArr3 = new j$.nio.file.OpenOption[length];
            for (int i = 0; i < length; i++) {
                openOptionArr3[i] = C2172v.m633a(openOptionArr[i]);
            }
            openOptionArr2 = openOptionArr3;
        }
        return abstractC2169d.mo632w(pathM635s, openOptionArr2);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ BasicFileAttributes readAttributes(Path path, Class cls, LinkOption[] linkOptionArr) {
        return C2127f.m605a(this.f580a.mo566x(C2175y.m635s(path), AbstractC2108g.m512i(cls), AbstractC2108g.m521r(linkOptionArr)));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ Path readSymbolicLink(Path path) {
        return C2176z.m636s(this.f580a.mo568z(C2175y.m635s(path)));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void setAttribute(Path path, String str, Object obj, LinkOption[] linkOptionArr) {
        this.f580a.mo545A(C2175y.m635s(path), str, AbstractC2108g.m514k(obj), AbstractC2108g.m521r(linkOptionArr));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ FileSystem newFileSystem(URI uri, Map map) {
        return C2154h.m621a(this.f580a.mo565u(uri, map));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ Map readAttributes(Path path, String str, LinkOption[] linkOptionArr) {
        return AbstractC2108g.m513j(this.f580a.mo567y(C2175y.m635s(path), str, AbstractC2108g.m521r(linkOptionArr)));
    }
}
