package org.mvel2.conversion;

import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;
import org.mvel2.ConversionHandler;

/* JADX INFO: loaded from: classes5.dex */
public class ArrayCH implements ConversionHandler {
    private static final Map<Class, Converter> CNV;

    static {
        HashMap map = new HashMap();
        CNV = map;
        map.put(String[].class, new Converter() { // from class: org.mvel2.conversion.ArrayCH.1
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                Object[] objArr = (Object[]) obj;
                String[] strArr = new String[objArr.length];
                for (int i = 0; i < objArr.length; i++) {
                    strArr[i] = String.valueOf(objArr[i]);
                }
                return strArr;
            }
        });
        map.put(Integer[].class, new Converter() { // from class: org.mvel2.conversion.ArrayCH.2
            @Override // org.mvel2.conversion.Converter
            public Object convert(Object obj) {
                Object[] objArr = (Object[]) obj;
                Integer[] numArr = new Integer[objArr.length];
                for (int i = 0; i < objArr.length; i++) {
                    numArr[i] = Integer.valueOf(Integer.parseInt(String.valueOf(objArr[i])));
                }
                return numArr;
            }
        });
        map.put(int[].class, new Converter() { // from class: org.mvel2.conversion.ArrayCH.3
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
