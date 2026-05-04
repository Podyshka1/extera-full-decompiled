package org.mvel2.conversion;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;
import org.mvel2.ConversionHandler;

/* JADX INFO: loaded from: classes.dex */
public class ShortCH implements ConversionHandler {
    private static final Map<Class, Converter> CNV;
    private static final Short TRUE = 1;
    private static final Short FALSE = 0;
    private static Converter stringConverter = new Converter() { // from class: org.mvel2.conversion.ShortCH.1
        @Override // org.mvel2.conversion.Converter
        public Short convert(Object obj) {
            return Short.valueOf(Short.parseShort((String) obj));
        }
    };

    static {
        HashMap map = new HashMap();
        CNV = map;
        map.put(String.class, stringConverter);
        map.put(Object.class, new Converter() { // from class: org.mvel2.conversion.ShortCH.2
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return ShortCH.stringConverter.convert(String.valueOf(obj));
            }
        });
        map.put(BigDecimal.class, new Converter() { // from class: org.mvel2.conversion.ShortCH.3
            @Override // org.mvel2.conversion.Converter
            public Short convert(Object obj) {
                return Short.valueOf(((BigDecimal) obj).shortValue());
            }
        });
        map.put(BigInteger.class, new Converter() { // from class: org.mvel2.conversion.ShortCH.4
            @Override // org.mvel2.conversion.Converter
            public Short convert(Object obj) {
                return Short.valueOf(((BigInteger) obj).shortValue());
            }
        });
        map.put(Short.class, new Converter() { // from class: org.mvel2.conversion.ShortCH.5
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return obj;
            }
        });
        map.put(Integer.class, new Converter() { // from class: org.mvel2.conversion.ShortCH.6
            @Override // org.mvel2.conversion.Converter
            public Short convert(Object obj) {
                Integer num = (Integer) obj;
                if (num.intValue() > 32767) {
                    throw new ConversionException("cannot coerce Integer to Short since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Integer.");
                }
                return Short.valueOf(num.shortValue());
            }
        });
        map.put(Float.class, new Converter() { // from class: org.mvel2.conversion.ShortCH.7
            @Override // org.mvel2.conversion.Converter
            public Short convert(Object obj) {
                Float f = (Float) obj;
                if (f.floatValue() > 32767.0f) {
                    throw new ConversionException("cannot coerce Float to Short since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Integer.");
                }
                return Short.valueOf(f.shortValue());
            }
        });
        map.put(Double.class, new Converter() { // from class: org.mvel2.conversion.ShortCH.8
            @Override // org.mvel2.conversion.Converter
            public Short convert(Object obj) {
                Double d = (Double) obj;
                if (d.doubleValue() > 32767.0d) {
                    throw new ConversionException("cannot coerce Double to Short since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Integer.");
                }
                return Short.valueOf(d.shortValue());
            }
        });
        map.put(Long.class, new Converter() { // from class: org.mvel2.conversion.ShortCH.9
            @Override // org.mvel2.conversion.Converter
            public Short convert(Object obj) {
                Long l = (Long) obj;
                if (l.longValue() > 32767) {
                    throw new ConversionException("cannot coerce Integer to Short since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Integer.");
                }
                return Short.valueOf(l.shortValue());
            }
        });
        map.put(Boolean.class, new Converter() { // from class: org.mvel2.conversion.ShortCH.10
            @Override // org.mvel2.conversion.Converter
            public Short convert(Object obj) {
                return ((Boolean) obj).booleanValue() ? ShortCH.TRUE : ShortCH.FALSE;
            }
        });
    }

    @Override // org.mvel2.ConversionHandler
    public Object convertFrom(Object obj) {
        Map<Class, Converter> map = CNV;
        if (!map.containsKey(obj.getClass())) {
            throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Short.class.getName());
        }
        return map.get(obj.getClass()).convert(obj);
    }

    @Override // org.mvel2.ConversionHandler
    public boolean canConvertFrom(Class cls) {
        return CNV.containsKey(cls);
    }
}
