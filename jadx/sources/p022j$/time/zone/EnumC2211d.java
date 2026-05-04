package p022j$.time.zone;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.zone.d */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2211d {
    public static final EnumC2211d STANDARD;
    public static final EnumC2211d UTC;
    public static final EnumC2211d WALL;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2211d[] f877a;

    public static EnumC2211d valueOf(String str) {
        return (EnumC2211d) Enum.valueOf(EnumC2211d.class, str);
    }

    public static EnumC2211d[] values() {
        return (EnumC2211d[]) f877a.clone();
    }

    static {
        EnumC2211d enumC2211d = new EnumC2211d("UTC", 0);
        UTC = enumC2211d;
        EnumC2211d enumC2211d2 = new EnumC2211d("WALL", 1);
        WALL = enumC2211d2;
        EnumC2211d enumC2211d3 = new EnumC2211d("STANDARD", 2);
        STANDARD = enumC2211d3;
        f877a = new EnumC2211d[]{enumC2211d, enumC2211d2, enumC2211d3};
    }
}
