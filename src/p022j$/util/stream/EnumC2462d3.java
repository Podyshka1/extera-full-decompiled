package p022j$.util.stream;

import java.util.EnumMap;
import java.util.Map;
import p022j$.time.C2184s;
import p022j$.util.Map;
import p022j$.util.Spliterator;

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
/* JADX INFO: renamed from: j$.util.stream.d3 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2462d3 {
    public static final EnumC2462d3 DISTINCT;
    public static final EnumC2462d3 ORDERED;
    public static final EnumC2462d3 SHORT_CIRCUIT;
    public static final EnumC2462d3 SIZED;
    public static final EnumC2462d3 SORTED;

    /* JADX INFO: renamed from: f */
    public static final int f1336f;

    /* JADX INFO: renamed from: g */
    public static final int f1337g;

    /* JADX INFO: renamed from: h */
    public static final int f1338h;

    /* JADX INFO: renamed from: i */
    public static final int f1339i;

    /* JADX INFO: renamed from: j */
    public static final int f1340j;

    /* JADX INFO: renamed from: k */
    public static final int f1341k;

    /* JADX INFO: renamed from: l */
    public static final int f1342l;

    /* JADX INFO: renamed from: m */
    public static final int f1343m;

    /* JADX INFO: renamed from: n */
    public static final int f1344n;

    /* JADX INFO: renamed from: o */
    public static final int f1345o;

    /* JADX INFO: renamed from: p */
    public static final int f1346p;

    /* JADX INFO: renamed from: q */
    public static final int f1347q;

    /* JADX INFO: renamed from: r */
    public static final int f1348r;

    /* JADX INFO: renamed from: s */
    public static final int f1349s;

    /* JADX INFO: renamed from: t */
    public static final int f1350t;

    /* JADX INFO: renamed from: u */
    public static final int f1351u;

    /* JADX INFO: renamed from: v */
    public static final /* synthetic */ EnumC2462d3[] f1352v;

    /* JADX INFO: renamed from: a */
    public final Map f1353a;

    /* JADX INFO: renamed from: b */
    public final int f1354b;

    /* JADX INFO: renamed from: c */
    public final int f1355c;

    /* JADX INFO: renamed from: d */
    public final int f1356d;

    /* JADX INFO: renamed from: e */
    public final int f1357e;

    public static EnumC2462d3 valueOf(String str) {
        return (EnumC2462d3) Enum.valueOf(EnumC2462d3.class, str);
    }

    public static EnumC2462d3[] values() {
        return (EnumC2462d3[]) f1352v.clone();
    }

    static {
        EnumC2456c3 enumC2456c3 = EnumC2456c3.SPLITERATOR;
        C2184s c2184sM1000n = m1000n(enumC2456c3);
        EnumC2456c3 enumC2456c32 = EnumC2456c3.STREAM;
        c2184sM1000n.m765D(enumC2456c32);
        EnumC2456c3 enumC2456c33 = EnumC2456c3.f1318OP;
        ((EnumMap) ((Map) c2184sM1000n.f821b)).put(enumC2456c33, 3);
        EnumC2462d3 enumC2462d3 = new EnumC2462d3("DISTINCT", 0, 0, c2184sM1000n);
        DISTINCT = enumC2462d3;
        C2184s c2184sM1000n2 = m1000n(enumC2456c3);
        c2184sM1000n2.m765D(enumC2456c32);
        ((EnumMap) ((Map) c2184sM1000n2.f821b)).put(enumC2456c33, 3);
        EnumC2462d3 enumC2462d32 = new EnumC2462d3("SORTED", 1, 1, c2184sM1000n2);
        SORTED = enumC2462d32;
        C2184s c2184sM1000n3 = m1000n(enumC2456c3);
        c2184sM1000n3.m765D(enumC2456c32);
        ((EnumMap) ((Map) c2184sM1000n3.f821b)).put(enumC2456c33, 3);
        EnumC2456c3 enumC2456c34 = EnumC2456c3.TERMINAL_OP;
        ((EnumMap) ((Map) c2184sM1000n3.f821b)).put(enumC2456c34, 2);
        EnumC2456c3 enumC2456c35 = EnumC2456c3.UPSTREAM_TERMINAL_OP;
        ((EnumMap) ((Map) c2184sM1000n3.f821b)).put(enumC2456c35, 2);
        EnumC2462d3 enumC2462d33 = new EnumC2462d3("ORDERED", 2, 2, c2184sM1000n3);
        ORDERED = enumC2462d33;
        C2184s c2184sM1000n4 = m1000n(enumC2456c3);
        c2184sM1000n4.m765D(enumC2456c32);
        ((EnumMap) ((Map) c2184sM1000n4.f821b)).put(enumC2456c33, 2);
        EnumC2462d3 enumC2462d34 = new EnumC2462d3("SIZED", 3, 3, c2184sM1000n4);
        SIZED = enumC2462d34;
        C2184s c2184sM1000n5 = m1000n(enumC2456c33);
        c2184sM1000n5.m765D(enumC2456c34);
        int i = 0;
        EnumC2462d3 enumC2462d35 = new EnumC2462d3("SHORT_CIRCUIT", 4, 12, c2184sM1000n5);
        SHORT_CIRCUIT = enumC2462d35;
        f1352v = new EnumC2462d3[]{enumC2462d3, enumC2462d32, enumC2462d33, enumC2462d34, enumC2462d35};
        f1336f = m998i(enumC2456c3);
        f1337g = m998i(enumC2456c32);
        f1338h = m998i(enumC2456c33);
        m998i(enumC2456c34);
        m998i(enumC2456c35);
        for (EnumC2462d3 enumC2462d36 : values()) {
            i |= enumC2462d36.f1357e;
        }
        f1339i = i;
        int i2 = f1337g;
        f1340j = i2;
        int i3 = i2 << 1;
        f1341k = i3;
        f1342l = i2 | i3;
        EnumC2462d3 enumC2462d37 = DISTINCT;
        f1343m = enumC2462d37.f1355c;
        f1344n = enumC2462d37.f1356d;
        EnumC2462d3 enumC2462d38 = SORTED;
        f1345o = enumC2462d38.f1355c;
        f1346p = enumC2462d38.f1356d;
        EnumC2462d3 enumC2462d39 = ORDERED;
        f1347q = enumC2462d39.f1355c;
        f1348r = enumC2462d39.f1356d;
        EnumC2462d3 enumC2462d310 = SIZED;
        f1349s = enumC2462d310.f1355c;
        f1350t = enumC2462d310.f1356d;
        f1351u = SHORT_CIRCUIT.f1355c;
    }

    /* JADX INFO: renamed from: n */
    public static C2184s m1000n(EnumC2456c3 enumC2456c3) {
        C2184s c2184s = new C2184s(10, new EnumMap(EnumC2456c3.class));
        c2184s.m765D(enumC2456c3);
        return c2184s;
    }

    public EnumC2462d3(String str, int i, int i2, C2184s c2184s) {
        for (EnumC2456c3 enumC2456c3 : EnumC2456c3.values()) {
            Map.EL.putIfAbsent((java.util.Map) c2184s.f821b, enumC2456c3, 0);
        }
        this.f1353a = (java.util.Map) c2184s.f821b;
        int i3 = i2 * 2;
        this.f1354b = i3;
        this.f1355c = 1 << i3;
        this.f1356d = 2 << i3;
        this.f1357e = 3 << i3;
    }

    /* JADX INFO: renamed from: k */
    public final boolean m1001k(int i) {
        return (i & this.f1357e) == this.f1355c;
    }

    /* JADX INFO: renamed from: i */
    public static int m998i(EnumC2456c3 enumC2456c3) {
        int iIntValue = 0;
        for (EnumC2462d3 enumC2462d3 : values()) {
            iIntValue |= ((Integer) enumC2462d3.f1353a.get(enumC2456c3)).intValue() << enumC2462d3.f1354b;
        }
        return iIntValue;
    }

    /* JADX INFO: renamed from: h */
    public static int m997h(int i, int i2) {
        int i3;
        if (i == 0) {
            i3 = f1339i;
        } else {
            i3 = ~(((f1340j & i) << 1) | i | ((f1341k & i) >> 1));
        }
        return i | (i2 & i3);
    }

    /* JADX INFO: renamed from: j */
    public static int m999j(Spliterator spliterator) {
        int iCharacteristics = spliterator.characteristics();
        int i = iCharacteristics & 4;
        int i2 = f1336f;
        return (i == 0 || spliterator.getComparator() == null) ? iCharacteristics & i2 : iCharacteristics & i2 & (-5);
    }
}
