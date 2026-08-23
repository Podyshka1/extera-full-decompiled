package j$.time.format;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.format.x */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2032x {
    public static final EnumC2032x ALWAYS;
    public static final EnumC2032x EXCEEDS_PAD;
    public static final EnumC2032x NEVER;
    public static final EnumC2032x NORMAL;
    public static final EnumC2032x NOT_NEGATIVE;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2032x[] f555a;

    public static EnumC2032x valueOf(String str) {
        return (EnumC2032x) Enum.valueOf(EnumC2032x.class, str);
    }

    public static EnumC2032x[] values() {
        return (EnumC2032x[]) f555a.clone();
    }

    static {
        EnumC2032x enumC2032x = new EnumC2032x("NORMAL", 0);
        NORMAL = enumC2032x;
        EnumC2032x enumC2032x2 = new EnumC2032x("ALWAYS", 1);
        ALWAYS = enumC2032x2;
        EnumC2032x enumC2032x3 = new EnumC2032x("NEVER", 2);
        NEVER = enumC2032x3;
        EnumC2032x enumC2032x4 = new EnumC2032x("NOT_NEGATIVE", 3);
        NOT_NEGATIVE = enumC2032x4;
        EnumC2032x enumC2032x5 = new EnumC2032x("EXCEEDS_PAD", 4);
        EXCEEDS_PAD = enumC2032x5;
        f555a = new EnumC2032x[]{enumC2032x, enumC2032x2, enumC2032x3, enumC2032x4, enumC2032x5};
    }
}
