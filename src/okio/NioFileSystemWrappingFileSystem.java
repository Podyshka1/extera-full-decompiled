package okio;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.nio.channels.FileChannel;
import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.OpenOption;
import java.nio.file.StandardCopyOption;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.io.path.DirectoryEntriesReader$$ExternalSyntheticApiModelOutline0;
import kotlin.io.path.PathsKt;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Path;
import org.vosk.Model$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\f\u0010\u0006\u001a\u00020\u0007*\u00020\bH\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0016J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\n\u001a\u00020\bH\u0016J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u000e2\u0006\u0010\u000f\u001a\u00020\bH\u0016J\u0018\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\bH\u0016J \u0010\r\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\bH\u0016J \u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0012H\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\bH\u0016J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0012H\u0016J\u0018\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0012H\u0016J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0012H\u0016J\u0018\u0010 \u001a\u00020\u001f2\u0006\u0010\u0019\u001a\u00020\b2\u0006\u0010!\u001a\u00020\bH\u0016J\u0018\u0010\"\u001a\u00020\u001f2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0012H\u0016J\u0018\u0010#\u001a\u00020\u001f2\u0006\u0010\u0019\u001a\u00020\b2\u0006\u0010!\u001a\u00020\bH\u0016J\b\u0010$\u001a\u00020\u001fH\u0016J\b\u0010%\u001a\u00020&H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lokio/NioFileSystemWrappingFileSystem;", "Lokio/NioSystemFileSystem;", "nioFileSystem", "Ljava/nio/file/FileSystem;", "<init>", "(Ljava/nio/file/FileSystem;)V", "resolve", "Ljava/nio/file/Path;", "Lokio/Path;", "canonicalize", "path", "metadataOrNull", "Lokio/FileMetadata;", "list", _UrlKt.FRAGMENT_ENCODE_SET, "dir", "listOrNull", "throwOnFailure", _UrlKt.FRAGMENT_ENCODE_SET, "openReadOnly", "Lokio/FileHandle;", "file", "openReadWrite", "mustCreate", "mustExist", "source", "Lokio/Source;", "sink", "Lokio/Sink;", "appendingSink", "createDirectory", _UrlKt.FRAGMENT_ENCODE_SET, "atomicMove", "target", "delete", "createSymlink", "close", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "okio"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nNioFileSystemWrappingFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NioFileSystemWrappingFileSystem.kt\nokio/NioFileSystemWrappingFileSystem\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,196:1\n1634#2,3:197\n1#3:200\n37#4,2:201\n37#4,2:203\n37#4,2:205\n*S KotlinDebug\n*F\n+ 1 NioFileSystemWrappingFileSystem.kt\nokio/NioFileSystemWrappingFileSystem\n*L\n77#1:197,3\n104#1:201,2\n125#1:203,2\n138#1:205,2\n*E\n"})
public final class NioFileSystemWrappingFileSystem extends NioSystemFileSystem {
    private final java.nio.file.FileSystem nioFileSystem;

    public NioFileSystemWrappingFileSystem(java.nio.file.FileSystem fileSystem) {
        this.nioFileSystem = fileSystem;
    }

