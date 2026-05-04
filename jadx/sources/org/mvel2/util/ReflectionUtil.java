package org.mvel2.util;

/* JADX INFO: loaded from: classes.dex */
public class ReflectionUtil {
    public static String getSetter(String str) {
        char[] cArr = new char[str.length() + 3];
        cArr[0] = 's';
        cArr[1] = 'e';
        cArr[2] = 't';
        cArr[3] = Character.toUpperCase(str.charAt(0));
        for (int length = str.length() - 1; length != 0; length--) {
            cArr[length + 3] = str.charAt(length);
        }
        return new String(cArr);
    }

    public static String getGetter(String str) {
        char[] charArray = str.toCharArray();
        char[] cArr = new char[charArray.length + 3];
        cArr[0] = 'g';
        cArr[1] = 'e';
        cArr[2] = 't';
        cArr[3] = Character.toUpperCase(charArray[0]);
        System.arraycopy(charArray, 1, cArr, 4, charArray.length - 1);
        return new String(cArr);
    }

    public static String getIsGetter(String str) {
        char[] charArray = str.toCharArray();
        char[] cArr = new char[charArray.length + 2];
        cArr[0] = 'i';
        cArr[1] = 's';
        cArr[2] = Character.toUpperCase(charArray[0]);
        System.arraycopy(charArray, 1, cArr, 3, charArray.length - 1);
        return new String(cArr);
    }

    public static String getPropertyFromAccessor(String str) {
        char[] charArray = str.toCharArray();
        int i = 1;
        if (charArray.length > 3 && charArray[1] == 'e' && charArray[2] == 't') {
            int length = charArray.length - 3;
            char[] cArr = new char[length];
            char c = charArray[0];
            if (c != 'g' && c != 's') {
                return str;
            }
            cArr[0] = Character.toLowerCase(charArray[3]);
            while (i < length) {
                cArr[i] = charArray[i + 3];
                i++;
            }
            return new String(cArr);
        }
        if (charArray.length <= 2 || charArray[0] != 'i' || charArray[1] != 's') {
            return str;
        }
        int length2 = charArray.length - 2;
        char[] cArr2 = new char[length2];
        cArr2[0] = Character.toLowerCase(charArray[2]);
        while (i < length2) {
            cArr2[i] = charArray[i + 2];
            i++;
        }
        return new String(cArr2);
    }

    public static Class<?> toNonPrimitiveType(Class<?> cls) {
        return !cls.isPrimitive() ? cls : cls == Integer.TYPE ? Integer.class : cls == Long.TYPE ? Long.class : cls == Double.TYPE ? Double.class : cls == Float.TYPE ? Float.class : cls == Short.TYPE ? Short.class : cls == Byte.TYPE ? Byte.class : cls == Character.TYPE ? Character.class : Boolean.class;
    }

    public static Class<?> toNonPrimitiveArray(Class<?> cls) {
        return (cls.isArray() && cls.getComponentType().isPrimitive()) ? cls == int[].class ? Integer[].class : cls == long[].class ? Long[].class : cls == double[].class ? Double[].class : cls == float[].class ? Float[].class : cls == short[].class ? Short[].class : cls == byte[].class ? Byte[].class : cls == char[].class ? Character[].class : Boolean[].class : cls;
    }

    public static Class<?> toPrimitiveArrayType(Class<?> cls) {
        if (cls.isPrimitive()) {
            return cls == Integer.TYPE ? int[].class : cls == Long.TYPE ? long[].class : cls == Double.TYPE ? double[].class : cls == Float.TYPE ? float[].class : cls == Short.TYPE ? short[].class : cls == Byte.TYPE ? byte[].class : cls == Character.TYPE ? char[].class : boolean[].class;
        }
        throw new RuntimeException(cls + " is not a primitive type");
    }

    public static boolean isAssignableFrom(Class<?> cls, Class<?> cls2) {
        return cls.isAssignableFrom(cls2) || areBoxingCompatible(cls, cls2);
    }

    private static boolean areBoxingCompatible(Class<?> cls, Class<?> cls2) {
        return cls.isPrimitive() ? isPrimitiveOf(cls2, cls) : cls2.isPrimitive() && isPrimitiveOf(cls, cls2);
    }

    private static boolean isPrimitiveOf(Class<?> cls, Class<?> cls2) {
        return cls2 == Integer.TYPE ? cls == Integer.class : cls2 == Long.TYPE ? cls == Long.class : cls2 == Double.TYPE ? cls == Double.class : cls2 == Float.TYPE ? cls == Float.class : cls2 == Short.TYPE ? cls == Short.class : cls2 == Byte.TYPE ? cls == Byte.class : cls2 == Character.TYPE ? cls == Character.class : cls2 == Boolean.TYPE && cls == Boolean.class;
    }
}
