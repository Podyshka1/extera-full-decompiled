package kotlin.io.path;

import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes5.dex */
public abstract class PathsKt__PathUtilsKt extends PathsKt__PathRecursiveFunctionsKt {
    public static /* synthetic */ List listDirectoryEntries$default(Path path, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "*";
        }
        return listDirectoryEntries(path, str);
    }

    public static final List listDirectoryEntries(Path path, String glob) throws IOException {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(glob, "glob");
        DirectoryStream<Path> directoryStreamNewDirectoryStream = Files.newDirectoryStream(path, glob);
        try {
            Intrinsics.checkNotNull(directoryStreamNewDirectoryStream);
            List list = CollectionsKt.toList(directoryStreamNewDirectoryStream);
            CloseableKt.closeFinally(directoryStreamNewDirectoryStream, null);
            return list;
        } finally {
        }
    }
}
