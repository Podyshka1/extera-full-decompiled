package org.mvel2.conversion;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;
import org.mvel2.ConversionHandler;

/* JADX INFO: loaded from: classes.dex */
public class BigDecimalCH implements ConversionHandler {
    private static final Map<Class, Converter> CNV;

    static {
        HashMap map = new HashMap();
        CNV = map;
        map.put(Object.class, new Converter() { // from class: org.mvel2.conversion.BigDecimalCH.1
            @Override // org.mvel2.conversion.Converter
            public BigDecimal convert(Object obj) {
                return new BigDecimal(String.valueOf(obj), MathContext.DECIMAL128);
            }
        });
        map.put(BigDecimal.class, new Converter() { // from class: org.mvel2.conversion.BigDecimalCH.2
            @Override // org.mvel2.conversion.Converter
            public BigDecimal convert(Object obj) {
                return (BigDecimal) obj;
            }
        });
        map.put(BigInteger.class, new Converter() { // from class: org.mvel2.conversion.BigDecimalCH.3
            @Override // org.mvel2.conversion.Converter
            public BigDecimal convert(Object obj) {
                return new BigDecimal(((BigInteger) obj).doubleValue(), MathContext.DECIMAL128);
            }
        });
        map.put(String.class, new Converter() { // from class: org.mvel2.conversion.BigDecimalCH.4
            @Override // org.mvel2.conversion.Converter
            public BigDecimal convert(Object obj) {
                return new BigDecimal((String) obj, MathContext.DECIMAL128);
            }
        });
        map.put(Double.class, new Converter() { // from class: org.mvel2.conversion.BigDecimalCH.5
            @Override // org.mvel2.conversion.Converter
            public BigDecimal convert(Object obj) {
                return new BigDecimal(((Double) obj).doubleValue(), MathContext.DECIMAL128);
            }
        });
        map.put(Float.class, new Converter() { // from class: org.mvel2.conversion.BigDecimalCH.6
            @Override // org.mvel2.conversion.Converter
            public BigDecimal convert(Object obj) {
                return new BigDecimal(((Float) obj).doubleValue(), MathContext.DECIMAL128);
            }
        });
        map.put(Short.class, new Converter() { // from class: org.mvel2.conversion.BigDecimalCH.7
            @Override // org.mvel2.conversion.Converter
            public BigDecimal convert(Object obj) {
                return new BigDecimal(((Short) obj).doubleValue(), MathContext.DECIMAL128);
            }
        });
        map.put(Long.class, new Converter() { // from class: org.mvel2.conversion.BigDecimalCH.8
            @Override // org.mvel2.conversion.Converter
            public BigDecimal convert(Object obj) {
                return new BigDecimal(((Long) obj).doubleValue(), MathContext.DECIMAL128);
            }
        });
        map.put(Integer.class, new Converter() { // from class: org.mvel2.conversion.BigDecimalCH.9
            @Override // org.mvel2.conversion.Converter
            public BigDecimal convert(Object obj) {
                return new BigDecimal(((Integer) obj).doubleValue(), MathContext.DECIMAL128);
            }
        });
        map.put(String.class, new Converter() { // from class: org.mvel2.conversion.BigDecimalCH.10
            @Override // org.mvel2.conversion.Converter
            public BigDecimal convert(Object obj) {
                return new BigDecimal((String) obj, MathContext.DECIMAL128);
            }
        });
        map.put(char[].class, new Converter() { // from class: org.mvel2.conversion.BigDecimalCH.11
            @Override // org.mvel2.conversion.Converter
            public BigDecimal convert(Object obj) {
                return new BigDecimal((char[]) obj, MathContext.DECIMAL128);
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
