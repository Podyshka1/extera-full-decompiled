package org.mvel2.math;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collection;
import org.mvel2.DataConversion;
import org.mvel2.compiler.BlankLiteral;
import org.mvel2.debug.DebugTools;
import org.mvel2.util.ParseTools;
import org.mvel2.util.Soundex;

/* JADX INFO: loaded from: classes5.dex */
public class MathProcessor {
    private static final MathContext MATH_CONTEXT = MathContext.DECIMAL128;

    private static int box(int i) {
        if (i == 7) {
            return 15;
        }
        if (i == 8) {
            return 112;
        }
        if (i == 9) {
            return 113;
        }
        switch (i) {
            case 100:
                return 105;
            case 101:
                return 106;
            case 102:
                return 107;
            case 103:
                return 109;
            case 104:
                return 108;
            default:
                return i;
        }
    }

    private static boolean isIntegerType(int i) {
        return i == 101 || i == 106 || i == 102 || i == 107;
    }

    public static Object doOperations(Object obj, int i, Object obj2) {
        return doOperations(obj == null ? 0 : ParseTools.__resolveType(obj.getClass()), obj, i, obj2 == null ? -1 : ParseTools.__resolveType(obj2.getClass()), obj2);
    }

    public static Object doOperations(Object obj, int i, int i2, Object obj2) {
        return doOperations(obj == null ? 0 : ParseTools.__resolveType(obj.getClass()), obj, i, i2, obj2);
    }

    public static Object doOperations(int i, Object obj, int i2, int i3, Object obj2) {
        if (i < 1) {
            i = obj == null ? 0 : ParseTools.__resolveType(obj.getClass());
        }
        if (i3 < 1) {
            i3 = obj2 == null ? 0 : ParseTools.__resolveType(obj2.getClass());
        }
        if (i != 110) {
            return _doOperations(i, obj, i2, i3, obj2);
        }
        if (i3 == 110) {
            return doBigDecimalArithmetic((BigDecimal) obj, i2, (BigDecimal) obj2, false, -1);
        }
        if (i3 > 99) {
            return doBigDecimalArithmetic((BigDecimal) obj, i2, asBigDecimal(obj2), false, -1);
        }
        return _doOperations(i, obj, i2, i3, obj2);
    }

    private static Object doPrimWrapperArithmetic(Number number, int i, Number number2, int i2) {
        if (i == 0) {
            return toType(Double.valueOf(number.doubleValue() + number2.doubleValue()), i2);
        }
        if (i == 1) {
            return toType(Double.valueOf(number.doubleValue() - number2.doubleValue()), i2);
        }
        if (i == 2) {
            return toType(Double.valueOf(number.doubleValue() * number2.doubleValue()), i2);
        }
        if (i == 3) {
            return toType(Double.valueOf(number.doubleValue() / number2.doubleValue()), i2);
        }
        if (i == 4) {
            return toType(Double.valueOf(number.doubleValue() % number2.doubleValue()), i2);
        }
        if (i == 5) {
            return toType(Double.valueOf(Math.pow(number.doubleValue(), number2.doubleValue())), i2);
        }
        switch (i) {
            case 14:
                return Boolean.valueOf(number.doubleValue() < number2.doubleValue());
            case 15:
                return Boolean.valueOf(number.doubleValue() > number2.doubleValue());
            case 16:
                return Boolean.valueOf(number.doubleValue() <= number2.doubleValue());
            case 17:
                return Boolean.valueOf(number.doubleValue() >= number2.doubleValue());
            case 18:
                return Boolean.valueOf(number.doubleValue() == number2.doubleValue());
            case 19:
                return Boolean.valueOf(number.doubleValue() != number2.doubleValue());
            default:
                return null;
        }
    }

    private static Object toType(Number number, int i) {
        if (i != 1) {
            switch (i) {
                case 100:
                case 105:
                    return Short.valueOf(number.shortValue());
                case 101:
                case 106:
                    return Integer.valueOf(number.intValue());
                case 102:
                case 107:
                    return Long.valueOf(number.longValue());
                case 103:
                case 109:
                    return Double.valueOf(number.doubleValue());
                case 104:
                case 108:
                    return Float.valueOf(number.floatValue());
                case 110:
                    return new BigDecimal(number.doubleValue());
                case 111:
                    return BigInteger.valueOf(number.longValue());
                default:
                    MathProcessor$$ExternalSyntheticBUOutline0.m967m("internal error: ", i);
                    return null;
            }
        }
        return Double.valueOf(number.doubleValue());
    }

