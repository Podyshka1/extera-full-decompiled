package j$.time.chrono;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class i0 implements InterfaceC2337l {
    public static final i0 BE;
    public static final i0 BEFORE_BE;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ i0[] f680a;

    static {
        i0 i0Var = new i0("BEFORE_BE", 0);
        BEFORE_BE = i0Var;
        i0 i0Var2 = new i0("BE", 1);
        BE = i0Var2;
        f680a = new i0[]{i0Var, i0Var2};
    }

    public static i0 valueOf(String str) {
        return (i0) Enum.valueOf(i0.class, str);
    }

    public static i0[] values() {
        return (i0[]) f680a.clone();
    }

    @Override // j$.time.chrono.InterfaceC2337l
    public final int getValue() {
        return ordinal();
    }
}
