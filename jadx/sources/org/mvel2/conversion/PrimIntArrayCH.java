package org.mvel2.conversion;

import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;
import org.mvel2.ConversionHandler;

/* JADX INFO: loaded from: classes5.dex */
public class PrimIntArrayCH implements ConversionHandler {
    private static final Map<Class, Converter> CNV;

    static {
        HashMap map = new HashMap();
        CNV = map;
        map.put(String[].class, new Converter() { // from class: org.mvel2.conversion.PrimIntArrayCH.1
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                String[] strArr = (String[]) obj;
                int[] iArr = new int[strArr.length];
                for (int i = 0; i < strArr.length; i++) {
                    iArr[i] = Integer.parseInt(strArr[i]);
                }
                return iArr;
            }
        });
        map.put(Object[].class, new Converter() { // from class: org.mvel2.conversion.PrimIntArrayCH.2
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                Object[] objArr = (Object[]) obj;
                int[] iArr = new int[objArr.length];
                for (int i = 0; i < objArr.length; i++) {
                    iArr[i] = Integer.parseInt(String.valueOf(objArr[i]));
                }
                return iArr;
            }
        });
        map.put(Integer[].class, new Converter() { // from class: org.mvel2.conversion.PrimIntArrayCH.3
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                Integer[] numArr = (Integer[]) obj;
                int[] iArr = new int[numArr.length];
                for (int i = 0; i < numArr.length; i++) {
                    iArr[i] = numArr[i].intValue();
                }
                return iArr;
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
