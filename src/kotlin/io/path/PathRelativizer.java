package kotlin.io.path;

import j$.nio.file.Path;
import j$.nio.file.Paths;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\n\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u001c\u0010\n\u001a\n \t*\u0004\u0018\u00010\u00040\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\n \t*\u0004\u0018\u00010\u00040\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u000b¨\u0006\r"}, d2 = {"Lkotlin/io/path/PathRelativizer;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "j$/nio/file/Path", "path", "base", "tryRelativeTo", "(Lj$/nio/file/Path;Lj$/nio/file/Path;)Lj$/nio/file/Path;", "kotlin.jvm.PlatformType", "emptyPath", "Lj$/nio/file/Path;", "parentPath", "kotlin-stdlib-jdk7"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
final class PathRelativizer {
    public static final PathRelativizer INSTANCE = new PathRelativizer();
    private static final Path emptyPath = Paths.get(_UrlKt.FRAGMENT_ENCODE_SET, new String[0]);
    private static final Path parentPath = Paths.get("..", new String[0]);

    private PathRelativizer() {
    }

    public final Path tryRelativeTo(Path path, Path base) {
        Path pathNormalize = base.normalize();
        Path pathNormalize2 = path.normalize();
        Path pathRelativize = pathNormalize.relativize(pathNormalize2);
        int iMin = Math.min(pathNormalize.getNameCount(), pathNormalize2.getNameCount());
        for (int i = 0; i < iMin; i++) {
            Path name = pathNormalize.getName(i);
            Path path2 = parentPath;
            if (!Intrinsics.areEqual(name, path2)) {
                break;
            }
            if (!Intrinsics.areEqual(pathNormalize2.getName(i), path2)) {
                f$$ExternalSyntheticBUOutline1.m212m("Unable to compute relative path");
                return null;
            }
        }
        if (!Intrinsics.areEqual(pathNormalize2, pathNormalize) && Intrinsics.areEqual(pathNormalize, emptyPath)) {
            return pathNormalize2;
        }
        String string = pathRelativize.toString();
        return StringsKt.endsWith$default(string, pathRelativize.getFileSystem().getSeparator(), false, 2, (Object) null) ? pathRelativize.getFileSystem().getPath(StringsKt.dropLast(string, pathRelativize.getFileSystem().getSeparator().length()), new String[0]) : pathRelativize;
    }
}
