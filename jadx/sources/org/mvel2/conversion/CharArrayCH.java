package org.mvel2.conversion;

import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;
import org.mvel2.ConversionHandler;

/* JADX INFO: loaded from: classes.dex */
public class CharArrayCH implements ConversionHandler {
    private static final Map<Class, Converter> CNV;

    static {
        HashMap map = new HashMap();
        CNV = map;
        map.put(String.class, new Converter() { // from class: org.mvel2.conversion.CharArrayCH.1
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                return ((String) obj).toCharArray();
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
