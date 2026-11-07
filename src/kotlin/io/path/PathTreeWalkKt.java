package kotlin.io.path;

import j$.nio.file.Files;
import j$.nio.file.LinkOption;
import j$.nio.file.Path;
import j$.nio.file.attribute.BasicFileAttributes;
import java.io.IOException;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a'\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0001\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0013\u0010\n\u001a\u00020\t*\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"j$/nio/file/Path", "path", _UrlKt.FRAGMENT_ENCODE_SET, "j$/nio/file/LinkOption", "linkOptions", _UrlKt.FRAGMENT_ENCODE_SET, "keyOf", "(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Ljava/lang/Object;", "Lkotlin/io/path/PathNode;", _UrlKt.FRAGMENT_ENCODE_SET, "createsCycle", "(Lkotlin/io/path/PathNode;)Z", "kotlin-stdlib-jdk7"}, m862k = 2, mv = {2, 3, 0}, xi = 48)
public final class PathTreeWalkKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Object keyOf(Path path, LinkOption[] linkOptionArr) {
        try {
            LinkOption[] linkOptionArr2 = (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length);
            return Files.readAttributes(path, BasicFileAttributes.class, (LinkOption[]) Arrays.copyOf(linkOptionArr2, linkOptionArr2.length)).fileKey();
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean createsCycle(PathNode pathNode) {
        for (PathNode parent = pathNode.getParent(); parent != null; parent = parent.getParent()) {
            if (parent.getKey() != null && pathNode.getKey() != null) {
                if (Intrinsics.areEqual(parent.getKey(), pathNode.getKey())) {
                    return true;
                }
            } else {
                try {
                    if (Files.isSameFile(parent.getPath(), pathNode.getPath())) {
                        return true;
                    }
                } catch (IOException | SecurityException unused) {
                    continue;
                }
            }
        }
        return false;
    }
}
