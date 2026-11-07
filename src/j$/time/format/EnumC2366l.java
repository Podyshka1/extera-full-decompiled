package j$.time.format;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.format.l */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2366l implements InterfaceC2359e {
    public static final EnumC2366l INSENSITIVE;
    public static final EnumC2366l LENIENT;
    public static final EnumC2366l SENSITIVE;
    public static final EnumC2366l STRICT;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2366l[] f762a;

    static {
        EnumC2366l enumC2366l = new EnumC2366l("SENSITIVE", 0);
        SENSITIVE = enumC2366l;
        EnumC2366l enumC2366l2 = new EnumC2366l("INSENSITIVE", 1);
        INSENSITIVE = enumC2366l2;
        EnumC2366l enumC2366l3 = new EnumC2366l("STRICT", 2);
        STRICT = enumC2366l3;
        EnumC2366l enumC2366l4 = new EnumC2366l("LENIENT", 3);
        LENIENT = enumC2366l4;
        f762a = new EnumC2366l[]{enumC2366l, enumC2366l2, enumC2366l3, enumC2366l4};
    }

    public static EnumC2366l valueOf(String str) {
        return (EnumC2366l) Enum.valueOf(EnumC2366l.class, str);
    }

    public static EnumC2366l[] values() {
        return (EnumC2366l[]) f762a.clone();
    }

    @Override // j$.time.format.InterfaceC2359e
    /* JADX INFO: renamed from: D */
    public final int mo818D(C2372r c2372r, CharSequence charSequence, int i) {
        int iOrdinal = ordinal();
        if (iOrdinal == 0) {
            c2372r.f783b = true;
            return i;
        }
        if (iOrdinal == 1) {
            c2372r.f783b = false;
            return i;
        }
        if (iOrdinal == 2) {
            c2372r.f784c = true;
            return i;
        }
        if (iOrdinal != 3) {
            return i;
        }
        c2372r.f784c = false;
        return i;
    }

    @Override // j$.time.format.InterfaceC2359e
    /* JADX INFO: renamed from: s */
    public final boolean mo819s(C2374t c2374t, StringBuilder sb) {
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
