package okhttp3.internal.publicsuffix;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.FileSystem;
import okio.Path;
import okio.Source;

/* JADX INFO: loaded from: classes5.dex */
public final class ResourcePublicSuffixList extends BasePublicSuffixList {
    public static final Companion Companion = new Companion(null);
    public static final Path PUBLIC_SUFFIX_RESOURCE = Path.Companion.get$default(Path.Companion, "okhttp3/internal/publicsuffix/" + PublicSuffixDatabase.class.getSimpleName() + ".list", false, 1, (Object) null);
    private final FileSystem fileSystem;
    private final Path path;

    /* JADX WARN: Multi-variable type inference failed */
    public ResourcePublicSuffixList() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public ResourcePublicSuffixList(Path path, FileSystem fileSystem) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        this.path = path;
        this.fileSystem = fileSystem;
    }

    public /* synthetic */ ResourcePublicSuffixList(Path path, FileSystem fileSystem, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? PUBLIC_SUFFIX_RESOURCE : path, (i & 2) != 0 ? FileSystem.RESOURCES : fileSystem);
    }

    @Override // okhttp3.internal.publicsuffix.BasePublicSuffixList
    public Path getPath() {
        return this.path;
    }

    public final FileSystem getFileSystem() {
        return this.fileSystem;
    }

    @Override // okhttp3.internal.publicsuffix.BasePublicSuffixList
    public Source listSource() {
        return this.fileSystem.source(getPath());
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
