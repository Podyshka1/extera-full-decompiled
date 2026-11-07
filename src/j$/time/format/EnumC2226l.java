package j$.time.format;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.format.l */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2226l implements InterfaceC2219e {
    public static final EnumC2226l INSENSITIVE;
    public static final EnumC2226l LENIENT;
    public static final EnumC2226l SENSITIVE;
    public static final EnumC2226l STRICT;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2226l[] f758a;

    static {
        EnumC2226l enumC2226l = new EnumC2226l("SENSITIVE", 0);
        SENSITIVE = enumC2226l;
        EnumC2226l enumC2226l2 = new EnumC2226l("INSENSITIVE", 1);
        INSENSITIVE = enumC2226l2;
        EnumC2226l enumC2226l3 = new EnumC2226l("STRICT", 2);
        STRICT = enumC2226l3;
        EnumC2226l enumC2226l4 = new EnumC2226l("LENIENT", 3);
        LENIENT = enumC2226l4;
        f758a = new EnumC2226l[]{enumC2226l, enumC2226l2, enumC2226l3, enumC2226l4};
    }

    public static EnumC2226l valueOf(String str) {
        return (EnumC2226l) Enum.valueOf(EnumC2226l.class, str);
    }

    public static EnumC2226l[] values() {
        return (EnumC2226l[]) f758a.clone();
    }

    @Override // j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: D */
    public final int mo774D(C2232r c2232r, CharSequence charSequence, int i) {
        int iOrdinal = ordinal();
        if (iOrdinal == 0) {
            c2232r.f779b = true;
            return i;
        }
        if (iOrdinal == 1) {
            c2232r.f779b = false;
            return i;
        }
        if (iOrdinal == 2) {
            c2232r.f780c = true;
            return i;
        }
        if (iOrdinal != 3) {
            return i;
        }
        c2232r.f780c = false;
        return i;
    }

    @Override // j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: s */
    public final boolean mo775s(C2234t c2234t, StringBuilder sb) {
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
