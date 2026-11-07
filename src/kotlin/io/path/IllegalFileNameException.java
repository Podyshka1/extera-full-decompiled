package kotlin.io.path;

import j$.nio.file.Path;
import java.nio.file.FileSystemException;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/io/path/IllegalFileNameException;", "Ljava/nio/file/FileSystemException;", "j$/nio/file/Path", "file", "other", _UrlKt.FRAGMENT_ENCODE_SET, "message", "<init>", "(Lj$/nio/file/Path;Lj$/nio/file/Path;Ljava/lang/String;)V", "(Lj$/nio/file/Path;)V", "kotlin-stdlib-jdk7"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
public final class IllegalFileNameException extends FileSystemException {
    public IllegalFileNameException(Path path, Path path2, String str) {
        super(path.toString(), path2 != null ? path2.toString() : null, str);
    }

    public IllegalFileNameException(Path path) {
        this(path, null, null);
    }
}
