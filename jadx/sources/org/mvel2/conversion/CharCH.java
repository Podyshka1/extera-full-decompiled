package org.mvel2.conversion;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;
import org.mvel2.ConversionHandler;

/* JADX INFO: loaded from: classes.dex */
public class CharCH implements ConversionHandler {
    private static final Map<Class, Converter> CNV;
    private static final Converter stringConverter;

    static {
        HashMap map = new HashMap();
        CNV = map;
        Converter converter = new Converter() { // from class: org.mvel2.conversion.CharCH.1
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                String str = (String) obj;
                if (str.length() > 1) {
                    throw new ConversionException("cannot convert a string with a length greater than 1 to java.lang.Character");
                }
                return Character.valueOf(str.charAt(0));
            }
        };
        stringConverter = converter;
        map.put(String.class, converter);
        map.put(Object.class, new Converter() { // from class: org.mvel2.conversion.CharCH.2
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return CharCH.stringConverter.convert(String.valueOf(obj));
            }
        });
        map.put(Character.class, new Converter() { // from class: org.mvel2.conversion.CharCH.3
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return new Character(((Character) obj).charValue());
            }
        });
        map.put(BigDecimal.class, new Converter() { // from class: org.mvel2.conversion.CharCH.4
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return Character.valueOf((char) ((BigDecimal) obj).intValue());
            }
        });
        map.put(Integer.class, new Converter() { // from class: org.mvel2.conversion.CharCH.5
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return Character.valueOf((char) ((Integer) obj).intValue());
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
