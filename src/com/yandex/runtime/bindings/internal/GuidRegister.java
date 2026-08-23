package com.yandex.runtime.bindings.internal;

import com.yandex.runtime.bindings.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class GuidRegister {
    private static final Map<String, Class<? extends Serializable>> guidsToClassesMap = new HashMap();
    private static final Map<Class<? extends Serializable>, String> classesToGuidsMap = new HashMap();

    public static void registerGuid(Class<? extends Serializable> cls, String str) {
        guidsToClassesMap.put(str, cls);
        classesToGuidsMap.put(cls, str);
    }

    public static String getGuid(Class<? extends Serializable> cls) {
        String str = classesToGuidsMap.get(cls);
        if (str != null) {
            return str;
        }
        throw new RuntimeException("Unknown guid for class " + cls.getName());
    }

    public static Class<? extends Serializable> getClass(String str) {
        Class<? extends Serializable> cls = guidsToClassesMap.get(str);
        if (cls != null) {
            return cls;
        }
        throw new RuntimeException("Unregistered guid " + str);
    }
}
