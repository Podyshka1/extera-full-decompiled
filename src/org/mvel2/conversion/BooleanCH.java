package org.mvel2.conversion;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import org.mvel2.ConversionException;
import org.mvel2.ConversionHandler;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes.dex */
public class BooleanCH implements ConversionHandler {
    private static final Map<Class, Converter> CNV;
    private static Converter stringConverter;

    static {
        HashMap map = new HashMap();
        CNV = map;
        Converter converter = new Converter() { // from class: org.mvel2.conversion.BooleanCH.1
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                String str = (String) obj;
                return Boolean.valueOf((str.equalsIgnoreCase("false") || str.equalsIgnoreCase("no") || str.equalsIgnoreCase("off") || MVEL.VERSION_SUB.equals(obj) || _UrlKt.FRAGMENT_ENCODE_SET.equals(obj)) ? false : true);
            }
        };
        stringConverter = converter;
        map.put(String.class, converter);
        map.put(Object.class, new Converter() { // from class: org.mvel2.conversion.BooleanCH.2
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return BooleanCH.stringConverter.convert(String.valueOf(obj));
            }
        });
        map.put(Boolean.class, new Converter() { // from class: org.mvel2.conversion.BooleanCH.3
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return obj;
            }
        });
        map.put(Integer.class, new Converter() { // from class: org.mvel2.conversion.BooleanCH.4
            @Override // org.mvel2.conversion.Converter
            public Boolean convert(Object obj) {
                return Boolean.valueOf(((Integer) obj).intValue() > 0);
            }
        });
        map.put(Float.class, new Converter() { // from class: org.mvel2.conversion.BooleanCH.5
            @Override // org.mvel2.conversion.Converter
            public Boolean convert(Object obj) {
                return Boolean.valueOf(((Float) obj).floatValue() > 0.0f);
            }
        });
        map.put(Double.class, new Converter() { // from class: org.mvel2.conversion.BooleanCH.6
            @Override // org.mvel2.conversion.Converter
            public Boolean convert(Object obj) {
                return Boolean.valueOf(((Double) obj).doubleValue() > 0.0d);
            }
        });
        map.put(Short.class, new Converter() { // from class: org.mvel2.conversion.BooleanCH.7
            @Override // org.mvel2.conversion.Converter
            public Boolean convert(Object obj) {
                return Boolean.valueOf(((Short) obj).shortValue() > 0);
            }
        });
        map.put(Long.class, new Converter() { // from class: org.mvel2.conversion.BooleanCH.8
            @Override // org.mvel2.conversion.Converter
            public Boolean convert(Object obj) {
                return Boolean.valueOf(((Long) obj).longValue() > 0);
            }
        });
        map.put(Boolean.TYPE, new Converter() { // from class: org.mvel2.conversion.BooleanCH.9
            @Override // org.mvel2.conversion.Converter
            public Boolean convert(Object obj) {
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                return bool;
            }
        });
        map.put(BigDecimal.class, new Converter() { // from class: org.mvel2.conversion.BooleanCH.10
            @Override // org.mvel2.conversion.Converter
            public Boolean convert(Object obj) {
                return Boolean.valueOf(((BigDecimal) obj).doubleValue() > 0.0d);
            }
        });
    }

    @Override // org.mvel2.ConversionHandler
    public Object convertFrom(Object obj) {
        Map<Class, Converter> map = CNV;
        if (!map.containsKey(obj.getClass())) {
            throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Boolean.class.getName());
        }
        return map.get(obj.getClass()).convert(obj);
    }

    @Override // org.mvel2.ConversionHandler
    public boolean canConvertFrom(Class cls) {
        return CNV.containsKey(cls);
    }
}
