package j$.time.format;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.format.z */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2380z {
    public static final EnumC2380z LENIENT;
    public static final EnumC2380z SMART;
    public static final EnumC2380z STRICT;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2380z[] f807a;

    static {
        EnumC2380z enumC2380z = new EnumC2380z("STRICT", 0);
        STRICT = enumC2380z;
        EnumC2380z enumC2380z2 = new EnumC2380z("SMART", 1);
        SMART = enumC2380z2;
        EnumC2380z enumC2380z3 = new EnumC2380z("LENIENT", 2);
        LENIENT = enumC2380z3;
        f807a = new EnumC2380z[]{enumC2380z, enumC2380z2, enumC2380z3};
    }

    public static EnumC2380z valueOf(String str) {
        return (EnumC2380z) Enum.valueOf(EnumC2380z.class, str);
    }

    public static EnumC2380z[] values() {
        return (EnumC2380z[]) f807a.clone();
    }
}
