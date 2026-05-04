package p022j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.util.stream.e3 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2468e3 {
    public static final EnumC2468e3 DOUBLE_VALUE;
    public static final EnumC2468e3 INT_VALUE;
    public static final EnumC2468e3 LONG_VALUE;
    public static final EnumC2468e3 REFERENCE;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2468e3[] f1369a;

    public static EnumC2468e3 valueOf(String str) {
        return (EnumC2468e3) Enum.valueOf(EnumC2468e3.class, str);
    }

    public static EnumC2468e3[] values() {
        return (EnumC2468e3[]) f1369a.clone();
    }

    static {
        EnumC2468e3 enumC2468e3 = new EnumC2468e3("REFERENCE", 0);
        REFERENCE = enumC2468e3;
        EnumC2468e3 enumC2468e32 = new EnumC2468e3("INT_VALUE", 1);
        INT_VALUE = enumC2468e32;
        EnumC2468e3 enumC2468e33 = new EnumC2468e3("LONG_VALUE", 2);
        LONG_VALUE = enumC2468e33;
        EnumC2468e3 enumC2468e34 = new EnumC2468e3("DOUBLE_VALUE", 3);
        DOUBLE_VALUE = enumC2468e34;
        f1369a = new EnumC2468e3[]{enumC2468e3, enumC2468e32, enumC2468e33, enumC2468e34};
    }
}
