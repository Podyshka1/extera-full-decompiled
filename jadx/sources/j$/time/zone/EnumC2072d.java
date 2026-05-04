package j$.time.zone;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.zone.d */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2072d {
    public static final EnumC2072d STANDARD;
    public static final EnumC2072d UTC;
    public static final EnumC2072d WALL;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2072d[] f642a;

    public static EnumC2072d valueOf(String str) {
        return (EnumC2072d) Enum.valueOf(EnumC2072d.class, str);
    }

    public static EnumC2072d[] values() {
        return (EnumC2072d[]) f642a.clone();
    }

    static {
        EnumC2072d enumC2072d = new EnumC2072d("UTC", 0);
        UTC = enumC2072d;
        EnumC2072d enumC2072d2 = new EnumC2072d("WALL", 1);
        WALL = enumC2072d2;
        EnumC2072d enumC2072d3 = new EnumC2072d("STANDARD", 2);
        STANDARD = enumC2072d3;
        f642a = new EnumC2072d[]{enumC2072d, enumC2072d2, enumC2072d3};
    }
}
