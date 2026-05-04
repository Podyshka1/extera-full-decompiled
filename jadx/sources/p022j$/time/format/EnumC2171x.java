package p022j$.time.format;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.format.x */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2171x {
    public static final EnumC2171x ALWAYS;
    public static final EnumC2171x EXCEEDS_PAD;
    public static final EnumC2171x NEVER;
    public static final EnumC2171x NORMAL;
    public static final EnumC2171x NOT_NEGATIVE;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2171x[] f790a;

    public static EnumC2171x valueOf(String str) {
        return (EnumC2171x) Enum.valueOf(EnumC2171x.class, str);
    }

    public static EnumC2171x[] values() {
        return (EnumC2171x[]) f790a.clone();
    }

    static {
        EnumC2171x enumC2171x = new EnumC2171x("NORMAL", 0);
        NORMAL = enumC2171x;
        EnumC2171x enumC2171x2 = new EnumC2171x("ALWAYS", 1);
        ALWAYS = enumC2171x2;
        EnumC2171x enumC2171x3 = new EnumC2171x("NEVER", 2);
        NEVER = enumC2171x3;
        EnumC2171x enumC2171x4 = new EnumC2171x("NOT_NEGATIVE", 3);
        NOT_NEGATIVE = enumC2171x4;
        EnumC2171x enumC2171x5 = new EnumC2171x("EXCEEDS_PAD", 4);
        EXCEEDS_PAD = enumC2171x5;
        f790a = new EnumC2171x[]{enumC2171x, enumC2171x2, enumC2171x3, enumC2171x4, enumC2171x5};
    }
}
