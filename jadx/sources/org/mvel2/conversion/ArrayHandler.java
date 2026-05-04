package org.mvel2.conversion;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import org.mvel2.ConversionHandler;
import org.mvel2.DataConversion;

/* JADX INFO: loaded from: classes.dex */
public class ArrayHandler implements ConversionHandler {
    private final Class type;

    public ArrayHandler(Class cls) {
        this.type = cls;
    }

    @Override // org.mvel2.ConversionHandler
    public Object convertFrom(Object obj) {
        return handleLooseTypeConversion(obj.getClass(), obj, this.type);
    }

    @Override // org.mvel2.ConversionHandler
    public boolean canConvertFrom(Class cls) {
        return cls.isArray() || Collection.class.isAssignableFrom(cls);
    }

    private static Object handleLooseTypeConversion(Class cls, Object obj, Class cls2) {
        Class<?> componentType = cls2.getComponentType();
        int i = 0;
        if (Collection.class.isAssignableFrom(cls)) {
            Collection collection = (Collection) obj;
            Object objNewInstance = Array.newInstance(componentType, collection.size());
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                Array.set(objNewInstance, i, DataConversion.convert(it.next(), componentType));
                i++;
            }
            return objNewInstance;
        }
        if (!obj.getClass().isArray()) {
            Object objNewInstance2 = Array.newInstance(componentType, 1);
            Array.set(objNewInstance2, 0, DataConversion.convert(obj, componentType));
            return objNewInstance2;
        }
        int length = Array.getLength(obj);
        Object objNewInstance3 = Array.newInstance(componentType, length);
        while (i < length) {
            Array.set(objNewInstance3, i, DataConversion.convert(Array.get(obj, i), componentType));
            i++;
        }
        return objNewInstance3;
    }
}
