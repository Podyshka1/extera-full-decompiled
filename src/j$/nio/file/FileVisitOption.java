package j$.nio.file;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class FileVisitOption {
    public static final FileVisitOption FOLLOW_LINKS;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ FileVisitOption[] f489a;

    static {
        FileVisitOption fileVisitOption = new FileVisitOption("FOLLOW_LINKS", 0);
        FOLLOW_LINKS = fileVisitOption;
        f489a = new FileVisitOption[]{fileVisitOption};
    }

    public static FileVisitOption valueOf(String str) {
        return (FileVisitOption) Enum.valueOf(FileVisitOption.class, str);
    }

    public static FileVisitOption[] values() {
        return (FileVisitOption[]) f489a.clone();
    }
}
