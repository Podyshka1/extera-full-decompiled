package com.sun.jna.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ReflectionUtils {
    private static Constructor CONSTRUCTOR_LOOKUP_CLASS;
    private static final Logger LOG = Logger.getLogger(ReflectionUtils.class.getName());
    private static final Method METHOD_HANDLES_BIND_TO;
    private static final Method METHOD_HANDLES_INVOKE_WITH_ARGUMENTS;
    private static final Method METHOD_HANDLES_LOOKUP;
    private static final Method METHOD_HANDLES_LOOKUP_FIND_SPECIAL;
    private static final Method METHOD_HANDLES_LOOKUP_IN;
    private static final Method METHOD_HANDLES_LOOKUP_UNREFLECT_SPECIAL;
    private static final Method METHOD_HANDLES_PRIVATE_LOOKUP_IN;
    private static final Method METHOD_IS_DEFAULT;
    private static final Method METHOD_TYPE;

    static {
        Class clsLookupClass = lookupClass("java.lang.invoke.MethodHandles");
        Class clsLookupClass2 = lookupClass("java.lang.invoke.MethodHandle");
        Class clsLookupClass3 = lookupClass("java.lang.invoke.MethodHandles$Lookup");
        Class clsLookupClass4 = lookupClass("java.lang.invoke.MethodType");
        METHOD_IS_DEFAULT = lookupMethod(Method.class, "isDefault", new Class[0]);
        METHOD_HANDLES_LOOKUP = lookupMethod(clsLookupClass, "lookup", new Class[0]);
        METHOD_HANDLES_LOOKUP_IN = lookupMethod(clsLookupClass3, "in", Class.class);
        METHOD_HANDLES_LOOKUP_UNREFLECT_SPECIAL = lookupMethod(clsLookupClass3, "unreflectSpecial", Method.class, Class.class);
        METHOD_HANDLES_LOOKUP_FIND_SPECIAL = lookupMethod(clsLookupClass3, "findSpecial", Class.class, String.class, clsLookupClass4, Class.class);
        METHOD_HANDLES_BIND_TO = lookupMethod(clsLookupClass2, "bindTo", Object.class);
        METHOD_HANDLES_INVOKE_WITH_ARGUMENTS = lookupMethod(clsLookupClass2, "invokeWithArguments", Object[].class);
        METHOD_HANDLES_PRIVATE_LOOKUP_IN = lookupMethod(clsLookupClass, "privateLookupIn", Class.class, clsLookupClass3);
        METHOD_TYPE = lookupMethod(clsLookupClass4, "methodType", Class.class, Class[].class);
    }

    private static Constructor getConstructorLookupClass() {
        if (CONSTRUCTOR_LOOKUP_CLASS == null) {
            CONSTRUCTOR_LOOKUP_CLASS = lookupDeclaredConstructor(lookupClass("java.lang.invoke.MethodHandles$Lookup"), Class.class);
        }
        return CONSTRUCTOR_LOOKUP_CLASS;
    }

    private static Constructor lookupDeclaredConstructor(Class cls, Class... clsArr) {
        if (cls == null) {
            LOG.log(Level.FINE, "Failed to lookup method: <init>#{1}({2})", new Object[]{cls, Arrays.toString(clsArr)});
            return null;
        }
        try {
            Constructor declaredConstructor = cls.getDeclaredConstructor(clsArr);
            declaredConstructor.setAccessible(true);
            return declaredConstructor;
        } catch (Exception unused) {
            LOG.log(Level.FINE, "Failed to lookup method: <init>#{1}({2})", new Object[]{cls, Arrays.toString(clsArr)});
            return null;
        }
    }

    private static Method lookupMethod(Class cls, String str, Class... clsArr) {
        if (cls == null) {
            LOG.log(Level.FINE, "Failed to lookup method: {0}#{1}({2})", new Object[]{cls, str, Arrays.toString(clsArr)});
            return null;
        }
        try {
            return cls.getMethod(str, clsArr);
        } catch (Exception unused) {
            LOG.log(Level.FINE, "Failed to lookup method: {0}#{1}({2})", new Object[]{cls, str, Arrays.toString(clsArr)});
            return null;
        }
    }

    private static Class lookupClass(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            LOG.log(Level.FINE, "Failed to lookup class: " + str, (Throwable) e);
            return null;
        }
    }

    public static boolean isDefault(Method method) {
        Method method2 = METHOD_IS_DEFAULT;
        if (method2 == null) {
            return false;
        }
        try {
            return ((Boolean) method2.invoke(method, null)).booleanValue();
        } catch (IllegalAccessException e) {
            e = e;
            HttpUrl$$ExternalSyntheticBUOutline0.m817m(e);
            return false;
        } catch (IllegalArgumentException e2) {
            e = e2;
            HttpUrl$$ExternalSyntheticBUOutline0.m817m(e);
            return false;
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            HttpUrl$$ExternalSyntheticBUOutline0.m817m(cause);
            return false;
        }
    }

    public static Object getMethodHandle(Method method) {
        try {
            return mhViaFindSpecial(createPrivateLookupIn(method.getDeclaringClass(), createLookup()), method);
        } catch (Exception unused) {
            return mhViaUnreflectSpecial(getConstructorLookupClass().newInstance(method.getDeclaringClass()), method);
        }
    }

    private static Object mhViaFindSpecial(Object obj, Method method) {
        return METHOD_HANDLES_LOOKUP_FIND_SPECIAL.invoke(obj, method.getDeclaringClass(), method.getName(), METHOD_TYPE.invoke(null, method.getReturnType(), method.getParameterTypes()), method.getDeclaringClass());
    }

    private static Object mhViaUnreflectSpecial(Object obj, Method method) throws IllegalAccessException, InvocationTargetException {
        return METHOD_HANDLES_LOOKUP_UNREFLECT_SPECIAL.invoke(METHOD_HANDLES_LOOKUP_IN.invoke(obj, method.getDeclaringClass()), method, method.getDeclaringClass());
    }

    private static Object createPrivateLookupIn(Class cls, Object obj) {
        return METHOD_HANDLES_PRIVATE_LOOKUP_IN.invoke(null, cls, obj);
    }

    private static Object createLookup() {
        return METHOD_HANDLES_LOOKUP.invoke(null, null);
    }

    public static Object invokeDefaultMethod(Object obj, Object obj2, Object... objArr) throws IllegalAccessException, InvocationTargetException {
        return METHOD_HANDLES_INVOKE_WITH_ARGUMENTS.invoke(METHOD_HANDLES_BIND_TO.invoke(obj2, obj), objArr);
    }
}
