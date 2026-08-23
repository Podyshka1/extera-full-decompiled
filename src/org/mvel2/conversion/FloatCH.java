package org.mvel2.conversion;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;
import org.mvel2.ConversionHandler;

/* JADX INFO: loaded from: classes.dex */
public class FloatCH implements ConversionHandler {
    private static final Map<Class, Converter> CNV;
    private static Converter stringConverter;

    static {
        HashMap map = new HashMap();
        CNV = map;
        Converter converter = new Converter() { // from class: org.mvel2.conversion.FloatCH.1
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                String str = (String) obj;
                return str.length() == 0 ? Float.valueOf(0.0f) : Float.valueOf(Float.parseFloat(str));
            }
        };
        stringConverter = converter;
        map.put(String.class, converter);
        map.put(Object.class, new Converter() { // from class: org.mvel2.conversion.FloatCH.2
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return FloatCH.stringConverter.convert(String.valueOf(obj));
            }
        });
        map.put(BigDecimal.class, new Converter() { // from class: org.mvel2.conversion.FloatCH.3
            @Override // org.mvel2.conversion.Converter
            public Float convert(Object obj) {
                return Float.valueOf(((BigDecimal) obj).floatValue());
            }
        });
        map.put(BigInteger.class, new Converter() { // from class: org.mvel2.conversion.FloatCH.4
            @Override // org.mvel2.conversion.Converter
            public Float convert(Object obj) {
                return Float.valueOf(((BigInteger) obj).floatValue());
            }
        });
        map.put(Float.class, new Converter() { // from class: org.mvel2.conversion.FloatCH.5
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return obj;
            }
        });
        map.put(Integer.class, new Converter() { // from class: org.mvel2.conversion.FloatCH.6
            @Override // org.mvel2.conversion.Converter
            public Float convert(Object obj) {
                return Float.valueOf(((Integer) obj).floatValue());
            }
        });
        map.put(Double.class, new Converter() { // from class: org.mvel2.conversion.FloatCH.7
            @Override // org.mvel2.conversion.Converter
            public Float convert(Object obj) {
                return Float.valueOf(((Double) obj).floatValue());
            }
        });
        map.put(Long.class, new Converter() { // from class: org.mvel2.conversion.FloatCH.8
            @Override // org.mvel2.conversion.Converter
            public Float convert(Object obj) {
                return Float.valueOf(((Long) obj).floatValue());
            }
        });
        map.put(Short.class, new Converter() { // from class: org.mvel2.conversion.FloatCH.9
            @Override // org.mvel2.conversion.Converter
            public Float convert(Object obj) {
                return Float.valueOf(((Short) obj).floatValue());
            }
        });
        map.put(Boolean.class, new Converter() { // from class: org.mvel2.conversion.FloatCH.10
            @Override // org.mvel2.conversion.Converter
            public Float convert(Object obj) {
                return ((Boolean) obj).booleanValue() ? Float.valueOf(1.0f) : Float.valueOf(0.0f);
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
