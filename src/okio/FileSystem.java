package okio;

import java.io.Closeable;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import okio.Path;
import okio.internal.ResourceFileSystem;

/* JADX INFO: loaded from: classes5.dex */
public abstract class FileSystem implements Closeable {
    public static final Companion Companion = new Companion(null);
    public static final FileSystem RESOURCES;
    public static final FileSystem SYSTEM;
    public static final Path SYSTEM_TEMPORARY_DIRECTORY;

    public static final FileSystem get(java.nio.file.FileSystem fileSystem) {
        return Companion.get(fileSystem);
    }

    public abstract Sink appendingSink(Path path, boolean z);

    public abstract void atomicMove(Path path, Path path2);

    public abstract Path canonicalize(Path path);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public abstract void createDirectory(Path path, boolean z);

    public abstract void createSymlink(Path path, Path path2);

    public abstract void delete(Path path, boolean z);

    public abstract List list(Path path);

    public abstract List listOrNull(Path path);

    public abstract FileMetadata metadataOrNull(Path path);

    public abstract FileHandle openReadOnly(Path path);

    public abstract FileHandle openReadWrite(Path path, boolean z, boolean z2);

    public abstract Sink sink(Path path, boolean z);

    public abstract Source source(Path path);

    public final FileMetadata metadata(Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return okio.internal.FileSystem.commonMetadata(this, path);
    }

    public final boolean exists(Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return okio.internal.FileSystem.commonExists(this, path);
    }

