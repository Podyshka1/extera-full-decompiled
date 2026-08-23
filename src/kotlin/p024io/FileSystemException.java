package kotlin.p024io;

import java.io.File;
import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class FileSystemException extends IOException {
    private final File file;
    private final File other;
    private final String reason;

    public /* synthetic */ FileSystemException(File file, File file2, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, (i & 2) != 0 ? null : file2, (i & 4) != 0 ? null : str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileSystemException(File file, File file2, String str) {
        super(ExceptionsKt.constructMessage(file, file2, str));
        Intrinsics.checkNotNullParameter(file, "file");
        this.file = file;
        this.other = file2;
        this.reason = str;
    }
}
