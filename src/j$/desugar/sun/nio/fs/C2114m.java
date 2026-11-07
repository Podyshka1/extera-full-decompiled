package j$.desugar.sun.nio.fs;

import j$.nio.channels.C2119a;
import j$.nio.file.C2148b;
import j$.nio.file.CopyOption;
import j$.nio.file.EnumC2121a;
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
import j$.nio.file.spi.AbstractC2169d;
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
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2114m extends AbstractC2169d {

    /* JADX INFO: renamed from: e */
    public final String f469e;

    /* JADX INFO: renamed from: f */
    public final String f470f = "/";

    /* JADX INFO: renamed from: g */
    public volatile C2110i f471g;

    public C2114m(String str) {
        this.f469e = str;
    }

    /* JADX INFO: renamed from: B */
    public static void m543B(URI uri) {
        if (!uri.getScheme().equalsIgnoreCase("file")) {
            C2148b.m608a("URI does not match this provider");
            return;
        }
        if (uri.getRawAuthority() != null) {
            C2148b.m608a("Authority component present");
            return;
        }
        String path = uri.getPath();
        if (path == null) {
            C2148b.m608a("Path component is undefined");
            return;
        }
        if (!path.equals("/")) {
            C2148b.m608a("Path component should be '/'");
        } else if (uri.getRawQuery() != null) {
            C2148b.m608a("Query component present");
        } else {
            if (uri.getRawFragment() == null) {
                return;
            }
            C2148b.m608a("Fragment component present");
        }
    }

    /* JADX INFO: renamed from: C */
    public static boolean m544C(CopyOption[] copyOptionArr, StandardCopyOption standardCopyOption) {
        for (CopyOption copyOption : copyOptionArr) {
            if (copyOption == standardCopyOption) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: A */
    public final void mo545A(Path path, String str, Object obj, LinkOption... linkOptionArr) {
        int iIndexOf = str.indexOf(":");
        if (iIndexOf != -1) {
            String strSubstring = str.substring(0, iIndexOf);
            if (!"basic".equals(strSubstring)) {
                C2148b.m612e("Requested attribute type for: ", strSubstring, " is not available.");
                return;
            }
            str = str.substring(iIndexOf + 1);
        }
        C2103b c2103b = new C2103b(path);
        if (str.equals("lastModifiedTime")) {
            c2103b.mo502a((FileTime) obj, null, null);
            return;
        }
        if (str.equals("lastAccessTime")) {
            c2103b.mo502a(null, (FileTime) obj, null);
        } else {
            if (str.equals("creationTime")) {
                return;
            }
            throw new IllegalArgumentException("'basic:" + str + "' not recognized");
        }
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: a */
    public final void mo546a(Path path, EnumC2121a... enumC2121aArr) throws IOException {
        boolean zCanRead;
        File file = path.toFile();
        if (!file.exists()) {
            throw new NoSuchFileException(path.toString());
        }
        boolean z = true;
        for (EnumC2121a enumC2121a : enumC2121aArr) {
            int i = AbstractC2111j.f463a[enumC2121a.ordinal()];
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

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: b */
    public final void mo547b(Path path, Path path2, CopyOption... copyOptionArr) throws IOException {
        if (!m544C(copyOptionArr, StandardCopyOption.REPLACE_EXISTING) && Files.exists(path2, new LinkOption[0])) {
            throw new FileAlreadyExistsException(path2.toString());
        }
        if (m544C(copyOptionArr, StandardCopyOption.ATOMIC_MOVE)) {
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

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: c */
    public final void mo548c(Path path, FileAttribute... fileAttributeArr) throws NoSuchFileException, FileAlreadyExistsException {
        if (path.getParent() != null && !Files.exists(path.getParent(), new LinkOption[0])) {
            throw new NoSuchFileException(path.toString());
        }
        if (!path.toFile().mkdirs()) {
            throw new FileAlreadyExistsException(path.toString());
        }
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: d */
    public final void mo549d(Path path, Path path2) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: e */
    public final void mo550e(Path path, Path path2, FileAttribute... fileAttributeArr) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: f */
    public final void mo551f(Path path) throws NoSuchFileException {
        try {
            mo546a(path, new EnumC2121a[0]);
            mo552g(path);
        } catch (IOException unused) {
            throw new NoSuchFileException(path.toString());
        }
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: g */
    public final boolean mo552g(Path path) {
        return path.toFile().delete();
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: h */
    public final FileAttributeView mo553h(Path path, Class cls, LinkOption... linkOptionArr) {
        cls.getClass();
        if (cls == BasicFileAttributeView.class) {
            return (FileAttributeView) cls.cast(new C2103b(path));
        }
        return null;
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: i */
    public final FileStore mo554i(Path path) {
        throw new SecurityException("getFileStore");
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: j */
    public final FileSystem mo555j(URI uri) {
        C2110i c2110i;
        m543B(uri);
        C2110i c2110i2 = this.f471g;
        if (c2110i2 != null) {
            return c2110i2;
        }
        synchronized (this) {
            try {
                c2110i = this.f471g;
                if (c2110i == null) {
                    c2110i = new C2110i(this, this.f469e, this.f470f);
                    this.f471g = c2110i;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2110i;
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: k */
    public final Path mo556k(URI uri) {
        byte bM578a;
        C2110i c2110i = this.f471g;
        String str = this.f469e;
        String str2 = this.f470f;
        char[] cArr = AbstractC2117p.f482c;
        if (!uri.isAbsolute()) {
            C2148b.m608a("URI is not absolute");
            return null;
        }
        if (uri.isOpaque()) {
            C2148b.m608a("URI is not hierarchical");
            return null;
        }
        String scheme = uri.getScheme();
        if (scheme == null || !scheme.equalsIgnoreCase("file")) {
            C2148b.m608a("URI scheme is not \"file\"");
            return null;
        }
        if (uri.getRawAuthority() != null) {
            C2148b.m608a("URI has an authority component");
            return null;
        }
        if (uri.getRawFragment() != null) {
            C2148b.m608a("URI has a fragment component");
            return null;
        }
        if (uri.getRawQuery() != null) {
            C2148b.m608a("URI has a query component");
            return null;
        }
        String rawPath = uri.getRawPath();
        int length = rawPath.length();
        if (length == 0) {
            C2148b.m608a("URI path component is empty");
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
                bM578a = (byte) ((AbstractC2117p.m578a(rawPath.charAt(i3)) << 4) | AbstractC2117p.m578a(rawPath.charAt(i4)));
                if (bM578a == 0) {
                    C2148b.m608a("Nul character not allowed");
                    return null;
                }
            } else {
                if (cCharAt == 0 || cCharAt >= 128) {
                    C2148b.m608a("Bad escape");
                    return null;
                }
                bM578a = (byte) cCharAt;
                i = i3;
            }
            bArrCopyOf[i2] = bM578a;
            i2++;
        }
        if (i2 != length) {
            bArrCopyOf = Arrays.copyOf(bArrCopyOf, i2);
        }
        return new C2116o(c2110i, new String(bArrCopyOf, AbstractC2118q.f483a), str, str2);
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: l */
    public final String mo557l() {
        return "file";
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: m */
    public final boolean mo558m(Path path) {
        return path.toFile().isHidden();
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: n */
    public final boolean mo559n(Path path, Path path2) throws IOException {
        if (path.equals(path2)) {
            return true;
        }
        mo546a(path, new EnumC2121a[0]);
        mo546a(path2, new EnumC2121a[0]);
        return path.toFile().equals(path2.toFile());
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: o */
    public final void mo560o(Path path, Path path2, CopyOption... copyOptionArr) throws FileAlreadyExistsException {
        if (!m544C(copyOptionArr, StandardCopyOption.REPLACE_EXISTING) && Files.exists(path2, new LinkOption[0])) {
            throw new FileAlreadyExistsException(path2.toString());
        }
        if (m544C(copyOptionArr, StandardCopyOption.COPY_ATTRIBUTES)) {
            throw new UnsupportedOperationException("Unsupported copy option");
        }
        path.toFile().renameTo(path2.toFile());
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: p */
    public final C2119a mo561p(Path path, Set set, ExecutorService executorService, FileAttribute... fileAttributeArr) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: q */
    public final SeekableByteChannel mo562q(Path path, Set set, FileAttribute... fileAttributeArr) {
        return mo564s(path, set, fileAttributeArr);
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: r */
    public final DirectoryStream mo563r(Path path, DirectoryStream.Filter filter) {
        C2112k c2112k = new C2112k();
        c2112k.f464a = new C2113l(this, path, filter);
        return c2112k;
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: s */
    public final FileChannel mo564s(Path path, Set set, FileAttribute... fileAttributeArr) {
        if (!path.toFile().isDirectory()) {
            return AbstractC2108g.m529z(path, set);
        }
        throw new UnsupportedOperationException("The desugar library does not support creating a file channel on a directory: " + path);
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: u */
    public final FileSystem mo565u(URI uri, Map map) {
        m543B(uri);
        throw new FileSystemAlreadyExistsException();
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: x */
    public final BasicFileAttributes mo566x(Path path, Class cls, LinkOption... linkOptionArr) {
        if (cls == BasicFileAttributes.class) {
            return (BasicFileAttributes) cls.cast(((BasicFileAttributeView) mo553h(path, BasicFileAttributeView.class, linkOptionArr)).readAttributes());
        }
        throw new UnsupportedOperationException();
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: y */
    public final Map mo567y(Path path, String str, LinkOption... linkOptionArr) {
        String[] strArrSplit;
        int iIndexOf = str.indexOf(":");
        if (iIndexOf == -1) {
            strArrSplit = str.split(",");
        } else {
            String strSubstring = str.substring(0, iIndexOf);
            if (!"basic".equals(strSubstring)) {
                C2148b.m612e("Requested attribute type for: ", strSubstring, " is not available.");
                return null;
            }
            strArrSplit = str.substring(iIndexOf + 1).split(",");
        }
        C2103b c2103b = new C2103b(path);
        Set set = C2103b.f440b;
        C2102a c2102a = new C2102a();
        c2102a.f437a = new HashSet();
        c2102a.f438b = new HashMap();
        for (String str2 : strArrSplit) {
            if (str2.equals("*")) {
                c2102a.f439c = true;
            } else {
                if (!((HashSet) set).contains(str2)) {
                    throw new IllegalArgumentException("'" + str2 + "' not recognized");
                }
                ((HashSet) c2102a.f437a).add(str2);
            }
        }
        BasicFileAttributes attributes = c2103b.readAttributes();
        if (c2102a.m501b("size")) {
            c2102a.m500a("size", Long.valueOf(((C2104c) attributes).f449h));
        }
        if (c2102a.m501b("creationTime")) {
            c2102a.m500a("creationTime", ((C2104c) attributes).f444c);
        }
        if (c2102a.m501b("lastAccessTime")) {
            c2102a.m500a("lastAccessTime", ((C2104c) attributes).f443b);
        }
        if (c2102a.m501b("lastModifiedTime")) {
            c2102a.m500a("lastModifiedTime", ((C2104c) attributes).f442a);
        }
        if (c2102a.m501b("fileKey")) {
            c2102a.m500a("fileKey", ((C2104c) attributes).f450i);
        }
        if (c2102a.m501b("isDirectory")) {
            c2102a.m500a("isDirectory", Boolean.valueOf(((C2104c) attributes).f446e));
        }
        if (c2102a.m501b("isRegularFile")) {
            c2102a.m500a("isRegularFile", Boolean.valueOf(((C2104c) attributes).f445d));
        }
        if (c2102a.m501b("isSymbolicLink")) {
            c2102a.m500a("isSymbolicLink", Boolean.valueOf(((C2104c) attributes).f447f));
        }
        if (c2102a.m501b("isOther")) {
            c2102a.m500a("isOther", Boolean.valueOf(((C2104c) attributes).f448g));
        }
        return Collections.unmodifiableMap(c2102a.f438b);
    }

    @Override // j$.nio.file.spi.AbstractC2169d
    /* JADX INFO: renamed from: z */
    public final Path mo568z(Path path) {
        return new C2116o(this.f471g, path.toFile().getCanonicalPath(), this.f469e, this.f470f);
    }
}
