package j$.nio.file;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import j$.desugar.sun.nio.fs.C2109h;
import j$.io.DesugarInputStream;
import j$.io.InputStreamRetargetInterface;
import j$.nio.file.attribute.BasicFileAttributeView;
import j$.nio.file.attribute.BasicFileAttributes;
import j$.nio.file.attribute.C2141t;
import j$.nio.file.attribute.C2142u;
import j$.nio.file.attribute.FileAttribute;
import j$.nio.file.attribute.FileAttributeView;
import j$.nio.file.attribute.FileTime;
import j$.nio.file.attribute.InterfaceC2137p;
import j$.nio.file.attribute.PosixFilePermission;
import j$.nio.file.attribute.UserPrincipal;
import j$.nio.file.spi.AbstractC2169d;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.channels.Channels;
import java.nio.channels.SeekableByteChannel;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.file.AtomicMoveNotSupportedException;
import java.nio.file.DirectoryStream;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.FileSystemException;
import java.nio.file.NoSuchFileException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.Spliterators;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class Files {

    /* JADX INFO: renamed from: a */
    public static final Set f491a = AbstractC2108g.m520q(new Object[]{StandardOpenOption.CREATE_NEW, StandardOpenOption.WRITE});

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: a */
    public static void m596a(InputStream inputStream, Path path, CopyOption... copyOptionArr) throws IOException {
        Objects.requireNonNull(inputStream);
        int length = copyOptionArr.length;
        int i = 0;
        boolean z = false;
        while (i < length) {
            CopyOption copyOption = copyOptionArr[i];
            if (copyOption != StandardCopyOption.REPLACE_EXISTING) {
                if (copyOption == null) {
                    throw new NullPointerException("options contains 'null'");
                }
                throw new UnsupportedOperationException(copyOption + " not supported");
            }
            i++;
            z = true;
        }
        if (z) {
            try {
                deleteIfExists(path);
                e = null;
            } catch (SecurityException e) {
                e = e;
            }
        } else {
            e = null;
        }
        try {
            OutputStream outputStreamNewOutputStream = newOutputStream(path, StandardOpenOption.CREATE_NEW, StandardOpenOption.WRITE);
            try {
                if (inputStream instanceof InputStreamRetargetInterface) {
                    ((InputStreamRetargetInterface) inputStream).transferTo(outputStreamNewOutputStream);
                } else {
                    DesugarInputStream.transferTo(inputStream, outputStreamNewOutputStream);
                }
                if (outputStreamNewOutputStream != null) {
                    outputStreamNewOutputStream.close();
                }
            } catch (Throwable th) {
                if (outputStreamNewOutputStream != null) {
                    try {
                        outputStreamNewOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (FileAlreadyExistsException e2) {
            if (e == null) {
                throw e2;
            }
            throw e;
        }
    }

    /* JADX INFO: renamed from: b */
    public static AbstractC2169d m597b(Path path) {
        return path.getFileSystem().mo540g();
    }

    public static Path copy(Path path, Path path2, CopyOption... copyOptionArr) throws IOException {
        AbstractC2169d abstractC2169dM597b = m597b(path);
        if (m597b(path2).equals(abstractC2169dM597b)) {
            abstractC2169dM597b.mo547b(path, path2, copyOptionArr);
            return path2;
        }
        AbstractC2108g.m510g(path, path2, copyOptionArr);
        return path2;
    }

    public static Path createDirectories(Path path, FileAttribute<?>... fileAttributeArr) {
        try {
            try {
                createDirectory(path, fileAttributeArr);
            } catch (IOException unused) {
                try {
                    path = path.toAbsolutePath();
                    e = null;
                } catch (SecurityException e) {
                    e = e;
                }
                Path parent = path.getParent();
                while (parent != null) {
                    try {
                        parent.getFileSystem().mo540g().mo546a(parent, new EnumC2121a[0]);
                        break;
                    } catch (NoSuchFileException unused2) {
                        parent = parent.getParent();
                    }
                }
                if (parent == null) {
                    if (e == null) {
                        throw new FileSystemException(path.toString(), null, "Unable to determine if root directory exists");
                    }
                    throw e;
                }
                Iterator it = parent.relativize(path).iterator();
                while (it.hasNext()) {
                    parent = parent.resolve((Path) it.next());
                    try {
                        createDirectory(parent, fileAttributeArr);
                    } catch (FileAlreadyExistsException e2) {
                        if (!isDirectory(parent, LinkOption.NOFOLLOW_LINKS)) {
                            throw e2;
                        }
                    }
                }
                return path;
            }
        } catch (FileAlreadyExistsException e3) {
            try {
                if (!isDirectory(path, LinkOption.NOFOLLOW_LINKS)) {
                    throw e3;
                }
            } catch (FileAlreadyExistsException e4) {
                throw e4;
            }
        }
        return path;
    }

    public static Path createDirectory(Path path, FileAttribute<?>... fileAttributeArr) {
        m597b(path).mo548c(path, fileAttributeArr);
        return path;
    }

    public static Path createFile(Path path, FileAttribute<?>... fileAttributeArr) {
        m597b(path).mo562q(path, f491a, fileAttributeArr).close();
        return path;
    }

    public static Path createLink(Path path, Path path2) {
        m597b(path).mo549d(path, path2);
        return path;
    }

    public static Path createSymbolicLink(Path path, Path path2, FileAttribute<?>... fileAttributeArr) {
        m597b(path).mo550e(path, path2, fileAttributeArr);
        return path;
    }

    public static Path createTempDirectory(Path path, String str, FileAttribute<?>... fileAttributeArr) {
        Objects.requireNonNull(path);
        return k0.m623a(path, str, null, true, fileAttributeArr);
    }

    public static Path createTempFile(Path path, String str, String str2, FileAttribute<?>... fileAttributeArr) {
        Objects.requireNonNull(path);
        return k0.m623a(path, str, str2, false, fileAttributeArr);
    }

    public static void delete(Path path) {
        m597b(path).mo551f(path);
    }

    public static boolean deleteIfExists(Path path) {
        return m597b(path).mo552g(path);
    }

    public static boolean exists(Path path, LinkOption... linkOptionArr) {
        if (linkOptionArr.length == 0) {
            m597b(path);
        }
        try {
            int length = linkOptionArr.length;
            int i = 0;
            boolean z = true;
            while (i < length) {
                LinkOption linkOption = linkOptionArr[i];
                if (linkOption != LinkOption.NOFOLLOW_LINKS) {
                    linkOption.getClass();
                    throw new AssertionError("Should not get here");
                }
                i++;
                z = false;
            }
            if (z) {
                m597b(path).mo546a(path, new EnumC2121a[0]);
            } else {
                readAttributes(path, BasicFileAttributes.class, LinkOption.NOFOLLOW_LINKS);
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static Object getAttribute(Path path, String str, LinkOption... linkOptionArr) {
        if (str.indexOf(42) >= 0 || str.indexOf(44) >= 0) {
            C2148b.m608a(str);
            return null;
        }
        Map<String, Object> attributes = readAttributes(path, str, linkOptionArr);
        int iIndexOf = str.indexOf(58);
        if (iIndexOf != -1) {
            str = iIndexOf == str.length() ? _UrlKt.FRAGMENT_ENCODE_SET : str.substring(iIndexOf + 1);
        }
        return attributes.get(str);
    }

    public static <V extends FileAttributeView> V getFileAttributeView(Path path, Class<V> cls, LinkOption... linkOptionArr) {
        return (V) m597b(path).mo553h(path, cls, linkOptionArr);
    }

    public static FileStore getFileStore(Path path) {
        return m597b(path).mo554i(path);
    }

    public static FileTime getLastModifiedTime(Path path, LinkOption... linkOptionArr) {
        return readAttributes(path, BasicFileAttributes.class, linkOptionArr).lastModifiedTime();
    }

    public static UserPrincipal getOwner(Path path, LinkOption... linkOptionArr) {
        InterfaceC2137p interfaceC2137p = (InterfaceC2137p) getFileAttributeView(path, InterfaceC2137p.class, linkOptionArr);
        if (interfaceC2137p != null) {
            return interfaceC2137p.getOwner();
        }
        throw new UnsupportedOperationException();
    }

    public static Set<PosixFilePermission> getPosixFilePermissions(Path path, LinkOption... linkOptionArr) {
        return AbstractC2108g.m516m(((C2142u) readAttributes(path, C2142u.class, linkOptionArr)).f520a.permissions());
    }

    public static boolean isDirectory(Path path, LinkOption... linkOptionArr) {
        if (linkOptionArr.length == 0) {
            m597b(path);
        }
        try {
            return readAttributes(path, BasicFileAttributes.class, linkOptionArr).isDirectory();
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean isExecutable(Path path) {
        try {
            m597b(path).mo546a(path, EnumC2121a.EXECUTE);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean isHidden(Path path) {
        return m597b(path).mo558m(path);
    }

    public static boolean isReadable(Path path) {
        try {
            m597b(path).mo546a(path, EnumC2121a.READ);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean isRegularFile(Path path, LinkOption... linkOptionArr) {
        if (linkOptionArr.length == 0) {
            m597b(path);
        }
        try {
            return readAttributes(path, BasicFileAttributes.class, linkOptionArr).isRegularFile();
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean isSameFile(Path path, Path path2) {
        return m597b(path).mo559n(path, path2);
    }

    public static boolean isSymbolicLink(Path path) {
        try {
            return readAttributes(path, BasicFileAttributes.class, LinkOption.NOFOLLOW_LINKS).isSymbolicLink();
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean isWritable(Path path) {
        try {
            m597b(path).mo546a(path, EnumC2121a.WRITE);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static Stream<Path> list(Path path) {
        DirectoryStream<Path> directoryStreamNewDirectoryStream = newDirectoryStream(path);
        try {
            return (Stream) StreamSupport.stream(Spliterators.spliteratorUnknownSize(new C2163q(directoryStreamNewDirectoryStream.iterator()), 1), false).onClose(new RunnableC2165s(directoryStreamNewDirectoryStream));
        } catch (Error | RuntimeException e) {
            try {
                directoryStreamNewDirectoryStream.close();
            } catch (IOException e2) {
                try {
                    e.addSuppressed(e2);
                } catch (Throwable unused) {
                }
            }
            throw e;
        }
    }

    public static Path move(Path path, Path path2, CopyOption... copyOptionArr) {
        AbstractC2169d abstractC2169dM597b = m597b(path);
        if (m597b(path2).equals(abstractC2169dM597b)) {
            abstractC2169dM597b.mo560o(path, path2, copyOptionArr);
            return path2;
        }
        int length = copyOptionArr.length;
        CopyOption[] copyOptionArr2 = new CopyOption[length + 2];
        for (int i = 0; i < length; i++) {
            CopyOption copyOption = copyOptionArr[i];
            if (copyOption == StandardCopyOption.ATOMIC_MOVE) {
                throw new AtomicMoveNotSupportedException(null, null, "Atomic move between providers is not supported");
            }
            copyOptionArr2[i] = copyOption;
        }
        copyOptionArr2[length] = LinkOption.NOFOLLOW_LINKS;
        copyOptionArr2[length + 1] = StandardCopyOption.COPY_ATTRIBUTES;
        AbstractC2108g.m510g(path, path2, copyOptionArr2);
        delete(path);
        return path2;
    }

    public static BufferedReader newBufferedReader(Path path, Charset charset) {
        return new BufferedReader(new InputStreamReader(newInputStream(path, new OpenOption[0]), charset.newDecoder()));
    }

    public static DirectoryStream<Path> newDirectoryStream(Path path, String str) {
        if (str.equals("*")) {
            return newDirectoryStream(path);
        }
        FileSystem fileSystem = path.getFileSystem();
        return fileSystem.mo540g().mo563r(path, new C2109h(fileSystem.mo535b("glob:".concat(str)), 1));
    }

    public static InputStream newInputStream(Path path, OpenOption... openOptionArr) {
        return m597b(path).mo631v(path, openOptionArr);
    }

    public static OutputStream newOutputStream(Path path, OpenOption... openOptionArr) {
        return m597b(path).mo632w(path, openOptionArr);
    }

    public static boolean notExists(Path path, LinkOption... linkOptionArr) {
        boolean z;
        try {
            int length = linkOptionArr.length;
            z = true;
            int i = 0;
            while (i < length) {
                LinkOption linkOption = linkOptionArr[i];
                if (linkOption != LinkOption.NOFOLLOW_LINKS) {
                    linkOption.getClass();
                    throw new AssertionError("Should not get here");
                }
                i++;
                z = false;
            }
        } catch (NoSuchFileException unused) {
            return true;
        } catch (IOException unused2) {
        }
        if (z) {
            m597b(path).mo546a(path, new EnumC2121a[0]);
            return false;
        }
        readAttributes(path, BasicFileAttributes.class, LinkOption.NOFOLLOW_LINKS);
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
    
        if (r2 != r1) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005b, code lost:
    
        r3 = java.util.Arrays.copyOf(r3, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005f, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0062, code lost:
    
        r8.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0065, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static byte[] readAllBytes(Path path) {
        int i;
        int i2 = 0;
        SeekableByteChannel seekableByteChannelMo562q = m597b(path).mo562q(path, Collections.EMPTY_SET, new FileAttribute[0]);
        try {
            InputStream inputStreamNewInputStream = Channels.newInputStream(seekableByteChannelMo562q);
            try {
                long size = seekableByteChannelMo562q.size();
                if (size > 2147483639) {
                    throw new OutOfMemoryError("Required array size too large");
                }
                int iMax = (int) size;
                byte[] bArrCopyOf = new byte[iMax];
                while (true) {
                    int i3 = inputStreamNewInputStream.read(bArrCopyOf, i2, iMax - i2);
                    if (i3 <= 0) {
                        if (i3 < 0 || (i = inputStreamNewInputStream.read()) < 0) {
                            break;
                        }
                        if (iMax <= 2147483639 - iMax) {
                            iMax = Math.max(iMax << 1, 8192);
                        } else {
                            if (iMax == 2147483639) {
                                throw new OutOfMemoryError("Required array size too large");
                            }
                            iMax = 2147483639;
                        }
                        bArrCopyOf = Arrays.copyOf(bArrCopyOf, iMax);
                        bArrCopyOf[i2] = (byte) i;
                        i2++;
                    } else {
                        i2 += i3;
                    }
                }
            } finally {
            }
        } catch (Throwable th) {
            if (seekableByteChannelMo562q != null) {
                try {
                    seekableByteChannelMo562q.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static List<String> readAllLines(Path path, Charset charset) throws IOException {
        BufferedReader bufferedReaderNewBufferedReader = newBufferedReader(path, charset);
        try {
            ArrayList arrayList = new ArrayList();
            while (true) {
                String line = bufferedReaderNewBufferedReader.readLine();
                if (line == null) {
                    bufferedReaderNewBufferedReader.close();
                    return arrayList;
                }
                arrayList.add(line);
            }
        } catch (Throwable th) {
            if (bufferedReaderNewBufferedReader != null) {
                try {
                    bufferedReaderNewBufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static <A extends BasicFileAttributes> A readAttributes(Path path, Class<A> cls, LinkOption... linkOptionArr) {
        return (A) m597b(path).mo566x(path, cls, linkOptionArr);
    }

    public static Path readSymbolicLink(Path path) {
        return m597b(path).mo568z(path);
    }

    public static Path setAttribute(Path path, String str, Object obj, LinkOption... linkOptionArr) {
        m597b(path).mo545A(path, str, obj, linkOptionArr);
        return path;
    }

    public static Path setLastModifiedTime(Path path, FileTime fileTime) {
        BasicFileAttributeView basicFileAttributeView = (BasicFileAttributeView) getFileAttributeView(path, BasicFileAttributeView.class, new LinkOption[0]);
        Objects.requireNonNull(fileTime);
        basicFileAttributeView.mo502a(fileTime, null, null);
        return path;
    }

    public static Path setOwner(Path path, UserPrincipal userPrincipal) {
        InterfaceC2137p interfaceC2137p = (InterfaceC2137p) getFileAttributeView(path, InterfaceC2137p.class, new LinkOption[0]);
        if (interfaceC2137p == null) {
            throw new UnsupportedOperationException();
        }
        interfaceC2137p.mo603b(userPrincipal);
        return path;
    }

    public static Path setPosixFilePermissions(Path path, Set<PosixFilePermission> set) throws IOException {
        C2141t c2141t = (C2141t) getFileAttributeView(path, C2141t.class, new LinkOption[0]);
        if (c2141t == null) {
            throw new UnsupportedOperationException();
        }
        c2141t.f519a.setPermissions(AbstractC2108g.m516m(set));
        return path;
    }

    public static long size(Path path) {
        return readAttributes(path, BasicFileAttributes.class, new LinkOption[0]).size();
    }

    public static Stream<Path> walk(Path path, FileVisitOption... fileVisitOptionArr) {
        C2157k c2157k = new C2157k(path, fileVisitOptionArr);
        try {
            return ((Stream) StreamSupport.stream(Spliterators.spliteratorUnknownSize(c2157k, 1), false).onClose(new RunnableC2165s(c2157k))).map(new C2170t());
        } catch (Error | RuntimeException e) {
            c2157k.close();
            throw e;
        }
    }

    public static Path walkFileTree(Path path, Set<FileVisitOption> set, int i, FileVisitor<? super Path> fileVisitor) {
        FileVisitResult fileVisitResultVisitFile;
        C2162p c2162p = new C2162p(set, i);
        try {
            if (c2162p.f570e) {
                throw new IllegalStateException("Closed");
            }
            C2160n c2160nM627c = c2162p.m627c(path, false);
            do {
                int[] iArr = AbstractC2164r.f574a;
                EnumC2161o enumC2161o = c2160nM627c.f560a;
                BasicFileAttributes basicFileAttributes = c2160nM627c.f562c;
                IOException iOException = c2160nM627c.f563d;
                Path path2 = c2160nM627c.f561b;
                int i2 = iArr[enumC2161o.ordinal()];
                if (i2 == 1) {
                    fileVisitResultVisitFile = iOException == null ? fileVisitor.visitFile(path2, basicFileAttributes) : fileVisitor.visitFileFailed(path2, iOException);
                } else if (i2 == 2) {
                    fileVisitResultVisitFile = fileVisitor.preVisitDirectory(path2, basicFileAttributes);
                    if ((fileVisitResultVisitFile == FileVisitResult.SKIP_SUBTREE || fileVisitResultVisitFile == FileVisitResult.SKIP_SIBLINGS) && !c2162p.f569d.isEmpty()) {
                        try {
                            ((C2159m) c2162p.f569d.pop()).f556c.close();
                        } catch (IOException unused) {
                        }
                    }
                } else {
                    if (i2 != 3) {
                        throw new AssertionError("Should not get here");
                    }
                    fileVisitResultVisitFile = fileVisitor.postVisitDirectory(path2, iOException);
                    if (fileVisitResultVisitFile == FileVisitResult.SKIP_SIBLINGS) {
                        fileVisitResultVisitFile = FileVisitResult.CONTINUE;
                    }
                }
                Objects.requireNonNull(fileVisitResultVisitFile);
                if (fileVisitResultVisitFile != FileVisitResult.CONTINUE) {
                    if (fileVisitResultVisitFile == FileVisitResult.TERMINATE) {
                        break;
                    }
                    if (fileVisitResultVisitFile == FileVisitResult.SKIP_SIBLINGS && !c2162p.f569d.isEmpty()) {
                        ((C2159m) c2162p.f569d.peek()).f558e = true;
                    }
                    c2160nM627c = c2162p.m626b();
                } else {
                    c2160nM627c = c2162p.m626b();
                }
            } while (c2160nM627c != null);
            c2162p.close();
            return path;
        } catch (Throwable th) {
            try {
                c2162p.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static Path write(Path path, Iterable<? extends CharSequence> iterable, Charset charset, OpenOption... openOptionArr) throws IOException {
        Objects.requireNonNull(iterable);
        CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        OutputStream outputStreamNewOutputStream = newOutputStream(path, openOptionArr);
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStreamNewOutputStream, charsetEncoderNewEncoder));
            try {
                Iterator<? extends CharSequence> it = iterable.iterator();
                while (it.hasNext()) {
                    bufferedWriter.append(it.next());
                    bufferedWriter.newLine();
                }
                bufferedWriter.close();
                if (outputStreamNewOutputStream != null) {
                    outputStreamNewOutputStream.close();
                }
                return path;
            } finally {
            }
        } catch (Throwable th) {
            if (outputStreamNewOutputStream != null) {
                try {
                    outputStreamNewOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static Map<String, Object> readAttributes(Path path, String str, LinkOption... linkOptionArr) {
        return m597b(path).mo567y(path, str, linkOptionArr);
    }

    public static Path createTempFile(String str, String str2, FileAttribute<?>... fileAttributeArr) {
        return k0.m623a(null, str, str2, false, fileAttributeArr);
    }

    public static Path createTempDirectory(String str, FileAttribute<?>... fileAttributeArr) {
        return k0.m623a(null, str, null, true, fileAttributeArr);
    }

    public static DirectoryStream<Path> newDirectoryStream(Path path) {
        return m597b(path).mo563r(path, C2171u.f585a);
    }

    public static Path write(Path path, byte[] bArr, OpenOption... openOptionArr) throws IOException {
        Objects.requireNonNull(bArr);
        OutputStream outputStreamNewOutputStream = newOutputStream(path, openOptionArr);
        try {
            int length = bArr.length;
            int i = length;
            while (i > 0) {
                int iMin = Math.min(i, 8192);
                outputStreamNewOutputStream.write(bArr, length - i, iMin);
                i -= iMin;
            }
            if (outputStreamNewOutputStream != null) {
                outputStreamNewOutputStream.close();
            }
            return path;
        } catch (Throwable th) {
            if (outputStreamNewOutputStream != null) {
                try {
                    outputStreamNewOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
