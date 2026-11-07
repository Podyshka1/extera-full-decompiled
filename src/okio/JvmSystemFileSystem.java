package okio;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Path;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0016J\u0018\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0016J \u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0016J \u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000eH\u0016J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0005H\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u000eH\u0016J\u0018\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u000eH\u0016J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u000eH\u0016J\u0018\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0005H\u0016J\u0018\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u000eH\u0016J\u0018\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0005H\u0016J\b\u0010 \u001a\u00020!H\u0016J\f\u0010\"\u001a\u00020\u001b*\u00020\u0005H\u0002J\f\u0010#\u001a\u00020\u001b*\u00020\u0005H\u0002¨\u0006$"}, d2 = {"Lokio/JvmSystemFileSystem;", "Lokio/FileSystem;", "<init>", "()V", "canonicalize", "Lokio/Path;", "path", "metadataOrNull", "Lokio/FileMetadata;", "list", _UrlKt.FRAGMENT_ENCODE_SET, "dir", "listOrNull", "throwOnFailure", _UrlKt.FRAGMENT_ENCODE_SET, "openReadOnly", "Lokio/FileHandle;", "file", "openReadWrite", "mustCreate", "mustExist", "source", "Lokio/Source;", "sink", "Lokio/Sink;", "appendingSink", "createDirectory", _UrlKt.FRAGMENT_ENCODE_SET, "atomicMove", "target", "delete", "createSymlink", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "requireExist", "requireCreate", "okio"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nJvmSystemFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmSystemFileSystem.kt\nokio/JvmSystemFileSystem\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,158:1\n11896#2,3:159\n*S KotlinDebug\n*F\n+ 1 JvmSystemFileSystem.kt\nokio/JvmSystemFileSystem\n*L\n77#1:159,3\n*E\n"})
public class JvmSystemFileSystem extends FileSystem {
    @Override // okio.FileSystem
    public Path canonicalize(Path path) throws IOException {
        File canonicalFile = path.toFile().getCanonicalFile();
        if (!canonicalFile.exists()) {
            throw new FileNotFoundException("no such file");
        }
        return Path.Companion.get$default(Path.INSTANCE, canonicalFile, false, 1, (Object) null);
    }

    @Override // okio.FileSystem
    public FileMetadata metadataOrNull(Path path) {
        File file = path.toFile();
        boolean zIsFile = file.isFile();
        boolean zIsDirectory = file.isDirectory();
        long jLastModified = file.lastModified();
        long length = file.length();
        if (!zIsFile && !zIsDirectory && jLastModified == 0 && length == 0 && !file.exists()) {
            return null;
        }
        return new FileMetadata(zIsFile, zIsDirectory, null, Long.valueOf(length), null, Long.valueOf(jLastModified), null, null, 128, null);
    }

    @Override // okio.FileSystem
    public List<Path> list(Path dir) {
        return list(dir, true);
    }

    @Override // okio.FileSystem
    public List<Path> listOrNull(Path dir) {
        return list(dir, false);
    }

    private final List<Path> list(Path dir, boolean throwOnFailure) throws IOException {
        File file = dir.toFile();
        String[] list = file.list();
        if (list == null) {
            if (throwOnFailure) {
                if (!file.exists()) {
                    ZipFileSystem$$ExternalSyntheticBUOutline1.m930m("no such file: ", dir);
                    return null;
                }
                ZipFileSystem$$ExternalSyntheticBUOutline0.m929m("failed to list ", dir);
            }
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            arrayList.add(dir.resolve(str));
        }
        CollectionsKt.sort(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    public FileHandle openReadOnly(Path file) {
        return new JvmFileHandle(false, new RandomAccessFile(file.toFile(), "r"));
    }

    @Override // okio.FileSystem
    public FileHandle openReadWrite(Path file, boolean mustCreate, boolean mustExist) throws IOException {
        if (mustCreate && mustExist) {
            f$$ExternalSyntheticBUOutline1.m212m("Cannot require mustCreate and mustExist at the same time.");
            return null;
        }
        if (mustCreate) {
            requireCreate(file);
        }
        if (mustExist) {
            requireExist(file);
        }
        return new JvmFileHandle(true, new RandomAccessFile(file.toFile(), "rw"));
    }

    @Override // okio.FileSystem
    public Source source(Path file) {
        return Okio.source(file.toFile());
    }

    @Override // okio.FileSystem
    public Sink sink(Path file, boolean mustCreate) throws IOException {
        if (mustCreate) {
            requireCreate(file);
        }
        return Okio__JvmOkioKt.sink$default(file.toFile(), false, 1, null);
    }

    @Override // okio.FileSystem
    public Sink appendingSink(Path file, boolean mustExist) throws IOException {
        if (mustExist) {
            requireExist(file);
        }
        return Okio.sink(file.toFile(), true);
    }

    @Override // okio.FileSystem
    public void createDirectory(Path dir, boolean mustCreate) throws IOException {
        if (dir.toFile().mkdir()) {
            return;
        }
        FileMetadata fileMetadataMetadataOrNull = metadataOrNull(dir);
        if (fileMetadataMetadataOrNull == null || !fileMetadataMetadataOrNull.getIsDirectory()) {
            ZipFileSystem$$ExternalSyntheticBUOutline0.m929m("failed to create directory: ", dir);
        } else if (mustCreate) {
            JvmSystemFileSystem$$ExternalSyntheticBUOutline0.m922m(dir, " already exists.");
        }
    }

    @Override // okio.FileSystem
    public void atomicMove(Path source, Path target) throws IOException {
        if (source.toFile().renameTo(target.toFile())) {
            return;
        }
        throw new IOException("failed to move " + source + " to " + target);
    }

    @Override // okio.FileSystem
    public void delete(Path path, boolean mustExist) throws IOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        File file = path.toFile();
        if (file.delete()) {
            return;
        }
        if (file.exists()) {
            ZipFileSystem$$ExternalSyntheticBUOutline0.m929m("failed to delete ", path);
        } else if (mustExist) {
            ZipFileSystem$$ExternalSyntheticBUOutline1.m930m("no such file: ", path);
        }
    }

    @Override // okio.FileSystem
    public void createSymlink(Path source, Path target) throws IOException {
        throw new IOException("unsupported");
    }

    public String toString() {
        return "JvmSystemFileSystem";
    }

    private final void requireExist(Path path) throws IOException {
        if (exists(path)) {
            return;
        }
        JvmSystemFileSystem$$ExternalSyntheticBUOutline0.m922m(path, " doesn't exist.");
    }

    private final void requireCreate(Path path) throws IOException {
        if (exists(path)) {
            JvmSystemFileSystem$$ExternalSyntheticBUOutline0.m922m(path, " already exists.");
        }
    }
}
