package j$.nio.file;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.nio.file.a */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2121a {
    public static final EnumC2121a EXECUTE;
    public static final EnumC2121a READ;
    public static final EnumC2121a WRITE;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2121a[] f495a;

    static {
        EnumC2121a enumC2121a = new EnumC2121a("READ", 0);
        READ = enumC2121a;
        EnumC2121a enumC2121a2 = new EnumC2121a("WRITE", 1);
        WRITE = enumC2121a2;
        EnumC2121a enumC2121a3 = new EnumC2121a("EXECUTE", 2);
        EXECUTE = enumC2121a3;
        f495a = new EnumC2121a[]{enumC2121a, enumC2121a2, enumC2121a3};
    }

    public static EnumC2121a valueOf(String str) {
        return (EnumC2121a) Enum.valueOf(EnumC2121a.class, str);
    }

    public static EnumC2121a[] values() {
        return (EnumC2121a[]) f495a.clone();
    }
}
