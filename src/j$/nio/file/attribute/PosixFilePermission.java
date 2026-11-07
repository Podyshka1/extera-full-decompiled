package j$.nio.file.attribute;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class PosixFilePermission {
    public static final PosixFilePermission GROUP_EXECUTE;
    public static final PosixFilePermission GROUP_READ;
    public static final PosixFilePermission GROUP_WRITE;
    public static final PosixFilePermission OTHERS_EXECUTE;
    public static final PosixFilePermission OTHERS_READ;
    public static final PosixFilePermission OTHERS_WRITE;
    public static final PosixFilePermission OWNER_EXECUTE;
    public static final PosixFilePermission OWNER_READ;
    public static final PosixFilePermission OWNER_WRITE;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ PosixFilePermission[] f501a;

    static {
        PosixFilePermission posixFilePermission = new PosixFilePermission("OWNER_READ", 0);
        OWNER_READ = posixFilePermission;
        PosixFilePermission posixFilePermission2 = new PosixFilePermission("OWNER_WRITE", 1);
        OWNER_WRITE = posixFilePermission2;
        PosixFilePermission posixFilePermission3 = new PosixFilePermission("OWNER_EXECUTE", 2);
        OWNER_EXECUTE = posixFilePermission3;
        PosixFilePermission posixFilePermission4 = new PosixFilePermission("GROUP_READ", 3);
        GROUP_READ = posixFilePermission4;
        PosixFilePermission posixFilePermission5 = new PosixFilePermission("GROUP_WRITE", 4);
        GROUP_WRITE = posixFilePermission5;
        PosixFilePermission posixFilePermission6 = new PosixFilePermission("GROUP_EXECUTE", 5);
        GROUP_EXECUTE = posixFilePermission6;
        PosixFilePermission posixFilePermission7 = new PosixFilePermission("OTHERS_READ", 6);
        OTHERS_READ = posixFilePermission7;
        PosixFilePermission posixFilePermission8 = new PosixFilePermission("OTHERS_WRITE", 7);
        OTHERS_WRITE = posixFilePermission8;
        PosixFilePermission posixFilePermission9 = new PosixFilePermission("OTHERS_EXECUTE", 8);
        OTHERS_EXECUTE = posixFilePermission9;
        f501a = new PosixFilePermission[]{posixFilePermission, posixFilePermission2, posixFilePermission3, posixFilePermission4, posixFilePermission5, posixFilePermission6, posixFilePermission7, posixFilePermission8, posixFilePermission9};
    }

    public static PosixFilePermission valueOf(String str) {
        return (PosixFilePermission) Enum.valueOf(PosixFilePermission.class, str);
    }

    public static PosixFilePermission[] values() {
        return (PosixFilePermission[]) f501a.clone();
    }
}
