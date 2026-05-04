package org.mvel2.integration;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class PropertyHandlerFactory {
    protected static PropertyHandler nullMethodHandler;
    protected static PropertyHandler nullPropertyHandler;
    protected static Map<Class, PropertyHandler> propertyHandlerClass = new HashMap();

    public static PropertyHandler getPropertyHandler(Class cls) {
        return propertyHandlerClass.get(cls);
    }

    public static boolean hasPropertyHandler(Class cls) {
        if (cls == null) {
            return false;
        }
        if (propertyHandlerClass.containsKey(cls)) {
            return true;
        }
        Class superclass = cls;
        do {
            if (cls != superclass && propertyHandlerClass.containsKey(superclass)) {
                Map<Class, PropertyHandler> map = propertyHandlerClass;
                map.put(cls, map.get(superclass));
                return true;
            }
            for (Class<?> cls2 : superclass.getInterfaces()) {
                if (propertyHandlerClass.containsKey(cls2)) {
                    Map<Class, PropertyHandler> map2 = propertyHandlerClass;
                    map2.put(cls, map2.get(cls2));
                    return true;
                }
            }
            superclass = superclass.getSuperclass();
            if (superclass == null) {
                break;
            }
        } while (superclass != Object.class);
        return false;
    }

    public static void registerPropertyHandler(Class cls, PropertyHandler propertyHandler) {
        propertyHandlerClass.put(cls, propertyHandler);
    }

    public static void setNullPropertyHandler(PropertyHandler propertyHandler) {
        nullPropertyHandler = propertyHandler;
    }

    public static boolean hasNullPropertyHandler() {
        return nullPropertyHandler != null;
    }

    public static PropertyHandler getNullPropertyHandler() {
        return nullPropertyHandler;
    }

    public static void setNullMethodHandler(PropertyHandler propertyHandler) {
        nullMethodHandler = propertyHandler;
    }

    public static boolean hasNullMethodHandler() {
        return nullMethodHandler != null;
    }

    public static PropertyHandler getNullMethodHandler() {
        return nullMethodHandler;
    }

    public static void unregisterPropertyHandler(Class cls) {
        propertyHandlerClass.remove(cls);
    }

    public static void disposeAll() {
        nullMethodHandler = null;
        nullPropertyHandler = null;
        propertyHandlerClass.clear();
    }
}
