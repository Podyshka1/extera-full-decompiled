package j$.nio.file;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class StandardOpenOption implements OpenOption {
    public static final StandardOpenOption APPEND;
    public static final StandardOpenOption CREATE;
    public static final StandardOpenOption CREATE_NEW;
    public static final StandardOpenOption DELETE_ON_CLOSE;
    public static final StandardOpenOption DSYNC;
    public static final StandardOpenOption READ;
    public static final StandardOpenOption SPARSE;
    public static final StandardOpenOption SYNC;
    public static final StandardOpenOption TRUNCATE_EXISTING;
    public static final StandardOpenOption WRITE;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ StandardOpenOption[] f495a;

    static {
        StandardOpenOption standardOpenOption = new StandardOpenOption("READ", 0);
        READ = standardOpenOption;
        StandardOpenOption standardOpenOption2 = new StandardOpenOption("WRITE", 1);
        WRITE = standardOpenOption2;
        StandardOpenOption standardOpenOption3 = new StandardOpenOption("APPEND", 2);
        APPEND = standardOpenOption3;
        StandardOpenOption standardOpenOption4 = new StandardOpenOption("TRUNCATE_EXISTING", 3);
        TRUNCATE_EXISTING = standardOpenOption4;
        StandardOpenOption standardOpenOption5 = new StandardOpenOption("CREATE", 4);
        CREATE = standardOpenOption5;
        StandardOpenOption standardOpenOption6 = new StandardOpenOption("CREATE_NEW", 5);
        CREATE_NEW = standardOpenOption6;
        StandardOpenOption standardOpenOption7 = new StandardOpenOption("DELETE_ON_CLOSE", 6);
        DELETE_ON_CLOSE = standardOpenOption7;
        StandardOpenOption standardOpenOption8 = new StandardOpenOption("SPARSE", 7);
        SPARSE = standardOpenOption8;
        StandardOpenOption standardOpenOption9 = new StandardOpenOption("SYNC", 8);
        SYNC = standardOpenOption9;
        StandardOpenOption standardOpenOption10 = new StandardOpenOption("DSYNC", 9);
        DSYNC = standardOpenOption10;
        f495a = new StandardOpenOption[]{standardOpenOption, standardOpenOption2, standardOpenOption3, standardOpenOption4, standardOpenOption5, standardOpenOption6, standardOpenOption7, standardOpenOption8, standardOpenOption9, standardOpenOption10};
    }

    public static StandardOpenOption valueOf(String str) {
        return (StandardOpenOption) Enum.valueOf(StandardOpenOption.class, str);
    }

    public static StandardOpenOption[] values() {
        return (StandardOpenOption[]) f495a.clone();
    }
}
