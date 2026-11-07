package j$.nio.file;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.nio.file.o */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2301o {
    public static final EnumC2301o END_DIRECTORY;
    public static final EnumC2301o ENTRY;
    public static final EnumC2301o START_DIRECTORY;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2301o[] f565a;

    static {
        EnumC2301o enumC2301o = new EnumC2301o("START_DIRECTORY", 0);
        START_DIRECTORY = enumC2301o;
        EnumC2301o enumC2301o2 = new EnumC2301o("END_DIRECTORY", 1);
        END_DIRECTORY = enumC2301o2;
        EnumC2301o enumC2301o3 = new EnumC2301o("ENTRY", 2);
        ENTRY = enumC2301o3;
        f565a = new EnumC2301o[]{enumC2301o, enumC2301o2, enumC2301o3};
    }

    public static EnumC2301o valueOf(String str) {
        return (EnumC2301o) Enum.valueOf(EnumC2301o.class, str);
    }

    public static EnumC2301o[] values() {
        return (EnumC2301o[]) f565a.clone();
    }
}
