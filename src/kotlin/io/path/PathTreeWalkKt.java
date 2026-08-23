package kotlin.io.path;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a'\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0082\u0080\u0004¢\u0006\u0002\u0010\u0007\u001a\u000e\u0010\b\u001a\u00020\t*\u00020\nH\u0082\u0080\u0004¨\u0006\u000b"}, d2 = {"keyOf", _UrlKt.FRAGMENT_ENCODE_SET, "path", "Ljava/nio/file/Path;", "linkOptions", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/nio/file/LinkOption;", "(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;", "createsCycle", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/io/path/PathNode;", "kotlin-stdlib-jdk7"}, m754k = 2, mv = {2, 3, 0}, xi = 48)
public final class PathTreeWalkKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Object keyOf(Path path, LinkOption[] linkOptionArr) {
        try {
            LinkOption[] linkOptionArr2 = (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length);
            return Files.readAttributes(path, PathTreeWalkKt$$ExternalSyntheticApiModelOutline0.m784m(), (LinkOption[]) Arrays.copyOf(linkOptionArr2, linkOptionArr2.length)).fileKey();
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
