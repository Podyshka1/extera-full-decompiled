package j$.nio.file;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class FileVisitOption {
    public static final FileVisitOption FOLLOW_LINKS;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ FileVisitOption[] f490a;

    static {
        FileVisitOption fileVisitOption = new FileVisitOption("FOLLOW_LINKS", 0);
        FOLLOW_LINKS = fileVisitOption;
        f490a = new FileVisitOption[]{fileVisitOption};
    }

    public static FileVisitOption valueOf(String str) {
        return (FileVisitOption) Enum.valueOf(FileVisitOption.class, str);
    }

    public static FileVisitOption[] values() {
        return (FileVisitOption[]) f490a.clone();
    }
}