    private final java.nio.file.Path resolve(Path path) {
        return this.nioFileSystem.getPath(path.toString(), new String[0]);
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public Path canonicalize(Path path) throws FileNotFoundException {
        try {
            return Path.Companion.get$default(Path.INSTANCE, resolve(path).toRealPath(new LinkOption[0]), false, 1, (Object) null);
        } catch (NoSuchFileException unused) {
            ZipFileSystem$$ExternalSyntheticBUOutline1.m853m("no such file: ", path);
            return null;
        }
    }

    @Override // okio.NioSystemFileSystem, okio.JvmSystemFileSystem, okio.FileSystem
    public FileMetadata metadataOrNull(Path path) {
        return metadataOrNull(resolve(path));
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public List<Path> list(Path dir) {
        return list(dir, true);
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public List<Path> listOrNull(Path dir) {
        return list(dir, false);
    }

    private final List<Path> list(Path dir, boolean throwOnFailure) throws IOException {
        java.nio.file.Path pathResolve = resolve(dir);
        try {
            List listListDirectoryEntries$default = PathsKt.listDirectoryEntries$default(pathResolve, null, 1, null);
            ArrayList arrayList = new ArrayList();
            Iterator it = listListDirectoryEntries$default.iterator();
            while (it.hasNext()) {
                arrayList.add(Path.Companion.get$default(Path.INSTANCE, DirectoryEntriesReader$$ExternalSyntheticApiModelOutline0.m776m(it.next()), false, 1, (Object) null));
            }
            CollectionsKt.sort(arrayList);
            return arrayList;
        } catch (Exception unused) {
            if (throwOnFailure) {
                if (!Files.exists(pathResolve, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                    ZipFileSystem$$ExternalSyntheticBUOutline1.m853m("no such file: ", dir);
                    return null;
                }
                ZipFileSystem$$ExternalSyntheticBUOutline0.m852m("failed to list ", dir);
            }
            return null;
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public FileHandle openReadOnly(Path file) throws FileNotFoundException {
        try {
            return new NioFileSystemFileHandle(false, FileChannel.open(resolve(file), StandardOpenOption.READ));
        } catch (NoSuchFileException unused) {
            ZipFileSystem$$ExternalSyntheticBUOutline1.m853m("no such file: ", file);
            return null;
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public FileHandle openReadWrite(Path file, boolean mustCreate, boolean mustExist) throws FileNotFoundException {
        if (mustCreate && mustExist) {
            f$$ExternalSyntheticBUOutline1.m178m("Cannot require mustCreate and mustExist at the same time.");
            return null;
        }
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        listCreateListBuilder.add(StandardOpenOption.READ);
        listCreateListBuilder.add(StandardOpenOption.WRITE);
        if (mustCreate) {
            listCreateListBuilder.add(StandardOpenOption.CREATE_NEW);
        } else if (!mustExist) {
            listCreateListBuilder.add(StandardOpenOption.CREATE);
        }
        List listBuild = CollectionsKt.build(listCreateListBuilder);
        try {
            java.nio.file.Path pathResolve = resolve(file);
            StandardOpenOption[] standardOpenOptionArr = (StandardOpenOption[]) listBuild.toArray(new StandardOpenOption[0]);
            return new NioFileSystemFileHandle(true, FileChannel.open(pathResolve, (OpenOption[]) Arrays.copyOf(standardOpenOptionArr, standardOpenOptionArr.length)));
        } catch (NoSuchFileException unused) {
            ZipFileSystem$$ExternalSyntheticBUOutline1.m853m("no such file: ", file);
            return null;
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public Source source(Path file) throws FileNotFoundException {
        try {
            return Okio.source(Files.newInputStream(resolve(file), (OpenOption[]) Arrays.copyOf(new OpenOption[0], 0)));
        } catch (NoSuchFileException unused) {
            ZipFileSystem$$ExternalSyntheticBUOutline1.m853m("no such file: ", file);
            return null;
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public Sink sink(Path file, boolean mustCreate) throws FileNotFoundException {
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        if (mustCreate) {
            listCreateListBuilder.add(StandardOpenOption.CREATE_NEW);
        }
        List listBuild = CollectionsKt.build(listCreateListBuilder);
        try {
            java.nio.file.Path pathResolve = resolve(file);
            StandardOpenOption[] standardOpenOptionArr = (StandardOpenOption[]) listBuild.toArray(new StandardOpenOption[0]);
            OpenOption[] openOptionArr = (OpenOption[]) Arrays.copyOf(standardOpenOptionArr, standardOpenOptionArr.length);
            return Okio.sink(Files.newOutputStream(pathResolve, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length)));
        } catch (NoSuchFileException unused) {
            ZipFileSystem$$ExternalSyntheticBUOutline1.m853m("no such file: ", file);
            return null;
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public Sink appendingSink(Path file, boolean mustExist) {
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        listCreateListBuilder.add(StandardOpenOption.APPEND);
        if (!mustExist) {
            listCreateListBuilder.add(StandardOpenOption.CREATE);
        }
        List listBuild = CollectionsKt.build(listCreateListBuilder);
        java.nio.file.Path pathResolve = resolve(file);
        StandardOpenOption[] standardOpenOptionArr = (StandardOpenOption[]) listBuild.toArray(new StandardOpenOption[0]);
        OpenOption[] openOptionArr = (OpenOption[]) Arrays.copyOf(standardOpenOptionArr, standardOpenOptionArr.length);
        return Okio.sink(Files.newOutputStream(pathResolve, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length)));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000f  */
    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void createDirectory(Path dir, boolean mustCreate) throws IOException {
        boolean z;
        FileMetadata fileMetadataMetadataOrNull = metadataOrNull(dir);
        if (fileMetadataMetadataOrNull != null) {
            z = fileMetadataMetadataOrNull.getIsDirectory();
        }
        if (z && mustCreate) {
            JvmSystemFileSystem$$ExternalSyntheticBUOutline0.m840m(dir, " already exists.");
            return;
        }
        try {
            Files.createDirectory(resolve(dir), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        } catch (IOException e) {
            if (z) {
                return;
            }
            throw new IOException("failed to create directory: " + dir, e);
        }
    }

    @Override // okio.NioSystemFileSystem, okio.JvmSystemFileSystem, okio.FileSystem
    public void atomicMove(Path source, Path target) throws IOException {
        try {
            Files.move(resolve(source), resolve(target), (CopyOption[]) Arrays.copyOf(new CopyOption[]{StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING}, 2));
        } catch (UnsupportedOperationException unused) {
            Model$$ExternalSyntheticBUOutline0.m964m("atomic move not supported");
        } catch (NoSuchFileException e) {
            throw new FileNotFoundException(e.getMessage());
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public void delete(Path path, boolean mustExist) throws IOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        java.nio.file.Path pathResolve = resolve(path);
        try {
            Files.delete(pathResolve);
        } catch (NoSuchFileException unused) {
            if (mustExist) {
                ZipFileSystem$$ExternalSyntheticBUOutline1.m853m("no such file: ", path);
            }
        } catch (IOException unused2) {
            if (Files.exists(pathResolve, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                ZipFileSystem$$ExternalSyntheticBUOutline0.m852m("failed to delete ", path);
            }
        }
    }

    @Override // okio.NioSystemFileSystem, okio.JvmSystemFileSystem, okio.FileSystem
    public void createSymlink(Path source, Path target) throws IOException {
        Files.createSymbolicLink(resolve(source), resolve(target), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
    }

    @Override // okio.FileSystem, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.nioFileSystem.close();
    }

    @Override // okio.NioSystemFileSystem, okio.JvmSystemFileSystem
    public String toString() {
        return Reflection.getOrCreateKotlinClass(this.nioFileSystem.getClass()).getSimpleName();
    }
}
