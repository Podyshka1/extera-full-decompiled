package okio;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.zip.Inflater;
import kotlin.ExceptionsKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.Path;
import okio.internal.FixedLengthSource;
import okio.internal.ZipEntry;
import okio.internal.ZipFilesKt;

/* JADX INFO: loaded from: classes5.dex */
public final class ZipFileSystem extends FileSystem {
    private static final Companion Companion = new Companion(null);
    private static final Path ROOT = Path.Companion.get$default(Path.Companion, "/", false, 1, (Object) null);
    private final String comment;
    private final Map entries;
    private final FileSystem fileSystem;
    private final Path zipPath;

    public ZipFileSystem(Path zipPath, FileSystem fileSystem, Map entries, String str) {
        Intrinsics.checkNotNullParameter(zipPath, "zipPath");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(entries, "entries");
        this.zipPath = zipPath;
        this.fileSystem = fileSystem;
        this.entries = entries;
        this.comment = str;
    }

    @Override // okio.FileSystem
    public Path canonicalize(Path path) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(path, "path");
        Path pathCanonicalizeInternal = canonicalizeInternal(path);
        if (this.entries.containsKey(pathCanonicalizeInternal)) {
            return pathCanonicalizeInternal;
        }
        throw new FileNotFoundException(String.valueOf(path));
    }

    private final Path canonicalizeInternal(Path path) {
        return ROOT.resolve(path, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x005f A[Catch: all -> 0x004e, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x004e, blocks: (B:8:0x0027, B:34:0x005f, B:22:0x004a, B:9:0x0033, B:19:0x0045), top: B:60:0x0027, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x006f  */
    @Override // okio.FileSystem
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FileMetadata metadataOrNull(Path path) throws Throwable {
        Throwable th;
        BufferedSource bufferedSourceBuffer;
        Throwable th2;
        Intrinsics.checkNotNullParameter(path, "path");
        ZipEntry localHeader = (ZipEntry) this.entries.get(canonicalizeInternal(path));
        if (localHeader == null) {
            return null;
        }
        if (localHeader.getOffset() != -1) {
            FileHandle fileHandleOpenReadOnly = this.fileSystem.openReadOnly(this.zipPath);
            try {
                bufferedSourceBuffer = Okio.buffer(fileHandleOpenReadOnly.source(localHeader.getOffset()));
                try {
                    localHeader = ZipFilesKt.readLocalHeader(bufferedSourceBuffer, localHeader);
                } catch (Throwable th3) {
                    if (bufferedSourceBuffer != null) {
                        try {
                            bufferedSourceBuffer.close();
                        } catch (Throwable th4) {
                            ExceptionsKt.addSuppressed(th3, th4);
                        }
                    }
                    th2 = th3;
                    localHeader = null;
                }
            } catch (Throwable th5) {
                if (fileHandleOpenReadOnly != null) {
                    try {
                        fileHandleOpenReadOnly.close();
                    } catch (Throwable th6) {
                        ExceptionsKt.addSuppressed(th5, th6);
                    }
                }
                th = th5;
                localHeader = null;
            }
            if (bufferedSourceBuffer != null) {
                try {
                    bufferedSourceBuffer.close();
                    th2 = null;
                } catch (Throwable th7) {
                    th2 = th7;
                }
                if (th2 == null) {
                    throw th2;
                }
                if (fileHandleOpenReadOnly != null) {
                    try {
                        fileHandleOpenReadOnly.close();
                        th = null;
                    } catch (Throwable th8) {
                        th = th8;
                    }
                } else {
                    th = null;
                }
                if (th != null) {
                    throw th;
                }
            } else {
                th2 = null;
                if (th2 == null) {
                }
                if (th != null) {
                }
            }
        }
        return new FileMetadata(!localHeader.isDirectory(), localHeader.isDirectory(), null, localHeader.isDirectory() ? null : Long.valueOf(localHeader.getSize()), localHeader.getCreatedAtMillis$okio(), localHeader.getLastModifiedAtMillis$okio(), localHeader.getLastAccessedAtMillis$okio(), null, 128, null);
    }

    @Override // okio.FileSystem
    public FileHandle openReadOnly(Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new UnsupportedOperationException("not implemented yet!");
    }

    @Override // okio.FileSystem
    public FileHandle openReadWrite(Path file, boolean z, boolean z2) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException("zip entries are not writable");
    }

    @Override // okio.FileSystem
    public List list(Path dir) throws IOException {
        Intrinsics.checkNotNullParameter(dir, "dir");
        List list = list(dir, true);
        Intrinsics.checkNotNull(list);
        return list;
    }

    @Override // okio.FileSystem
    public List listOrNull(Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        return list(dir, false);
    }

    private final List list(Path path, boolean z) throws IOException {
        ZipEntry zipEntry = (ZipEntry) this.entries.get(canonicalizeInternal(path));
        if (zipEntry != null) {
            return CollectionsKt.toList(zipEntry.getChildren());
        }
        if (!z) {
            return null;
        }
        throw new IOException("not a directory: " + path);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v8 */
    @Override // okio.FileSystem
    public Source source(Path file) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(file, "file");
        ZipEntry zipEntry = (ZipEntry) this.entries.get(canonicalizeInternal(file));
        if (zipEntry == null) {
            throw new FileNotFoundException("no such file: " + file);
        }
        FileHandle fileHandleOpenReadOnly = this.fileSystem.openReadOnly(this.zipPath);
        BufferedSource th = null;
        try {
            BufferedSource bufferedSourceBuffer = Okio.buffer(fileHandleOpenReadOnly.source(zipEntry.getOffset()));
            if (fileHandleOpenReadOnly != null) {
                try {
                    fileHandleOpenReadOnly.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            th = th;
            th = bufferedSourceBuffer;
        } catch (Throwable th3) {
            th = th3;
            if (fileHandleOpenReadOnly != null) {
                try {
                    fileHandleOpenReadOnly.close();
                } catch (Throwable th4) {
                    ExceptionsKt.addSuppressed(th, th4);
                }
            }
        }
        if (th != 0) {
            throw th;
        }
        ZipFilesKt.skipLocalHeader(th);
        if (zipEntry.getCompressionMethod() == 0) {
            return new FixedLengthSource(th, zipEntry.getSize(), true);
        }
        return new FixedLengthSource(new InflaterSource(new FixedLengthSource(th, zipEntry.getCompressedSize(), true), new Inflater(true)), zipEntry.getSize(), false);
    }

    @Override // okio.FileSystem
    public Sink sink(Path file, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public Sink appendingSink(Path file, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void createDirectory(Path dir, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(dir, "dir");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void atomicMove(Path source, Path target) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void delete(Path path, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(path, "path");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void createSymlink(Path source, Path target) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        throw new IOException("zip file systems are read-only");
    }

    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
