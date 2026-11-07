package j$.nio.file;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.nio.file.a */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2261a {
    public static final EnumC2261a EXECUTE;
    public static final EnumC2261a READ;
    public static final EnumC2261a WRITE;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2261a[] f496a;

    static {
        EnumC2261a enumC2261a = new EnumC2261a("READ", 0);
        READ = enumC2261a;
        EnumC2261a enumC2261a2 = new EnumC2261a("WRITE", 1);
        WRITE = enumC2261a2;
        EnumC2261a enumC2261a3 = new EnumC2261a("EXECUTE", 2);
        EXECUTE = enumC2261a3;
        f496a = new EnumC2261a[]{enumC2261a, enumC2261a2, enumC2261a3};
    }

    public static EnumC2261a valueOf(String str) {
        return (EnumC2261a) Enum.valueOf(EnumC2261a.class, str);
    }

    public static EnumC2261a[] values() {
        return (EnumC2261a[]) f496a.clone();
    }
}
