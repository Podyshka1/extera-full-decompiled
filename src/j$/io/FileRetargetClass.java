package j$.io;

import j$.nio.file.Path;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class FileRetargetClass {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Path toPath(File file) {
        return file instanceof FileRetargetInterface ? ((FileRetargetInterface) file).toPath() : DesugarFile.toPath(file);
    }
}
