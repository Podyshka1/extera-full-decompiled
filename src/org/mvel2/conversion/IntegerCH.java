package org.mvel2.conversion;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;
import org.mvel2.ConversionHandler;

/* JADX INFO: loaded from: classes.dex */
public class IntegerCH implements ConversionHandler {
    private static final Map<Class, Converter> CNV;

    static {
        HashMap map = new HashMap(10);
        CNV = map;
        map.put(Object.class, new Converter() { // from class: org.mvel2.conversion.IntegerCH.1
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                if (((String) obj).length() == 0) {
                    return 0;
                }
                return Integer.valueOf(Integer.parseInt(String.valueOf(obj)));
            }
        });
        map.put(BigDecimal.class, new Converter() { // from class: org.mvel2.conversion.IntegerCH.2
            @Override // org.mvel2.conversion.Converter
            public Integer convert(Object obj) {
                return Integer.valueOf(((BigDecimal) obj).intValue());
            }
        });
        map.put(BigInteger.class, new Converter() { // from class: org.mvel2.conversion.IntegerCH.3
            @Override // org.mvel2.conversion.Converter
            public Integer convert(Object obj) {
                return Integer.valueOf(((BigInteger) obj).intValue());
            }
        });
        map.put(String.class, new Converter() { // from class: org.mvel2.conversion.IntegerCH.4
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return Integer.valueOf(Integer.parseInt((String) obj));
            }
        });
        map.put(Short.class, new Converter() { // from class: org.mvel2.conversion.IntegerCH.5
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return Integer.valueOf(((Short) obj).intValue());
            }
        });
        map.put(Long.class, new Converter() { // from class: org.mvel2.conversion.IntegerCH.6
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                Long l = (Long) obj;
                if (l.longValue() > 2147483647L) {
                    throw new ConversionException("cannot coerce Long to Integer since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Integer.");
                }
                return Integer.valueOf(l.intValue());
            }
        });
        map.put(Float.class, new Converter() { // from class: org.mvel2.conversion.IntegerCH.7
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                Float f = (Float) obj;
                if (f.floatValue() > 2.1474836E9f) {
                    throw new ConversionException("cannot coerce Float to Integer since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Integer.");
                }
                return Integer.valueOf(f.intValue());
            }
        });
        map.put(Double.class, new Converter() { // from class: org.mvel2.conversion.IntegerCH.8
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                Double d = (Double) obj;
                if (d.doubleValue() > 2.147483647E9d) {
                    throw new ConversionException("cannot coerce Long to Integer since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Integer.");
                }
                return Integer.valueOf(d.intValue());
            }
        });
        map.put(Integer.class, new Converter() { // from class: org.mvel2.conversion.IntegerCH.9
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return obj;
            }
        });
        map.put(Boolean.class, new Converter() { // from class: org.mvel2.conversion.IntegerCH.10
            @Override // org.mvel2.conversion.Converter
            public Integer convert(Object obj) {
                return ((Boolean) obj).booleanValue() ? 1 : 0;
            }
        });
        map.put(Character.class, new Converter() { // from class: org.mvel2.conversion.IntegerCH.11
            @Override // org.mvel2.conversion.Converter
            public Integer convert(Object obj) {
                return Integer.valueOf(((Character) obj).charValue());
            }
        });
    }

    @Override // org.mvel2.ConversionHandler
    public Object convertFrom(Object obj) {
        Map<Class, Converter> map = CNV;
        if (!map.containsKey(obj.getClass())) {
            throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Integer.class.getName());
        }
        return map.get(obj.getClass()).convert(obj);
    }

    @Override // org.mvel2.ConversionHandler
    public boolean canConvertFrom(Class cls) {
        return CNV.containsKey(cls);
    }
}
