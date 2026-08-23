package okio;

import com.android.dx.io.Opcodes;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0018\u0010\f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u00112\u0006\u0010\u0012\u001a\u00020\u0007H\u0016J\u0018\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0007H\u0016J\u001e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00070\u00152\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0007H\u0016J \u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u0017H\u0016J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001a\u001a\u00020\u0007H\u0016J\u0018\u0010 \u001a\u00020!2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0017H\u0016J\u0018\u0010\"\u001a\u00020!2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0017H\u0016J\u0018\u0010#\u001a\u00020$2\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0017H\u0016J\u0018\u0010%\u001a\u00020$2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u0007H\u0016J\u0018\u0010'\u001a\u00020$2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0017H\u0016J\u0018\u0010(\u001a\u00020$2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u0007H\u0016J\b\u0010)\u001a\u00020$H\u0016J\b\u0010*\u001a\u00020\nH\u0016R\u0013\u0010\u0002\u001a\u00020\u00018\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0005¨\u0006+"}, d2 = {"Lokio/ForwardingFileSystem;", "Lokio/FileSystem;", "delegate", "<init>", "(Lokio/FileSystem;)V", "()Lokio/FileSystem;", "onPathParameter", "Lokio/Path;", "path", "functionName", _UrlKt.FRAGMENT_ENCODE_SET, "parameterName", "onPathResult", "canonicalize", "metadataOrNull", "Lokio/FileMetadata;", "list", _UrlKt.FRAGMENT_ENCODE_SET, "dir", "listOrNull", "listRecursively", "Lkotlin/sequences/Sequence;", "followSymlinks", _UrlKt.FRAGMENT_ENCODE_SET, "openReadOnly", "Lokio/FileHandle;", "file", "openReadWrite", "mustCreate", "mustExist", "source", "Lokio/Source;", "sink", "Lokio/Sink;", "appendingSink", "createDirectory", _UrlKt.FRAGMENT_ENCODE_SET, "atomicMove", "target", "delete", "createSymlink", "close", "toString", "okio"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nForwardingFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForwardingFileSystem.kt\nokio/ForwardingFileSystem\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,252:1\n1634#2,3:253\n1634#2,3:256\n*S KotlinDebug\n*F\n+ 1 ForwardingFileSystem.kt\nokio/ForwardingFileSystem\n*L\n170#1:253,3\n178#1:256,3\n*E\n"})
public abstract class ForwardingFileSystem extends FileSystem {
    private final FileSystem delegate;

    public Path onPathParameter(Path path, String functionName, String parameterName) {
        return path;
    }

    public Path onPathResult(Path path, String functionName) {
        return path;
    }

    public ForwardingFileSystem(FileSystem fileSystem) {
        this.delegate = fileSystem;
    }

    @JvmName(name = "delegate")
    /* JADX INFO: renamed from: delegate, reason: from getter */
    public final FileSystem getDelegate() {
        return this.delegate;
    }

    @Override // okio.FileSystem
    public Path canonicalize(Path path) {
        return onPathResult(this.delegate.canonicalize(onPathParameter(path, "canonicalize", "path")), "canonicalize");
    }

    @Override // okio.FileSystem
    public FileMetadata metadataOrNull(Path path) {
        FileMetadata fileMetadataMetadataOrNull = this.delegate.metadataOrNull(onPathParameter(path, "metadataOrNull", "path"));
        if (fileMetadataMetadataOrNull == null) {
            return null;
        }
        return fileMetadataMetadataOrNull.getSymlinkTarget() == null ? fileMetadataMetadataOrNull : FileMetadata.copy$default(fileMetadataMetadataOrNull, false, false, onPathResult(fileMetadataMetadataOrNull.getSymlinkTarget(), "metadataOrNull"), null, null, null, null, null, Opcodes.INVOKE_POLYMORPHIC_RANGE, null);
    }

    @Override // okio.FileSystem
    public List<Path> list(Path dir) {
        List<Path> list = this.delegate.list(onPathParameter(dir, "list", "dir"));
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(onPathResult((Path) it.next(), "list"));
        }
        CollectionsKt.sort(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    public List<Path> listOrNull(Path dir) {
        List<Path> listListOrNull = this.delegate.listOrNull(onPathParameter(dir, "listOrNull", "dir"));
        if (listListOrNull == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listListOrNull.iterator();
        while (it.hasNext()) {
            arrayList.add(onPathResult((Path) it.next(), "listOrNull"));
        }
        CollectionsKt.sort(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    public Sequence<Path> listRecursively(Path dir, boolean followSymlinks) {
        return SequencesKt.map(this.delegate.listRecursively(onPathParameter(dir, "listRecursively", "dir"), followSymlinks), new Function1() { // from class: okio.ForwardingFileSystem$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f$0.onPathResult((Path) obj, "listRecursively");
            }
        });
    }

    @Override // okio.FileSystem
    public FileHandle openReadOnly(Path file) {
        return this.delegate.openReadOnly(onPathParameter(file, "openReadOnly", "file"));
    }

    @Override // okio.FileSystem
    public FileHandle openReadWrite(Path file, boolean mustCreate, boolean mustExist) {
        return this.delegate.openReadWrite(onPathParameter(file, "openReadWrite", "file"), mustCreate, mustExist);
    }

    @Override // okio.FileSystem
    public Source source(Path file) {
        return this.delegate.source(onPathParameter(file, "source", "file"));
    }

    @Override // okio.FileSystem
    public Sink sink(Path file, boolean mustCreate) {
        return this.delegate.sink(onPathParameter(file, "sink", "file"), mustCreate);
    }

    @Override // okio.FileSystem
    public Sink appendingSink(Path file, boolean mustExist) {
        return this.delegate.appendingSink(onPathParameter(file, "appendingSink", "file"), mustExist);
    }

    @Override // okio.FileSystem
    public void createDirectory(Path dir, boolean mustCreate) {
        this.delegate.createDirectory(onPathParameter(dir, "createDirectory", "dir"), mustCreate);
    }

    @Override // okio.FileSystem
    public void atomicMove(Path source, Path target) {
        this.delegate.atomicMove(onPathParameter(source, "atomicMove", "source"), onPathParameter(target, "atomicMove", "target"));
    }

    @Override // okio.FileSystem
    public void delete(Path path, boolean mustExist) {
        this.delegate.delete(onPathParameter(path, "delete", "path"), mustExist);
    }

    @Override // okio.FileSystem
    public void createSymlink(Path source, Path target) {
        this.delegate.createSymlink(onPathParameter(source, "createSymlink", "source"), onPathParameter(target, "createSymlink", "target"));
    }

    @Override // okio.FileSystem, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    public String toString() {
        return Reflection.getOrCreateKotlinClass(getClass()).getSimpleName() + '(' + this.delegate + ')';
    }
}
