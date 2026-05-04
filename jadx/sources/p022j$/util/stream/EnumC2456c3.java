package p022j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.util.stream.c3 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2456c3 {

    /* JADX INFO: renamed from: OP */
    public static final EnumC2456c3 f1318OP;
    public static final EnumC2456c3 SPLITERATOR;
    public static final EnumC2456c3 STREAM;
    public static final EnumC2456c3 TERMINAL_OP;
    public static final EnumC2456c3 UPSTREAM_TERMINAL_OP;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2456c3[] f1319a;

    public static EnumC2456c3 valueOf(String str) {
        return (EnumC2456c3) Enum.valueOf(EnumC2456c3.class, str);
    }

    public static EnumC2456c3[] values() {
        return (EnumC2456c3[]) f1319a.clone();
    }

    static {
        EnumC2456c3 enumC2456c3 = new EnumC2456c3("SPLITERATOR", 0);
        SPLITERATOR = enumC2456c3;
        EnumC2456c3 enumC2456c32 = new EnumC2456c3("STREAM", 1);
        STREAM = enumC2456c32;
        EnumC2456c3 enumC2456c33 = new EnumC2456c3("OP", 2);
        f1318OP = enumC2456c33;
        EnumC2456c3 enumC2456c34 = new EnumC2456c3("TERMINAL_OP", 3);
        TERMINAL_OP = enumC2456c34;
        EnumC2456c3 enumC2456c35 = new EnumC2456c3("UPSTREAM_TERMINAL_OP", 4);
        UPSTREAM_TERMINAL_OP = enumC2456c35;
        f1319a = new EnumC2456c3[]{enumC2456c3, enumC2456c32, enumC2456c33, enumC2456c34, enumC2456c35};
    }
}
