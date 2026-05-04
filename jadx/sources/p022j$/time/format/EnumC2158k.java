package p022j$.time.format;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.format.k */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2158k implements InterfaceC2153f {
    public static final EnumC2158k INSENSITIVE;
    public static final EnumC2158k LENIENT;
    public static final EnumC2158k SENSITIVE;
    public static final EnumC2158k STRICT;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2158k[] f761a;

    @Override // p022j$.time.format.InterfaceC2153f
    /* JADX INFO: renamed from: h */
    public final boolean mo719h(C2165r c2165r, StringBuilder sb) {
        return true;
    }

    public static EnumC2158k valueOf(String str) {
        return (EnumC2158k) Enum.valueOf(EnumC2158k.class, str);
    }

    public static EnumC2158k[] values() {
        return (EnumC2158k[]) f761a.clone();
    }

    static {
        EnumC2158k enumC2158k = new EnumC2158k("SENSITIVE", 0);
        SENSITIVE = enumC2158k;
        EnumC2158k enumC2158k2 = new EnumC2158k("INSENSITIVE", 1);
        INSENSITIVE = enumC2158k2;
        EnumC2158k enumC2158k3 = new EnumC2158k("STRICT", 2);
        STRICT = enumC2158k3;
        EnumC2158k enumC2158k4 = new EnumC2158k("LENIENT", 3);
        LENIENT = enumC2158k4;
        f761a = new EnumC2158k[]{enumC2158k, enumC2158k2, enumC2158k3, enumC2158k4};
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
