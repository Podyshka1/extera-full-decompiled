package j$.nio.file;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class FileVisitResult {
    public static final FileVisitResult CONTINUE;
    public static final FileVisitResult SKIP_SIBLINGS;
    public static final FileVisitResult SKIP_SUBTREE;
    public static final FileVisitResult TERMINATE;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ FileVisitResult[] f491a;

    static {
        FileVisitResult fileVisitResult = new FileVisitResult("CONTINUE", 0);
        CONTINUE = fileVisitResult;
        FileVisitResult fileVisitResult2 = new FileVisitResult("TERMINATE", 1);
        TERMINATE = fileVisitResult2;
        FileVisitResult fileVisitResult3 = new FileVisitResult("SKIP_SUBTREE", 2);
        SKIP_SUBTREE = fileVisitResult3;
        FileVisitResult fileVisitResult4 = new FileVisitResult("SKIP_SIBLINGS", 3);
        SKIP_SIBLINGS = fileVisitResult4;
        f491a = new FileVisitResult[]{fileVisitResult, fileVisitResult2, fileVisitResult3, fileVisitResult4};
    }

    public static FileVisitResult valueOf(String str) {
        return (FileVisitResult) Enum.valueOf(FileVisitResult.class, str);
    }

    public static FileVisitResult[] values() {
        return (FileVisitResult[]) f491a.clone();
    }
}
