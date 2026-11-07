package j$.nio.file;

import j$.nio.file.attribute.BasicFileAttributes;
import java.io.Closeable;
import java.io.IOException;
import java.nio.file.DirectoryIteratorException;
import java.nio.file.FileSystemLoopException;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: renamed from: j$.nio.file.p */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2162p implements Closeable {

    /* JADX INFO: renamed from: a */
    public final boolean f566a;

    /* JADX INFO: renamed from: b */
    public final LinkOption[] f567b;

    /* JADX INFO: renamed from: c */
    public final int f568c;

    /* JADX INFO: renamed from: d */
    public final ArrayDeque f569d = new ArrayDeque();

    /* JADX INFO: renamed from: e */
    public boolean f570e;

    public C2162p(Collection collection, int i) {
        Iterator it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (AbstractC2158l.f552a[((FileVisitOption) it.next()).ordinal()] != 1) {
                throw new AssertionError("Should not get here");
            }
            z = true;
        }
        if (i < 0) {
            C2148b.m608a("'maxDepth' is negative");
            throw null;
        }
        this.f566a = z;
        this.f567b = z ? new LinkOption[0] : new LinkOption[]{LinkOption.NOFOLLOW_LINKS};
        this.f568c = i;
    }

    /* JADX INFO: renamed from: a */
    public final BasicFileAttributes m625a(Path path) throws IOException {
        try {
            return Files.readAttributes(path, BasicFileAttributes.class, this.f567b);
        } catch (IOException e) {
            if (this.f566a) {
                return Files.readAttributes(path, BasicFileAttributes.class, LinkOption.NOFOLLOW_LINKS);
            }
            throw e;
        }
    }

    /* JADX INFO: renamed from: b */
    public final C2160n m626b() {
        Path path;
        IOException cause;
        C2160n c2160nM627c;
        C2159m c2159m = (C2159m) this.f569d.peek();
        if (c2159m == null) {
            return null;
        }
        do {
            if (c2159m.f558e) {
                path = null;
                cause = null;
            } else {
                Iterator it = c2159m.f557d;
                try {
                    path = it.hasNext() ? (Path) it.next() : null;
                    cause = null;
                } catch (DirectoryIteratorException e) {
                    cause = e.getCause();
                    path = null;
                }
            }
            if (path == null) {
                try {
                    c2159m.f556c.close();
                } catch (IOException e2) {
                    if (cause == null) {
                        cause = e2;
                    } else {
                        cause.addSuppressed(e2);
                    }
                }
                this.f569d.pop();
                return new C2160n(EnumC2161o.END_DIRECTORY, c2159m.f554a, null, cause);
            }
            c2160nM627c = m627c(path, true);
        } while (c2160nM627c == null);
        return c2160nM627c;
    }

    /* JADX INFO: renamed from: c */
    public final C2160n m627c(Path path, boolean z) {
        try {
            BasicFileAttributes basicFileAttributesM625a = m625a(path);
            if (this.f569d.size() >= this.f568c || !basicFileAttributesM625a.isDirectory()) {
                return new C2160n(EnumC2161o.ENTRY, path, basicFileAttributesM625a, null);
            }
            if (this.f566a) {
                Object objFileKey = basicFileAttributesM625a.fileKey();
                for (C2159m c2159m : this.f569d) {
                    Object obj = c2159m.f555b;
                    if (objFileKey == null || obj == null) {
                        try {
                        } catch (IOException | SecurityException unused) {
                            continue;
                        }
                        if (Files.isSameFile(path, c2159m.f554a)) {
                            return new C2160n(EnumC2161o.ENTRY, path, null, new FileSystemLoopException(path.toString()));
                        }
                    } else if (objFileKey.equals(obj)) {
                        return new C2160n(EnumC2161o.ENTRY, path, null, new FileSystemLoopException(path.toString()));
                    }
                }
            }
            try {
                this.f569d.push(new C2159m(path, basicFileAttributesM625a.fileKey(), Files.newDirectoryStream(path)));
                return new C2160n(EnumC2161o.START_DIRECTORY, path, basicFileAttributesM625a, null);
            } catch (IOException e) {
                return new C2160n(EnumC2161o.ENTRY, path, null, e);
            } catch (SecurityException e2) {
                if (!z) {
                    throw e2;
                }
                return null;
            }
        } catch (IOException e3) {
            return new C2160n(EnumC2161o.ENTRY, path, null, e3);
        } catch (SecurityException e4) {
            if (!z) {
                throw e4;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f570e) {
            return;
        }
        while (!this.f569d.isEmpty()) {
            if (!this.f569d.isEmpty()) {
                try {
                    ((C2159m) this.f569d.pop()).f556c.close();
                } catch (IOException unused) {
                }
            }
        }
        this.f570e = true;
    }
}
