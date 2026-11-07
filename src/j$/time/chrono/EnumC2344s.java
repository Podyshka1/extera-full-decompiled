package j$.time.chrono;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.chrono.s */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2344s implements InterfaceC2337l {
    public static final EnumC2344s BCE;
    public static final EnumC2344s CE;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2344s[] f702a;

    static {
        EnumC2344s enumC2344s = new EnumC2344s("BCE", 0);
        BCE = enumC2344s;
        EnumC2344s enumC2344s2 = new EnumC2344s("CE", 1);
        CE = enumC2344s2;
        f702a = new EnumC2344s[]{enumC2344s, enumC2344s2};
    }

    public static EnumC2344s valueOf(String str) {
        return (EnumC2344s) Enum.valueOf(EnumC2344s.class, str);
    }

    public static EnumC2344s[] values() {
        return (EnumC2344s[]) f702a.clone();
    }

    @Override // j$.time.chrono.InterfaceC2337l
    public final int getValue() {
        return ordinal();
    }
}
