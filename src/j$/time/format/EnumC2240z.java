package j$.time.format;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.format.z */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2240z {
    public static final EnumC2240z LENIENT;
    public static final EnumC2240z SMART;
    public static final EnumC2240z STRICT;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2240z[] f803a;

    static {
        EnumC2240z enumC2240z = new EnumC2240z("STRICT", 0);
        STRICT = enumC2240z;
        EnumC2240z enumC2240z2 = new EnumC2240z("SMART", 1);
        SMART = enumC2240z2;
        EnumC2240z enumC2240z3 = new EnumC2240z("LENIENT", 2);
        LENIENT = enumC2240z3;
        f803a = new EnumC2240z[]{enumC2240z, enumC2240z2, enumC2240z3};
    }

    public static EnumC2240z valueOf(String str) {
        return (EnumC2240z) Enum.valueOf(EnumC2240z.class, str);
    }

    public static EnumC2240z[] values() {
        return (EnumC2240z[]) f803a.clone();
    }
}
