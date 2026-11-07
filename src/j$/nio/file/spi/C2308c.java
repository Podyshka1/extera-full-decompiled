package j$.nio.file.spi;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import j$.desugar.sun.nio.fs.C2249h;
import j$.nio.channels.AbstractC2260b;
import j$.nio.channels.C2259a;
import j$.nio.file.C2289c;
import j$.nio.file.C2291e;
import j$.nio.file.C2292f;
import j$.nio.file.C2294h;
import j$.nio.file.C2312v;
import j$.nio.file.C2315y;
import j$.nio.file.C2316z;
import j$.nio.file.EnumC2261a;
import j$.nio.file.attribute.BasicFileAttributeView;
import j$.nio.file.attribute.C2262a;
import j$.nio.file.attribute.C2264c;
import j$.nio.file.attribute.C2265d;
import j$.nio.file.attribute.C2267f;
import j$.nio.file.attribute.C2268g;
import j$.nio.file.attribute.C2273l;
import j$.nio.file.attribute.C2274m;
import j$.nio.file.attribute.C2275n;
import j$.nio.file.attribute.C2276o;
import j$.nio.file.attribute.C2281t;
import j$.nio.file.attribute.C2283v;
import j$.nio.file.attribute.InterfaceC2277p;
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
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2308c extends FileSystemProvider {

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int f580b = 0;

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ AbstractC2309d f581a;

    public /* synthetic */ C2308c(AbstractC2309d abstractC2309d) {
        this.f581a = abstractC2309d;
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void checkAccess(Path path, AccessMode[] accessModeArr) {
        AbstractC2309d abstractC2309d = this.f581a;
        j$.nio.file.Path pathM659s = C2315y.m659s(path);
        EnumC2261a[] enumC2261aArr = null;
        if (accessModeArr != null) {
            int length = accessModeArr.length;
            EnumC2261a[] enumC2261aArr2 = new EnumC2261a[length];
            for (int i = 0; i < length; i++) {
                AccessMode accessMode = accessModeArr[i];
                enumC2261aArr2[i] = accessMode == null ? null : accessMode == AccessMode.READ ? EnumC2261a.READ : accessMode == AccessMode.WRITE ? EnumC2261a.WRITE : EnumC2261a.EXECUTE;
            }
            enumC2261aArr = enumC2261aArr2;
        }
        abstractC2309d.mo570a(pathM659s, enumC2261aArr);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void copy(Path path, Path path2, CopyOption[] copyOptionArr) {
        j$.nio.file.CopyOption[] copyOptionArr2;
        AbstractC2309d abstractC2309d = this.f581a;
        j$.nio.file.Path pathM659s = C2315y.m659s(path);
        j$.nio.file.Path pathM659s2 = C2315y.m659s(path2);
        if (copyOptionArr == null) {
            copyOptionArr2 = null;
        } else {
            int length = copyOptionArr.length;
            j$.nio.file.CopyOption[] copyOptionArr3 = new j$.nio.file.CopyOption[length];
            for (int i = 0; i < length; i++) {
                copyOptionArr3[i] = C2289c.m643a(copyOptionArr[i]);
            }
            copyOptionArr2 = copyOptionArr3;
        }
        abstractC2309d.mo571b(pathM659s, pathM659s2, copyOptionArr2);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void createDirectory(Path path, FileAttribute[] fileAttributeArr) {
        this.f581a.mo572c(C2315y.m659s(path), AbstractC2248g.m547t(fileAttributeArr));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void createLink(Path path, Path path2) {
        this.f581a.mo573d(C2315y.m659s(path), C2315y.m659s(path2));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void createSymbolicLink(Path path, Path path2, FileAttribute[] fileAttributeArr) {
        this.f581a.mo574e(C2315y.m659s(path), C2315y.m659s(path2), AbstractC2248g.m547t(fileAttributeArr));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void delete(Path path) {
        this.f581a.mo575f(C2315y.m659s(path));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ boolean deleteIfExists(Path path) {
        return this.f581a.mo576g(C2315y.m659s(path));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        AbstractC2309d abstractC2309d = this.f581a;
        if (obj instanceof C2308c) {
            obj = ((C2308c) obj).f581a;
        }
        return abstractC2309d.equals(obj);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ FileAttributeView getFileAttributeView(Path path, Class cls, LinkOption[] linkOptionArr) {
        j$.nio.file.attribute.FileAttributeView fileAttributeViewMo577h = this.f581a.mo577h(C2315y.m659s(path), AbstractC2248g.m535h(cls), AbstractC2248g.m545r(linkOptionArr));
        if (fileAttributeViewMo577h == null) {
            return null;
        }
        if (fileAttributeViewMo577h instanceof C2273l) {
            return ((C2273l) fileAttributeViewMo577h).f513a;
        }
        if (fileAttributeViewMo577h instanceof BasicFileAttributeView) {
            BasicFileAttributeView basicFileAttributeView = (BasicFileAttributeView) fileAttributeViewMo577h;
            return basicFileAttributeView instanceof C2264c ? ((C2264c) basicFileAttributeView).f504a : basicFileAttributeView instanceof C2268g ? ((C2268g) basicFileAttributeView).f508a : basicFileAttributeView instanceof C2281t ? ((C2281t) basicFileAttributeView).f520a : new C2265d(basicFileAttributeView);
        }
        if (!(fileAttributeViewMo577h instanceof InterfaceC2277p)) {
            return fileAttributeViewMo577h instanceof C2283v ? ((C2283v) fileAttributeViewMo577h).f522a : new C2274m(fileAttributeViewMo577h);
        }
        InterfaceC2277p interfaceC2277p = (InterfaceC2277p) fileAttributeViewMo577h;
        return interfaceC2277p instanceof C2275n ? ((C2275n) interfaceC2277p).f515a : interfaceC2277p instanceof C2262a ? ((C2262a) interfaceC2277p).f503a : interfaceC2277p instanceof C2281t ? ((C2281t) interfaceC2277p).f520a : new C2276o(interfaceC2277p);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ FileStore getFileStore(Path path) {
        j$.nio.file.FileStore fileStoreMo578i = this.f581a.mo578i(C2315y.m659s(path));
        int i = C2292f.f534b;
        if (fileStoreMo578i == null) {
            return null;
        }
        return fileStoreMo578i instanceof C2291e ? ((C2291e) fileStoreMo578i).f532a : new C2292f(fileStoreMo578i);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ FileSystem getFileSystem(URI uri) {
        return C2294h.m645a(this.f581a.mo579j(uri));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ Path getPath(URI uri) {
        return C2316z.m660s(this.f581a.mo580k(uri));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ String getScheme() {
        return this.f581a.mo581l();
    }

    public final /* synthetic */ int hashCode() {
        return this.f581a.hashCode();
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ boolean isHidden(Path path) {
        return this.f581a.mo582m(C2315y.m659s(path));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ boolean isSameFile(Path path, Path path2) {
        return this.f581a.mo583n(C2315y.m659s(path), C2315y.m659s(path2));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void move(Path path, Path path2, CopyOption[] copyOptionArr) {
        j$.nio.file.CopyOption[] copyOptionArr2;
        AbstractC2309d abstractC2309d = this.f581a;
        j$.nio.file.Path pathM659s = C2315y.m659s(path);
        j$.nio.file.Path pathM659s2 = C2315y.m659s(path2);
        if (copyOptionArr == null) {
            copyOptionArr2 = null;
        } else {
            int length = copyOptionArr.length;
            j$.nio.file.CopyOption[] copyOptionArr3 = new j$.nio.file.CopyOption[length];
            for (int i = 0; i < length; i++) {
                copyOptionArr3[i] = C2289c.m643a(copyOptionArr[i]);
            }
            copyOptionArr2 = copyOptionArr3;
        }
        abstractC2309d.mo584o(pathM659s, pathM659s2, copyOptionArr2);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ AsynchronousFileChannel newAsynchronousFileChannel(Path path, Set set, ExecutorService executorService, FileAttribute[] fileAttributeArr) {
        C2259a c2259aMo585p = this.f581a.mo585p(C2315y.m659s(path), AbstractC2248g.m539l(set), executorService, AbstractC2248g.m547t(fileAttributeArr));
        int i = AbstractC2260b.f489a;
        if (c2259aMo585p == null) {
            return null;
        }
        return c2259aMo585p.f488a;
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ SeekableByteChannel newByteChannel(Path path, Set set, FileAttribute[] fileAttributeArr) {
        return this.f581a.mo586q(C2315y.m659s(path), AbstractC2248g.m539l(set), AbstractC2248g.m547t(fileAttributeArr));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final DirectoryStream newDirectoryStream(Path path, DirectoryStream.Filter filter) {
        return new b0(this.f581a.mo587r(C2315y.m659s(path), new C2249h(filter, 2)));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ FileChannel newFileChannel(Path path, Set set, FileAttribute[] fileAttributeArr) {
        return this.f581a.mo588s(C2315y.m659s(path), AbstractC2248g.m539l(set), AbstractC2248g.m547t(fileAttributeArr));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ FileSystem newFileSystem(Path path, Map map) {
        return C2294h.m645a(this.f581a.mo654t(C2315y.m659s(path), map));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ InputStream newInputStream(Path path, OpenOption[] openOptionArr) {
        j$.nio.file.OpenOption[] openOptionArr2;
        AbstractC2309d abstractC2309d = this.f581a;
        j$.nio.file.Path pathM659s = C2315y.m659s(path);
        if (openOptionArr == null) {
            openOptionArr2 = null;
        } else {
            int length = openOptionArr.length;
            j$.nio.file.OpenOption[] openOptionArr3 = new j$.nio.file.OpenOption[length];
            for (int i = 0; i < length; i++) {
                openOptionArr3[i] = C2312v.m657a(openOptionArr[i]);
            }
            openOptionArr2 = openOptionArr3;
        }
        return abstractC2309d.mo655v(pathM659s, openOptionArr2);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ OutputStream newOutputStream(Path path, OpenOption[] openOptionArr) {
        j$.nio.file.OpenOption[] openOptionArr2;
        AbstractC2309d abstractC2309d = this.f581a;
        j$.nio.file.Path pathM659s = C2315y.m659s(path);
        if (openOptionArr == null) {
            openOptionArr2 = null;
        } else {
            int length = openOptionArr.length;
            j$.nio.file.OpenOption[] openOptionArr3 = new j$.nio.file.OpenOption[length];
            for (int i = 0; i < length; i++) {
                openOptionArr3[i] = C2312v.m657a(openOptionArr[i]);
            }
            openOptionArr2 = openOptionArr3;
        }
        return abstractC2309d.mo656w(pathM659s, openOptionArr2);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ BasicFileAttributes readAttributes(Path path, Class cls, LinkOption[] linkOptionArr) {
        return C2267f.m629a(this.f581a.mo590x(C2315y.m659s(path), AbstractC2248g.m536i(cls), AbstractC2248g.m545r(linkOptionArr)));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ Path readSymbolicLink(Path path) {
        return C2316z.m660s(this.f581a.mo592z(C2315y.m659s(path)));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void setAttribute(Path path, String str, Object obj, LinkOption[] linkOptionArr) {
        this.f581a.mo569A(C2315y.m659s(path), str, AbstractC2248g.m538k(obj), AbstractC2248g.m545r(linkOptionArr));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ FileSystem newFileSystem(URI uri, Map map) {
        return C2294h.m645a(this.f581a.mo589u(uri, map));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ Map readAttributes(Path path, String str, LinkOption[] linkOptionArr) {
        return AbstractC2248g.m537j(this.f581a.mo591y(C2315y.m659s(path), str, AbstractC2248g.m545r(linkOptionArr)));
    }
}
