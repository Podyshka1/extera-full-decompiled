package org.simplifiles.internal.archive;

import j$.nio.file.Path;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;
import org.simplifiles.exception.UnsafeArchivePathException;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lorg/simplifiles/internal/archive/ArchivePathResolver;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "j$/nio/file/Path", "root", _UrlKt.FRAGMENT_ENCODE_SET, "path", _UrlKt.FRAGMENT_ENCODE_SET, "allowAbsolute", "resolve", "(Lj$/nio/file/Path;Ljava/lang/String;Z)Lj$/nio/file/Path;", "simplifiles"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
public final class ArchivePathResolver {
    public static final ArchivePathResolver INSTANCE = new ArchivePathResolver();

    private ArchivePathResolver() {
    }

    public static /* synthetic */ Path resolve$default(ArchivePathResolver archivePathResolver, Path path, String str, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return archivePathResolver.resolve(path, str, z);
    }

    public final Path resolve(Path root, String path, boolean allowAbsolute) throws UnsafeArchivePathException {
        Path pathNormalize = root.toAbsolutePath().normalize();
        ArchivePathAnalysis archivePathAnalysisAnalyze = ArchivePathAnalyzer.INSTANCE.analyze(path);
        String normalizedPath = archivePathAnalysisAnalyze.getNormalizedPath();
        if (archivePathAnalysisAnalyze.getIsAbsolute() && !allowAbsolute) {
            throw new UnsafeArchivePathException(path, "path must be relative");
        }
        if (archivePathAnalysisAnalyze.getContainsParentTraversal()) {
            throw new UnsafeArchivePathException(path, "path must not contain parent traversal");
        }
        if (archivePathAnalysisAnalyze.getIsEmpty() || normalizedPath == null) {
            throw new UnsafeArchivePathException(path, "path must not be empty");
        }
        Path pathNormalize2 = pathNormalize.resolve(normalizedPath).normalize();
        if (pathNormalize2.startsWith(pathNormalize)) {
            return pathNormalize2;
        }
        throw new UnsafeArchivePathException(path, "path escapes archive root");
    }
}
