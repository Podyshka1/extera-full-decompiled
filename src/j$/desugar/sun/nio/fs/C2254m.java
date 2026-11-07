package j$.desugar.sun.nio.fs;

import j$.nio.channels.C2259a;
import j$.nio.file.C2288b;
import j$.nio.file.CopyOption;
import j$.nio.file.EnumC2261a;
import j$.nio.file.FileStore;
import j$.nio.file.FileSystem;
import j$.nio.file.Files;
import j$.nio.file.LinkOption;
import j$.nio.file.Path;
import j$.nio.file.StandardCopyOption;
import j$.nio.file.attribute.BasicFileAttributeView;
import j$.nio.file.attribute.BasicFileAttributes;
import j$.nio.file.attribute.FileAttribute;
import j$.nio.file.attribute.FileAttributeView;
import j$.nio.file.attribute.FileTime;
import j$.nio.file.spi.AbstractC2309d;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URI;
import java.nio.channels.FileChannel;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.DirectoryStream;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.FileSystemAlreadyExistsException;
import java.nio.file.NoSuchFileException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* JADX INFO: renamed from: j$.desugar.sun.nio.fs.m */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2254m extends AbstractC2309d {

    /* JADX INFO: renamed from: e */
    public final String f470e;

    /* JADX INFO: renamed from: f */
    public final String f471f = "/";

    /* JADX INFO: renamed from: g */
    public volatile C2250i f472g;

    public C2254m(String str) {
        this.f470e = str;
    }

    /* JADX INFO: renamed from: B */
    public static void m567B(URI uri) {
        if (!uri.getScheme().equalsIgnoreCase("file")) {
            C2288b.m632a("URI does not match this provider");
            return;
        }
        if (uri.getRawAuthority() != null) {
            C2288b.m632a("Authority component present");
            return;
        }
        String path = uri.getPath();
        if (path == null) {
            C2288b.m632a("Path component is undefined");
            return;
        }
        if (!path.equals("/")) {
            C2288b.m632a("Path component should be '/'");
        } else if (uri.getRawQuery() != null) {
            C2288b.m632a("Query component present");
        } else {
            if (uri.getRawFragment() == null) {
                return;
            }
            C2288b.m632a("Fragment component present");
        }
    }

    /* JADX INFO: renamed from: C */
    public static boolean m568C(CopyOption[] copyOptionArr, StandardCopyOption standardCopyOption) {
        for (CopyOption copyOption : copyOptionArr) {
            if (copyOption == standardCopyOption) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: A */
    public final void mo569A(Path path, String str, Object obj, LinkOption... linkOptionArr) {
        int iIndexOf = str.indexOf(":");
        if (iIndexOf != -1) {
            String strSubstring = str.substring(0, iIndexOf);
            if (!"basic".equals(strSubstring)) {
                C2288b.m636e("Requested attribute type for: ", strSubstring, " is not available.");
                return;
            }
            str = str.substring(iIndexOf + 1);
        }
        C2243b c2243b = new C2243b(path);
        if (str.equals("lastModifiedTime")) {
            c2243b.mo526a((FileTime) obj, null, null);
            return;
        }
        if (str.equals("lastAccessTime")) {
            c2243b.mo526a(null, (FileTime) obj, null);
        } else {
            if (str.equals("creationTime")) {
                return;
            }
            throw new IllegalArgumentException("'basic:" + str + "' not recognized");
        }
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: a */
    public final void mo570a(Path path, EnumC2261a... enumC2261aArr) throws IOException {
        boolean zCanRead;
        File file = path.toFile();
        if (!file.exists()) {
            throw new NoSuchFileException(path.toString());
        }
        boolean z = true;
        for (EnumC2261a enumC2261a : enumC2261aArr) {
            int i = AbstractC2251j.f464a[enumC2261a.ordinal()];
            if (i == 1) {
                zCanRead = file.canRead();
            } else if (i == 2) {
                zCanRead = file.canWrite();
            } else if (i == 3) {
                zCanRead = file.canExecute();
            }
            z &= zCanRead;
        }
        if (!z) {
            throw new IOException(String.format("Unable to access file %s", path));
        }
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: b */
    public final void mo571b(Path path, Path path2, CopyOption... copyOptionArr) throws IOException {
        if (!m568C(copyOptionArr, StandardCopyOption.REPLACE_EXISTING) && Files.exists(path2, new LinkOption[0])) {
            throw new FileAlreadyExistsException(path2.toString());
        }
        if (m568C(copyOptionArr, StandardCopyOption.ATOMIC_MOVE)) {
            throw new UnsupportedOperationException("Unsupported copy option");
        }
        FileInputStream fileInputStream = new FileInputStream(path.toFile());
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(path2.toFile());
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int i = fileInputStream.read(bArr, 0, 8192);
                    if (i < 0) {
                        fileOutputStream.close();
                        fileInputStream.close();
                        return;
                    }
                    fileOutputStream.write(bArr, 0, i);
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: c */
    public final void mo572c(Path path, FileAttribute... fileAttributeArr) throws NoSuchFileException, FileAlreadyExistsException {
        if (path.getParent() != null && !Files.exists(path.getParent(), new LinkOption[0])) {
            throw new NoSuchFileException(path.toString());
        }
        if (!path.toFile().mkdirs()) {
            throw new FileAlreadyExistsException(path.toString());
        }
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: d */
    public final void mo573d(Path path, Path path2) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: e */
    public final void mo574e(Path path, Path path2, FileAttribute... fileAttributeArr) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: f */
    public final void mo575f(Path path) throws NoSuchFileException {
        try {
            mo570a(path, new EnumC2261a[0]);
            mo576g(path);
        } catch (IOException unused) {
            throw new NoSuchFileException(path.toString());
        }
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: g */
    public final boolean mo576g(Path path) {
        return path.toFile().delete();
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: h */
    public final FileAttributeView mo577h(Path path, Class cls, LinkOption... linkOptionArr) {
        cls.getClass();
        if (cls == BasicFileAttributeView.class) {
            return (FileAttributeView) cls.cast(new C2243b(path));
        }
        return null;
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: i */
    public final FileStore mo578i(Path path) {
        throw new SecurityException("getFileStore");
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: j */
    public final FileSystem mo579j(URI uri) {
        C2250i c2250i;
        m567B(uri);
        C2250i c2250i2 = this.f472g;
        if (c2250i2 != null) {
            return c2250i2;
        }
        synchronized (this) {
            try {
                c2250i = this.f472g;
                if (c2250i == null) {
                    c2250i = new C2250i(this, this.f470e, this.f471f);
                    this.f472g = c2250i;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2250i;
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: k */
    public final Path mo580k(URI uri) {
        byte bM602a;
        C2250i c2250i = this.f472g;
        String str = this.f470e;
        String str2 = this.f471f;
        char[] cArr = AbstractC2257p.f483c;
        if (!uri.isAbsolute()) {
            C2288b.m632a("URI is not absolute");
            return null;
        }
        if (uri.isOpaque()) {
            C2288b.m632a("URI is not hierarchical");
            return null;
        }
        String scheme = uri.getScheme();
        if (scheme == null || !scheme.equalsIgnoreCase("file")) {
            C2288b.m632a("URI scheme is not \"file\"");
            return null;
        }
        if (uri.getRawAuthority() != null) {
            C2288b.m632a("URI has an authority component");
            return null;
        }
        if (uri.getRawFragment() != null) {
            C2288b.m632a("URI has a fragment component");
            return null;
        }
        if (uri.getRawQuery() != null) {
            C2288b.m632a("URI has a query component");
            return null;
        }
        String rawPath = uri.getRawPath();
        int length = rawPath.length();
        if (length == 0) {
            C2288b.m632a("URI path component is empty");
            return null;
        }
        if (rawPath.endsWith("/") && length > 1) {
            length--;
        }
        byte[] bArrCopyOf = new byte[length];
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = i + 1;
            char cCharAt = rawPath.charAt(i);
            if (cCharAt == '%') {
                int i4 = i + 2;
                i += 3;
                bM602a = (byte) ((AbstractC2257p.m602a(rawPath.charAt(i3)) << 4) | AbstractC2257p.m602a(rawPath.charAt(i4)));
                if (bM602a == 0) {
                    C2288b.m632a("Nul character not allowed");
                    return null;
                }
            } else {
                if (cCharAt == 0 || cCharAt >= 128) {
                    C2288b.m632a("Bad escape");
                    return null;
                }
                bM602a = (byte) cCharAt;
                i = i3;
            }
            bArrCopyOf[i2] = bM602a;
            i2++;
        }
        if (i2 != length) {
            bArrCopyOf = Arrays.copyOf(bArrCopyOf, i2);
        }
        return new C2256o(c2250i, new String(bArrCopyOf, AbstractC2258q.f484a), str, str2);
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: l */
    public final String mo581l() {
        return "file";
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: m */
    public final boolean mo582m(Path path) {
        return path.toFile().isHidden();
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: n */
    public final boolean mo583n(Path path, Path path2) throws IOException {
        if (path.equals(path2)) {
            return true;
        }
        mo570a(path, new EnumC2261a[0]);
        mo570a(path2, new EnumC2261a[0]);
        return path.toFile().equals(path2.toFile());
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: o */
    public final void mo584o(Path path, Path path2, CopyOption... copyOptionArr) throws FileAlreadyExistsException {
        if (!m568C(copyOptionArr, StandardCopyOption.REPLACE_EXISTING) && Files.exists(path2, new LinkOption[0])) {
            throw new FileAlreadyExistsException(path2.toString());
        }
        if (m568C(copyOptionArr, StandardCopyOption.COPY_ATTRIBUTES)) {
            throw new UnsupportedOperationException("Unsupported copy option");
        }
        path.toFile().renameTo(path2.toFile());
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: p */
    public final C2259a mo585p(Path path, Set set, ExecutorService executorService, FileAttribute... fileAttributeArr) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: q */
    public final SeekableByteChannel mo586q(Path path, Set set, FileAttribute... fileAttributeArr) {
        return mo588s(path, set, fileAttributeArr);
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: r */
    public final DirectoryStream mo587r(Path path, DirectoryStream.Filter filter) {
        C2252k c2252k = new C2252k();
        c2252k.f465a = new C2253l(this, path, filter);
        return c2252k;
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: s */
    public final FileChannel mo588s(Path path, Set set, FileAttribute... fileAttributeArr) {
        if (!path.toFile().isDirectory()) {
            return AbstractC2248g.m553z(path, set);
        }
        throw new UnsupportedOperationException("The desugar library does not support creating a file channel on a directory: " + path);
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: u */
    public final FileSystem mo589u(URI uri, Map map) {
        m567B(uri);
        throw new FileSystemAlreadyExistsException();
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: x */
    public final BasicFileAttributes mo590x(Path path, Class cls, LinkOption... linkOptionArr) {
        if (cls == BasicFileAttributes.class) {
            return (BasicFileAttributes) cls.cast(((BasicFileAttributeView) mo577h(path, BasicFileAttributeView.class, linkOptionArr)).readAttributes());
        }
        throw new UnsupportedOperationException();
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: y */
    public final Map mo591y(Path path, String str, LinkOption... linkOptionArr) {
        String[] strArrSplit;
        int iIndexOf = str.indexOf(":");
        if (iIndexOf == -1) {
            strArrSplit = str.split(",");
        } else {
            String strSubstring = str.substring(0, iIndexOf);
            if (!"basic".equals(strSubstring)) {
                C2288b.m636e("Requested attribute type for: ", strSubstring, " is not available.");
                return null;
            }
            strArrSplit = str.substring(iIndexOf + 1).split(",");
        }
        C2243b c2243b = new C2243b(path);
        Set set = C2243b.f441b;
        C2242a c2242a = new C2242a();
        c2242a.f438a = new HashSet();
        c2242a.f439b = new HashMap();
        for (String str2 : strArrSplit) {
            if (str2.equals("*")) {
                c2242a.f440c = true;
            } else {
                if (!((HashSet) set).contains(str2)) {
                    throw new IllegalArgumentException("'" + str2 + "' not recognized");
                }
                ((HashSet) c2242a.f438a).add(str2);
            }
        }
        BasicFileAttributes attributes = c2243b.readAttributes();
        if (c2242a.m525b("size")) {
            c2242a.m524a("size", Long.valueOf(((C2244c) attributes).f450h));
        }
        if (c2242a.m525b("creationTime")) {
            c2242a.m524a("creationTime", ((C2244c) attributes).f445c);
        }
        if (c2242a.m525b("lastAccessTime")) {
            c2242a.m524a("lastAccessTime", ((C2244c) attributes).f444b);
        }
        if (c2242a.m525b("lastModifiedTime")) {
            c2242a.m524a("lastModifiedTime", ((C2244c) attributes).f443a);
        }
        if (c2242a.m525b("fileKey")) {
            c2242a.m524a("fileKey", ((C2244c) attributes).f451i);
        }
        if (c2242a.m525b("isDirectory")) {
            c2242a.m524a("isDirectory", Boolean.valueOf(((C2244c) attributes).f447e));
        }
        if (c2242a.m525b("isRegularFile")) {
            c2242a.m524a("isRegularFile", Boolean.valueOf(((C2244c) attributes).f446d));
        }
        if (c2242a.m525b("isSymbolicLink")) {
            c2242a.m524a("isSymbolicLink", Boolean.valueOf(((C2244c) attributes).f448f));
        }
        if (c2242a.m525b("isOther")) {
            c2242a.m524a("isOther", Boolean.valueOf(((C2244c) attributes).f449g));
        }
        return Collections.unmodifiableMap(c2242a.f439b);
    }

    @Override // j$.nio.file.spi.AbstractC2309d
    /* JADX INFO: renamed from: z */
    public final Path mo592z(Path path) {
        return new C2256o(this.f472g, path.toFile().getCanonicalPath(), this.f470e, this.f471f);
    }
}
