package p022j$.time.format;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.format.w */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2170w {
    public static final EnumC2170w LENIENT;
    public static final EnumC2170w SMART;
    public static final EnumC2170w STRICT;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2170w[] f789a;

    public static EnumC2170w valueOf(String str) {
        return (EnumC2170w) Enum.valueOf(EnumC2170w.class, str);
    }

    public static EnumC2170w[] values() {
        return (EnumC2170w[]) f789a.clone();
    }

    static {
        EnumC2170w enumC2170w = new EnumC2170w("STRICT", 0);
        STRICT = enumC2170w;
        EnumC2170w enumC2170w2 = new EnumC2170w("SMART", 1);
        SMART = enumC2170w2;
        EnumC2170w enumC2170w3 = new EnumC2170w("LENIENT", 2);
        LENIENT = enumC2170w3;
        f789a = new EnumC2170w[]{enumC2170w, enumC2170w2, enumC2170w3};
    }
}
