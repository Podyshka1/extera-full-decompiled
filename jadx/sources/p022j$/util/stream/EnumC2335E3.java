package p022j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.util.stream.E3 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2335E3 {
    public static final EnumC2335E3 MAYBE_MORE;
    public static final EnumC2335E3 NO_MORE;
    public static final EnumC2335E3 UNLIMITED;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2335E3[] f1124a;

    static {
        EnumC2335E3 enumC2335E3 = new EnumC2335E3("NO_MORE", 0);
        NO_MORE = enumC2335E3;
        EnumC2335E3 enumC2335E32 = new EnumC2335E3("MAYBE_MORE", 1);
        MAYBE_MORE = enumC2335E32;
        EnumC2335E3 enumC2335E33 = new EnumC2335E3("UNLIMITED", 2);
        UNLIMITED = enumC2335E33;
        f1124a = new EnumC2335E3[]{enumC2335E3, enumC2335E32, enumC2335E33};
    }

    public static EnumC2335E3 valueOf(String str) {
        return (EnumC2335E3) Enum.valueOf(EnumC2335E3.class, str);
    }

    public static EnumC2335E3[] values() {
        return (EnumC2335E3[]) f1124a.clone();
    }
}
