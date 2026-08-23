package j$.time.format;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.format.l */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2144l implements InterfaceC2137e {
    public static final EnumC2144l INSENSITIVE;
    public static final EnumC2144l LENIENT;
    public static final EnumC2144l SENSITIVE;
    public static final EnumC2144l STRICT;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2144l[] f602a;

    static {
        EnumC2144l enumC2144l = new EnumC2144l("SENSITIVE", 0);
        SENSITIVE = enumC2144l;
        EnumC2144l enumC2144l2 = new EnumC2144l("INSENSITIVE", 1);
        INSENSITIVE = enumC2144l2;
        EnumC2144l enumC2144l3 = new EnumC2144l("STRICT", 2);
        STRICT = enumC2144l3;
        EnumC2144l enumC2144l4 = new EnumC2144l("LENIENT", 3);
        LENIENT = enumC2144l4;
        f602a = new EnumC2144l[]{enumC2144l, enumC2144l2, enumC2144l3, enumC2144l4};
    }

    public static EnumC2144l valueOf(String str) {
        return (EnumC2144l) Enum.valueOf(EnumC2144l.class, str);
    }

    public static EnumC2144l[] values() {
        return (EnumC2144l[]) f602a.clone();
    }

    @Override // j$.time.format.InterfaceC2137e
    /* JADX INFO: renamed from: B */
    public final int mo636B(C2150r c2150r, CharSequence charSequence, int i) {
        int iOrdinal = ordinal();
        if (iOrdinal == 0) {
            c2150r.f623b = true;
            return i;
        }
        if (iOrdinal == 1) {
            c2150r.f623b = false;
            return i;
        }
        if (iOrdinal == 2) {
            c2150r.f624c = true;
            return i;
        }
        if (iOrdinal != 3) {
            return i;
        }
        c2150r.f624c = false;
        return i;
    }

    @Override // j$.time.format.InterfaceC2137e
    /* JADX INFO: renamed from: t */
    public final boolean mo637t(C2152t c2152t, StringBuilder sb) {
        return true;
    }

    @Override // java.lang.Enum
    public final String toString() {
        int iOrdinal = ordinal();
        if (iOrdinal == 0) {
            return "ParseCaseSensitive(true)";
        }
        if (iOrdinal == 1) {
            return "ParseCaseSensitive(false)";
        }
        if (iOrdinal == 2) {
            return "ParseStrict(true)";
        }
        if (iOrdinal == 3) {
            return "ParseStrict(false)";
        }
        throw new IllegalStateException("Unreachable");
    }
}
