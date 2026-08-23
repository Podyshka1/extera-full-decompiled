package j$.time.format;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.format.k */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2019k implements InterfaceC2014f {
    public static final EnumC2019k INSENSITIVE;
    public static final EnumC2019k LENIENT;
    public static final EnumC2019k SENSITIVE;
    public static final EnumC2019k STRICT;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2019k[] f526a;

    @Override // j$.time.format.InterfaceC2014f
    /* JADX INFO: renamed from: h */
    public final boolean mo596h(C2026r c2026r, StringBuilder sb) {
        return true;
    }

    public static EnumC2019k valueOf(String str) {
        return (EnumC2019k) Enum.valueOf(EnumC2019k.class, str);
    }

    public static EnumC2019k[] values() {
        return (EnumC2019k[]) f526a.clone();
    }

    static {
        EnumC2019k enumC2019k = new EnumC2019k("SENSITIVE", 0);
        SENSITIVE = enumC2019k;
        EnumC2019k enumC2019k2 = new EnumC2019k("INSENSITIVE", 1);
        INSENSITIVE = enumC2019k2;
        EnumC2019k enumC2019k3 = new EnumC2019k("STRICT", 2);
        STRICT = enumC2019k3;
        EnumC2019k enumC2019k4 = new EnumC2019k("LENIENT", 3);
        LENIENT = enumC2019k4;
        f526a = new EnumC2019k[]{enumC2019k, enumC2019k2, enumC2019k3, enumC2019k4};
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
