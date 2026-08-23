package org.mvel2.conversion;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;
import org.mvel2.ConversionHandler;

/* JADX INFO: loaded from: classes.dex */
public class LongCH implements ConversionHandler {
    private static final Map<Class, Converter> CNV;
    private static Converter stringConverter;

    static {
        HashMap map = new HashMap();
        CNV = map;
        Converter converter = new Converter() { // from class: org.mvel2.conversion.LongCH.1
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                String str = (String) obj;
                if (str.length() == 0) {
                    return 0L;
                }
                return Long.valueOf(Long.parseLong(str));
            }
        };
        stringConverter = converter;
        map.put(String.class, converter);
        map.put(Object.class, new Converter() { // from class: org.mvel2.conversion.LongCH.2
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return LongCH.stringConverter.convert(String.valueOf(obj));
            }
        });
        map.put(BigDecimal.class, new Converter() { // from class: org.mvel2.conversion.LongCH.3
            @Override // org.mvel2.conversion.Converter
            public Long convert(Object obj) {
                return Long.valueOf(((BigDecimal) obj).longValue());
            }
        });
        map.put(BigInteger.class, new Converter() { // from class: org.mvel2.conversion.LongCH.4
            @Override // org.mvel2.conversion.Converter
            public Long convert(Object obj) {
                return Long.valueOf(((BigInteger) obj).longValue());
            }
        });
        map.put(Short.class, new Converter() { // from class: org.mvel2.conversion.LongCH.5
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return Long.valueOf(((Short) obj).longValue());
            }
        });
        map.put(Long.class, new Converter() { // from class: org.mvel2.conversion.LongCH.6
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return new Long(((Long) obj).longValue());
            }
        });
        map.put(Integer.class, new Converter() { // from class: org.mvel2.conversion.LongCH.7
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return Long.valueOf(((Integer) obj).longValue());
            }
        });
        map.put(Double.class, new Converter() { // from class: org.mvel2.conversion.LongCH.8
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return Long.valueOf(((Double) obj).longValue());
            }
        });
        map.put(Float.class, new Converter() { // from class: org.mvel2.conversion.LongCH.9
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return Long.valueOf(((Float) obj).longValue());
            }
        });
        map.put(Boolean.class, new Converter() { // from class: org.mvel2.conversion.LongCH.10
            @Override // org.mvel2.conversion.Converter
            public Long convert(Object obj) {
                return ((Boolean) obj).booleanValue() ? 1L : 0L;
            }
        });
    }

    @Override // org.mvel2.ConversionHandler
    public Object convertFrom(Object obj) {
        Map<Class, Converter> map = CNV;
        if (!map.containsKey(obj.getClass())) {
            throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Long.class.getName());
        }
        return map.get(obj.getClass()).convert(obj);
    }

    @Override // org.mvel2.ConversionHandler
    public boolean canConvertFrom(Class cls) {
        return CNV.containsKey(cls);
    }
}
