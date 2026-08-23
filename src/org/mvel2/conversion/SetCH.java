package org.mvel2.conversion;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.mvel2.ConversionHandler;

/* JADX INFO: loaded from: classes.dex */
public class SetCH implements ConversionHandler {
    @Override // org.mvel2.ConversionHandler
    public Object convertFrom(Object obj) {
        Class<?> cls = obj.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (cls.isArray()) {
            linkedHashSet.addAll(Arrays.asList((Object[]) obj));
            return linkedHashSet;
        }
        if (Collection.class.isAssignableFrom(cls)) {
            linkedHashSet.addAll((Collection) obj);
            return linkedHashSet;
        }
        if (Iterable.class.isAssignableFrom(cls)) {
            Iterator it = ((Iterable) obj).iterator();
            while (it.hasNext()) {
                linkedHashSet.add(it.next());
            }
        }
        return linkedHashSet;
    }

    @Override // org.mvel2.ConversionHandler
    public boolean canConvertFrom(Class cls) {
        return cls.isArray() || Collection.class.isAssignableFrom(cls) || Iterable.class.isAssignableFrom(cls);
    }
}
