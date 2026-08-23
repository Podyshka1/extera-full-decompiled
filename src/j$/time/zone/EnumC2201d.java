package j$.time.zone;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.zone.d */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2201d {
    public static final EnumC2201d STANDARD;
    public static final EnumC2201d UTC;
    public static final EnumC2201d WALL;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2201d[] f736a;

    static {
        EnumC2201d enumC2201d = new EnumC2201d("UTC", 0);
        UTC = enumC2201d;
        EnumC2201d enumC2201d2 = new EnumC2201d("WALL", 1);
        WALL = enumC2201d2;
        EnumC2201d enumC2201d3 = new EnumC2201d("STANDARD", 2);
        STANDARD = enumC2201d3;
        f736a = new EnumC2201d[]{enumC2201d, enumC2201d2, enumC2201d3};
    }

    public static EnumC2201d valueOf(String str) {
        return (EnumC2201d) Enum.valueOf(EnumC2201d.class, str);
    }

    public static EnumC2201d[] values() {
        return (EnumC2201d[]) f736a.clone();
    }
}
