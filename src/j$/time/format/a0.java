package j$.time.format;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class a0 {
    public static final a0 ALWAYS;
    public static final a0 EXCEEDS_PAD;
    public static final a0 NEVER;
    public static final a0 NORMAL;
    public static final a0 NOT_NEGATIVE;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ a0[] f572a;

    static {
        a0 a0Var = new a0("NORMAL", 0);
        NORMAL = a0Var;
        a0 a0Var2 = new a0("ALWAYS", 1);
        ALWAYS = a0Var2;
        a0 a0Var3 = new a0("NEVER", 2);
        NEVER = a0Var3;
        a0 a0Var4 = new a0("NOT_NEGATIVE", 3);
        NOT_NEGATIVE = a0Var4;
        a0 a0Var5 = new a0("EXCEEDS_PAD", 4);
        EXCEEDS_PAD = a0Var5;
        f572a = new a0[]{a0Var, a0Var2, a0Var3, a0Var4, a0Var5};
    }

    public static a0 valueOf(String str) {
        return (a0) Enum.valueOf(a0.class, str);
    }

    public static a0[] values() {
        return (a0[]) f572a.clone();
    }
}
