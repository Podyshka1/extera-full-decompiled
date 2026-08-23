package j$.time.chrono;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.chrono.s */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2122s implements InterfaceC2115l {
    public static final EnumC2122s BCE;
    public static final EnumC2122s CE;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2122s[] f544a;

    static {
        EnumC2122s enumC2122s = new EnumC2122s("BCE", 0);
        BCE = enumC2122s;
        EnumC2122s enumC2122s2 = new EnumC2122s("CE", 1);
        CE = enumC2122s2;
        f544a = new EnumC2122s[]{enumC2122s, enumC2122s2};
    }

    public static EnumC2122s valueOf(String str) {
        return (EnumC2122s) Enum.valueOf(EnumC2122s.class, str);
    }

    public static EnumC2122s[] values() {
        return (EnumC2122s[]) f544a.clone();
    }

    @Override // j$.time.chrono.InterfaceC2115l
    public final int getValue() {
        return ordinal();
    }
}
