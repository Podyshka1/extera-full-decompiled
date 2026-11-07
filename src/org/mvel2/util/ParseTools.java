package org.mvel2.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Executable;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;
import org.mvel2.CompileException;
import org.mvel2.DataConversion;
import org.mvel2.MVEL;
import org.mvel2.MVEL$$ExternalSyntheticBUOutline0;
import org.mvel2.OptimizationFailure;
import org.mvel2.ParserContext;
import org.mvel2.asm.signature.SignatureVisitor;
import org.mvel2.ast.ASTNode;
import org.mvel2.ast.Instance$$ExternalSyntheticBUOutline0;
import org.mvel2.ast.Sign$$ExternalSyntheticBUOutline0;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.compiler.BlankLiteral;
import org.mvel2.compiler.CompiledExpression;
import org.mvel2.compiler.ExecutableAccessor;
import org.mvel2.compiler.ExecutableAccessorSafe;
import org.mvel2.compiler.ExecutableLiteral;
import org.mvel2.compiler.ExpressionCompiler;
import org.mvel2.integration.ResolverTools;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.ClassImportResolverFactory;
import org.mvel2.math.MathProcessor;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;
import p002c.a$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public class ParseTools {
    private static final Map<Class, Integer> typeCodes;
    private static final HashMap<Class, Integer> typeResolveMap;
    public static final Object[] EMPTY_OBJ_ARR = new Object[0];
    public static final Class[] EMPTY_CLS_ARR = new Class[0];
    private static final Map<Constructor, WeakReference<Class[]>> CONSTRUCTOR_PARMS_CACHE = Collections.synchronizedMap(new WeakHashMap(10));
    private static final Map<ClassLoader, Map<String, WeakReference<Class>>> CLASS_RESOLVER_CACHE = Collections.synchronizedMap(new WeakHashMap(1, 1.0f));
    private static final Map<Class, WeakReference<Constructor[]>> CLASS_CONSTRUCTOR_CACHE = Collections.synchronizedMap(new WeakHashMap(10));

    public static boolean isDigit(int i) {
        return i > 47 && i < 58;
    }

    public static boolean isWhitespace(char c2) {
        return c2 < '!';
    }

    public static int opLookup(char c2) {
        if (c2 == '%') {
            return 4;
        }
        if (c2 == '&') {
            return 6;
        }
        if (c2 == '*') {
            return 2;
        }
        if (c2 == '+') {
            return 0;
        }
        if (c2 == '/') {
            return 3;
        }
        if (c2 == '^') {
            return 8;
        }
        if (c2 == '|') {
            return 7;
        }
        if (c2 == 187) {
            return 9;
        }
        if (c2 != 171) {
            return c2 != 172 ? -1 : 11;
        }
        return 10;
    }

    private static int skipStringEscape(int i) {
        return i + 2;
    }

    static {
        HashMap<Class, Integer> map = new HashMap<>();
        typeResolveMap = map;
        map.put(BigDecimal.class, 110);
        map.put(BigInteger.class, 111);
        map.put(String.class, 1);
        Class cls = Integer.TYPE;
        map.put(cls, 101);
        map.put(Integer.class, 106);
        Class cls2 = Short.TYPE;
        map.put(cls2, 100);
        map.put(Short.class, 105);
        Class cls3 = Float.TYPE;
        map.put(cls3, 104);
        map.put(Float.class, 108);
        Class cls4 = Double.TYPE;
        map.put(cls4, 103);
        map.put(Double.class, 109);
        Class cls5 = Long.TYPE;
        map.put(cls5, 102);
        map.put(Long.class, 107);
        Class cls6 = Boolean.TYPE;
        map.put(cls6, 7);
        map.put(Boolean.class, 15);
        Class cls7 = Byte.TYPE;
        map.put(cls7, 9);
        map.put(Byte.class, 113);
        Class cls8 = Character.TYPE;
        map.put(cls8, 8);
        map.put(Character.class, 112);
        map.put(BlankLiteral.class, 200);
        HashMap map2 = new HashMap(30, 0.5f);
        typeCodes = map2;
        map2.put(Integer.class, 106);
        map2.put(Double.class, 109);
        map2.put(Boolean.class, 15);
        map2.put(String.class, 1);
        map2.put(Long.class, 107);
        map2.put(Short.class, 105);
        map2.put(Float.class, 108);
        map2.put(Byte.class, 113);
        map2.put(Character.class, 112);
        map2.put(BigDecimal.class, 110);
        map2.put(BigInteger.class, 111);
        map2.put(cls, 101);
        map2.put(cls4, 103);
        map2.put(cls6, 7);
        map2.put(cls5, 102);
        map2.put(cls2, 100);
        map2.put(cls3, 104);
        map2.put(cls7, 9);
        map2.put(cls8, 8);
        map2.put(BlankLiteral.class, 200);
    }

    public static List<char[]> parseMethodOrConstructor(char[] cArr) {
        int i;
        int i2 = 0;
        while (true) {
            if (i2 >= cArr.length) {
                i = -1;
                break;
            }
            if (cArr[i2] == '(') {
                i = i2 + 1;
                break;
            }
            i2++;
        }
        if (i != -1) {
            int i3 = i - 1;
            return parseParameterList(cArr, i, (balancedCapture(cArr, i3, '(') - i3) - 1);
        }
        return Collections.EMPTY_LIST;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String[] parseParameterDefList(char[] cArr, int i, int i2) {
        LinkedList linkedList = new LinkedList();
        if (i2 == -1) {
            i2 = cArr.length;
        }
        int i3 = i + i2;
        int i4 = i;
        while (i < i3) {
            char c2 = cArr[i];
            if (c2 == '\"') {
                i = captureStringLiteral(Typography.quote, cArr, i, cArr.length);
            } else if (c2 == ',') {
                if (i > i4) {
                    while (isWhitespace(cArr[i4])) {
                        i4++;
                    }
                    String str = new String(cArr, i4, i - i4);
                    checkNameSafety(str);
                    linkedList.add(str);
                }
                while (isWhitespace(cArr[i])) {
                    i++;
                }
                i4 = i + 1;
            } else if (c2 == '[' || c2 == '{') {
                i = balancedCapture(cArr, i, c2);
            } else if (c2 == '\'') {
                i = captureStringLiteral('\'', cArr, i, cArr.length);
            } else if (c2 != '(') {
                if (!isWhitespace(c2) && !isIdentifierPart(cArr[i])) {
                    Sign$$ExternalSyntheticBUOutline0.m1012m("expected parameter", cArr, i4);
                    return null;
                }
            }
            i++;
        }
        if (i4 < i3 && i > i4) {
            String strCreateStringTrimmed = createStringTrimmed(cArr, i4, i - i4);
            if (strCreateStringTrimmed.length() > 0) {
                checkNameSafety(strCreateStringTrimmed);
                linkedList.add(strCreateStringTrimmed);
            }
        } else if (linkedList.size() == 0) {
            String strCreateStringTrimmed2 = createStringTrimmed(cArr, i4, i2);
            if (strCreateStringTrimmed2.length() > 0) {
                checkNameSafety(strCreateStringTrimmed2);
                linkedList.add(strCreateStringTrimmed2);
            }
        }
        return (String[]) linkedList.toArray(new String[linkedList.size()]);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<char[]> parseParameterList(char[] cArr, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        if (i2 == -1) {
            i2 = cArr.length;
        }
        int i3 = i + i2;
        int i4 = i;
        while (i < i3) {
            char c2 = cArr[i];
            if (c2 == '\"') {
                i = captureStringLiteral(Typography.quote, cArr, i, cArr.length);
            } else if (c2 == ',') {
                if (i > i4) {
                    while (isWhitespace(cArr[i4])) {
                        i4++;
                    }
                    arrayList.add(subsetTrimmed(cArr, i4, i - i4));
                }
                while (isWhitespace(cArr[i])) {
                    i++;
                }
                i4 = i + 1;
            } else if (c2 == '[' || c2 == '{') {
                i = balancedCapture(cArr, i, c2);
            } else if (c2 == '\'') {
                i = captureStringLiteral('\'', cArr, i, cArr.length);
            } else if (c2 != '(') {
            }
            i++;
        }
        if (i4 < i3 && i > i4) {
            char[] cArrSubsetTrimmed = subsetTrimmed(cArr, i4, i - i4);
            if (cArrSubsetTrimmed.length > 0) {
                arrayList.add(cArrSubsetTrimmed);
                return arrayList;
            }
        } else if (arrayList.size() == 0) {
            char[] cArrSubsetTrimmed2 = subsetTrimmed(cArr, i4, i2);
            if (cArrSubsetTrimmed2.length > 0) {
                arrayList.add(cArrSubsetTrimmed2);
            }
        }
        return arrayList;
    }

    public static Method getBestCandidate(Object[] objArr, String str, Class cls, Method[] methodArr, boolean z) {
        Class[] clsArr = new Class[objArr.length];
        for (int i = 0; i != objArr.length; i++) {
            Object obj = objArr[i];
            clsArr[i] = obj != null ? obj.getClass() : null;
        }
        return getBestCandidate(clsArr, str, cls, methodArr, z);
    }

    public static Method getBestCandidate(Class[] clsArr, String str, Class cls, Method[] methodArr, boolean z) {
        return getBestCandidate(clsArr, str, cls, methodArr, z, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Method getBestCandidate(Class[] clsArr, String str, Class cls, Method[] methodArr, boolean z, boolean z2) {
        int methodScore;
        Method method = null;
        if (methodArr.length == 0) {
            return null;
        }
        int i = -1;
        boolean z3 = false;
        while (true) {
            for (Method method2 : methodArr) {
                if ((!z2 || Modifier.isStatic(method2.getModifiers())) && str.equals(method2.getName())) {
                    Class<?>[] parameterTypes = method2.getParameterTypes();
                    if (parameterTypes.length == 0 && clsArr.length == 0) {
                        if (method == null || isMoreSpecialized(method2, method)) {
                        }
                    } else {
                        boolean zIsVarArgs = method2.isVarArgs();
                        if (!isArgsNumberNotCompatible(clsArr, parameterTypes, zIsVarArgs) && (methodScore = getMethodScore(clsArr, z, parameterTypes, zIsVarArgs)) != 0) {
                            if (methodScore > i) {
                                method = method2;
                                i = methodScore;
                            } else if (methodScore == i && ((isMoreSpecialized(method2, method) || isMorePreciseForBigDecimal(method2, method, clsArr)) && !zIsVarArgs)) {
                                method = method2;
                            }
                        }
                    }
                }
            }
            if (method != null || z3 || !cls.isInterface()) {
                break;
            }
            Method[] methods = Object.class.getMethods();
            Method[] methodArr2 = new Method[methodArr.length + methods.length];
            for (int i2 = 0; i2 < methodArr.length; i2++) {
                methodArr2[i2] = methodArr[i2];
            }
            for (int i3 = 0; i3 < methods.length; i3++) {
                methodArr2[methodArr.length + i3] = methods[i3];
            }
            z3 = true;
            methodArr = methodArr2;
        }
        return method;
    }

    private static boolean isArgsNumberNotCompatible(Class[] clsArr, Class<?>[] clsArr2, boolean z) {
        return (z && clsArr2.length - 1 > clsArr.length) || !(z || clsArr2.length == clsArr.length);
    }

    private static boolean isMoreSpecialized(Method method, Method method2) {
        return method2.getReturnType().isAssignableFrom(method.getReturnType()) && method2.getDeclaringClass().isAssignableFrom(method.getDeclaringClass());
    }

    private static boolean isMorePreciseForBigDecimal(Executable executable, Executable executable2, Class[] clsArr) {
        Class<?>[] parameterTypes = executable.getParameterTypes();
        Class<?>[] parameterTypes2 = executable2.getParameterTypes();
        int iComparePrecision = 0;
        for (int i = 0; i != clsArr.length; i++) {
            Class<?> cls = parameterTypes[i];
            Class<?> cls2 = parameterTypes2[i];
            if (clsArr[i] == BigDecimal.class && isNumeric(cls2) && isNumeric(cls)) {
                iComparePrecision += comparePrecision(unboxPrimitive(cls), unboxPrimitive(cls2));
            }
        }
        return iComparePrecision > 0;
    }

    private static int comparePrecision(Class<?> cls, Class<?> cls2) {
        if (cls == cls2) {
            return 0;
        }
        if (cls == BigDecimal.class) {
            return 1;
        }
        Class<?> cls3 = Double.TYPE;
        Class<?> cls4 = Float.TYPE;
        Class<?> cls5 = Long.TYPE;
        Class<?> cls6 = Short.TYPE;
        Class<?> cls7 = Integer.TYPE;
        if (cls == cls3 && (cls2 == cls4 || cls2 == cls5 || cls2 == cls7 || cls2 == cls6 || cls2 == BigInteger.class)) {
            return 1;
        }
        if (cls == cls4 && (cls2 == cls5 || cls2 == cls7 || cls2 == cls6 || cls2 == BigInteger.class)) {
            return 1;
        }
        if (cls == BigInteger.class && (cls2 == cls5 || cls2 == cls7 || cls2 == cls6)) {
            return 1;
        }
        if (cls == cls5 && (cls2 == cls7 || cls2 == cls6)) {
            return 1;
        }
        return (cls == cls7 && cls2 == cls6) ? 1 : -1;
    }

    private static int getMethodScore(Class[] clsArr, boolean z, Class<?>[] clsArr2, boolean z2) {
        Class componentType;
        Class cls;
        int i = 0;
        int i2 = 0;
        int iScoreInterface = 0;
        while (true) {
            if (i2 == clsArr.length) {
                i = iScoreInterface;
                break;
            }
            if (z2 && i2 >= clsArr2.length - 1) {
                componentType = clsArr2[clsArr2.length - 1].getComponentType();
            } else {
                componentType = clsArr2[i2];
            }
            Class cls2 = clsArr[i2];
            if (cls2 == null) {
                if (componentType.isPrimitive()) {
                    break;
                }
                iScoreInterface += 7;
            } else if (componentType == cls2) {
                iScoreInterface += 8;
            } else if ((componentType.isPrimitive() && boxPrimitive(componentType) == clsArr[i2]) || (clsArr[i2].isPrimitive() && unboxPrimitive(clsArr[i2]) == componentType)) {
                iScoreInterface += 7;
            } else if (componentType.isAssignableFrom(clsArr[i2])) {
                iScoreInterface += 6;
            } else if (isPrimitiveSubtype(clsArr[i2], componentType)) {
                iScoreInterface += 5;
            } else if (isNumericallyCoercible(clsArr[i2], componentType)) {
                iScoreInterface += 4;
            } else if (boxPrimitive(componentType).isAssignableFrom(boxPrimitive(clsArr[i2])) && Object.class != (cls = clsArr[i2])) {
                iScoreInterface += scoreInterface(componentType, cls) + 3;
            } else {
                if (!z && DataConversion.canConvert(componentType, clsArr[i2])) {
                    if ((componentType.isArray() && clsArr[i2].isArray()) || (componentType == Character.TYPE && clsArr[i2] == String.class)) {
                        iScoreInterface++;
                    }
                } else if (componentType != Object.class && clsArr[i2] != NullType.class) {
                    break;
                }
                iScoreInterface++;
            }
            i2++;
        }
        return (i == 0 && z2 && clsArr2.length + (-1) == clsArr.length) ? i + 3 : i;
    }

    public static int scoreInterface(Class<?> cls, Class<?> cls2) {
        Class<?>[] interfaces;
        if (cls.isInterface() && (interfaces = cls2.getInterfaces()) != null) {
            for (Class<?> cls3 : interfaces) {
                if (cls3 == cls) {
                    return 1;
                }
                if (cls.isAssignableFrom(cls3)) {
                    return scoreInterface(cls, cls2.getSuperclass());
                }
            }
        }
        return 0;
    }

    public static Method getExactMatch(String str, Class[] clsArr, Class cls, Class cls2) {
        for (Method method : cls2.getMethods()) {
            if (str.equals(method.getName()) && cls == method.getReturnType()) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == clsArr.length) {
                    for (int i = 0; i < parameterTypes.length; i++) {
                        if (parameterTypes[i] != clsArr[i]) {
                            break;
                        }
                    }
                    return method;
                }
                continue;
            }
        }
        return null;
    }

    public static Method getWidenedTarget(Method method) {
        return getWidenedTarget(method.getDeclaringClass(), method);
    }

    public static Method getWidenedTarget(Class cls, Method method) {
        if (Modifier.isStatic(method.getModifiers())) {
            return method;
        }
        Class<?>[] parameterTypes = method.getParameterTypes();
        String name = method.getName();
        Class<?> returnType = method.getReturnType();
        Method method2 = method;
        for (Class superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
            for (Class<?> cls2 : superclass.getInterfaces()) {
                Method exactMatch = getExactMatch(name, parameterTypes, returnType, cls2);
                if (exactMatch != null) {
                    method2 = exactMatch;
                }
            }
        }
        if (method2 != method) {
            return method2;
        }
        while (cls != null) {
            Method exactMatch2 = getExactMatch(name, parameterTypes, returnType, cls);
            if (exactMatch2 != null) {
                method2 = exactMatch2;
            }
            cls = cls.getSuperclass();
        }
        return method2;
    }

    private static Class[] getConstructors(Constructor constructor) {
        Class[] clsArr;
        Map<Constructor, WeakReference<Class[]>> map = CONSTRUCTOR_PARMS_CACHE;
        WeakReference<Class[]> weakReference = map.get(constructor);
        if (weakReference != null && (clsArr = weakReference.get()) != null) {
            return clsArr;
        }
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        map.put(constructor, new WeakReference<>(parameterTypes));
        return parameterTypes;
    }

    public static Constructor getBestConstructorCandidate(Object[] objArr, Class cls, boolean z) {
        Class[] clsArr = new Class[objArr.length];
        for (int i = 0; i != objArr.length; i++) {
            Object obj = objArr[i];
            if (obj != null) {
                clsArr[i] = obj.getClass();
            }
        }
        return getBestConstructorCandidate(clsArr, cls, z);
    }

    public static Constructor getBestConstructorCandidate(Class[] clsArr, Class cls, boolean z) {
        Constructor constructor = null;
        int i = 0;
        boolean z2 = false;
        for (Constructor constructor2 : getConstructors(cls)) {
            boolean zIsVarArgs = constructor2.isVarArgs();
            Class[] constructors = getConstructors(constructor2);
            if (!isArgsNumberNotCompatible(clsArr, constructors, zIsVarArgs)) {
                if (clsArr.length == 0 && constructors.length == 0) {
                    return constructor2;
                }
                int methodScore = getMethodScore(clsArr, z, constructors, zIsVarArgs);
                if (methodScore != 0) {
                    if (methodScore > i) {
                        constructor = constructor2;
                        z2 = zIsVarArgs;
                        i = methodScore;
                    } else if (methodScore == i && (isMorePreciseForBigDecimal(constructor2, constructor, clsArr) || (z2 && !zIsVarArgs))) {
                        constructor = constructor2;
                        z2 = zIsVarArgs;
                    }
                }
            }
        }
        return constructor;
    }

    public static Class createClass(String str, ParserContext parserContext) throws ClassNotFoundException {
        Class<?> cls;
        Class cls2;
        ClassLoader classLoader = parserContext != null ? parserContext.getClassLoader() : Thread.currentThread().getContextClassLoader();
        Map<ClassLoader, Map<String, WeakReference<Class>>> map = CLASS_RESOLVER_CACHE;
        Map<String, WeakReference<Class>> mapSynchronizedMap = map.get(classLoader);
        if (mapSynchronizedMap == null) {
            mapSynchronizedMap = Collections.synchronizedMap(new WeakHashMap(10));
            map.put(classLoader, mapSynchronizedMap);
        }
        WeakReference<Class> weakReference = mapSynchronizedMap.get(str);
        if (weakReference != null && (cls2 = weakReference.get()) != null) {
            return cls2;
        }
        try {
            cls = Class.forName(str, true, classLoader);
        } catch (ClassNotFoundException e) {
            if (classLoader != Thread.currentThread().getContextClassLoader()) {
                cls = Class.forName(str, true, Thread.currentThread().getContextClassLoader());
            } else {
                throw e;
            }
        }
        mapSynchronizedMap.put(str, new WeakReference<>(cls));
        return cls;
    }

    public static Constructor[] getConstructors(Class cls) {
        Constructor[] constructorArr;
        Map<Class, WeakReference<Constructor[]>> map = CLASS_CONSTRUCTOR_CACHE;
        WeakReference<Constructor[]> weakReference = map.get(cls);
        if (weakReference != null && (constructorArr = weakReference.get()) != null) {
            return constructorArr;
        }
        Constructor<?>[] constructors = cls.getConstructors();
        map.put(cls, new WeakReference<>(constructors));
        return constructors;
    }

    public static String[] captureContructorAndResidual(char[] cArr, int i, int i2) {
        int i3 = i + i2;
        boolean z = false;
        int i4 = 0;
        for (int i5 = i; i5 < i3; i5++) {
            char c2 = cArr[i5];
            if (c2 == '\"') {
                z = !z;
            } else if (c2 == '(') {
                i4++;
            } else if (c2 == ')' && !z) {
                int i6 = i4 - 1;
                if (1 == i4) {
                    int i7 = i5 + 1;
                    return new String[]{createStringTrimmed(cArr, i, i7 - i), createStringTrimmed(cArr, i7, i3 - i7)};
                }
                i4 = i6;
            }
        }
        return new String[]{new String(cArr, i, i2)};
    }

    public static Class<?> boxPrimitive(Class cls) {
        Class cls2 = Integer.class;
        if (cls != Integer.TYPE && cls != cls2) {
            cls2 = Integer[].class;
            if (cls != int[].class && cls != cls2) {
                cls2 = Character.class;
                if (cls != Character.TYPE && cls != cls2) {
                    cls2 = Character[].class;
                    if (cls != char[].class && cls != cls2) {
                        cls2 = Long.class;
                        if (cls != Long.TYPE && cls != cls2) {
                            cls2 = Long[].class;
                            if (cls != long[].class && cls != cls2) {
                                cls2 = Short.class;
                                if (cls != Short.TYPE && cls != cls2) {
                                    cls2 = Short[].class;
                                    if (cls != short[].class && cls != cls2) {
                                        cls2 = Double.class;
                                        if (cls != Double.TYPE && cls != cls2) {
                                            cls2 = Double[].class;
                                            if (cls != double[].class && cls != cls2) {
                                                cls2 = Float.class;
                                                if (cls != Float.TYPE && cls != cls2) {
                                                    cls2 = Float[].class;
                                                    if (cls != float[].class && cls != cls2) {
                                                        cls2 = Boolean.class;
                                                        if (cls != Boolean.TYPE && cls != cls2) {
                                                            cls2 = Boolean[].class;
                                                            if (cls != boolean[].class && cls != cls2) {
                                                                cls2 = Byte.class;
                                                                if (cls != Byte.TYPE && cls != cls2) {
                                                                    cls2 = Byte[].class;
                                                                    if (cls != byte[].class && cls != cls2) {
                                                                        return cls;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return cls2;
    }

    public static Class unboxPrimitive(Class cls) {
        Class cls2 = Integer.TYPE;
        if (cls != Integer.class && cls != cls2) {
            cls2 = int[].class;
            if (cls != Integer[].class && cls != cls2) {
                cls2 = Long.TYPE;
                if (cls != Long.class && cls != cls2) {
                    cls2 = long[].class;
                    if (cls != Long[].class && cls != cls2) {
                        cls2 = Character.TYPE;
                        if (cls != Character.class && cls != cls2) {
                            cls2 = char[].class;
                            if (cls != Character[].class && cls != cls2) {
                                cls2 = Short.TYPE;
                                if (cls != Short.class && cls != cls2) {
                                    cls2 = short[].class;
                                    if (cls != Short[].class && cls != cls2) {
                                        cls2 = Double.TYPE;
                                        if (cls != Double.class && cls != cls2) {
                                            cls2 = double[].class;
                                            if (cls != Double[].class && cls != cls2) {
                                                cls2 = Float.TYPE;
                                                if (cls != Float.class && cls != cls2) {
                                                    cls2 = float[].class;
                                                    if (cls != Float[].class && cls != cls2) {
                                                        cls2 = Boolean.TYPE;
                                                        if (cls != Boolean.class && cls != cls2) {
                                                            cls2 = boolean[].class;
                                                            if (cls != Boolean[].class && cls != cls2) {
                                                                cls2 = Byte.TYPE;
                                                                if (cls != Byte.class && cls != cls2) {
                                                                    cls2 = byte[].class;
                                                                    if (cls != Byte[].class && cls != cls2) {
                                                                        return cls;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return cls2;
    }

    public static boolean containsCheck(Object obj, Object obj2) {
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
            if (obj.getClass().getComponentType().isPrimitive()) {
                return containsCheckOnPrimitveArray(obj, obj2);
            }
            for (Object obj3 : (Object[]) obj) {
                if ((obj2 == null && obj3 == null) || ((Boolean) MathProcessor.doOperations(obj3, 18, obj2)).booleanValue()) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean containsCheckOnPrimitveArray(Object obj, Object obj2) {
        Class<?> componentType = obj.getClass().getComponentType();
        return componentType == Boolean.TYPE ? (obj2 instanceof Boolean) && containsCheckOnBooleanArray((boolean[]) obj, (Boolean) obj2) : componentType == Integer.TYPE ? (obj2 instanceof Integer) && containsCheckOnIntArray((int[]) obj, (Integer) obj2) : componentType == Long.TYPE ? (obj2 instanceof Long) && containsCheckOnLongArray((long[]) obj, (Long) obj2) : componentType == Double.TYPE ? (obj2 instanceof Double) && containsCheckOnDoubleArray((double[]) obj, (Double) obj2) : componentType == Float.TYPE ? (obj2 instanceof Float) && containsCheckOnFloatArray((float[]) obj, (Float) obj2) : componentType == Character.TYPE ? (obj2 instanceof Character) && containsCheckOnCharArray((char[]) obj, (Character) obj2) : componentType == Short.TYPE ? (obj2 instanceof Short) && containsCheckOnShortArray((short[]) obj, (Short) obj2) : componentType == Byte.TYPE && (obj2 instanceof Byte) && containsCheckOnByteArray((byte[]) obj, (Byte) obj2);
    }

    private static boolean containsCheckOnBooleanArray(boolean[] zArr, Boolean bool) {
        boolean zBooleanValue = bool.booleanValue();
        for (boolean z : zArr) {
            if (z == zBooleanValue) {
                return true;
            }
        }
        return false;
    }

    private static boolean containsCheckOnIntArray(int[] iArr, Integer num) {
        int iIntValue = num.intValue();
        for (int i : iArr) {
            if (i == iIntValue) {
                return true;
            }
        }
        return false;
    }

    private static boolean containsCheckOnLongArray(long[] jArr, Long l) {
        long jLongValue = l.longValue();
        for (long j : jArr) {
            if (j == jLongValue) {
                return true;
            }
        }
        return false;
    }

    private static boolean containsCheckOnDoubleArray(double[] dArr, Double d) {
        double dDoubleValue = d.doubleValue();
        for (double d2 : dArr) {
            if (d2 == dDoubleValue) {
                return true;
            }
        }
        return false;
    }

    private static boolean containsCheckOnFloatArray(float[] fArr, Float f) {
        float fFloatValue = f.floatValue();
        for (float f2 : fArr) {
            if (f2 == fFloatValue) {
                return true;
            }
        }
        return false;
    }

    private static boolean containsCheckOnCharArray(char[] cArr, Character ch) {
        char cCharValue = ch.charValue();
        for (char c2 : cArr) {
            if (c2 == cCharValue) {
                return true;
            }
        }
        return false;
    }

    private static boolean containsCheckOnShortArray(short[] sArr, Short sh) {
        short sShortValue = sh.shortValue();
        for (short s : sArr) {
            if (s == sShortValue) {
                return true;
            }
        }
        return false;
    }

    private static boolean containsCheckOnByteArray(byte[] bArr, Byte b2) {
        byte bByteValue = b2.byteValue();
        for (byte b3 : bArr) {
            if (b3 == bByteValue) {
                return true;
            }
        }
        return false;
    }

    public static int handleEscapeSequence(char[] cArr, int i) {
        char c2;
        int i2;
        int i3 = i - 1;
        cArr[i3] = 0;
        char c3 = cArr[i];
        if (c3 == '\"') {
            cArr[i] = Typography.quote;
            return 1;
        }
        if (c3 == '\'') {
            cArr[i] = '\'';
            return 1;
        }
        if (c3 == '\\') {
            cArr[i] = '\\';
            return 1;
        }
        if (c3 == 'b') {
            cArr[i] = '\b';
            return 1;
        }
        if (c3 == 'f') {
            cArr[i] = '\f';
            return 1;
        }
        if (c3 == 'n') {
            cArr[i] = '\n';
            return 1;
        }
        if (c3 == 'r') {
            cArr[i] = '\r';
            return 1;
        }
        if (c3 == 't') {
            cArr[i] = '\t';
            return 1;
        }
        if (c3 == 'u') {
            int i4 = i + 4;
            if (i4 > cArr.length) {
                Sign$$ExternalSyntheticBUOutline0.m1012m("illegal unicode escape sequence", cArr, i);
                return 0;
            }
            int i5 = i;
            while (true) {
                i5++;
                if (i5 - i != 5) {
                    char c4 = cArr[i5];
                    if (c4 <= '/' || c4 >= ':') {
                        if (c4 <= '@' || c4 >= 'G') {
                            break;
                        }
                    }
                } else {
                    int i6 = i + 1;
                    cArr[i3] = (char) Integer.decode("0x".concat(new String(cArr, i6, 4))).intValue();
                    cArr[i] = 0;
                    cArr[i6] = 0;
                    cArr[i + 2] = 0;
                    cArr[i + 3] = 0;
                    cArr[i4] = 0;
                    return 5;
                }
            }
            Sign$$ExternalSyntheticBUOutline0.m1012m("illegal unicode escape sequence", cArr, i5);
            return 0;
        }
        int i7 = i;
        do {
            c2 = cArr[i7];
            if (c2 < '0' || c2 >= '8') {
                throw new CompileException("illegal escape sequence: " + cArr[i7], cArr, i7);
            }
            if (i7 != i && cArr[i] > '3') {
                cArr[i3] = (char) Integer.decode(MVEL.VERSION_SUB.concat(new String(cArr, i, (i7 - i) + 1))).intValue();
                cArr[i] = 0;
                cArr[i + 1] = 0;
                return 2;
            }
            i2 = i7 - i;
            if (i2 == 2) {
                cArr[i3] = (char) Integer.decode(MVEL.VERSION_SUB.concat(new String(cArr, i, i2 + 1))).intValue();
                cArr[i] = 0;
                cArr[i + 1] = 0;
                cArr[i + 2] = 0;
                return 3;
            }
            i7++;
            if (i7 == cArr.length || c2 < '0') {
                break;
            }
        } while (c2 <= '7');
        cArr[i3] = (char) Integer.decode(MVEL.VERSION_SUB.concat(new String(cArr, i, i2 + 1))).intValue();
        cArr[i] = 0;
        return 1;
    }

    public static char[] createShortFormOperativeAssignment(String str, char[] cArr, int i, int i2, int i3) {
        char c2;
        if (i3 == -1) {
            return cArr;
        }
        if (i3 == 0) {
            c2 = SignatureVisitor.EXTENDS;
        } else if (i3 == 1) {
            c2 = SignatureVisitor.SUPER;
        } else if (i3 == 2) {
            c2 = '*';
        } else if (i3 == 3) {
            c2 = '/';
        } else if (i3 == 4) {
            c2 = '%';
        } else if (i3 == 6) {
            c2 = Typography.amp;
        } else if (i3 == 7) {
            c2 = '|';
        } else if (i3 != 20) {
            switch (i3) {
                case 9:
                    c2 = 187;
                    break;
                case 10:
                    c2 = 171;
                    break;
                case 11:
                    c2 = 172;
                    break;
                default:
                    c2 = 0;
                    break;
            }
        } else {
            c2 = '#';
        }
        char[] charArray = str.toCharArray();
        char[] cArr2 = new char[str.length() + i2 + 1];
        System.arraycopy(charArray, 0, cArr2, 0, str.length());
        cArr2[str.length()] = c2;
        System.arraycopy(cArr, i, cArr2, str.length() + 1, i2);
        return cArr2;
    }

    public static ClassImportResolverFactory findClassImportResolverFactory(VariableResolverFactory variableResolverFactory, ParserContext parserContext) {
        if (variableResolverFactory == null) {
            throw new OptimizationFailure("unable to import classes.  no variable resolver factory available.");
        }
        for (VariableResolverFactory nextFactory = variableResolverFactory; nextFactory != null; nextFactory = nextFactory.getNextFactory()) {
            if (nextFactory instanceof ClassImportResolverFactory) {
                return (ClassImportResolverFactory) nextFactory;
            }
        }
        return (ClassImportResolverFactory) ResolverTools.appendFactory(variableResolverFactory, new ClassImportResolverFactory(null, null, false));
    }

    public static Class findClass(VariableResolverFactory variableResolverFactory, String str, ParserContext parserContext) throws ClassNotFoundException {
        try {
            if (AbstractParser.LITERALS.containsKey(str)) {
                return (Class) AbstractParser.LITERALS.get(str);
            }
            if (variableResolverFactory != null && variableResolverFactory.isResolveable(str)) {
                return (Class) variableResolverFactory.getVariableResolver(str).getValue();
            }
            if (parserContext != null && parserContext.hasImport(str)) {
                return parserContext.getImport(str);
            }
            return createClass(str, parserContext);
        } catch (ClassNotFoundException e) {
            throw e;
        } catch (Exception e2) {
            a$$ExternalSyntheticBUOutline0.m209m("class not found: ", str, e2);
            return null;
        }
    }

    public static char[] subsetTrimmed(char[] cArr, int i, int i2) {
        if (i2 <= 0) {
            return new char[0];
        }
        int i3 = i2 + i;
        while (i3 > 0 && isWhitespace(cArr[i3 - 1])) {
            i3--;
        }
        while (isWhitespace(cArr[i]) && i < i3) {
            i++;
        }
        int i4 = i3 - i;
        if (i4 == 0) {
            return new char[0];
        }
        return subset(cArr, i, i4);
    }

    public static char[] subset(char[] cArr, int i, int i2) {
        char[] cArr2 = new char[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            cArr2[i3] = cArr[i3 + i];
        }
        return cArr2;
    }

    public static char[] subset(char[] cArr, int i) {
        int length = cArr.length - i;
        char[] cArr2 = new char[length];
        for (int i2 = 0; i2 < length; i2++) {
            cArr2[i2] = cArr[i2 + i];
        }
        return cArr2;
    }

    public static int resolveType(Object obj) {
        if (obj == null) {
            return 0;
        }
        return __resolveType(obj.getClass());
    }

    public static int __resolveType(Class cls) {
        Integer num = typeCodes.get(cls);
        if (num == null) {
            return (cls == null || !Collection.class.isAssignableFrom(cls)) ? 0 : 50;
        }
        return num.intValue();
    }

    private static boolean isPrimitiveSubtype(Class cls, Class<?> cls2) {
        if (!cls2.isPrimitive()) {
            return false;
        }
        Class<?> clsUnboxPrimitive = unboxPrimitive(cls);
        if (!clsUnboxPrimitive.isPrimitive()) {
            return false;
        }
        Class<?> cls3 = Double.TYPE;
        Class<?> cls4 = Float.TYPE;
        if (cls2 == cls3 && clsUnboxPrimitive == cls4) {
            return true;
        }
        Class<?> cls5 = Long.TYPE;
        if (cls2 == cls4 && clsUnboxPrimitive == cls5) {
            return true;
        }
        Class<?> cls6 = Integer.TYPE;
        if (cls2 == cls5 && clsUnboxPrimitive == cls6) {
            return true;
        }
        if (cls2 == cls6 && clsUnboxPrimitive == Character.TYPE) {
            return true;
        }
        Class<?> cls7 = Short.TYPE;
        if (cls2 == cls6 && clsUnboxPrimitive == cls7) {
            return true;
        }
        return cls2 == cls7 && clsUnboxPrimitive == Byte.TYPE;
    }

    public static boolean isNumericallyCoercible(Class cls, Class cls2) {
        if ((cls.isPrimitive() ? boxPrimitive(cls) : cls) == null || !Number.class.isAssignableFrom(cls)) {
            return false;
        }
        if (cls2.isPrimitive()) {
            cls2 = boxPrimitive(cls2);
        }
        if (cls2 != null) {
            return Number.class.isAssignableFrom(cls2);
        }
        return false;
    }

    public static Object narrowType(BigDecimal bigDecimal, int i) {
        if (i == 109 || bigDecimal.scale() > 0) {
            return Double.valueOf(bigDecimal.doubleValue());
        }
        if (i == 107 || bigDecimal.longValue() > 2147483647L) {
            return Long.valueOf(bigDecimal.longValue());
        }
        return Integer.valueOf(bigDecimal.intValue());
    }

    public static Method determineActualTargetMethod(Method method) {
        return determineActualTargetMethod(method.getDeclaringClass(), method);
    }

    private static Method determineActualTargetMethod(Class cls, Method method) {
        String name = method.getName();
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Method method2 : cls2.getMethods()) {
                if (method2.getParameterTypes().length == 0 && name.equals(method2.getName())) {
                    return method2;
                }
            }
        }
        if (cls.getSuperclass() != null) {
            return determineActualTargetMethod(cls.getSuperclass(), method);
        }
        return null;
    }

    public static int captureToNextTokenJunction(char[] cArr, int i, int i2, ParserContext parserContext) {
        char c2;
        while (i != cArr.length && (c2 = cArr[i]) != '(') {
            if (c2 == '[') {
                i = balancedCaptureWithLineAccounting(cArr, i, i2, '[', parserContext);
            } else if (c2 == '{' || isWhitespace(c2)) {
                break;
            }
            i++;
        }
        return i;
    }

    public static int nextNonBlank(char[] cArr, int i) {
        if (i + 1 >= cArr.length) {
            Sign$$ExternalSyntheticBUOutline0.m1012m("unexpected end of statement", cArr, i);
            return 0;
        }
        while (i != cArr.length && isWhitespace(cArr[i])) {
            i++;
        }
        return i;
    }

    public static int skipWhitespace(char[] cArr, int i) {
        int i2;
        while (i != cArr.length) {
            char c2 = cArr[i];
            if (c2 != '\n' && c2 != '\r') {
                if (c2 == '/' && (i2 = i + 1) != cArr.length) {
                    char c3 = cArr[i2];
                    if (c3 == '*') {
                        int length = cArr.length - 1;
                        cArr[i] = ' ';
                        i = i2;
                        while (i != length && (cArr[i] != '*' || cArr[i + 1] != '/')) {
                            cArr[i] = ' ';
                            i++;
                        }
                        if (i != length) {
                            cArr[i + 1] = ' ';
                            cArr[i] = ' ';
                            i += 2;
                        }
                    } else {
                        if (c3 != '/') {
                            break;
                        }
                        cArr[i] = ' ';
                        i = i2;
                        while (i != cArr.length && cArr[i] != '\n') {
                            cArr[i] = ' ';
                            i++;
                        }
                        if (i != cArr.length) {
                            cArr[i] = ' ';
                            i++;
                        }
                    }
                } else if (!isWhitespace(c2)) {
                    break;
                }
            }
            i++;
        }
        return i;
    }

    public static boolean isStatementNotManuallyTerminated(char[] cArr, int i) {
        if (i >= cArr.length) {
            return false;
        }
        while (i != cArr.length && isWhitespace(cArr[i])) {
            i++;
        }
        return i == cArr.length || cArr[i] != ';';
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int captureToEOS(char[] cArr, int i, int i2, ParserContext parserContext) {
        while (i != cArr.length) {
            char c2 = cArr[i];
            if (c2 != '\"') {
                if (c2 != ',' && c2 != ';') {
                    if (c2 != '[' && c2 != '{') {
                        if (c2 == '}') {
                            break;
                        }
                        if (c2 != '\'') {
                            if (c2 != '(') {
                                continue;
                            }
                        }
                    } else {
                        i = balancedCaptureWithLineAccounting(cArr, i, i2, c2, parserContext);
                        if (i >= cArr.length) {
                            return i;
                        }
                    }
                } else {
                    break;
                }
            } else {
                i = captureStringLiteral(c2, cArr, i, cArr.length);
            }
            i++;
        }
        return i;
    }

    public static int trimLeft(char[] cArr, int i, int i2) {
        if (i2 > cArr.length) {
            i2 = cArr.length;
        }
        while (i2 != 0 && i2 >= i && isWhitespace(cArr[i2 - 1])) {
            i2--;
        }
        return i2;
    }

    public static int trimRight(char[] cArr, int i) {
        while (i != cArr.length && isWhitespace(cArr[i])) {
            i++;
        }
        return i;
    }

    public static char[] subArray(char[] cArr, int i, int i2) {
        if (i >= i2) {
            return new char[0];
        }
        int i3 = i2 - i;
        char[] cArr2 = new char[i3];
        for (int i4 = 0; i4 != i3; i4++) {
            cArr2[i4] = cArr[i4 + i];
        }
        return cArr2;
    }

    public static int balancedCapture(char[] cArr, int i, char c2) {
        return balancedCapture(cArr, i, cArr.length, c2);
    }

    public static int balancedCapture(char[] cArr, int i, int i2, char c2) {
        int iCaptureStringLiteral;
        int i3;
        char c3 = c2 != '(' ? c2 != '[' ? c2 != '{' ? c2 : '}' : ']' : ')';
        if (c2 != c3) {
            iCaptureStringLiteral = i + 1;
            int i4 = 1;
            while (iCaptureStringLiteral < i2) {
                if (iCaptureStringLiteral < i2 && cArr[iCaptureStringLiteral] == '/') {
                    int i5 = iCaptureStringLiteral + 1;
                    if (i5 == i2) {
                        return iCaptureStringLiteral;
                    }
                    char c4 = cArr[i5];
                    if (c4 == '/') {
                        iCaptureStringLiteral = i5;
                        while (iCaptureStringLiteral < i2 && cArr[iCaptureStringLiteral] != '\n') {
                            iCaptureStringLiteral++;
                        }
                    } else if (c4 == '*') {
                        iCaptureStringLiteral += 2;
                        while (iCaptureStringLiteral < i2 && (cArr[iCaptureStringLiteral] != '*' || (i3 = iCaptureStringLiteral + 1) >= i2 || cArr[i3] != '/')) {
                            iCaptureStringLiteral++;
                        }
                    }
                }
                if (iCaptureStringLiteral != i2) {
                    char c5 = cArr[iCaptureStringLiteral];
                    if (c5 == '\'' || c5 == '\"') {
                        iCaptureStringLiteral = captureStringLiteral(c5, cArr, iCaptureStringLiteral, i2);
                    } else if (c5 == c2) {
                        i4++;
                    } else if (c5 != c3 || i4 - 1 != 0) {
                    }
                    iCaptureStringLiteral++;
                }
                return iCaptureStringLiteral;
            }
        }
        iCaptureStringLiteral = i + 1;
        while (iCaptureStringLiteral < i2) {
            if (cArr[iCaptureStringLiteral] == '\\') {
                iCaptureStringLiteral = skipStringEscape(iCaptureStringLiteral);
            }
            if (cArr[iCaptureStringLiteral] == c2) {
                return iCaptureStringLiteral;
            }
            iCaptureStringLiteral++;
        }
        if (c2 == '(') {
            Sign$$ExternalSyntheticBUOutline0.m1012m("unbalanced braces ( ... )", cArr, iCaptureStringLiteral);
            return 0;
        }
        if (c2 == '[') {
            Sign$$ExternalSyntheticBUOutline0.m1012m("unbalanced braces [ ... ]", cArr, iCaptureStringLiteral);
            return 0;
        }
        if (c2 == '{') {
            Sign$$ExternalSyntheticBUOutline0.m1012m("unbalanced braces { ... }", cArr, iCaptureStringLiteral);
            return 0;
        }
        Sign$$ExternalSyntheticBUOutline0.m1012m("unterminated string literal", cArr, iCaptureStringLiteral);
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x00bc A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int balancedCaptureWithLineAccounting(char[] cArr, int i, int i2, char c2, ParserContext parserContext) {
        char c3 = c2 != '(' ? c2 != '[' ? c2 != '{' ? c2 : '}' : ']' : ')';
        if (c2 != c3) {
            int iCaptureStringLiteral = i + 1;
            int i3 = 0;
            int i4 = 1;
            while (iCaptureStringLiteral < i2) {
                if (!isWhitespace(cArr[iCaptureStringLiteral])) {
                    if (iCaptureStringLiteral < i2) {
                        if (cArr[iCaptureStringLiteral] == '/') {
                            int i5 = iCaptureStringLiteral + 1;
                            if (i5 == i2) {
                                return iCaptureStringLiteral;
                            }
                            char c4 = cArr[i5];
                            if (c4 == '/') {
                                iCaptureStringLiteral = i5;
                                while (iCaptureStringLiteral < i2 && cArr[iCaptureStringLiteral] != '\n') {
                                    iCaptureStringLiteral++;
                                }
                            } else if (c4 == '*') {
                                iCaptureStringLiteral += 2;
                                while (iCaptureStringLiteral != i2) {
                                    char c5 = cArr[iCaptureStringLiteral];
                                    if (c5 == '\n' || c5 == '\r') {
                                        if (parserContext != null) {
                                            parserContext.setLineOffset((short) iCaptureStringLiteral);
                                        }
                                        i3++;
                                    } else if (c5 == '*') {
                                        int i6 = iCaptureStringLiteral + 1;
                                        if (i6 < i2 && cArr[i6] == '/') {
                                            break;
                                        }
                                        if (parserContext != null) {
                                        }
                                        i3++;
                                    } else {
                                        continue;
                                    }
                                    iCaptureStringLiteral++;
                                }
                            }
                        }
                    }
                    if (iCaptureStringLiteral != i2) {
                        char c6 = cArr[iCaptureStringLiteral];
                        if (c6 == '\'' || c6 == '\"') {
                            iCaptureStringLiteral = captureStringLiteral(c6, cArr, iCaptureStringLiteral, i2);
                        } else if (c6 == c2) {
                            i4++;
                        } else if (c6 == c3 && i4 - 1 == 0) {
                            if (parserContext != null) {
                                parserContext.incrementLineCount(i3);
                            }
                        }
                        iCaptureStringLiteral++;
                    }
                    return iCaptureStringLiteral;
                }
                char c7 = cArr[iCaptureStringLiteral];
                if (c7 == '\n') {
                    if (parserContext != null) {
                        parserContext.setLineOffset((short) iCaptureStringLiteral);
                    }
                    i3++;
                } else if (c7 == '\r') {
                    iCaptureStringLiteral++;
                }
                if (iCaptureStringLiteral != i2) {
                }
                return iCaptureStringLiteral;
            }
        }
        for (int i7 = i + 1; i7 != i2; i7++) {
            if (cArr[i7] == c2) {
                return i7;
            }
        }
        if (c2 == '(') {
            Sign$$ExternalSyntheticBUOutline0.m1012m("unbalanced braces ( ... )", cArr, i);
            return 0;
        }
        if (c2 == '[') {
            Sign$$ExternalSyntheticBUOutline0.m1012m("unbalanced braces [ ... ]", cArr, i);
            return 0;
        }
        if (c2 == '{') {
            Sign$$ExternalSyntheticBUOutline0.m1012m("unbalanced braces { ... }", cArr, i);
            return 0;
        }
        Sign$$ExternalSyntheticBUOutline0.m1012m("unterminated string literal", cArr, i);
        return 0;
    }

    public static String handleStringEscapes(char[] cArr) {
        int i = 0;
        int iHandleEscapeSequence = 0;
        while (i < cArr.length) {
            if (cArr[i] == '\\') {
                i++;
                iHandleEscapeSequence += handleEscapeSequence(cArr, i);
            }
            i++;
        }
        if (iHandleEscapeSequence == 0) {
            return new String(cArr);
        }
        char[] cArr2 = new char[cArr.length - iHandleEscapeSequence];
        int i2 = 0;
        for (char c2 : cArr) {
            if (c2 != 0) {
                cArr2[i2] = c2;
                i2++;
            }
        }
        return new String(cArr2);
    }

    public static int captureStringLiteral(char c2, char[] cArr, int i, int i2) {
        int i3;
        char c3;
        while (true) {
            i3 = i + 1;
            if (i3 >= i2 || (c3 = cArr[i3]) == c2) {
                break;
            }
            i = c3 == '\\' ? i + 2 : i3;
        }
        if (i3 < i2 && cArr[i3] == c2) {
            return i3;
        }
        Sign$$ExternalSyntheticBUOutline0.m1012m("unterminated string literal", cArr, i3);
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:126:0x014c, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0106 A[PHI: r8
  0x0106: PHI (r8v8 int) = (r8v6 int), (r8v9 int) binds: [B:70:0x012e, B:57:0x0104] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0148  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void parseWithExpressions(String str, char[] cArr, int i, int i2, Object obj, VariableResolverFactory variableResolverFactory) {
        int i3 = i + i2;
        int iBalancedCapture = i;
        int i4 = iBalancedCapture;
        String strTrim = _UrlKt.FRAGMENT_ENCODE_SET;
        int iOpLookup = -1;
        while (iBalancedCapture < i3) {
            char c2 = cArr[iBalancedCapture];
            if (c2 == '\"') {
                iBalancedCapture = balancedCapture(cArr, iBalancedCapture, i3, c2);
            } else if (c2 == '%') {
                int i5 = iBalancedCapture + 1;
                if (i5 < i3 && cArr[i5] == '=') {
                    iOpLookup = opLookup(c2);
                }
            } else if (c2 != '/') {
                if (c2 == '=') {
                    strTrim = new String(cArr, i4, (iBalancedCapture - i4) - (iOpLookup != -1 ? 1 : 0)).trim();
                    i4 = iBalancedCapture + 1;
                } else if (c2 != '[' && c2 != '{' && c2 != '\'' && c2 != '(') {
                    switch (c2) {
                        case ',':
                            if (strTrim == null) {
                                if (str == null) {
                                    try {
                                        MVEL.eval(new String(cArr, i4, iBalancedCapture - i4), obj, variableResolverFactory);
                                    } catch (CompileException e) {
                                        e.setCursor(i4 + (e.getCursor() - (e.getExpr().length - i2)));
                                        e.setExpr(cArr);
                                        throw e;
                                    }
                                } else {
                                    StringBuilder sb = new StringBuilder(str);
                                    sb.append('.');
                                    sb.append(cArr, i4, iBalancedCapture - i4);
                                    MVEL.eval(sb.toString(), obj, variableResolverFactory);
                                }
                                iBalancedCapture++;
                            } else {
                                if (iOpLookup != -1) {
                                    if (str == null) {
                                        throw new CompileException("operative assignment not possible here", cArr, i);
                                    }
                                    try {
                                        MVEL.setProperty(obj, strTrim, MVEL.eval(new String(createShortFormOperativeAssignment(str + "." + strTrim, cArr, i4, iBalancedCapture - i4, iOpLookup)), obj, variableResolverFactory));
                                    } catch (CompileException e2) {
                                        e2.setCursor(i4 + (e2.getCursor() - (e2.getExpr().length - i2)));
                                        e2.setExpr(cArr);
                                        throw e2;
                                    }
                                    e2.setCursor(i4 + (e2.getCursor() - (e2.getExpr().length - i2)));
                                    e2.setExpr(cArr);
                                    throw e2;
                                }
                                MVEL.setProperty(obj, strTrim, MVEL.eval(cArr, i4, iBalancedCapture - i4, obj, variableResolverFactory));
                                iBalancedCapture++;
                                strTrim = null;
                            }
                            i4 = iBalancedCapture;
                            iOpLookup = -1;
                            break;
                    }
                }
            } else if (iBalancedCapture < i3 && cArr[iBalancedCapture + 1] == '/') {
                while (iBalancedCapture < i3 && cArr[iBalancedCapture] != '\n') {
                    cArr[iBalancedCapture] = ' ';
                    iBalancedCapture++;
                }
                if (strTrim == null) {
                }
            } else if (iBalancedCapture < i3 && cArr[iBalancedCapture + 1] == '*') {
                int i6 = i3 - 1;
                while (iBalancedCapture < i6 && (cArr[iBalancedCapture] != '*' || cArr[iBalancedCapture + 1] != '/')) {
                    cArr[iBalancedCapture] = ' ';
                    iBalancedCapture++;
                }
                int i7 = iBalancedCapture + 1;
                cArr[iBalancedCapture] = ' ';
                iBalancedCapture += 2;
                cArr[i7] = ' ';
                if (strTrim == null) {
                    i4 = iBalancedCapture;
                }
            } else if (iBalancedCapture < i3 && cArr[iBalancedCapture + 1] == '=') {
                iOpLookup = 3;
            }
            iBalancedCapture++;
        }
        if (i4 != i3) {
            if (strTrim != null) {
                try {
                    if (!_UrlKt.FRAGMENT_ENCODE_SET.equals(strTrim)) {
                        if (iOpLookup == -1) {
                            MVEL.setProperty(obj, strTrim, MVEL.eval(cArr, i4, i3 - i4, obj, variableResolverFactory));
                            return;
                        }
                        if (str == null) {
                            throw new CompileException("operative assignment not possible here", cArr, i);
                        }
                        MVEL.setProperty(obj, strTrim, MVEL.eval(new String(createShortFormOperativeAssignment(str + "." + strTrim, cArr, i4, i3 - i4, iOpLookup)), obj, variableResolverFactory));
                        return;
                    }
                } catch (CompileException e3) {
                    e3.setCursor(i4 + (e3.getCursor() - (e3.getExpr().length - i2)));
                    e3.setExpr(cArr);
                    throw e3;
                }
            }
            if (str == null) {
                MVEL.eval(new String(cArr, i4, i3 - i4), obj, variableResolverFactory);
            } else {
                MVEL.eval(new StringAppender(str).append('.').append(cArr, i4, i3 - i4).toString(), obj, variableResolverFactory);
            }
        }
    }

    public static Object handleNumericConversion(char[] cArr, int i, int i2) {
        if (i2 != 1 && cArr[i] == '0' && cArr[i + 1] != '.') {
            int i3 = (i + i2) - 1;
            if (!isDigit(cArr[i3])) {
                char c2 = cArr[i3];
                if (c2 == 'B') {
                    return new BigDecimal(new String(cArr, i, i2 - 1));
                }
                if (c2 == 'I') {
                    return new BigInteger(new String(cArr, i, i2 - 1));
                }
                if (c2 == 'L' || c2 == 'l') {
                    return Long.decode(new String(cArr, i, i2 - 1));
                }
            }
            return Integer.decode(new String(cArr, i, i2));
        }
        int i4 = (i + i2) - 1;
        if (!isDigit(cArr[i4])) {
            char c3 = cArr[i4];
            if (c3 != '.') {
                if (c3 == 'B') {
                    return new BigDecimal(new String(cArr, i, i2 - 1));
                }
                if (c3 != 'D') {
                    if (c3 != 'F') {
                        if (c3 != 'I') {
                            if (c3 != 'L') {
                                if (c3 != 'd') {
                                    if (c3 != 'f') {
                                        if (c3 != 'l') {
                                            Sign$$ExternalSyntheticBUOutline0.m1012m("unrecognized numeric literal", cArr, i);
                                            return null;
                                        }
                                    }
                                }
                            }
                            return Long.valueOf(Long.parseLong(new String(cArr, i, i2 - 1)));
                        }
                        return new BigInteger(new String(cArr, i, i2 - 1));
                    }
                    return Float.valueOf(Float.parseFloat(new String(cArr, i, i2 - 1)));
                }
            }
            return Double.valueOf(Double.parseDouble(new String(cArr, i, i2 - 1)));
        }
        int iNumericTest = numericTest(cArr, i, i2);
        if (iNumericTest != 110) {
            switch (iNumericTest) {
                case 101:
                    return Integer.valueOf(Integer.parseInt(new String(cArr, i, i2)));
                case 102:
                    return Long.valueOf(Long.parseLong(new String(cArr, i, i2)));
                case 103:
                    return Double.valueOf(Double.parseDouble(new String(cArr, i, i2)));
                case 104:
                    return Float.valueOf(Float.parseFloat(new String(cArr, i, i2)));
                default:
                    return new String(cArr, i, i2);
            }
        }
        return new BigDecimal(cArr, MathContext.DECIMAL128);
    }

    public static boolean isNumeric(Object obj) {
        Class<?> cls;
        if (obj == null) {
            return false;
        }
        if (obj instanceof Class) {
            cls = (Class) obj;
        } else {
            cls = obj.getClass();
        }
        return cls == Integer.TYPE || cls == Long.TYPE || cls == Short.TYPE || cls == Double.TYPE || cls == Float.TYPE || Number.class.isAssignableFrom(cls);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int numericTest(char[] cArr, int i, int i2) {
        int i3;
        if (i2 <= 1) {
            i3 = i;
        } else {
            char c2 = cArr[i];
            if (c2 == '-') {
                i3 = i + 1;
            } else if (c2 == '~') {
                i3 = i + 1;
                if (cArr[i3] == '-') {
                    i3 = i + 2;
                }
            }
        }
        int i4 = i + i2;
        boolean z = false;
        while (i3 < i4) {
            char c3 = cArr[i3];
            if (!isDigit(c3)) {
                if (c3 != '.') {
                    if (c3 != 'E' && c3 != 'e') {
                        return -1;
                    }
                    int i5 = i3 + 1;
                    i3 = (i3 >= i4 || cArr[i5] != '-') ? i5 : i3 + 2;
                }
                z = true;
            }
            i3++;
        }
        if (i2 == 0) {
            return -1;
        }
        if (z) {
            return 103;
        }
        return i2 > 9 ? 102 : 101;
    }

    public static boolean isNumber(Object obj) {
        if (obj == null) {
            return false;
        }
        return obj instanceof String ? isNumber((String) obj) : obj instanceof char[] ? isNumber(new String((char[]) obj)) : (obj instanceof Integer) || (obj instanceof BigDecimal) || (obj instanceof BigInteger) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof Long) || (obj instanceof Short) || (obj instanceof Character);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean isNumber(String str) {
        boolean z;
        int i;
        int length = str.length();
        if (length <= 1) {
            z = true;
            i = 0;
        } else if (str.charAt(0) != '-') {
            if (str.charAt(0) == '~') {
                if (str.charAt(1) == '-') {
                    i = 2;
                    z = true;
                } else {
                    i = 1;
                    z = true;
                }
            }
        }
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (!isDigit(cCharAt)) {
                if (cCharAt != '.' || !z) {
                    return false;
                }
                z = false;
            }
            i++;
        }
        return length > 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
    
        if (r6 != '~') goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean isNumber(char[] cArr, int i, int i2) {
        int i3;
        char c2;
        boolean z;
        int i4;
        int i5;
        int i6 = i + i2;
        char c3 = SignatureVisitor.SUPER;
        boolean z2 = true;
        if (i2 <= 1) {
            i3 = i;
        } else {
            char c4 = cArr[i];
            if (c4 == '-') {
                i5 = i + 1;
                if (cArr[i5] != '-') {
                }
                i3 = i5 + 1;
            }
            i5 = i;
            i3 = i5 + 1;
        }
        boolean z3 = true;
        while (i3 < i6) {
            char c5 = cArr[i3];
            if (isDigit(c5)) {
                c2 = c3;
                z = z2;
            } else if (z3 && c5 == '.') {
                c2 = c3;
                z = z2;
                z3 = false;
            } else {
                if (i2 != z2) {
                    z = z2;
                    if (i3 == i6 - 1) {
                        if (c5 == '.') {
                            Sign$$ExternalSyntheticBUOutline0.m1012m("invalid number literal: ".concat(new String(cArr)), cArr, i);
                            return false;
                        }
                        if (c5 == 'B' || c5 == 'D' || c5 == 'F' || c5 == 'I' || c5 == 'L' || c5 == 'd' || c5 == 'f' || c5 == 'l') {
                            return z;
                        }
                        return false;
                    }
                } else {
                    z = z2;
                }
                if (i3 == i + 1 && c5 == 'x' && cArr[i] == '0') {
                    for (int i7 = i3 + 1; i7 < i6; i7++) {
                        char c6 = cArr[i7];
                        if (!isDigit(c6) && ((c6 < 'A' || c6 > 'F') && (c6 < 'a' || c6 > 'f'))) {
                            if (i7 == i2 - 1 && (c6 == 'B' || c6 == 'I' || c6 == 'L' || c6 == 'l')) {
                                return z;
                            }
                            return false;
                        }
                    }
                    if (i2 - 2 > 0) {
                        return z;
                    }
                    return false;
                }
                if (i3 == i || (i4 = i3 + 1) >= i6 || !(c5 == 'E' || c5 == 'e')) {
                    if (i3 == i) {
                        return false;
                    }
                    Sign$$ExternalSyntheticBUOutline0.m1012m("invalid number literal: ".concat(new String(cArr, i, i2)), cArr, i);
                    return false;
                }
                char c7 = cArr[i4];
                c2 = SignatureVisitor.SUPER;
                i3 = (c7 == '-' || c7 == '+') ? i3 + 2 : i4;
            }
            i3++;
            c3 = c2;
            z2 = z;
        }
        boolean z4 = z2;
        if (i6 > i) {
            return z4;
        }
        return false;
    }

    public static int find(char[] cArr, int i, int i2, char c2) {
        int i3 = i2 + i;
        while (i < i3) {
            if (cArr[i] == c2) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static int findLast(char[] cArr, int i, int i2, char c2) {
        for (int i3 = i2 + i; i3 >= i; i3--) {
            if (cArr[i3] == c2) {
                return i3;
            }
        }
        return -1;
    }

    public static String createStringTrimmed(char[] cArr) {
        int length = cArr.length;
        int i = 0;
        while (i != length && cArr[i] < '!') {
            i++;
        }
        while (length != i && cArr[length - 1] < '!') {
            length--;
        }
        return new String(cArr, i, length - i);
    }

    public static String createStringTrimmed(char[] cArr, int i, int i2) {
        int i3 = i2 + i;
        if (i3 > cArr.length) {
            return new String(cArr);
        }
        while (i != i3 && cArr[i] < '!') {
            i++;
        }
        while (i3 != i && cArr[i3 - 1] < '!') {
            i3--;
        }
        return new String(cArr, i, i3 - i);
    }

    public static boolean endsWith(char[] cArr, int i, int i2, char[] cArr2) {
        if (cArr2.length > cArr.length) {
            return false;
        }
        int length = cArr2.length - 1;
        int i3 = (i + i2) - 1;
        while (length >= 0) {
            int i4 = i3 - 1;
            int i5 = length - 1;
            if (cArr[i3] != cArr2[length]) {
                return false;
            }
            i3 = i4;
            length = i5;
        }
        return true;
    }

    public static boolean isIdentifierPart(int i) {
        if (i > 96 && i < 123) {
            return true;
        }
        if (i <= 64 || i >= 91) {
            return (i > 47 && i < 58) || i == 95 || i == 36 || Character.isJavaIdentifierPart(i);
        }
        return true;
    }

    public static float similarity(String str, String str2) {
        float length;
        float f = 0.0f;
        if (str == null || str2 == null) {
            return (str == null && str2 == null) ? 1.0f : 0.0f;
        }
        char[] charArray = str.toCharArray();
        char[] charArray2 = str2.toCharArray();
        if (charArray.length > charArray2.length) {
            length = charArray.length;
        } else {
            length = charArray2.length;
            charArray2 = charArray;
            charArray = charArray2;
        }
        for (int i = 0; i < charArray.length && i < charArray2.length; i++) {
            if (charArray[i] == charArray2[i]) {
                f += 1.0f;
            }
        }
        return f / length;
    }

    public static int findAbsoluteLast(char[] cArr) {
        int i = 0;
        for (int length = cArr.length - 1; length >= 0; length--) {
            char c2 = cArr[length];
            if (c2 == ']') {
                i++;
            }
            if (c2 == '[') {
                i--;
            }
            if ((i == 0 && c2 == '.') || c2 == '[') {
                return length;
            }
        }
        return -1;
    }

    public static Class getBaseComponentType(Class cls) {
        while (cls.isArray()) {
            cls = cls.getComponentType();
        }
        return cls;
    }

    public static Class getSubComponentType(Class cls) {
        return cls.isArray() ? cls.getComponentType() : cls;
    }

    public static boolean isJunct(char c2) {
        if (c2 == '(' || c2 == '[') {
            return true;
        }
        return isWhitespace(c2);
    }

    public static boolean isReservedWord(String str) {
        return AbstractParser.LITERALS.containsKey(str) || AbstractParser.OPERATORS.containsKey(str);
    }

    public static boolean isNotValidNameorLabel(String str) {
        for (char c2 : str.toCharArray()) {
            if (c2 == '.' || !isIdentifierPart(c2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isPropertyOnly(char[] cArr, int i, int i2) {
        while (i < i2) {
            if (!isIdentifierPart(cArr[i])) {
                return false;
            }
            i++;
        }
        return true;
    }

    public static boolean isArrayType(char[] cArr, int i, int i2) {
        if (i2 <= i + 2) {
            return false;
        }
        int i3 = i2 - 2;
        return isPropertyOnly(cArr, i, i3) && cArr[i3] == '[' && cArr[i2 - 1] == ']';
    }

    public static void checkNameSafety(String str) {
        if (isReservedWord(str)) {
            MVEL$$ExternalSyntheticBUOutline0.m1005m("illegal use of reserved word: ", str);
        } else if (isDigit(str.charAt(0))) {
            GlShader$$ExternalSyntheticBUOutline1.m1109m("not an identifier: ".concat(str));
        }
    }

    public static FileWriter getDebugFileWriter() {
        return new FileWriter(new File(MVEL.getDebuggingOutputFileName()), true);
    }

    public static boolean isPrimitiveWrapper(Class cls) {
        return cls == Integer.class || cls == Boolean.class || cls == Long.class || cls == Double.class || cls == Float.class || cls == Character.class || cls == Short.class || cls == Byte.class;
    }

    public static Serializable subCompileExpression(char[] cArr) {
        return _optimizeTree(new ExpressionCompiler(cArr)._compile());
    }

    public static Serializable subCompileExpression(char[] cArr, ParserContext parserContext) {
        return _optimizeTree(new ExpressionCompiler(cArr, parserContext)._compile());
    }

    public static Serializable subCompileExpression(char[] cArr, int i, int i2, ParserContext parserContext) {
        return _optimizeTree(new ExpressionCompiler(cArr, i, i2, parserContext)._compile());
    }

    public static Serializable subCompileExpression(String str, ParserContext parserContext) {
        return _optimizeTree(new ExpressionCompiler(str, parserContext)._compile());
    }

    public static Serializable optimizeTree(CompiledExpression compiledExpression) {
        return (!compiledExpression.isImportInjectionRequired() && compiledExpression.getParserConfiguration().isAllowBootstrapBypass() && compiledExpression.isSingleNode()) ? _optimizeTree(compiledExpression) : compiledExpression;
    }

    private static Serializable _optimizeTree(CompiledExpression compiledExpression) {
        if (!compiledExpression.isSingleNode()) {
            return compiledExpression;
        }
        ASTNode firstNode = compiledExpression.getFirstNode();
        if (!firstNode.isLiteral() || firstNode.isThisVal()) {
            return firstNode.canSerializeAccessor() ? new ExecutableAccessorSafe(firstNode, compiledExpression.getKnownEgressType()) : new ExecutableAccessor(firstNode, compiledExpression.getKnownEgressType());
        }
        return new ExecutableLiteral(firstNode.getLiteralValue());
    }

    public static String repeatChar(char c2, int i) {
        char[] cArr = new char[i];
        for (int i2 = 0; i2 < i; i2++) {
            cArr[i2] = c2;
        }
        return new String(cArr);
    }

    public static char[] loadFromFile(File file) {
        return loadFromFile(file, null);
    }

    public static char[] loadFromFile(File file, String str) throws Throwable {
        FileChannel channel;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        if (!file.exists()) {
            Instance$$ExternalSyntheticBUOutline0.m1009m("cannot find file: ", file.getName());
            return null;
        }
        try {
            fileInputStream = new FileInputStream(file);
            try {
                channel = fileInputStream.getChannel();
                try {
                    ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(10);
                    StringAppender stringAppender = new StringAppender((int) file.length(), str);
                    int i = 0;
                    while (i >= 0) {
                        i = channel.read(byteBufferAllocateDirect);
                        while (i > 0) {
                            stringAppender.append(byteBufferAllocateDirect.get());
                            i--;
                        }
                    }
                    char[] chars = stringAppender.toChars();
                    fileInputStream.close();
                    if (channel != null) {
                        channel.close();
                    }
                    return chars;
                } catch (FileNotFoundException unused) {
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    if (channel != null) {
                        channel.close();
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                    if (fileInputStream2 != null) {
                        fileInputStream2.close();
                    }
                    if (channel != null) {
                        channel.close();
                    }
                    throw th;
                }
            } catch (FileNotFoundException unused2) {
                channel = null;
            } catch (Throwable th2) {
                th = th2;
                channel = null;
            }
        } catch (FileNotFoundException unused3) {
            fileInputStream = null;
            channel = null;
        } catch (Throwable th3) {
            th = th3;
            channel = null;
        }
    }

    public static char[] readIn(InputStream inputStream, String str) throws IOException {
        try {
            byte[] bArr = new byte[10];
            StringAppender stringAppender = new StringAppender(10, str);
            while (true) {
                int i = inputStream.read(bArr);
                if (i <= 0) {
                    char[] chars = stringAppender.toChars();
                    inputStream.close();
                    return chars;
                }
                for (int i2 = 0; i2 < i; i2++) {
                    stringAppender.append(bArr[i2]);
                }
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
    }

    public static Class forNameWithInner(String str, ClassLoader classLoader) {
        try {
            return classLoader.loadClass(str);
        } catch (ClassNotFoundException e) {
            return findInnerClass(str, classLoader, e);
        }
    }

    public static Class findInnerClass(String str, ClassLoader classLoader, ClassNotFoundException classNotFoundException) throws ClassNotFoundException {
        while (true) {
            int iLastIndexOf = str.lastIndexOf(46);
            if (iLastIndexOf > 0) {
                str = str.substring(0, iLastIndexOf) + "$" + str.substring(iLastIndexOf + 1);
                try {
                    return classLoader.loadClass(str);
                } catch (ClassNotFoundException unused) {
                }
            } else {
                throw classNotFoundException;
            }
        }
    }
}
