package j$.time.zone;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.zone.d */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2415d {
    public static final EnumC2415d STANDARD;
    public static final EnumC2415d UTC;
    public static final EnumC2415d WALL;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2415d[] f880a;

    static {
        EnumC2415d enumC2415d = new EnumC2415d("UTC", 0);
        UTC = enumC2415d;
        EnumC2415d enumC2415d2 = new EnumC2415d("WALL", 1);
        WALL = enumC2415d2;
        EnumC2415d enumC2415d3 = new EnumC2415d("STANDARD", 2);
        STANDARD = enumC2415d3;
        f880a = new EnumC2415d[]{enumC2415d, enumC2415d2, enumC2415d3};
    }

    public static EnumC2415d valueOf(String str) {
        return (EnumC2415d) Enum.valueOf(EnumC2415d.class, str);
    }

    public static EnumC2415d[] values() {
        return (EnumC2415d[]) f880a.clone();
    }
}
