package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.util.stream.c3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC6191c3 {
    public static final EnumC6191c3 OP;
    public static final EnumC6191c3 SPLITERATOR;
    public static final EnumC6191c3 STREAM;
    public static final EnumC6191c3 TERMINAL_OP;
    public static final EnumC6191c3 UPSTREAM_TERMINAL_OP;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC6191c3[] f1083a;

    public static EnumC6191c3 valueOf(String str) {
        return (EnumC6191c3) Enum.valueOf(EnumC6191c3.class, str);
    }

    public static EnumC6191c3[] values() {
        return (EnumC6191c3[]) f1083a.clone();
    }

    static {
        EnumC6191c3 enumC6191c3 = new EnumC6191c3("SPLITERATOR", 0);
        SPLITERATOR = enumC6191c3;
        EnumC6191c3 enumC6191c32 = new EnumC6191c3("STREAM", 1);
        STREAM = enumC6191c32;
        EnumC6191c3 enumC6191c33 = new EnumC6191c3("OP", 2);
        OP = enumC6191c33;
        EnumC6191c3 enumC6191c34 = new EnumC6191c3("TERMINAL_OP", 3);
        TERMINAL_OP = enumC6191c34;
        EnumC6191c3 enumC6191c35 = new EnumC6191c3("UPSTREAM_TERMINAL_OP", 4);
        UPSTREAM_TERMINAL_OP = enumC6191c35;
        f1083a = new EnumC6191c3[]{enumC6191c3, enumC6191c32, enumC6191c33, enumC6191c34, enumC6191c35};
    }
}
