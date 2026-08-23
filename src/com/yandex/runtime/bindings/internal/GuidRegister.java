package com.yandex.runtime.bindings.internal;

import com.yandex.runtime.bindings.Serializable;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.MVEL$$ExternalSyntheticBUOutline0;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;

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
        GlShader$$ExternalSyntheticBUOutline1.m966m("Unknown guid for class ".concat(cls.getName()));
        return null;
    }

    public static Class<? extends Serializable> getClass(String str) {
        Class<? extends Serializable> cls = guidsToClassesMap.get(str);
        if (cls != null) {
            return cls;
        }
        MVEL$$ExternalSyntheticBUOutline0.m861m("Unregistered guid ", str);
        return null;
    }
}