    private static Object doBigDecimalArithmetic(BigDecimal bigDecimal, int i, BigDecimal bigDecimal2, boolean z, int i2) {
        if (i == 0) {
            if (z) {
                return ParseTools.narrowType(bigDecimal.add(bigDecimal2, MATH_CONTEXT), i2);
            }
            return bigDecimal.add(bigDecimal2, MATH_CONTEXT);
        }
        if (i == 1) {
            if (z) {
                return ParseTools.narrowType(bigDecimal.subtract(bigDecimal2, MATH_CONTEXT), i2);
            }
            return bigDecimal.subtract(bigDecimal2, MATH_CONTEXT);
        }
        if (i == 2) {
            if (z) {
                return ParseTools.narrowType(bigDecimal.multiply(bigDecimal2, MATH_CONTEXT), i2);
            }
            return bigDecimal.multiply(bigDecimal2, MATH_CONTEXT);
        }
        if (i == 3) {
            if (z) {
                return ParseTools.narrowType(bigDecimal.divide(bigDecimal2, MATH_CONTEXT), i2);
            }
            return bigDecimal.divide(bigDecimal2, MATH_CONTEXT);
        }
        if (i == 4) {
            if (z) {
                return ParseTools.narrowType(bigDecimal.remainder(bigDecimal2), i2);
            }
            return bigDecimal.remainder(bigDecimal2);
        }
        if (i == 5) {
            if (z) {
                return ParseTools.narrowType(bigDecimal.pow(bigDecimal2.intValue(), MATH_CONTEXT), i2);
            }
            return bigDecimal.pow(bigDecimal2.intValue(), MATH_CONTEXT);
        }
        switch (i) {
            case 14:
                return Boolean.valueOf((bigDecimal == null || bigDecimal2 == null || bigDecimal.compareTo(bigDecimal2) >= 0) ? false : true);
            case 15:
                return Boolean.valueOf((bigDecimal == null || bigDecimal2 == null || bigDecimal.compareTo(bigDecimal2) <= 0) ? false : true);
            case 16:
                return Boolean.valueOf((bigDecimal == null || bigDecimal2 == null || bigDecimal.compareTo(bigDecimal2) > 0) ? false : true);
            case 17:
                return Boolean.valueOf((bigDecimal == null || bigDecimal2 == null || bigDecimal.compareTo(bigDecimal2) < 0) ? false : true);
            case 18:
                if (bigDecimal != null ? bigDecimal2 == null || bigDecimal.compareTo(bigDecimal2) != 0 : bigDecimal2 != null) {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 19:
                if (bigDecimal != null ? !(bigDecimal2 == null || bigDecimal.compareTo(bigDecimal2) != 0) : bigDecimal2 == null) {
                    z = false;
                }
                return Boolean.valueOf(z);
            default:
                return null;
        }
    }

    private static Object _doOperations(int i, Object obj, int i2, int i3, Object obj2) {
        if (i2 < 20) {
            if (((i > 49 || i2 == 18 || i2 == 19) && i == i3) || (isIntegerType(i) && isIntegerType(i3) && i2 >= 6 && i2 <= 13)) {
                return doOperationsSameType(i, obj, i2, obj2);
            }
            if (obj2 != null && isNumericOperation(i, obj, i2, i3, obj2)) {
                return doPrimWrapperArithmetic(getNumber(obj, i), i2, getNumber(obj2, i3), Math.max(box(i3), box(i)));
            }
            if (i2 != 0 && ((i == 15 || i3 == 15) && i != i3 && i != 200 && i3 != 200)) {
                return doOperationNonNumeric(i, DataConversion.convert(obj, Boolean.class), i2, DataConversion.convert(obj2, Boolean.class));
            }
            if ((i == 1 || i3 == 1) && (i == 8 || i == 112 || i3 == 8 || i3 == 112)) {
                if (i == 1) {
                    return doOperationNonNumeric(i, obj, i2, String.valueOf(obj2));
                }
                return doOperationNonNumeric(i, String.valueOf(obj), i2, obj2);
            }
        }
        return doOperationNonNumeric(i, obj, i2, obj2);
    }

    private static boolean isNumericOperation(int i, Object obj, int i2, int i3, Object obj2) {
        if (i > 99 && i3 > 99) {
            return true;
        }
        if (i2 != 0) {
            return (i > 99 || i3 > 99 || i2 < 14 || i2 > 17) && ParseTools.isNumber(obj) && ParseTools.isNumber(obj2);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0103  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Object doOperationNonNumeric(int i, Object obj, int i2, Object obj2) {
        if (i2 == 0) {
            if (i == 50) {
                ArrayList arrayList = new ArrayList((Collection) obj);
                arrayList.add(obj2);
                return arrayList;
            }
            return String.valueOf(obj).concat(String.valueOf(obj2));
        }
        boolean z = true;
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
            return null;
        }
        if (i2 != 27) {
            switch (i2) {
                case 14:
                    if (!(obj instanceof Comparable)) {
                        return Boolean.FALSE;
                    }
                    if (obj2 != null) {
                        try {
                            if (((Comparable) obj).compareTo(obj2) > -1) {
                                z = false;
                            }
                        } catch (ClassCastException e) {
                            MathProcessor$$ExternalSyntheticBUOutline1.m968m(obj, obj2, e);
                            return null;
                        }
                    }
                    return Boolean.valueOf(z);
                case 15:
                    if (!(obj instanceof Comparable)) {
                        return Boolean.FALSE;
                    }
                    if (obj2 != null) {
                        try {
                            if (((Comparable) obj).compareTo(obj2) < 1) {
                                z = false;
                            }
                        } catch (ClassCastException e2) {
                            MathProcessor$$ExternalSyntheticBUOutline1.m968m(obj, obj2, e2);
                            return null;
                        }
                    }
                    return Boolean.valueOf(z);
                case 16:
                    if (!(obj instanceof Comparable)) {
                        return Boolean.FALSE;
                    }
                    if (obj2 != null) {
                        try {
                            if (((Comparable) obj).compareTo(obj2) > 0) {
                                z = false;
                            }
                        } catch (ClassCastException e3) {
                            MathProcessor$$ExternalSyntheticBUOutline1.m968m(obj, obj2, e3);
                            return null;
                        }
                    }
                    return Boolean.valueOf(z);
                case 17:
                    if (!(obj instanceof Comparable)) {
                        return Boolean.FALSE;
                    }
                    if (obj2 != null) {
                        try {
                            if (((Comparable) obj).compareTo(obj2) < 0) {
                                z = false;
                            }
                        } catch (ClassCastException e4) {
                            MathProcessor$$ExternalSyntheticBUOutline1.m968m(obj, obj2, e4);
                            return null;
                        }
                    }
                    return Boolean.valueOf(z);
                case 18:
                    return safeEquals(obj2, obj);
                case 19:
                    return safeNotEquals(obj2, obj);
                case 20:
                    return String.valueOf(obj).concat(String.valueOf(obj2));
                default:
                    StringBuilder sb = new StringBuilder("could not perform numeric operation on non-numeric types: left-type=");
                    String name = "null";
                    sb.append(obj != null ? obj.getClass().getName() : "null");
                    sb.append("; right-type=");
                    if (obj2 != null) {
                        name = obj2.getClass().getName();
                    }
                    sb.append(name);
                    sb.append(" [vals (");
                    sb.append(String.valueOf(obj));
                    sb.append(", ");
                    sb.append(String.valueOf(obj2));
                    sb.append(") operation=");
                    sb.append(DebugTools.getOperatorName(i2));
                    sb.append(" (opcode:");
                    sb.append(i2);
                    sb.append(") ]");
                    throw new RuntimeException(sb.toString());
            }
        }
        return Boolean.valueOf(Soundex.soundex(String.valueOf(obj)).equals(Soundex.soundex(String.valueOf(obj2))));
    }

    private static Boolean safeEquals(Object obj, Object obj2) {
        if (obj != null) {
            return Boolean.valueOf(obj.equals(obj2));
        }
        return Boolean.valueOf(obj2 == null);
    }

    private static Boolean safeNotEquals(Object obj, Object obj2) {
        if (obj != null) {
            return Boolean.valueOf(!obj.equals(obj2));
        }
        return Boolean.valueOf(obj2 != null);
    }

    /* JADX WARN: Removed duplicated region for block: B:487:0x082b A[PHI: r9 r11
  0x082b: PHI (r9v16 java.lang.Object) = (r9v1 java.lang.Object), (r9v0 java.lang.Object), (r9v0 java.lang.Object) binds: [B:486:0x0828, B:5:0x0010, B:11:0x001f] A[DONT_GENERATE, DONT_INLINE]
  0x082b: PHI (r11v2 java.lang.Object) = (r11v1 java.lang.Object), (r11v0 java.lang.Object), (r11v0 java.lang.Object) binds: [B:486:0x0828, B:5:0x0010, B:11:0x001f] A[DONT_GENERATE, DONT_INLINE]] */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:71)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:71)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static java.lang.Object doOperationsSameType(int r8, java.lang.Object r9, int r10, java.lang.Object r11) {
        /*
            Method dump skipped, instruction units count: 3078
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mvel2.math.MathProcessor.doOperationsSameType(int, java.lang.Object, int, java.lang.Object):java.lang.Object");
    }

    private static short toShort(Object obj) {
        return obj instanceof Short ? ((Short) obj).shortValue() : ((Number) obj).shortValue();
    }

    private static int toInteger(Object obj) {
        return obj instanceof Integer ? ((Integer) obj).intValue() : ((Number) obj).intValue();
    }

    private static long toLong(Object obj) {
        return obj instanceof Long ? ((Long) obj).longValue() : ((Number) obj).longValue();
    }

    private static double toDouble(Object obj) {
        return obj instanceof Double ? ((Double) obj).doubleValue() : ((Number) obj).doubleValue();
    }

    private static float toFloat(Object obj) {
        return obj instanceof Float ? ((Float) obj).floatValue() : ((Number) obj).floatValue();
    }

    private static byte toByte(Object obj) {
        return obj instanceof Byte ? ((Byte) obj).byteValue() : ((Number) obj).byteValue();
    }

    private static char toChar(Object obj) {
        return ((Character) obj).charValue();
    }

    private static Double getNumber(Object obj, int i) {
        if (obj == null || obj == BlankLiteral.INSTANCE) {
            return Double.valueOf(0.0d);
        }
        if (i == 0) {
            return Double.valueOf(obj instanceof Number ? ((Number) obj).doubleValue() : Double.parseDouble((String) obj));
        }
        if (i == 1) {
            return Double.valueOf(Double.parseDouble((String) obj));
        }
        if (i != 7) {
            if (i != 8) {
                if (i != 9) {
                    if (i != 15) {
                        switch (i) {
                            case 100:
                            case 101:
                            case 102:
                            case 103:
                            case 104:
                            case 105:
                            case 106:
                            case 107:
                            case 108:
                            case 109:
                            case 110:
                            case 111:
                                return Double.valueOf(((Number) obj).doubleValue());
                            case 112:
                                break;
                            case 113:
                                break;
                            default:
                                StringBuilder sb = new StringBuilder("cannot convert <");
                                sb.append(obj);
                                Class<?> cls = obj.getClass();
                                sb.append("> to a numeric type: ");
                                sb.append(cls);
                                sb.append(" [");
                                sb.append(i);
                                sb.append("]");
                                throw new RuntimeException(sb.toString());
                        }
                    }
                }
                return Double.valueOf(((Byte) obj).doubleValue());
            }
            return Double.valueOf(Double.parseDouble(String.valueOf(obj)));
        }
        return Double.valueOf(((Boolean) obj).booleanValue() ? 1.0d : 0.0d);
    }

    private static BigDecimal asBigDecimal(Object obj) {
        if (obj == null || obj == BlankLiteral.INSTANCE) {
            return null;
        }
        if (obj instanceof BigDecimal) {
            return (BigDecimal) obj;
        }
        if (obj instanceof String) {
            return new BigDecimal((String) obj);
        }
        if (obj instanceof Number) {
            return BigDecimal.valueOf(((Number) obj).doubleValue());
        }
        StringBuilder sb = new StringBuilder("cannot convert <");
        sb.append(obj);
        Class<?> cls = obj.getClass();
        sb.append("> to a numeric type: ");
        sb.append(cls);
        throw new RuntimeException(sb.toString());
    }
}
