package org.mvel2.util;

import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import org.mvel2.DataConversion;
import org.mvel2.ParserContext;
import org.mvel2.compiler.PropertyVerifier;

/* JADX INFO: loaded from: classes.dex */
public class PropertyTools {
    public static boolean isEmpty(Object obj) {
        if (obj != null) {
            if (obj instanceof Object[]) {
                Object[] objArr = (Object[]) obj;
                return objArr.length == 0 || (objArr.length == 1 && isEmpty(objArr[0]));
            }
            if (!_UrlKt.FRAGMENT_ENCODE_SET.equals(String.valueOf(obj)) && !"null".equals(String.valueOf(obj)) && ((!(obj instanceof Collection) || ((Collection) obj).size() != 0) && (!(obj instanceof Map) || ((Map) obj).size() != 0))) {
                return false;
            }
        }
        return true;
    }

    public static Method getSetter(Class cls, String str) {
        String setter = ReflectionUtil.getSetter(str);
        for (Method method : cls.getMethods()) {
            if ((method.getModifiers() & 1) != 0 && method.getParameterTypes().length == 1 && setter.equals(method.getName())) {
                return method;
            }
        }
        return null;
    }

    public static Method getSetter(Class cls, String str, Class cls2) {
        String str2 = "set" + str;
        String setter = ReflectionUtil.getSetter(str);
        for (Method method : cls.getMethods()) {
            if ((method.getModifiers() & 1) != 0 && method.getParameterTypes().length == 1 && ((setter.equals(method.getName()) || str2.equals(method.getName())) && (cls2 == null || DataConversion.canConvert(method.getParameterTypes()[0], cls2)))) {
                return method;
            }
        }
        return null;
    }

    public static boolean hasGetter(Field field) {
        Method getter = getGetter(field.getDeclaringClass(), field.getName());
        return getter != null && field.getType().isAssignableFrom(getter.getReturnType());
    }

    public static boolean hasSetter(Field field) {
        Method setter = getSetter(field.getDeclaringClass(), field.getName());
        return setter != null && setter.getParameterTypes().length == 1 && field.getType().isAssignableFrom(setter.getParameterTypes()[0]);
    }

    public static Method getGetter(Class cls, String str) {
        String str2 = "get" + str;
        String str3 = "is" + str;
        String isGetter = ReflectionUtil.getIsGetter(str);
        String getter = ReflectionUtil.getGetter(str);
        HashMap map = new HashMap();
        map.put(isGetter, 4);
        map.put(str3, 3);
        map.put(getter, 2);
        map.put(str2, 1);
        map.put(str, 0);
        Method method = null;
        if (Collection.class.isAssignableFrom(cls) && "isEmpty".equals(isGetter)) {
            try {
                return Collection.class.getMethod("isEmpty", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        for (Method method2 : cls.getMethods()) {
            if ((method2.getModifiers() & 1) != 0 && (method2.getModifiers() & 8) == 0 && method2.getParameterTypes().length == 0 && ((getter.equals(method2.getName()) || str.equals(method2.getName()) || (((isGetter.equals(method2.getName()) || str3.equals(method2.getName())) && method2.getReturnType() == Boolean.TYPE) || str2.equals(method2.getName()))) && (method == null || isPreferredGetter(method, method2, map)))) {
                method = method2;
            }
        }
        return method;
    }

    private static boolean isPreferredGetter(Method method, Method method2, Map<String, Integer> map) {
        Class<?> returnType = method.getReturnType();
        Class<?> returnType2 = method2.getReturnType();
        return returnType.equals(returnType2) ? map.get(method2.getName()).intValue() > map.get(method.getName()).intValue() : returnType.isAssignableFrom(returnType2);
    }

    public static Class getReturnType(Class cls, String str, ParserContext parserContext) {
        return new PropertyVerifier(str, parserContext, cls).analyze();
    }

    public static Member getFieldOrAccessor(Class cls, String str) {
        Field[] fields = cls.getFields();
        int length = fields.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Field field = fields[i];
            if (!str.equals(field.getName())) {
                i++;
            } else if ((field.getModifiers() & 1) != 0) {
                return field;
            }
        }
        return getGetter(cls, str);
    }

    public static Member getFieldOrWriteAccessor(Class cls, String str) {
        try {
            Field field = cls.getField(str);
            if (field != null) {
                if (Modifier.isPublic(field.getModifiers())) {
                    return field;
                }
            }
        } catch (NoSuchFieldException unused) {
        } catch (NullPointerException unused2) {
            return null;
        }
        return getSetter(cls, str);
    }

    public static Member getFieldOrWriteAccessor(Class cls, String str, Class cls2) {
        for (Field field : cls.getFields()) {
            if (str.equals(field.getName()) && (cls2 == null || DataConversion.canConvert(field.getType(), cls2))) {
                return field;
            }
        }
        return getSetter(cls, str, cls2);
    }

    public static boolean contains(Object obj, Object obj2) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof String) {
            return ((String) obj).contains(String.valueOf(obj2));
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).contains(obj2);
        }
        if (obj instanceof Map) {
            return ((Map) obj).containsKey(obj2);
        }
        if (obj.getClass().isArray()) {
            for (Object obj3 : (Object[]) obj) {
                if (obj2 == null && obj3 == null) {
                    return true;
                }
                if (obj3 != null && obj3.equals(obj2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static Object getPrimitiveInitialValue(Class cls) {
        if (cls == Integer.TYPE) {
            return 0;
        }
        if (cls == Boolean.TYPE) {
            return Boolean.FALSE;
        }
        if (cls == Character.TYPE) {
            return (char) 0;
        }
        if (cls == Double.TYPE) {
            return Double.valueOf(0.0d);
        }
        if (cls == Long.TYPE) {
            return 0L;
        }
        if (cls == Float.TYPE) {
            return Float.valueOf(0.0f);
        }
        if (cls == Short.TYPE) {
            return (short) 0;
        }
        if (cls != Byte.TYPE) {
            return 0;
        }
        return (byte) 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean isAssignable(Class cls, Class cls2) {
        boolean zIsPrimitive = cls.isPrimitive();
        Class clsBoxPrimitive = cls;
        if (zIsPrimitive) {
            clsBoxPrimitive = ParseTools.boxPrimitive(cls);
        }
        if (cls2.isPrimitive()) {
            cls2 = ParseTools.boxPrimitive(cls2);
        }
        return clsBoxPrimitive.isAssignableFrom(cls2);
    }

    public static String getJavaVersion() {
        if (System.getProperty("mvel.java.version") != null) {
            return System.getProperty("mvel.java.version");
        }
        return System.getProperty("java.version");
    }
}
