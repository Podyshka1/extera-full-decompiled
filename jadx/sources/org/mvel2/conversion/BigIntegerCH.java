package org.mvel2.conversion;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;
import org.mvel2.ConversionHandler;

/* JADX INFO: loaded from: classes.dex */
public class BigIntegerCH implements ConversionHandler {
    private static final Map<Class, Converter> CNV;

    static {
        HashMap map = new HashMap();
        CNV = map;
        map.put(Object.class, new Converter() { // from class: org.mvel2.conversion.BigIntegerCH.1
            @Override // org.mvel2.conversion.Converter
            public BigInteger convert(Object obj) {
                return new BigInteger(String.valueOf(obj));
            }
        });
        map.put(BigInteger.class, new Converter() { // from class: org.mvel2.conversion.BigIntegerCH.2
            @Override // org.mvel2.conversion.Converter
            public BigInteger convert(Object obj) {
                return (BigInteger) obj;
            }
        });
        map.put(BigDecimal.class, new Converter() { // from class: org.mvel2.conversion.BigIntegerCH.3
            @Override // org.mvel2.conversion.Converter
            public BigInteger convert(Object obj) {
                return ((BigDecimal) obj).toBigInteger();
            }
        });
        map.put(String.class, new Converter() { // from class: org.mvel2.conversion.BigIntegerCH.4
            @Override // org.mvel2.conversion.Converter
            public BigInteger convert(Object obj) {
                return new BigInteger((String) obj);
            }
        });
        map.put(Short.class, new Converter() { // from class: org.mvel2.conversion.BigIntegerCH.5
            @Override // org.mvel2.conversion.Converter
            public BigInteger convert(Object obj) {
                return new BigInteger(String.valueOf(obj));
            }
        });
        map.put(Long.class, new Converter() { // from class: org.mvel2.conversion.BigIntegerCH.6
            @Override // org.mvel2.conversion.Converter
            public BigInteger convert(Object obj) {
                return new BigInteger(String.valueOf(obj));
            }
        });
        map.put(Integer.class, new Converter() { // from class: org.mvel2.conversion.BigIntegerCH.7
            @Override // org.mvel2.conversion.Converter
            public BigInteger convert(Object obj) {
                return new BigInteger(String.valueOf(obj));
            }
        });
        map.put(String.class, new Converter() { // from class: org.mvel2.conversion.BigIntegerCH.8
            @Override // org.mvel2.conversion.Converter
            public BigInteger convert(Object obj) {
                return new BigInteger((String) obj);
            }
        });
        map.put(char[].class, new Converter() { // from class: org.mvel2.conversion.BigIntegerCH.9
            @Override // org.mvel2.conversion.Converter
            public BigInteger convert(Object obj) {
                return new BigInteger(new String((char[]) obj));
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