    public static /* synthetic */ Sequence listRecursively$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: listRecursively");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return fileSystem.listRecursively(path, z);
    }

    public Sequence listRecursively(Path dir, boolean z) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        return okio.internal.FileSystem.commonListRecursively(this, dir, z);
    }

    public final Sequence listRecursively(Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        return listRecursively(dir, false);
    }

    public static /* synthetic */ FileHandle openReadWrite$default(FileSystem fileSystem, Path path, boolean z, boolean z2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: openReadWrite");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        return fileSystem.openReadWrite(path, z, z2);
    }

    public final FileHandle openReadWrite(Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        return openReadWrite(file, false, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX INFO: renamed from: -read, reason: not valid java name */
    public final <T> T m3895read(Path file, Function1<? super BufferedSource, ? extends T> readerAction) {
        ?? r5;
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(readerAction, "readerAction");
        BufferedSource bufferedSourceBuffer = Okio.buffer(source(file));
        T th = null;
        try {
            T tInvoke = readerAction.invoke(bufferedSourceBuffer);
            InlineMarker.finallyStart(1);
            if (bufferedSourceBuffer != null) {
                try {
                    bufferedSourceBuffer.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            InlineMarker.finallyEnd(1);
            T t = th;
            th = tInvoke;
            r5 = t;
        } catch (Throwable th3) {
            InlineMarker.finallyStart(1);
            if (bufferedSourceBuffer != null) {
                try {
                    bufferedSourceBuffer.close();
                } catch (Throwable th4) {
                    ExceptionsKt.addSuppressed(th3, th4);
                }
            }
            InlineMarker.finallyEnd(1);
            r5 = th3;
        }
        if (r5 == 0) {
            return th;
        }
        throw r5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX INFO: renamed from: -write, reason: not valid java name */
    public final <T> T m3896write(Path file, boolean z, Function1<? super BufferedSink, ? extends T> writerAction) {
        ?? r5;
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(writerAction, "writerAction");
        BufferedSink bufferedSinkBuffer = Okio.buffer(sink(file, z));
        T th = null;
        try {
            T tInvoke = writerAction.invoke(bufferedSinkBuffer);
            InlineMarker.finallyStart(1);
            if (bufferedSinkBuffer != null) {
                try {
                    bufferedSinkBuffer.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            InlineMarker.finallyEnd(1);
            T t = th;
            th = tInvoke;
            r5 = t;
        } catch (Throwable th3) {
            InlineMarker.finallyStart(1);
            if (bufferedSinkBuffer != null) {
                try {
                    bufferedSinkBuffer.close();
                } catch (Throwable th4) {
                    ExceptionsKt.addSuppressed(th3, th4);
                }
            }
            InlineMarker.finallyEnd(1);
            r5 = th3;
        }
        if (r5 == 0) {
            return th;
        }
        throw r5;
    }

    public static /* synthetic */ Sink sink$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sink");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return fileSystem.sink(path, z);
    }

    public final Sink sink(Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        return sink(file, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX INFO: renamed from: -write$default, reason: not valid java name */
    public static /* synthetic */ Object m3894write$default(FileSystem fileSystem, Path file, boolean z, Function1 writerAction, int i, Object obj) {
        ?? r4;
        if (obj == null) {
            if ((i & 2) != 0) {
                z = false;
            }
            Intrinsics.checkNotNullParameter(file, "file");
            Intrinsics.checkNotNullParameter(writerAction, "writerAction");
            BufferedSink bufferedSinkBuffer = Okio.buffer(fileSystem.sink(file, z));
            Object th = null;
            try {
                Object objInvoke = writerAction.invoke(bufferedSinkBuffer);
                InlineMarker.finallyStart(1);
                if (bufferedSinkBuffer != null) {
                    try {
                        bufferedSinkBuffer.close();
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                InlineMarker.finallyEnd(1);
                r4 = th;
                th = objInvoke;
            } catch (Throwable th3) {
                InlineMarker.finallyStart(1);
                if (bufferedSinkBuffer != null) {
                    try {
                        bufferedSinkBuffer.close();
                    } catch (Throwable th4) {
                        ExceptionsKt.addSuppressed(th3, th4);
                    }
                }
                InlineMarker.finallyEnd(1);
                r4 = th3;
            }
            if (r4 == 0) {
                return th;
            }
            throw r4;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: write");
    }

    public static /* synthetic */ Sink appendingSink$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: appendingSink");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return fileSystem.appendingSink(path, z);
    }

    public final Sink appendingSink(Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        return appendingSink(file, false);
    }

    public static /* synthetic */ void createDirectory$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createDirectory");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        fileSystem.createDirectory(path, z);
    }

    public final void createDirectory(Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        createDirectory(dir, false);
    }

    public static /* synthetic */ void createDirectories$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createDirectories");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        fileSystem.createDirectories(path, z);
    }

    public final void createDirectories(Path dir, boolean z) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        okio.internal.FileSystem.commonCreateDirectories(this, dir, z);
    }

    public final void createDirectories(Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        createDirectories(dir, false);
    }

    public void copy(Path source, Path target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        okio.internal.FileSystem.commonCopy(this, source, target);
    }

    public static /* synthetic */ void delete$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        fileSystem.delete(path, z);
    }

    public final void delete(Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        delete(path, false);
    }

    public static /* synthetic */ void deleteRecursively$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: deleteRecursively");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        fileSystem.deleteRecursively(path, z);
    }

    public void deleteRecursively(Path fileOrDirectory, boolean z) {
        Intrinsics.checkNotNullParameter(fileOrDirectory, "fileOrDirectory");
        okio.internal.FileSystem.commonDeleteRecursively(this, fileOrDirectory, z);
    }

    public final void deleteRecursively(Path fileOrDirectory) {
        Intrinsics.checkNotNullParameter(fileOrDirectory, "fileOrDirectory");
        deleteRecursively(fileOrDirectory, false);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final FileSystem get(java.nio.file.FileSystem fileSystem) {
            Intrinsics.checkNotNullParameter(fileSystem, "<this>");
            return new NioFileSystemWrappingFileSystem(fileSystem);
        }
    }

    static {
        FileSystem jvmSystemFileSystem;
        try {
            Class.forName("java.nio.file.Files");
            jvmSystemFileSystem = new NioSystemFileSystem();
        } catch (ClassNotFoundException unused) {
            jvmSystemFileSystem = new JvmSystemFileSystem();
        }
        SYSTEM = jvmSystemFileSystem;
        Path.Companion companion = Path.Companion;
        String property = System.getProperty("java.io.tmpdir");
        Intrinsics.checkNotNullExpressionValue(property, "getProperty(...)");
        SYSTEM_TEMPORARY_DIRECTORY = Path.Companion.get$default(companion, property, false, 1, (Object) null);
        ClassLoader classLoader = ResourceFileSystem.class.getClassLoader();
        Intrinsics.checkNotNullExpressionValue(classLoader, "getClassLoader(...)");
        RESOURCES = new ResourceFileSystem(classLoader, false, null, 4, null);
    }
}
