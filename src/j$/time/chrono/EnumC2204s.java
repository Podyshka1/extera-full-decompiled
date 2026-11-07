package j$.time.chrono;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.chrono.s */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2204s implements InterfaceC2197l {
    public static final EnumC2204s BCE;
    public static final EnumC2204s CE;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2204s[] f700a;

    static {
        EnumC2204s enumC2204s = new EnumC2204s("BCE", 0);
        BCE = enumC2204s;
        EnumC2204s enumC2204s2 = new EnumC2204s("CE", 1);
        CE = enumC2204s2;
        f700a = new EnumC2204s[]{enumC2204s, enumC2204s2};
    }

    public static EnumC2204s valueOf(String str) {
        return (EnumC2204s) Enum.valueOf(EnumC2204s.class, str);
    }

    public static EnumC2204s[] values() {
        return (EnumC2204s[]) f700a.clone();
    }

    @Override // j$.time.chrono.InterfaceC2197l
    public final int getValue() {
        return ordinal();
    }
}
