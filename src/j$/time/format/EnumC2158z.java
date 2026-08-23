package j$.time.format;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.format.z */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2158z {
    public static final EnumC2158z LENIENT;
    public static final EnumC2158z SMART;
    public static final EnumC2158z STRICT;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2158z[] f647a;

    static {
        EnumC2158z enumC2158z = new EnumC2158z("STRICT", 0);
        STRICT = enumC2158z;
        EnumC2158z enumC2158z2 = new EnumC2158z("SMART", 1);
        SMART = enumC2158z2;
        EnumC2158z enumC2158z3 = new EnumC2158z("LENIENT", 2);
        LENIENT = enumC2158z3;
        f647a = new EnumC2158z[]{enumC2158z, enumC2158z2, enumC2158z3};
    }

    public static EnumC2158z valueOf(String str) {
        return (EnumC2158z) Enum.valueOf(EnumC2158z.class, str);
    }

    public static EnumC2158z[] values() {
        return (EnumC2158z[]) f647a.clone();
    }
}
