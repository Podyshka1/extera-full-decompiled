package kotlin.io.path;

import java.io.IOException;
import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tH\u0096\u0080\u0004¨\u0006\n"}, d2 = {"Lkotlin/io/path/DefaultCopyActionContext;", "Lkotlin/io/path/CopyActionContext;", "<init>", "()V", "copyToIgnoringExistingDirectory", "Lkotlin/io/path/CopyActionResult;", "Ljava/nio/file/Path;", "target", "followLinks", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib-jdk7"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
@ExperimentalPathApi
final class DefaultCopyActionContext implements CopyActionContext {
    public static final DefaultCopyActionContext INSTANCE = new DefaultCopyActionContext();

    private DefaultCopyActionContext() {
    }

    @Override // kotlin.io.path.CopyActionContext
    public CopyActionResult copyToIgnoringExistingDirectory(Path path, Path path2, boolean z) throws IOException {
        LinkOption[] linkOptions = LinkFollowing.INSTANCE.toLinkOptions(z);
        LinkOption[] linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions, linkOptions.length);
        if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length)) && Files.isDirectory(path2, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1))) {
            Unit unit = Unit.INSTANCE;
        } else {
            CopyOption[] copyOptionArr = (CopyOption[]) Arrays.copyOf(linkOptions, linkOptions.length);
            Files.copy(path, path2, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
        }
        return CopyActionResult.CONTINUE;
    }
}
