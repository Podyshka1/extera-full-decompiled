package com.android.p003dx.stock;

import com.android.p003dx.Code;
import com.android.p003dx.Comparison;
import com.android.p003dx.DexMaker;
import com.android.p003dx.Label;
import com.android.p003dx.Local;
import com.android.p003dx.MethodId;
import com.android.p003dx.TypeId;
import com.android.p003dx.rop.code.RegisterSpec;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.UndeclaredThrowableException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public final class ProxyBuilder<T> {
    private static final String FIELD_NAME_HANDLER = "$__handler";
    private static final String FIELD_NAME_METHODS = "$__methodArray";
    private static final Map<Class<?>, Class<?>> PRIMITIVE_TO_BOXED;
    private static final Map<Class<?>, MethodId<?, ?>> PRIMITIVE_TO_UNBOX_METHOD;
    private static final Map<TypeId<?>, MethodId<?, ?>> PRIMITIVE_TYPE_TO_UNBOX_METHOD;
    public static final int VERSION = 1;
    private static final Map<ProxiedClass<?>, Class<?>> generatedProxyClasses = DesugarCollections.synchronizedMap(new HashMap());
    private final Class<T> baseClass;
    private File dexCache;
    private InvocationHandler handler;
    private boolean markTrusted;
    private Method[] methods;
    private boolean sharedClassLoader;
    private ClassLoader parentClassLoader = ProxyBuilder.class.getClassLoader();
    private Class<?>[] constructorArgTypes = new Class[0];
    private Object[] constructorArgValues = new Object[0];
    private List<Class<?>> interfaces = new ArrayList();

    static {
        HashMap map = new HashMap();
        PRIMITIVE_TO_BOXED = map;
        Class cls = Boolean.TYPE;
        map.put(cls, Boolean.class);
        Class cls2 = Integer.TYPE;
        Class<Integer> cls3 = Integer.class;
        map.put(cls2, cls3);
        Class cls4 = Byte.TYPE;
        Class<Byte> cls5 = Byte.class;
        map.put(cls4, cls5);
        Class cls6 = Long.TYPE;
        map.put(cls6, Long.class);
        Class cls7 = Short.TYPE;
        map.put(cls7, Short.class);
        Class cls8 = Float.TYPE;
        map.put(cls8, Float.class);
        Class cls9 = Double.TYPE;
        map.put(cls9, Double.class);
        Class cls10 = Character.TYPE;
        Class<Character> cls11 = Character.class;
        map.put(cls10, cls11);
        PRIMITIVE_TYPE_TO_UNBOX_METHOD = new HashMap();
        Iterator it = map.entrySet().iterator();
        while (true) {
            Iterator it2 = it;
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                TypeId<?> typeId = TypeId.get((Class) entry.getKey());
                Class<Character> cls12 = cls11;
                TypeId typeId2 = TypeId.get((Class) entry.getValue());
                PRIMITIVE_TYPE_TO_UNBOX_METHOD.put(typeId, typeId2.getMethod(typeId2, "valueOf", typeId));
                cls3 = cls3;
                it = it2;
                cls11 = cls12;
                cls5 = cls5;
            } else {
                HashMap map2 = new HashMap();
                map2.put(cls, TypeId.get(Boolean.class).getMethod(TypeId.BOOLEAN, "booleanValue", new TypeId[0]));
                map2.put(cls2, TypeId.get(cls3).getMethod(TypeId.INT, "intValue", new TypeId[0]));
                map2.put(cls4, TypeId.get(cls5).getMethod(TypeId.BYTE, "byteValue", new TypeId[0]));
                map2.put(cls6, TypeId.get(Long.class).getMethod(TypeId.LONG, "longValue", new TypeId[0]));
                map2.put(cls7, TypeId.get(Short.class).getMethod(TypeId.SHORT, "shortValue", new TypeId[0]));
                map2.put(cls8, TypeId.get(Float.class).getMethod(TypeId.FLOAT, "floatValue", new TypeId[0]));
                map2.put(cls9, TypeId.get(Double.class).getMethod(TypeId.DOUBLE, "doubleValue", new TypeId[0]));
                map2.put(cls10, TypeId.get(cls11).getMethod(TypeId.CHAR, "charValue", new TypeId[0]));
                PRIMITIVE_TO_UNBOX_METHOD = map2;
                return;
            }
        }
    }

    private ProxyBuilder(Class<T> cls) {
        this.baseClass = cls;
    }

    public static <T> ProxyBuilder<T> forClass(Class<T> cls) {
        return new ProxyBuilder<>(cls);
    }

    public ProxyBuilder<T> parentClassLoader(ClassLoader classLoader) {
        this.parentClassLoader = classLoader;
        return this;
    }

    public ProxyBuilder<T> handler(InvocationHandler invocationHandler) {
        this.handler = invocationHandler;
        return this;
    }

    public ProxyBuilder<T> dexCache(File file) {
        File file2 = new File(file, RegisterSpec.PREFIX + Integer.toString(1));
        this.dexCache = file2;
        file2.mkdir();
        return this;
    }

    public ProxyBuilder<T> implementing(Class<?>... clsArr) {
        List<Class<?>> list = this.interfaces;
        for (Class<?> cls : clsArr) {
            if (!cls.isInterface()) {
                throw new IllegalArgumentException("Not an interface: " + cls.getName());
            }
            if (!list.contains(cls)) {
                list.add(cls);
            }
        }
        return this;
    }

    public ProxyBuilder<T> constructorArgValues(Object... objArr) {
        this.constructorArgValues = objArr;
        return this;
    }

    public ProxyBuilder<T> constructorArgTypes(Class<?>... clsArr) {
        this.constructorArgTypes = clsArr;
        return this;
    }

    public ProxyBuilder<T> onlyMethods(Method[] methodArr) {
        this.methods = methodArr;
        return this;
    }

    public ProxyBuilder<T> withSharedClassLoader() {
        this.sharedClassLoader = true;
        return this;
    }

    public ProxyBuilder<T> markTrusted() {
        this.markTrusted = true;
        return this;
    }

    public T build() {
        check(this.handler != null, "handler == null");
        check(this.constructorArgTypes.length == this.constructorArgValues.length, "constructorArgValues.length != constructorArgTypes.length");
        try {
            try {
                T tNewInstance = buildProxyClass().getConstructor(this.constructorArgTypes).newInstance(this.constructorArgValues);
                setInvocationHandler(tNewInstance, this.handler);
                return tNewInstance;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InstantiationException e2) {
                throw new AssertionError(e2);
            } catch (InvocationTargetException e3) {
                throw launderCause(e3);
            }
        } catch (NoSuchMethodException unused) {
            throw new IllegalArgumentException("No constructor for " + this.baseClass.getName() + " with parameter types " + Arrays.toString(this.constructorArgTypes));
        }
    }

    public Class<? extends T> buildProxyClass() throws IOException {
        ClassLoader classLoader;
        ClassLoader classLoaderGenerateAndLoad;
        if (this.sharedClassLoader) {
            classLoader = this.baseClass.getClassLoader();
        } else {
            classLoader = this.parentClassLoader;
        }
        ClassLoader classLoader2 = classLoader;
        ProxiedClass<?> proxiedClass = new ProxiedClass<>(this.baseClass, this.interfaces, classLoader2, this.sharedClassLoader);
        Map<ProxiedClass<?>, Class<?>> map = generatedProxyClasses;
        Class<? extends T> cls = (Class) map.get(proxiedClass);
        if (cls != null) {
            return cls;
        }
        DexMaker dexMaker = new DexMaker();
        String methodNameForProxyOf = getMethodNameForProxyOf(this.baseClass, this.interfaces);
        TypeId<?> typeId = TypeId.get("L" + methodNameForProxyOf + ";");
        TypeId<?> typeId2 = TypeId.get(this.baseClass);
        generateConstructorsAndFields(dexMaker, typeId, typeId2, this.baseClass);
        Method[] methodsToProxyRecursive = this.methods;
        if (methodsToProxyRecursive == null) {
            methodsToProxyRecursive = getMethodsToProxyRecursive();
        }
        Arrays.sort(methodsToProxyRecursive, new Comparator<Method>() { // from class: com.android.dx.stock.ProxyBuilder.1
            @Override // java.util.Comparator
            public int compare(Method method, Method method2) {
                return (method.getDeclaringClass() + method.getName() + Arrays.toString(method.getParameterTypes()) + method.getReturnType()).compareTo(method2.getDeclaringClass() + method2.getName() + Arrays.toString(method2.getParameterTypes()) + method2.getReturnType());
            }
        });
        generateCodeForAllMethods(dexMaker, typeId, methodsToProxyRecursive, typeId2);
        dexMaker.declare(typeId, methodNameForProxyOf + ".generated", 1, typeId2, getInterfacesAsTypeIds());
        if (this.sharedClassLoader) {
            dexMaker.setSharedClassLoader(classLoader2);
        }
        if (this.markTrusted) {
            dexMaker.markAsTrusted();
        }
        if (this.sharedClassLoader) {
            classLoaderGenerateAndLoad = dexMaker.generateAndLoad(null, this.dexCache);
        } else {
            classLoaderGenerateAndLoad = dexMaker.generateAndLoad(this.parentClassLoader, this.dexCache);
        }
        try {
            Class<? extends T> clsLoadClass = loadClass(classLoaderGenerateAndLoad, methodNameForProxyOf);
            setMethodsStaticField(clsLoadClass, methodsToProxyRecursive);
            map.put(proxiedClass, clsLoadClass);
            return clsLoadClass;
        } catch (ClassNotFoundException e) {
            throw new AssertionError(e);
        } catch (IllegalAccessError e2) {
            throw new UnsupportedOperationException("cannot proxy inaccessible class " + this.baseClass, e2);
        }
    }

    private Class<? extends T> loadClass(ClassLoader classLoader, String str) {
        return (Class<? extends T>) classLoader.loadClass(str);
    }

    private static RuntimeException launderCause(InvocationTargetException invocationTargetException) {
        Throwable cause = invocationTargetException.getCause();
        if (cause instanceof Error) {
            throw ((Error) cause);
        }
        if (cause instanceof RuntimeException) {
            throw ((RuntimeException) cause);
        }
        throw new UndeclaredThrowableException(cause);
    }

    private static void setMethodsStaticField(Class<?> cls, Method[] methodArr) {
        try {
            Field declaredField = cls.getDeclaredField(FIELD_NAME_METHODS);
            declaredField.setAccessible(true);
            declaredField.set(null, methodArr);
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (NoSuchFieldException e2) {
            throw new AssertionError(e2);
        }
    }

    public static InvocationHandler getInvocationHandler(Object obj) {
        try {
            Field declaredField = obj.getClass().getDeclaredField(FIELD_NAME_HANDLER);
            declaredField.setAccessible(true);
            return (InvocationHandler) declaredField.get(obj);
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (NoSuchFieldException e2) {
            throw new IllegalArgumentException("Not a valid proxy instance", e2);
        }
    }

    public static void setInvocationHandler(Object obj, InvocationHandler invocationHandler) {
        try {
            Field declaredField = obj.getClass().getDeclaredField(FIELD_NAME_HANDLER);
            declaredField.setAccessible(true);
            declaredField.set(obj, invocationHandler);
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (NoSuchFieldException e2) {
            throw new IllegalArgumentException("Not a valid proxy instance", e2);
        }
    }

    public static boolean isProxyClass(Class<?> cls) {
        try {
            cls.getDeclaredField(FIELD_NAME_HANDLER);
            return true;
        } catch (NoSuchFieldException unused) {
            return false;
        }
    }

    private static void throwAbstractMethodError(Code code, Method method, Local<String> local, Local<AbstractMethodError> local2) {
        MethodId<T, Void> constructor = TypeId.get(AbstractMethodError.class).getConstructor(TypeId.STRING);
        code.loadConstant(local, "'" + method + "' cannot be called");
        code.newInstance(local2, constructor, local);
        code.throwValue(local2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.dx.DexMaker] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r15v4, types: [com.android.dx.Code] */
    /* JADX WARN: Type inference failed for: r3v10, types: [com.android.dx.Code] */
    private static <T, G extends T> void generateCodeForAllMethods(DexMaker dexMaker, TypeId<G> typeId, Method[] methodArr, TypeId<T> typeId2) {
        TypeId typeId3;
        Local localNewLocal;
        Class<?>[] clsArr;
        Local localNewLocal2;
        Local local;
        Local[] localArr;
        TypeId typeId4;
        MethodId methodId;
        Method method;
        ?? r0 = dexMaker;
        TypeId<G> typeId5 = typeId;
        Method[] methodArr2 = methodArr;
        TypeId typeId6 = TypeId.get(InvocationHandler.class);
        TypeId typeId7 = TypeId.get(Method[].class);
        Object field = typeId5.getField(typeId6, FIELD_NAME_HANDLER);
        Object field2 = typeId5.getField(typeId7, FIELD_NAME_METHODS);
        TypeId<?> typeId8 = TypeId.get(Method.class);
        TypeId<?> typeId9 = TypeId.get(Object[].class);
        TypeId<?> typeId10 = TypeId.OBJECT;
        int i = 0;
        char c = 2;
        MethodId method2 = typeId6.getMethod(typeId10, "invoke", typeId10, typeId8, typeId9);
        int i2 = 0;
        TypeId typeId11 = typeId6;
        TypeId typeId12 = typeId7;
        while (i2 < methodArr2.length) {
            Method method3 = methodArr2[i2];
            int i3 = i;
            String name = method3.getName();
            char c2 = c;
            Class<?>[] parameterTypes = method3.getParameterTypes();
            int length = parameterTypes.length;
            TypeId<?>[] typeIdArr = new TypeId[length];
            for (int i4 = i3; i4 < length; i4++) {
                typeIdArr[i4] = TypeId.get(parameterTypes[i4]);
            }
            Class<?> returnType = method3.getReturnType();
            int i5 = i2;
            TypeId typeId13 = TypeId.get(returnType);
            MethodId method4 = typeId5.getMethod(typeId13, name, typeIdArr);
            MethodId methodId2 = method2;
            TypeId typeId14 = TypeId.get(AbstractMethodError.class);
            int i6 = length;
            ?? Declare = r0.declare(method4, 1);
            Local local2 = Declare.getThis(typeId5);
            Local localNewLocal3 = Declare.newLocal(typeId11);
            TypeId<Object> typeId15 = TypeId.OBJECT;
            Local localNewLocal4 = Declare.newLocal(typeId15);
            TypeId<Integer> typeId16 = TypeId.INT;
            Object obj = field;
            Local localNewLocal5 = Declare.newLocal(typeId16);
            Local localNewLocal6 = Declare.newLocal(typeId9);
            TypeId<?> typeId17 = typeId9;
            Local localNewLocal7 = Declare.newLocal(typeId16);
            Local localNewLocal8 = Declare.newLocal(typeId15);
            Local localNewLocal9 = Declare.newLocal(typeId13);
            Local localNewLocal10 = Declare.newLocal(typeId12);
            TypeId typeId18 = typeId12;
            Local localNewLocal11 = Declare.newLocal(typeId8);
            Local localNewLocal12 = Declare.newLocal(typeId16);
            TypeId<?> typeId19 = typeId8;
            Class<?> cls = PRIMITIVE_TO_BOXED.get(returnType);
            Local localNewLocal13 = cls != null ? Declare.newLocal(TypeId.get(cls)) : null;
            Local localNewLocal14 = Declare.newLocal(typeId11);
            TypeId typeId20 = typeId11;
            if ((method3.getModifiers() & 1024) == 0) {
                Local[] localArr2 = new Local[parameterTypes.length];
                Local localNewLocal15 = Declare.newLocal(typeId13);
                MethodId method5 = typeId2.getMethod(typeId13, name, typeIdArr);
                typeId3 = typeId13;
                local = localNewLocal15;
                localNewLocal = null;
                typeId4 = typeId14;
                methodId = method5;
                localArr = localArr2;
                clsArr = parameterTypes;
                localNewLocal2 = null;
            } else {
                typeId3 = typeId13;
                localNewLocal = Declare.newLocal(TypeId.STRING);
                clsArr = parameterTypes;
                localNewLocal2 = Declare.newLocal(typeId14);
                local = null;
                localArr = null;
                typeId4 = typeId14;
                methodId = null;
            }
            Declare.loadConstant(localNewLocal12, Integer.valueOf(i5));
            Declare.sget(field2, localNewLocal10);
            Declare.aget(localNewLocal11, localNewLocal10, localNewLocal12);
            Declare.loadConstant(localNewLocal7, Integer.valueOf(i6));
            Declare.newArray(localNewLocal6, localNewLocal7);
            Object obj2 = obj;
            Declare.iget(obj2, localNewLocal3, local2);
            Declare.loadConstant(localNewLocal14, null);
            Label label = new Label();
            Declare.compare(Comparison.EQ, label, localNewLocal14, localNewLocal3);
            int i7 = i3;
            while (true) {
                int i8 = i6;
                if (i7 >= i8) {
                    break;
                }
                i6 = i8;
                Declare.loadConstant(localNewLocal5, Integer.valueOf(i7));
                Declare.aput(localNewLocal6, localNewLocal5, boxIfRequired(Declare, Declare.getParameter(i7, typeIdArr[i7]), localNewLocal8));
                i7++;
                localNewLocal11 = localNewLocal11;
                obj2 = obj2;
            }
            Object obj3 = obj2;
            Local[] localArr3 = new Local[3];
            localArr3[i3] = local2;
            localArr3[1] = localNewLocal11;
            localArr3[c2] = localNewLocal6;
            Declare.invokeInterface(methodId2, localNewLocal4, localNewLocal3, localArr3);
            generateCodeForReturnStatement(Declare, returnType, localNewLocal4, localNewLocal9, localNewLocal13);
            Declare.mark(label);
            int modifiers = method3.getModifiers() & 1024;
            Class cls2 = Void.TYPE;
            if (modifiers == 0) {
                for (int i9 = i3; i9 < localArr.length; i9++) {
                    localArr[i9] = Declare.getParameter(i9, typeIdArr[i9]);
                }
                if (cls2.equals(returnType)) {
                    Declare.invokeSuper(methodId, null, local2, localArr);
                    Declare.returnVoid();
                } else {
                    invokeSuper(methodId, Declare, local2, localArr, local);
                    Declare.returnValue(local);
                }
                method = method3;
            } else {
                method = method3;
                throwAbstractMethodError(Declare, method, localNewLocal, localNewLocal2);
            }
            TypeId typeId21 = typeId3;
            ?? Declare2 = dexMaker.declare(typeId.getMethod(typeId21, superMethodName(method), typeIdArr), 1);
            if ((method.getModifiers() & 1024) == 0) {
                Local local3 = Declare2.getThis(typeId);
                int length2 = clsArr.length;
                Local[] localArr4 = new Local[length2];
                for (int i10 = i3; i10 < length2; i10++) {
                    localArr4[i10] = Declare2.getParameter(i10, typeIdArr[i10]);
                }
                if (cls2.equals(returnType)) {
                    Declare2.invokeSuper(methodId, null, local3, localArr4);
                    Declare2.returnVoid();
                } else {
                    Local localNewLocal16 = Declare2.newLocal(typeId21);
                    invokeSuper(methodId, Declare2, local3, localArr4, localNewLocal16);
                    Declare2.returnValue(localNewLocal16);
                }
            } else {
                throwAbstractMethodError(Declare2, method, Declare2.newLocal(TypeId.STRING), Declare2.newLocal(typeId4));
            }
            i2 = i5 + 1;
            r0 = dexMaker;
            methodArr2 = methodArr;
            method2 = methodId2;
            typeId5 = typeId;
            i = i3;
            c = c2;
            field = obj3;
            typeId9 = typeId17;
            typeId12 = typeId18;
            typeId8 = typeId19;
            typeId11 = typeId20;
        }
    }

    private static void invokeSuper(MethodId methodId, Code code, Local local, Local[] localArr, Local local2) {
        code.invokeSuper(methodId, local2, local, localArr);
    }

    private static Local<?> boxIfRequired(Code code, Local<?> local, Local<Object> local2) {
        MethodId<?, ?> methodId = PRIMITIVE_TYPE_TO_UNBOX_METHOD.get(local.getType());
        if (methodId == null) {
            return local;
        }
        code.invokeStatic(methodId, local2, local);
        return local2;
    }

    public static Object callSuper(Object obj, Method method, Object... objArr) throws Throwable {
        try {
            return obj.getClass().getMethod(superMethodName(method), method.getParameterTypes()).invoke(obj, objArr);
        } catch (InvocationTargetException e) {
            throw e.getCause();
        }
    }

    private static String superMethodName(Method method) {
        return "super$" + method.getName() + "$" + method.getReturnType().getName().replace('.', '_').replace('[', '_').replace(';', '_');
    }

    private static void check(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    private static <T, G extends T> void generateConstructorsAndFields(DexMaker dexMaker, TypeId<G> typeId, TypeId<T> typeId2, Class<T> cls) {
        TypeId<V> typeId3 = TypeId.get(InvocationHandler.class);
        TypeId<V> typeId4 = TypeId.get(Method[].class);
        dexMaker.declare(typeId.getField(typeId3, FIELD_NAME_HANDLER), 2, null);
        dexMaker.declare(typeId.getField(typeId4, FIELD_NAME_METHODS), 10, null);
        for (Constructor constructor : getConstructorsToOverwrite(cls)) {
            if (constructor.getModifiers() != 16) {
                TypeId<?>[] typeIdArrClassArrayToTypeArray = classArrayToTypeArray(constructor.getParameterTypes());
                Code codeDeclare = dexMaker.declare(typeId.getConstructor(typeIdArrClassArrayToTypeArray), 1);
                Local<T> local = codeDeclare.getThis(typeId);
                int length = typeIdArrClassArrayToTypeArray.length;
                Local<?>[] localArr = new Local[length];
                for (int i = 0; i < length; i++) {
                    localArr[i] = codeDeclare.getParameter(i, typeIdArrClassArrayToTypeArray[i]);
                }
                codeDeclare.invokeDirect(typeId2.getConstructor(typeIdArrClassArrayToTypeArray), null, local, localArr);
                codeDeclare.returnVoid();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> Constructor<T>[] getConstructorsToOverwrite(Class<T> cls) {
        return (Constructor<T>[]) cls.getDeclaredConstructors();
    }

    private TypeId<?>[] getInterfacesAsTypeIds() {
        TypeId<?>[] typeIdArr = new TypeId[this.interfaces.size()];
        Iterator<Class<?>> it = this.interfaces.iterator();
        int i = 0;
        while (it.hasNext()) {
            typeIdArr[i] = TypeId.get(it.next());
            i++;
        }
        return typeIdArr;
    }

    private Method[] getMethodsToProxyRecursive() {
        int i;
        Set<MethodSetEntry> hashSet = new HashSet<>();
        Set<MethodSetEntry> hashSet2 = new HashSet<>();
        for (Class<T> superclass = this.baseClass; superclass != null; superclass = superclass.getSuperclass()) {
            getMethodsToProxy(hashSet, hashSet2, superclass);
        }
        Class<T> superclass2 = this.baseClass;
        while (true) {
            i = 0;
            if (superclass2 == null) {
                break;
            }
            Class<?>[] interfaces = superclass2.getInterfaces();
            int length = interfaces.length;
            while (i < length) {
                getMethodsToProxy(hashSet, hashSet2, interfaces[i]);
                i++;
            }
            superclass2 = superclass2.getSuperclass();
        }
        Iterator<Class<?>> it = this.interfaces.iterator();
        while (it.hasNext()) {
            getMethodsToProxy(hashSet, hashSet2, it.next());
        }
        Method[] methodArr = new Method[hashSet.size()];
        Iterator<MethodSetEntry> it2 = hashSet.iterator();
        while (it2.hasNext()) {
            methodArr[i] = it2.next().originalMethod;
            i++;
        }
        return methodArr;
    }

    private void getMethodsToProxy(Set<MethodSetEntry> set, Set<MethodSetEntry> set2, Class<?> cls) {
        for (Method method : cls.getDeclaredMethods()) {
            if ((method.getModifiers() & 16) != 0) {
                MethodSetEntry methodSetEntry = new MethodSetEntry(method);
                set2.add(methodSetEntry);
                set.remove(methodSetEntry);
            } else if ((method.getModifiers() & 8) == 0 && ((Modifier.isPublic(method.getModifiers()) || Modifier.isProtected(method.getModifiers()) || (this.sharedClassLoader && !Modifier.isPrivate(method.getModifiers()))) && (!method.getName().equals("finalize") || method.getParameterTypes().length != 0))) {
                MethodSetEntry methodSetEntry2 = new MethodSetEntry(method);
                if (!set2.contains(methodSetEntry2)) {
                    set.add(methodSetEntry2);
                }
            }
        }
        if (cls.isInterface()) {
            for (Class<?> cls2 : cls.getInterfaces()) {
                getMethodsToProxy(set, set2, cls2);
            }
        }
    }

    private static <T> String getMethodNameForProxyOf(Class<T> cls, List<Class<?>> list) {
        return cls.getName().replace(".", "/") + "_" + Integer.toHexString(list.hashCode()) + "_Proxy";
    }

    private static TypeId<?>[] classArrayToTypeArray(Class<?>[] clsArr) {
        TypeId<?>[] typeIdArr = new TypeId[clsArr.length];
        for (int i = 0; i < clsArr.length; i++) {
            typeIdArr[i] = TypeId.get(clsArr[i]);
        }
        return typeIdArr;
    }

    private static void generateCodeForReturnStatement(Code code, Class cls, Local local, Local local2, Local local3) {
        if (PRIMITIVE_TO_UNBOX_METHOD.containsKey(cls)) {
            code.cast(local3, local);
            code.invokeVirtual(getUnboxMethodForPrimitive(cls), local2, local3, new Local[0]);
            code.returnValue(local2);
        } else if (Void.TYPE.equals(cls)) {
            code.returnVoid();
        } else {
            code.cast(local2, local);
            code.returnValue(local2);
        }
    }

    private static MethodId<?, ?> getUnboxMethodForPrimitive(Class<?> cls) {
        return PRIMITIVE_TO_UNBOX_METHOD.get(cls);
    }

    public static class MethodSetEntry {
        public final String name;
        public final Method originalMethod;
        public final Class<?>[] paramTypes;
        public final Class<?> returnType;

        public MethodSetEntry(Method method) {
            this.originalMethod = method;
            this.name = method.getName();
            this.paramTypes = method.getParameterTypes();
            this.returnType = method.getReturnType();
        }

        public boolean equals(Object obj) {
            if (obj instanceof MethodSetEntry) {
                MethodSetEntry methodSetEntry = (MethodSetEntry) obj;
                if (this.name.equals(methodSetEntry.name) && this.returnType.equals(methodSetEntry.returnType) && Arrays.equals(this.paramTypes, methodSetEntry.paramTypes)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            int iHashCode = this.name.hashCode() + 544;
            int iHashCode2 = iHashCode + (iHashCode * 31) + this.returnType.hashCode();
            return iHashCode2 + (iHashCode2 * 31) + Arrays.hashCode(this.paramTypes);
        }
    }

    private static class ProxiedClass<U> {
        final Class<U> clazz;
        final List<Class<?>> interfaces;
        final ClassLoader requestedClassloader;
        final boolean sharedClassLoader;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                ProxiedClass proxiedClass = (ProxiedClass) obj;
                if (this.clazz == proxiedClass.clazz && this.interfaces.equals(proxiedClass.interfaces) && this.requestedClassloader == proxiedClass.requestedClassloader && this.sharedClassLoader == proxiedClass.sharedClassLoader) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return this.clazz.hashCode() + this.interfaces.hashCode() + this.requestedClassloader.hashCode() + (this.sharedClassLoader ? 1 : 0);
        }

        private ProxiedClass(Class<U> cls, List<Class<?>> list, ClassLoader classLoader, boolean z) {
            this.clazz = cls;
            this.interfaces = new ArrayList(list);
            this.requestedClassloader = classLoader;
            this.sharedClassLoader = z;
        }
    }
}
