package org.mvel2;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import org.mvel2.conversion.ArrayHandler;
import org.mvel2.conversion.BigDecimalCH;
import org.mvel2.conversion.BigIntegerCH;
import org.mvel2.conversion.BooleanCH;
import org.mvel2.conversion.ByteCH;
import org.mvel2.conversion.CharArrayCH;
import org.mvel2.conversion.CharCH;
import org.mvel2.conversion.CompositeCH;
import org.mvel2.conversion.DoubleCH;
import org.mvel2.conversion.FloatCH;
import org.mvel2.conversion.IntArrayCH;
import org.mvel2.conversion.IntegerCH;
import org.mvel2.conversion.ListCH;
import org.mvel2.conversion.LongCH;
import org.mvel2.conversion.ObjectCH;
import org.mvel2.conversion.SetCH;
import org.mvel2.conversion.ShortCH;
import org.mvel2.conversion.StringArrayCH;
import org.mvel2.conversion.StringCH;
import org.mvel2.util.FastList;
import org.mvel2.util.ReflectionUtil;

/* JADX INFO: loaded from: classes.dex */
public class DataConversion {
    private static final Map<Class, ConversionHandler> CONVERTERS;

    /* JADX INFO: loaded from: classes5.dex */
    private interface ArrayTypeMarker {
    }

    static {
        HashMap map = new HashMap(76, 0.5f);
        CONVERTERS = map;
        IntegerCH integerCH = new IntegerCH();
        map.put(Integer.class, integerCH);
        map.put(Integer.TYPE, integerCH);
        ShortCH shortCH = new ShortCH();
        map.put(Short.class, shortCH);
        map.put(Short.TYPE, shortCH);
        LongCH longCH = new LongCH();
        map.put(Long.class, longCH);
        map.put(Long.TYPE, longCH);
        CharCH charCH = new CharCH();
        map.put(Character.class, charCH);
        map.put(Character.TYPE, charCH);
        ByteCH byteCH = new ByteCH();
        map.put(Byte.class, byteCH);
        map.put(Byte.TYPE, byteCH);
        FloatCH floatCH = new FloatCH();
        map.put(Float.class, floatCH);
        map.put(Float.TYPE, floatCH);
        DoubleCH doubleCH = new DoubleCH();
        map.put(Double.class, doubleCH);
        map.put(Double.TYPE, doubleCH);
        BooleanCH booleanCH = new BooleanCH();
        map.put(Boolean.class, booleanCH);
        map.put(Boolean.TYPE, booleanCH);
        map.put(String.class, new StringCH());
        map.put(Object.class, new ObjectCH());
        CharArrayCH charArrayCH = new CharArrayCH();
        map.put(Character[].class, charArrayCH);
        map.put(char[].class, new CompositeCH(charArrayCH, new ArrayHandler(char[].class)));
        map.put(String[].class, new StringArrayCH());
        map.put(Integer[].class, new IntArrayCH());
        map.put(int[].class, new ArrayHandler(int[].class));
        map.put(long[].class, new ArrayHandler(long[].class));
        map.put(double[].class, new ArrayHandler(double[].class));
        map.put(float[].class, new ArrayHandler(float[].class));
        map.put(short[].class, new ArrayHandler(short[].class));
        map.put(boolean[].class, new ArrayHandler(boolean[].class));
        map.put(byte[].class, new ArrayHandler(byte[].class));
        map.put(BigDecimal.class, new BigDecimalCH());
        map.put(BigInteger.class, new BigIntegerCH());
        ListCH listCH = new ListCH();
        map.put(List.class, listCH);
        map.put(FastList.class, listCH);
        map.put(ArrayList.class, listCH);
        map.put(LinkedList.class, listCH);
        SetCH setCH = new SetCH();
        map.put(Set.class, setCH);
        map.put(HashSet.class, setCH);
        map.put(LinkedHashSet.class, setCH);
        map.put(TreeSet.class, setCH);
    }

    public static boolean canConvert(Class cls, Class cls2) {
        if (ReflectionUtil.isAssignableFrom(cls, cls2)) {
            return true;
        }
        Map<Class, ConversionHandler> map = CONVERTERS;
        if (map.containsKey(cls)) {
            return map.get(cls).canConvertFrom(ReflectionUtil.toNonPrimitiveType(cls2));
        }
        return cls.isArray() && canConvert(cls.getComponentType(), cls2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T convert(Object obj, Class<T> cls) {
        if (obj == 0) {
            return null;
        }
        if (cls == obj.getClass() || cls.isAssignableFrom(obj.getClass())) {
            return obj;
        }
        Map<Class, ConversionHandler> map = CONVERTERS;
        ConversionHandler conversionHandler = map.get(cls);
        if (conversionHandler == null && cls.isArray()) {
            ArrayHandler arrayHandler = new ArrayHandler(cls);
            map.put(cls, arrayHandler);
            return (T) arrayHandler.convertFrom(obj);
        }
        return (T) conversionHandler.convertFrom(obj);
    }

    public static void addConversionHandler(Class cls, ConversionHandler conversionHandler) {
        CONVERTERS.put(cls, conversionHandler);
    }

    public static void main(String[] strArr) {
        System.out.println(char[][].class);
    }
}
