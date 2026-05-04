package org.mvel2.conversion;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;
import org.mvel2.ConversionHandler;

/* JADX INFO: loaded from: classes.dex */
public class DoubleCH implements ConversionHandler {
    private static final Map<Class, Converter> CNV;
    private static Converter stringConverter;

    static {
        HashMap map = new HashMap();
        CNV = map;
        Converter converter = new Converter() { // from class: org.mvel2.conversion.DoubleCH.1
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                String str = (String) obj;
                return str.length() == 0 ? Double.valueOf(0.0d) : Double.valueOf(Double.parseDouble(str));
            }
        };
        stringConverter = converter;
        map.put(String.class, converter);
        map.put(Object.class, new Converter() { // from class: org.mvel2.conversion.DoubleCH.2
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return DoubleCH.stringConverter.convert(String.valueOf(obj));
            }
        });
        map.put(BigDecimal.class, new Converter() { // from class: org.mvel2.conversion.DoubleCH.3
            @Override // org.mvel2.conversion.Converter
            public Double convert(Object obj) {
                return Double.valueOf(((BigDecimal) obj).doubleValue());
            }
        });
        map.put(BigInteger.class, new Converter() { // from class: org.mvel2.conversion.DoubleCH.4
            @Override // org.mvel2.conversion.Converter
            public Double convert(Object obj) {
                return Double.valueOf(((BigInteger) obj).doubleValue());
            }
        });
        map.put(Double.class, new Converter() { // from class: org.mvel2.conversion.DoubleCH.5
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return obj;
            }
        });
        map.put(Float.class, new Converter() { // from class: org.mvel2.conversion.DoubleCH.6
            @Override // org.mvel2.conversion.Converter
            public Double convert(Object obj) {
                Float f = (Float) obj;
                if (f.floatValue() > Double.MAX_VALUE) {
                    throw new ConversionException("cannot coerce Float to Double since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Double.");
                }
                return Double.valueOf(f.doubleValue());
            }
        });
        map.put(Integer.class, new Converter() { // from class: org.mvel2.conversion.DoubleCH.7
            @Override // org.mvel2.conversion.Converter
            public Double convert(Object obj) {
                return Double.valueOf(((Integer) obj).doubleValue());
            }
        });
        map.put(Short.class, new Converter() { // from class: org.mvel2.conversion.DoubleCH.8
            @Override // org.mvel2.conversion.Converter
            public Double convert(Object obj) {
                return Double.valueOf(((Short) obj).doubleValue());
            }
        });
        map.put(Long.class, new Converter() { // from class: org.mvel2.conversion.DoubleCH.9
            @Override // org.mvel2.conversion.Converter
            public Double convert(Object obj) {
                return Double.valueOf(((Long) obj).doubleValue());
            }
        });
        map.put(Boolean.class, new Converter() { // from class: org.mvel2.conversion.DoubleCH.10
            @Override // org.mvel2.conversion.Converter
            public Double convert(Object obj) {
                return ((Boolean) obj).booleanValue() ? Double.valueOf(1.0d) : Double.valueOf(0.0d);
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
