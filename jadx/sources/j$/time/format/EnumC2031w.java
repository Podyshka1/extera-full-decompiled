package j$.time.format;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.format.w */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2031w {
    public static final EnumC2031w LENIENT;
    public static final EnumC2031w SMART;
    public static final EnumC2031w STRICT;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2031w[] f554a;

    public static EnumC2031w valueOf(String str) {
        return (EnumC2031w) Enum.valueOf(EnumC2031w.class, str);
    }

    public static EnumC2031w[] values() {
        return (EnumC2031w[]) f554a.clone();
    }

    static {
        EnumC2031w enumC2031w = new EnumC2031w("STRICT", 0);
        STRICT = enumC2031w;
        EnumC2031w enumC2031w2 = new EnumC2031w("SMART", 1);
        SMART = enumC2031w2;
        EnumC2031w enumC2031w3 = new EnumC2031w("LENIENT", 2);
        LENIENT = enumC2031w3;
        f554a = new EnumC2031w[]{enumC2031w, enumC2031w2, enumC2031w3};
    }
}
