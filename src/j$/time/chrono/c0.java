package j$.time.chrono;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class c0 implements InterfaceC2115l {
    public static final c0 BEFORE_ROC;
    public static final c0 ROC;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ c0[] f505a;

    static {
        c0 c0Var = new c0("BEFORE_ROC", 0);
        BEFORE_ROC = c0Var;
        c0 c0Var2 = new c0("ROC", 1);
        ROC = c0Var2;
        f505a = new c0[]{c0Var, c0Var2};
    }

    public static c0 valueOf(String str) {
        return (c0) Enum.valueOf(c0.class, str);
    }

    public static c0[] values() {
        return (c0[]) f505a.clone();
    }

    @Override // j$.time.chrono.InterfaceC2115l
    public final int getValue() {
        return ordinal();
    }
}
