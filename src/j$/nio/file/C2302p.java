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
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2302p implements Closeable {

    /* JADX INFO: renamed from: a */
    public final boolean f567a;

    /* JADX INFO: renamed from: b */
    public final LinkOption[] f568b;

    /* JADX INFO: renamed from: c */
    public final int f569c;

    /* JADX INFO: renamed from: d */
    public final ArrayDeque f570d = new ArrayDeque();

    /* JADX INFO: renamed from: e */
    public boolean f571e;

    public C2302p(Collection collection, int i) {
        Iterator it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (AbstractC2298l.f553a[((FileVisitOption) it.next()).ordinal()] != 1) {
                throw new AssertionError("Should not get here");
            }
            z = true;
        }
        if (i < 0) {
            C2288b.m632a("'maxDepth' is negative");
            throw null;
        }
        this.f567a = z;
        this.f568b = z ? new LinkOption[0] : new LinkOption[]{LinkOption.NOFOLLOW_LINKS};
        this.f569c = i;
    }

    /* JADX INFO: renamed from: a */
    public final BasicFileAttributes m649a(Path path) throws IOException {
        try {
            return Files.readAttributes(path, BasicFileAttributes.class, this.f568b);
        } catch (IOException e) {
            if (this.f567a) {
                return Files.readAttributes(path, BasicFileAttributes.class, LinkOption.NOFOLLOW_LINKS);
            }
            throw e;
        }
    }

    /* JADX INFO: renamed from: b */
    public final C2300n m650b() {
        Path path;
        IOException cause;
        C2300n c2300nM651c;
        C2299m c2299m = (C2299m) this.f570d.peek();
        if (c2299m == null) {
            return null;
        }
        do {
            if (c2299m.f559e) {
                path = null;
                cause = null;
            } else {
                Iterator it = c2299m.f558d;
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
                    c2299m.f557c.close();
                } catch (IOException e2) {
                    if (cause == null) {
                        cause = e2;
                    } else {
                        cause.addSuppressed(e2);
                    }
                }
                this.f570d.pop();
                return new C2300n(EnumC2301o.END_DIRECTORY, c2299m.f555a, null, cause);
            }
            c2300nM651c = m651c(path, true);
        } while (c2300nM651c == null);
        return c2300nM651c;
    }

    /* JADX INFO: renamed from: c */
    public final C2300n m651c(Path path, boolean z) {
        try {
            BasicFileAttributes basicFileAttributesM649a = m649a(path);
            if (this.f570d.size() >= this.f569c || !basicFileAttributesM649a.isDirectory()) {
                return new C2300n(EnumC2301o.ENTRY, path, basicFileAttributesM649a, null);
            }
            if (this.f567a) {
                Object objFileKey = basicFileAttributesM649a.fileKey();
                for (C2299m c2299m : this.f570d) {
                    Object obj = c2299m.f556b;
                    if (objFileKey == null || obj == null) {
                        try {
                        } catch (IOException | SecurityException unused) {
                            continue;
                        }
                        if (Files.isSameFile(path, c2299m.f555a)) {
                            return new C2300n(EnumC2301o.ENTRY, path, null, new FileSystemLoopException(path.toString()));
                        }
                    } else if (objFileKey.equals(obj)) {
                        return new C2300n(EnumC2301o.ENTRY, path, null, new FileSystemLoopException(path.toString()));
                    }
                }
            }
            try {
                this.f570d.push(new C2299m(path, basicFileAttributesM649a.fileKey(), Files.newDirectoryStream(path)));
                return new C2300n(EnumC2301o.START_DIRECTORY, path, basicFileAttributesM649a, null);
            } catch (IOException e) {
                return new C2300n(EnumC2301o.ENTRY, path, null, e);
            } catch (SecurityException e2) {
                if (!z) {
                    throw e2;
                }
                return null;
            }
        } catch (IOException e3) {
            return new C2300n(EnumC2301o.ENTRY, path, null, e3);
        } catch (SecurityException e4) {
            if (!z) {
                throw e4;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f571e) {
            return;
        }
        while (!this.f570d.isEmpty()) {
            if (!this.f570d.isEmpty()) {
                try {
                    ((C2299m) this.f570d.pop()).f557c.close();
                } catch (IOException unused) {
                }
            }
        }
        this.f571e = true;
    }
}
