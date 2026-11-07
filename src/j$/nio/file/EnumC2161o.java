package j$.nio.file;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.nio.file.o */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2161o {
    public static final EnumC2161o END_DIRECTORY;
    public static final EnumC2161o ENTRY;
    public static final EnumC2161o START_DIRECTORY;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2161o[] f564a;

    static {
        EnumC2161o enumC2161o = new EnumC2161o("START_DIRECTORY", 0);
        START_DIRECTORY = enumC2161o;
        EnumC2161o enumC2161o2 = new EnumC2161o("END_DIRECTORY", 1);
        END_DIRECTORY = enumC2161o2;
        EnumC2161o enumC2161o3 = new EnumC2161o("ENTRY", 2);
        ENTRY = enumC2161o3;
        f564a = new EnumC2161o[]{enumC2161o, enumC2161o2, enumC2161o3};
    }

    public static EnumC2161o valueOf(String str) {
        return (EnumC2161o) Enum.valueOf(EnumC2161o.class, str);
    }

    public static EnumC2161o[] values() {
        return (EnumC2161o[]) f564a.clone();
    }
}
