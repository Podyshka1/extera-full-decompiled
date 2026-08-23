package org.mvel2.conversion;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import org.mvel2.ConversionHandler;

/* JADX INFO: loaded from: classes.dex */
public class ListCH implements ConversionHandler {
    @Override // org.mvel2.ConversionHandler
    public Object convertFrom(Object obj) {
        Class<?> cls = obj.getClass();
        ArrayList arrayList = new ArrayList();
        if (cls.isArray()) {
            arrayList.addAll(Arrays.asList((Object[]) obj));
            return arrayList;
        }
        if (Collection.class.isAssignableFrom(cls)) {
            arrayList.addAll((Collection) obj);
            return arrayList;
        }
        if (Iterable.class.isAssignableFrom(cls)) {
            Iterator it = ((Iterable) obj).iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
        }
        return arrayList;
    }

    @Override // org.mvel2.ConversionHandler
    public boolean canConvertFrom(Class cls) {
        return cls.isArray() || Collection.class.isAssignableFrom(cls) || Iterable.class.isAssignableFrom(cls);
    }
}
