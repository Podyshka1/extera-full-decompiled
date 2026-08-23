package j$.util.stream;

import j$.time.C2045s;
import j$.util.Map;
import j$.util.Spliterator;
import java.util.EnumMap;
import java.util.Map;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'DISTINCT' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: renamed from: j$.util.stream.d3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC6195d3 {
    public static final EnumC6195d3 DISTINCT;
    public static final EnumC6195d3 ORDERED;
    public static final EnumC6195d3 SHORT_CIRCUIT;
    public static final EnumC6195d3 SIZED;
    public static final EnumC6195d3 SORTED;

    /* JADX INFO: renamed from: f */
    public static final int f1100f;

    /* JADX INFO: renamed from: g */
    public static final int f1101g;

    /* JADX INFO: renamed from: h */
    public static final int f1102h;

    /* JADX INFO: renamed from: i */
    public static final int f1103i;

    /* JADX INFO: renamed from: j */
    public static final int f1104j;

    /* JADX INFO: renamed from: k */
    public static final int f1105k;

    /* JADX INFO: renamed from: l */
    public static final int f1106l;

    /* JADX INFO: renamed from: m */
    public static final int f1107m;

    /* JADX INFO: renamed from: n */
    public static final int f1108n;

    /* JADX INFO: renamed from: o */
    public static final int f1109o;

    /* JADX INFO: renamed from: p */
    public static final int f1110p;

    /* JADX INFO: renamed from: q */
    public static final int f1111q;

    /* JADX INFO: renamed from: r */
    public static final int f1112r;

    /* JADX INFO: renamed from: s */
    public static final int f1113s;

    /* JADX INFO: renamed from: t */
    public static final int f1114t;

    /* JADX INFO: renamed from: u */
    public static final int f1115u;

    /* JADX INFO: renamed from: v */
    public static final /* synthetic */ EnumC6195d3[] f1116v;

    /* JADX INFO: renamed from: a */
    public final Map f1117a;

    /* JADX INFO: renamed from: b */
    public final int f1118b;

    /* JADX INFO: renamed from: c */
    public final int f1119c;

    /* JADX INFO: renamed from: d */
    public final int f1120d;

    /* JADX INFO: renamed from: e */
    public final int f1121e;

    public static EnumC6195d3 valueOf(String str) {
        return (EnumC6195d3) Enum.valueOf(EnumC6195d3.class, str);
    }

    public static EnumC6195d3[] values() {
        return (EnumC6195d3[]) f1116v.clone();
    }

    static {
        EnumC6191c3 enumC6191c3 = EnumC6191c3.SPLITERATOR;
        C2045s c2045sM849n = m849n(enumC6191c3);
        EnumC6191c3 enumC6191c32 = EnumC6191c3.STREAM;
        c2045sM849n.m642D(enumC6191c32);
        EnumC6191c3 enumC6191c33 = EnumC6191c3.OP;
        ((EnumMap) ((Map) c2045sM849n.f586b)).put(enumC6191c33, 3);
        EnumC6195d3 enumC6195d3 = new EnumC6195d3("DISTINCT", 0, 0, c2045sM849n);
        DISTINCT = enumC6195d3;
        C2045s c2045sM849n2 = m849n(enumC6191c3);
        c2045sM849n2.m642D(enumC6191c32);
        ((EnumMap) ((Map) c2045sM849n2.f586b)).put(enumC6191c33, 3);
        EnumC6195d3 enumC6195d32 = new EnumC6195d3("SORTED", 1, 1, c2045sM849n2);
        SORTED = enumC6195d32;
        C2045s c2045sM849n3 = m849n(enumC6191c3);
        c2045sM849n3.m642D(enumC6191c32);
        ((EnumMap) ((Map) c2045sM849n3.f586b)).put(enumC6191c33, 3);
        EnumC6191c3 enumC6191c34 = EnumC6191c3.TERMINAL_OP;
        ((EnumMap) ((Map) c2045sM849n3.f586b)).put(enumC6191c34, 2);
        EnumC6191c3 enumC6191c35 = EnumC6191c3.UPSTREAM_TERMINAL_OP;
        ((EnumMap) ((Map) c2045sM849n3.f586b)).put(enumC6191c35, 2);
        EnumC6195d3 enumC6195d33 = new EnumC6195d3("ORDERED", 2, 2, c2045sM849n3);
        ORDERED = enumC6195d33;
        C2045s c2045sM849n4 = m849n(enumC6191c3);
        c2045sM849n4.m642D(enumC6191c32);
        ((EnumMap) ((Map) c2045sM849n4.f586b)).put(enumC6191c33, 2);
        EnumC6195d3 enumC6195d34 = new EnumC6195d3("SIZED", 3, 3, c2045sM849n4);
        SIZED = enumC6195d34;
        C2045s c2045sM849n5 = m849n(enumC6191c33);
        c2045sM849n5.m642D(enumC6191c34);
        int i = 0;
        EnumC6195d3 enumC6195d35 = new EnumC6195d3("SHORT_CIRCUIT", 4, 12, c2045sM849n5);
        SHORT_CIRCUIT = enumC6195d35;
        f1116v = new EnumC6195d3[]{enumC6195d3, enumC6195d32, enumC6195d33, enumC6195d34, enumC6195d35};
        f1100f = m847i(enumC6191c3);
        f1101g = m847i(enumC6191c32);
        f1102h = m847i(enumC6191c33);
        m847i(enumC6191c34);
        m847i(enumC6191c35);
        for (EnumC6195d3 enumC6195d36 : values()) {
            i |= enumC6195d36.f1121e;
        }
        f1103i = i;
        int i2 = f1101g;
        f1104j = i2;
        int i3 = i2 << 1;
        f1105k = i3;
        f1106l = i2 | i3;
        EnumC6195d3 enumC6195d37 = DISTINCT;
        f1107m = enumC6195d37.f1119c;
        f1108n = enumC6195d37.f1120d;
        EnumC6195d3 enumC6195d38 = SORTED;
        f1109o = enumC6195d38.f1119c;
        f1110p = enumC6195d38.f1120d;
        EnumC6195d3 enumC6195d39 = ORDERED;
        f1111q = enumC6195d39.f1119c;
        f1112r = enumC6195d39.f1120d;
        EnumC6195d3 enumC6195d310 = SIZED;
        f1113s = enumC6195d310.f1119c;
        f1114t = enumC6195d310.f1120d;
        f1115u = SHORT_CIRCUIT.f1119c;
    }

    /* JADX INFO: renamed from: n */
    public static C2045s m849n(EnumC6191c3 enumC6191c3) {
        C2045s c2045s = new C2045s(10, new EnumMap(EnumC6191c3.class));
        c2045s.m642D(enumC6191c3);
        return c2045s;
    }

    public EnumC6195d3(String str, int i, int i2, C2045s c2045s) {
        for (EnumC6191c3 enumC6191c3 : EnumC6191c3.values()) {
            Map.EL.putIfAbsent((java.util.Map) c2045s.f586b, enumC6191c3, 0);
        }
        this.f1117a = (java.util.Map) c2045s.f586b;
        int i3 = i2 * 2;
        this.f1118b = i3;
        this.f1119c = 1 << i3;
        this.f1120d = 2 << i3;
        this.f1121e = 3 << i3;
    }

    /* JADX INFO: renamed from: k */
    public final boolean m850k(int i) {
        return (i & this.f1121e) == this.f1119c;
    }

    /* JADX INFO: renamed from: i */
    public static int m847i(EnumC6191c3 enumC6191c3) {
        int iIntValue = 0;
        for (EnumC6195d3 enumC6195d3 : values()) {
            iIntValue |= ((Integer) enumC6195d3.f1117a.get(enumC6191c3)).intValue() << enumC6195d3.f1118b;
        }
        return iIntValue;
    }

    /* JADX INFO: renamed from: h */
    public static int m846h(int i, int i2) {
        int i3;
        if (i == 0) {
            i3 = f1103i;
        } else {
            i3 = ~(((f1104j & i) << 1) | i | ((f1105k & i) >> 1));
        }
        return i | (i2 & i3);
    }

    /* JADX INFO: renamed from: j */
    public static int m848j(Spliterator spliterator) {
        int iCharacteristics = spliterator.characteristics();
        int i = iCharacteristics & 4;
        int i2 = f1100f;
        return (i == 0 || spliterator.getComparator() == null) ? iCharacteristics & i2 : iCharacteristics & i2 & (-5);
    }
}
