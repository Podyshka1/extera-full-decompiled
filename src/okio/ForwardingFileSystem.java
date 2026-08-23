package okio;

import com.android.p003dx.p006io.Opcodes;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ForwardingFileSystem extends FileSystem {
    private final FileSystem delegate;

    public Path onPathParameter(Path path, String functionName, String parameterName) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(functionName, "functionName");
        Intrinsics.checkNotNullParameter(parameterName, "parameterName");
        return path;
    }

    public Path onPathResult(Path path, String functionName) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(functionName, "functionName");
        return path;
    }

    public ForwardingFileSystem(FileSystem delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    public final FileSystem delegate() {
        return this.delegate;
    }

    @Override // okio.FileSystem
    public Path canonicalize(Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return onPathResult(this.delegate.canonicalize(onPathParameter(path, "canonicalize", "path")), "canonicalize");
    }

    @Override // okio.FileSystem
    public FileMetadata metadataOrNull(Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        FileMetadata fileMetadataMetadataOrNull = this.delegate.metadataOrNull(onPathParameter(path, "metadataOrNull", "path"));
        if (fileMetadataMetadataOrNull == null) {
            return null;
        }
        return fileMetadataMetadataOrNull.getSymlinkTarget() == null ? fileMetadataMetadataOrNull : FileMetadata.copy$default(fileMetadataMetadataOrNull, false, false, onPathResult(fileMetadataMetadataOrNull.getSymlinkTarget(), "metadataOrNull"), null, null, null, null, null, Opcodes.INVOKE_POLYMORPHIC_RANGE, null);
    }

    @Override // okio.FileSystem
    public List<Path> list(Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        List list = this.delegate.list(onPathParameter(dir, "list", "dir"));
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(onPathResult((Path) it.next(), "list"));
        }
        CollectionsKt.sort(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    public List<Path> listOrNull(Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        List listListOrNull = this.delegate.listOrNull(onPathParameter(dir, "listOrNull", "dir"));
        if (listListOrNull == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = listListOrNull.iterator();
        while (it.hasNext()) {
            arrayList.add(onPathResult((Path) it.next(), "listOrNull"));
        }
        CollectionsKt.sort(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    public Sequence listRecursively(Path dir, boolean z) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        return SequencesKt.map(this.delegate.listRecursively(onPathParameter(dir, "listRecursively", "dir"), z), new Function1() { // from class: okio.ForwardingFileSystem$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ForwardingFileSystem.listRecursively$lambda$0(this.f$0, (Path) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Path listRecursively$lambda$0(ForwardingFileSystem forwardingFileSystem, Path it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return forwardingFileSystem.onPathResult(it, "listRecursively");
    }

    @Override // okio.FileSystem
    public FileHandle openReadOnly(Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        return this.delegate.openReadOnly(onPathParameter(file, "openReadOnly", "file"));
    }

    @Override // okio.FileSystem
    public FileHandle openReadWrite(Path file, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(file, "file");
        return this.delegate.openReadWrite(onPathParameter(file, "openReadWrite", "file"), z, z2);
    }

    @Override // okio.FileSystem
    public Source source(Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        return this.delegate.source(onPathParameter(file, "source", "file"));
    }

    @Override // okio.FileSystem
    public Sink sink(Path file, boolean z) {
        Intrinsics.checkNotNullParameter(file, "file");
        return this.delegate.sink(onPathParameter(file, "sink", "file"), z);
    }

    @Override // okio.FileSystem
    public Sink appendingSink(Path file, boolean z) {
        Intrinsics.checkNotNullParameter(file, "file");
        return this.delegate.appendingSink(onPathParameter(file, "appendingSink", "file"), z);
    }

    @Override // okio.FileSystem
    public void createDirectory(Path dir, boolean z) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        this.delegate.createDirectory(onPathParameter(dir, "createDirectory", "dir"), z);
    }

    @Override // okio.FileSystem
    public void atomicMove(Path source, Path target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        this.delegate.atomicMove(onPathParameter(source, "atomicMove", "source"), onPathParameter(target, "atomicMove", "target"));
    }

    @Override // okio.FileSystem
    public void delete(Path path, boolean z) {
        Intrinsics.checkNotNullParameter(path, "path");
        this.delegate.delete(onPathParameter(path, "delete", "path"), z);
    }

    @Override // okio.FileSystem
    public void createSymlink(Path source, Path target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
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
