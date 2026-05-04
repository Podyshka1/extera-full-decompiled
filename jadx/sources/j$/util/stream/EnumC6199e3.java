package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.util.stream.e3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC6199e3 {
    public static final EnumC6199e3 DOUBLE_VALUE;
    public static final EnumC6199e3 INT_VALUE;
    public static final EnumC6199e3 LONG_VALUE;
    public static final EnumC6199e3 REFERENCE;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC6199e3[] f1133a;

    public static EnumC6199e3 valueOf(String str) {
        return (EnumC6199e3) Enum.valueOf(EnumC6199e3.class, str);
    }

    public static EnumC6199e3[] values() {
        return (EnumC6199e3[]) f1133a.clone();
    }

    static {
        EnumC6199e3 enumC6199e3 = new EnumC6199e3("REFERENCE", 0);
        REFERENCE = enumC6199e3;
        EnumC6199e3 enumC6199e32 = new EnumC6199e3("INT_VALUE", 1);
        INT_VALUE = enumC6199e32;
        EnumC6199e3 enumC6199e33 = new EnumC6199e3("LONG_VALUE", 2);
        LONG_VALUE = enumC6199e33;
        EnumC6199e3 enumC6199e34 = new EnumC6199e3("DOUBLE_VALUE", 3);
        DOUBLE_VALUE = enumC6199e34;
        f1133a = new EnumC6199e3[]{enumC6199e3, enumC6199e32, enumC6199e33, enumC6199e34};
    }
}
