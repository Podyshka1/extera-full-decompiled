package j$.time.zone;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.zone.d */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2276d {
    public static final EnumC2276d STANDARD;
    public static final EnumC2276d UTC;
    public static final EnumC2276d WALL;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2276d[] f878a;

    static {
        EnumC2276d enumC2276d = new EnumC2276d("UTC", 0);
        UTC = enumC2276d;
        EnumC2276d enumC2276d2 = new EnumC2276d("WALL", 1);
        WALL = enumC2276d2;
        EnumC2276d enumC2276d3 = new EnumC2276d("STANDARD", 2);
        STANDARD = enumC2276d3;
        f878a = new EnumC2276d[]{enumC2276d, enumC2276d2, enumC2276d3};
    }

    public static EnumC2276d valueOf(String str) {
        return (EnumC2276d) Enum.valueOf(EnumC2276d.class, str);
    }

    public static EnumC2276d[] values() {
        return (EnumC2276d[]) f878a.clone();
    }
}
