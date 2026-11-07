package j$.io;

import j$.nio.file.Path;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class FileRetargetClass {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Path toPath(File file) {
        return file instanceof FileRetargetInterface ? ((FileRetargetInterface) file).toPath() : DesugarFile.toPath(file);
    }
}
