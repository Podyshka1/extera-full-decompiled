package com.exteragram.messenger.plugins.utils;

import com.android.p003dx.Code;
import com.android.p003dx.Comparison;
import com.android.p003dx.DexMaker;
import com.android.p003dx.FieldId;
import com.android.p003dx.Label;
import com.android.p003dx.Local;
import com.android.p003dx.MethodId;
import com.android.p003dx.TypeId;
import com.exteragram.messenger.plugins.hooks.HookFilter$$ExternalSyntheticLambda0;
import dalvik.system.InMemoryDexClassLoader;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.mvel2.MVEL;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.Utilities;
import p022j$.util.concurrent.ConcurrentHashMap;
import p022j$.util.concurrent.ConcurrentMap$EL;

/* JADX INFO: loaded from: classes4.dex */
public class ClassProxy {
    private static volatile ClassLoader sharedGeneratedClassLoader;
    private static final String PYTHON_PEER_FIELD_NAME = Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986168144522736859L);
    private static final ConcurrentHashMap<String, Serializable> mvelExpressionCache = new ConcurrentHashMap<>();
    private static final Object generatedClassLoaderLock = new Object();

    public interface DexMakerHook {
        void apply(DexMaker dexMaker, TypeId<?> typeId, TypeId<?> typeId2, List<TypeId<?>> list);
    }

    public class TypeHelper {
        public static Object box(Object obj) {
            return obj;
        }

        public TypeHelper() {
        }

        public static Object box(int i) {
            return Integer.valueOf(i);
        }

        public static Object box(boolean z) {
            return Boolean.valueOf(z);
        }

        public static Object box(long j) {
            return Long.valueOf(j);
        }

        public static Object box(double d) {
            return Double.valueOf(d);
        }

        public static Object box(float f) {
            return Float.valueOf(f);
        }

        public static Object box(short s) {
            return Short.valueOf(s);
        }

        public static Object box(byte b) {
            return Byte.valueOf(b);
        }

        public static Object box(char c) {
            return Character.valueOf(c);
        }

        public static int unboxInt(Object obj) {
            if (obj instanceof Number) {
                return ((Number) obj).intValue();
            }
            return 0;
        }

        public static boolean unboxBool(Object obj) {
            if (obj instanceof Boolean) {
                return ((Boolean) obj).booleanValue();
            }
            return false;
        }

        public static long unboxLong(Object obj) {
            if (obj instanceof Number) {
                return ((Number) obj).longValue();
            }
            return 0L;
        }

        public static double unboxDouble(Object obj) {
            if (obj instanceof Number) {
                return ((Number) obj).doubleValue();
            }
            return 0.0d;
        }

        public static float unboxFloat(Object obj) {
            if (obj instanceof Number) {
                return ((Number) obj).floatValue();
            }
            return 0.0f;
        }

        public static short unboxShort(Object obj) {
            if (obj instanceof Number) {
                return ((Number) obj).shortValue();
            }
            return (short) 0;
        }

        public static byte unboxByte(Object obj) {
            if (obj instanceof Number) {
                return ((Number) obj).byteValue();
            }
            return (byte) 0;
        }

        public static char unboxChar(Object obj) {
            if (obj instanceof Character) {
                return ((Character) obj).charValue();
            }
            return (char) 0;
        }
    }

    public static class ProxyMethodSpec {
        public final List<String> argumentNames;
        public final String implementation;
        public final int modifiers;
        public final String mvelCode;
        public final String name;
        public final boolean overrideExisting;
        public final Class<?>[] parameterTypes;
        public final Class<?> returnType;

        public ProxyMethodSpec(String str, Class<?> cls, Class<?>[] clsArr, int i, boolean z) {
            this(str, cls, clsArr, i, z, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986165348499027163L), null, null);
        }

        public ProxyMethodSpec(String str, Class<?> cls, Class<?>[] clsArr, int i, boolean z, String str2, String str3, List<String> list) {
            this.name = str;
            this.returnType = cls;
            this.parameterTypes = clsArr;
            this.modifiers = i;
            this.overrideExisting = z;
            this.implementation = str2;
            this.mvelCode = str3;
            this.argumentNames = list;
        }

        public boolean isMvel() {
            return Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986165378563798235L).equals(this.implementation) && this.mvelCode != null;
        }
    }

    public static class FieldSpec {
        public final List<FieldMethodSpec> methods;
        public final int modifiers;
        public final String name;
        public final Class<?> type;

        public FieldSpec(String str, Class<?> cls, int i) {
            this(str, cls, i, null);
        }

        public FieldSpec(String str, Class<?> cls, int i, List<FieldMethodSpec> list) {
            this.name = str;
            this.type = cls;
            this.modifiers = i;
            this.methods = list;
        }
    }

    public static class FieldMethodSpec {
        public final boolean getter;
        public final int modifiers;
        public final String name;

        public FieldMethodSpec(String str, int i, boolean z) {
            this.name = str;
            this.modifiers = i;
            this.getter = z;
        }
    }

    public static Class<?> createProxyClass(Class<?> cls, Utilities.Callback3Return<Object, String, Object[], Object> callback3Return, List<Method> list, List<Constructor<?>> list2) {
        return createProxyClassInternal(cls, callback3Return, null, null, list, list2, null, null, true);
    }

    public static Class<?> createProxyClass(Class<?> cls, Utilities.Callback3Return<Object, String, Object[], Object> callback3Return, List<Method> list, List<Constructor<?>> list2, List<ProxyMethodSpec> list3, List<FieldSpec> list4) {
        return createProxyClassInternal(cls, callback3Return, null, null, list, list2, list3, list4, false);
    }

    public static Class<?> createProxyClass(Class<?> cls, Utilities.Callback3Return<Object, String, Object[], Object> callback3Return, DexMakerHook dexMakerHook, List<Class<?>> list, List<Method> list2, List<Constructor<?>> list3, List<ProxyMethodSpec> list4, List<FieldSpec> list5) {
        return createProxyClassInternal(cls, callback3Return, dexMakerHook, list, list2, list3, list4, list5, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v14, types: [com.android.dx.DexMaker] */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v17, types: [com.android.dx.DexMaker] */
    /* JADX WARN: Type inference failed for: r1v6, types: [com.android.dx.DexMaker] */
    /* JADX WARN: Type inference failed for: r20v0, types: [com.exteragram.messenger.plugins.utils.ClassProxy$DexMakerHook] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.android.dx.DexMaker] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.dx.DexMaker] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r6v14 */
    private static Class<?> createProxyClassInternal(Class<?> cls, Utilities.Callback3Return<Object, String, Object[], Object> callback3Return, DexMakerHook dexMakerHook, List<Class<?>> list, List<Method> list2, List<Constructor<?>> list3, List<ProxyMethodSpec> list4, List<FieldSpec> list5, boolean z) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException {
        Class<?> clsLoadClass;
        Class<?> cls2;
        Class<?>[] clsArr;
        int i;
        FieldId fieldId;
        ?? r1;
        TypeId typeId;
        LinkedHashMap linkedHashMap;
        String str;
        Iterator<ProxyMethodSpec> it;
        Class<?> cls3;
        ?? dexMaker = new DexMaker();
        String simpleName = cls.getSimpleName();
        if (simpleName.isEmpty()) {
            simpleName = Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986166542499935451L);
        }
        String str2 = Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986166585449608411L) + simpleName + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986166757248300251L) + Math.abs(cls.getName().hashCode()) + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986166765838234843L) + Math.abs(new Random().nextInt());
        TypeId typeId2 = TypeId.get(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986166774428169435L) + str2.replace('.', '/') + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986166783018104027L));
        TypeId typeId3 = TypeId.get(cls);
        FieldId field = typeId2.getField(TypeId.get(Utilities.Callback3Return.class), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986166791608038619L));
        TypeId<?>[] interfaceTypeIds = toInterfaceTypeIds(list);
        ArrayList arrayList = new ArrayList();
        for (TypeId<?> typeId4 : interfaceTypeIds) {
            arrayList.add(typeId4);
        }
        dexMaker.declare(typeId2, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986166851737580763L), 1, typeId3, interfaceTypeIds);
        dexMaker.declare(field, 9, null);
        if (list5 != null) {
            for (FieldSpec fieldSpec : list5) {
                if (fieldSpec != null && fieldSpec.name != null && (cls3 = fieldSpec.type) != null) {
                    dexMaker.declare(typeId2.getField(TypeId.get(cls3), fieldSpec.name), fieldSpec.modifiers, Modifier.isStatic(fieldSpec.modifiers) ? defaultValueForType(fieldSpec.type) : null);
                    List<FieldMethodSpec> list6 = fieldSpec.methods;
                    if (list6 != null) {
                        for (FieldMethodSpec fieldMethodSpec : list6) {
                            if (fieldMethodSpec != null && fieldMethodSpec.name != null) {
                                generateFieldAccessorMethod(dexMaker, typeId2, fieldSpec, fieldMethodSpec);
                            }
                        }
                    }
                }
            }
        }
        for (Constructor<?> constructor : list3 != null ? (Constructor[]) list3.toArray(new Constructor[0]) : cls.getDeclaredConstructors()) {
            if (!Modifier.isPrivate(constructor.getModifiers())) {
                generateConstructor(dexMaker, typeId2, typeId3, constructor, field);
            }
        }
        Map<String, Method> allOverridableMethods = getAllOverridableMethods(cls, list);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        if (z && list2 == null && (list4 == null || list4.isEmpty())) {
            linkedHashMap2.putAll(allOverridableMethods);
        }
        if (list2 != null) {
            for (Method method : list2) {
                if (method != null) {
                    linkedHashMap2.put(buildMethodSignature(method.getName(), method.getParameterTypes()), method);
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        if (list4 != null) {
            Iterator<ProxyMethodSpec> it2 = list4.iterator();
            while (it2.hasNext()) {
                ProxyMethodSpec next = it2.next();
                if (next != null && (str = next.name) != null) {
                    if (next.overrideExisting) {
                        Class<?>[] clsArr2 = next.parameterTypes;
                        if (clsArr2 == null) {
                            for (Method method2 : allOverridableMethods.values()) {
                                Iterator<ProxyMethodSpec> it3 = it2;
                                if (next.name.equals(method2.getName())) {
                                    String strBuildMethodSignature = buildMethodSignature(method2.getName(), method2.getParameterTypes());
                                    linkedHashMap2.put(strBuildMethodSignature, method2);
                                    if (next.isMvel()) {
                                        linkedHashMap3.put(strBuildMethodSignature, next);
                                    }
                                }
                                it2 = it3;
                            }
                            it = it2;
                        } else {
                            it = it2;
                            Method method3 = allOverridableMethods.get(buildMethodSignature(str, clsArr2));
                            if (method3 == null) {
                                throw new NoSuchMethodException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986166971996665051L) + next.name);
                            }
                            String strBuildMethodSignature2 = buildMethodSignature(method3.getName(), method3.getParameterTypes());
                            linkedHashMap2.put(strBuildMethodSignature2, method3);
                            if (next.isMvel()) {
                                linkedHashMap3.put(strBuildMethodSignature2, next);
                            }
                        }
                    } else {
                        it = it2;
                        arrayList2.add(next);
                    }
                    it2 = it;
                }
            }
        }
        ?? r2 = dexMaker;
        for (Map.Entry entry : linkedHashMap2.entrySet()) {
            Method method4 = (Method) entry.getValue();
            generateProxyMethod(r2, typeId2, method4, field, true);
            ProxyMethodSpec proxyMethodSpec = (ProxyMethodSpec) linkedHashMap3.get(entry.getKey());
            if (proxyMethodSpec != null && proxyMethodSpec.isMvel()) {
                ?? r6 = r2;
                typeId = typeId2;
                String name = method4.getName();
                Class<?> returnType = method4.getReturnType();
                LinkedHashMap linkedHashMap4 = linkedHashMap3;
                Class<?>[] parameterTypes = method4.getParameterTypes();
                String str3 = proxyMethodSpec.mvelCode;
                List<String> list7 = proxyMethodSpec.argumentNames;
                r1 = r6;
                linkedHashMap = linkedHashMap4;
                generateMvelMethod(r1, typeId, name, returnType, parameterTypes, 1, str3, list7);
            } else {
                r1 = r2;
                typeId = typeId2;
                linkedHashMap = linkedHashMap3;
                generateProxyMethod(r1, typeId, method4, field, false);
            }
            typeId2 = typeId;
            linkedHashMap3 = linkedHashMap;
            r2 = r1;
        }
        ?? r12 = r2;
        TypeId typeId5 = typeId2;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            int i3 = i2 + 1;
            ProxyMethodSpec proxyMethodSpec2 = (ProxyMethodSpec) arrayList2.get(i2);
            if (proxyMethodSpec2.isMvel()) {
                String str4 = proxyMethodSpec2.name;
                Class<?> cls4 = proxyMethodSpec2.returnType;
                if (cls4 == null) {
                    cls4 = Void.TYPE;
                }
                Class<?>[] clsArr3 = proxyMethodSpec2.parameterTypes;
                if (clsArr3 == null) {
                    clsArr3 = new Class[0];
                }
                int i4 = proxyMethodSpec2.modifiers;
                if (i4 == 0) {
                    i4 = 1;
                }
                generateMvelMethod(r12, typeId5, str4, cls4, clsArr3, i4, proxyMethodSpec2.mvelCode, proxyMethodSpec2.argumentNames);
                fieldId = field;
            } else {
                String str5 = proxyMethodSpec2.name;
                Class<?> cls5 = proxyMethodSpec2.returnType;
                if (cls5 == null) {
                    cls5 = Void.TYPE;
                }
                Class<?>[] clsArr4 = proxyMethodSpec2.parameterTypes;
                if (clsArr4 == null) {
                    clsArr4 = new Class[0];
                }
                int i5 = proxyMethodSpec2.modifiers;
                if (i5 != 0) {
                    Class<?>[] clsArr5 = clsArr4;
                    i = i5;
                    cls2 = cls5;
                    clsArr = clsArr5;
                } else {
                    cls2 = cls5;
                    clsArr = clsArr4;
                    i = 1;
                }
                fieldId = field;
                generateHandlerMethod(r12, typeId5, str5, cls2, clsArr, i, fieldId);
            }
            field = fieldId;
            i2 = i3;
        }
        if (dexMakerHook != 0) {
            dexMakerHook.apply(r12, typeId5, typeId3, arrayList);
        }
        byte[] bArrGenerate = r12.generate();
        synchronized (generatedClassLoaderLock) {
            try {
                ClassLoader classLoader = sharedGeneratedClassLoader;
                if (classLoader == null) {
                    classLoader = ApplicationLoader.applicationContext.getClassLoader();
                }
                ClassProxy$$ExternalSyntheticApiModelOutline1.m264m();
                InMemoryDexClassLoader inMemoryDexClassLoaderM263m = ClassProxy$$ExternalSyntheticApiModelOutline0.m263m(ByteBuffer.wrap(bArrGenerate), classLoader);
                clsLoadClass = inMemoryDexClassLoaderM263m.loadClass(str2);
                sharedGeneratedClassLoader = inMemoryDexClassLoaderM263m;
            } catch (Throwable th) {
                throw th;
            }
        }
        Field declaredField = clsLoadClass.getDeclaredField(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167135205422299L));
        declaredField.setAccessible(true);
        declaredField.set(null, callback3Return);
        return clsLoadClass;
    }

    private static TypeId<?>[] toInterfaceTypeIds(List<Class<?>> list) {
        if (list == null || list.isEmpty()) {
            return new TypeId[0];
        }
        ArrayList arrayList = new ArrayList();
        for (Class<?> cls : list) {
            if (cls != null) {
                if (!cls.isInterface()) {
                    throw new IllegalArgumentException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167195334964443L) + cls.getName());
                }
                arrayList.add(TypeId.get(cls));
            }
        }
        return (TypeId[]) arrayList.toArray(new TypeId[0]);
    }

    private static Map<String, Method> getAllOverridableMethods(Class<?> cls, List<Class<?>> list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        collectOverridableMethods(cls, linkedHashMap);
        if (list != null) {
            Iterator<Class<?>> it = list.iterator();
            while (it.hasNext()) {
                collectOverridableMethods(it.next(), linkedHashMap);
            }
        }
        return linkedHashMap;
    }

    private static void collectOverridableMethods(Class<?> cls, Map<String, Method> map) {
        if (cls == null || cls == Object.class) {
            return;
        }
        for (Method method : cls.getDeclaredMethods()) {
            int modifiers = method.getModifiers();
            if (!Modifier.isStatic(modifiers) && !Modifier.isFinal(modifiers) && (Modifier.isPublic(modifiers) || Modifier.isProtected(modifiers))) {
                String strBuildMethodSignature = buildMethodSignature(method.getName(), method.getParameterTypes());
                if (!map.containsKey(strBuildMethodSignature)) {
                    map.put(strBuildMethodSignature, method);
                }
            }
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            collectOverridableMethods(cls2, map);
        }
        collectOverridableMethods(cls.getSuperclass(), map);
    }

    private static String buildMethodSignature(String str, Class<?>[] clsArr) {
        StringBuilder sb = new StringBuilder(str);
        if (clsArr != null) {
            for (Class<?> cls : clsArr) {
                sb.append(':');
                sb.append(cls.getName());
            }
        }
        return sb.toString();
    }

    private static Object defaultValueForType(Class<?> cls) {
        if (!cls.isPrimitive()) {
            return null;
        }
        if (cls == Boolean.TYPE) {
            return Boolean.FALSE;
        }
        if (cls == Long.TYPE) {
            return 0L;
        }
        if (cls == Double.TYPE) {
            return Double.valueOf(0.0d);
        }
        if (cls == Float.TYPE) {
            return Float.valueOf(0.0f);
        }
        if (cls == Short.TYPE) {
            return (short) 0;
        }
        if (cls == Byte.TYPE) {
            return (byte) 0;
        }
        return cls == Character.TYPE ? (char) 0 : 0;
    }

    private static void generateConstructor(DexMaker dexMaker, TypeId<?> typeId, TypeId<?> typeId2, Constructor<?> constructor, FieldId fieldId) {
        Class<?>[] clsArr;
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        TypeId<?>[] typeIdArr = new TypeId[parameterTypes.length];
        for (int i = 0; i < parameterTypes.length; i++) {
            typeIdArr[i] = TypeId.get(parameterTypes[i]);
        }
        Code codeDeclare = dexMaker.declare(typeId.getConstructor(typeIdArr), 1);
        TypeId typeId3 = TypeId.get(Utilities.Callback3Return.class);
        TypeId<?> typeId4 = TypeId.OBJECT;
        MethodId method = typeId3.getMethod(typeId4, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167302709146843L), typeId4, typeId4, typeId4);
        Local<?> local = codeDeclare.getThis(typeId);
        Local localNewLocal = codeDeclare.newLocal(typeId3);
        Local<?> localNewLocal2 = codeDeclare.newLocal(TypeId.STRING);
        Local<?> localNewLocal3 = codeDeclare.newLocal(TypeId.get(Object[].class));
        Local<?> localNewLocal4 = codeDeclare.newLocal(typeId4);
        Local<?> localNewLocal5 = codeDeclare.newLocal(typeId4);
        Local<?> localNewLocal6 = codeDeclare.newLocal(TypeId.get(Object[].class));
        TypeId<Integer> typeId5 = TypeId.INT;
        Local<Integer> localNewLocal7 = codeDeclare.newLocal(typeId5);
        Local<Integer> localNewLocal8 = codeDeclare.newLocal(typeId5);
        Local<?>[] localArr = new Local[parameterTypes.length];
        Local<?> localNewLocal9 = codeDeclare.newLocal(typeId4);
        for (int i2 = 0; i2 < parameterTypes.length; i2++) {
            localArr[i2] = codeDeclare.newLocal(TypeId.OBJECT);
        }
        Local<Integer> localNewLocal10 = codeDeclare.newLocal(TypeId.INT);
        Local<?>[] localArr2 = new Local[parameterTypes.length];
        for (int i3 = 0; i3 < parameterTypes.length; i3++) {
            localArr2[i3] = codeDeclare.newLocal(typeIdArr[i3]);
        }
        codeDeclare.loadConstant(localNewLocal10, 0);
        codeDeclare.newArray(localNewLocal3, localNewLocal10);
        codeDeclare.move(localNewLocal6, localNewLocal3);
        codeDeclare.sget(fieldId, localNewLocal);
        codeDeclare.loadConstant(localNewLocal2, buildMethodSignature(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167319889016027L), parameterTypes));
        codeDeclare.loadConstant(localNewLocal4, null);
        codeDeclare.loadConstant(localNewLocal8, 0);
        codeDeclare.loadConstant(localNewLocal9, null);
        for (int i4 = 0; i4 < parameterTypes.length; i4++) {
            codeDeclare.move(localArr2[i4], codeDeclare.getParameter(i4, typeIdArr[i4]));
        }
        codeDeclare.loadConstant(localNewLocal7, Integer.valueOf(parameterTypes.length));
        codeDeclare.newArray(localNewLocal3, localNewLocal7);
        int i5 = 0;
        while (i5 < parameterTypes.length) {
            TypeId typeId6 = TypeId.get(TypeHelper.class);
            TypeId<?> typeId7 = TypeId.OBJECT;
            int i6 = i5;
            codeDeclare.invokeStatic(typeId6.getMethod(typeId7, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167380018558171L), parameterTypes[i5].isPrimitive() ? typeIdArr[i5] : typeId7), localArr[i6], localArr2[i6]);
            codeDeclare.loadConstant(localNewLocal8, Integer.valueOf(i6));
            codeDeclare.aput(localNewLocal3, localNewLocal8, localArr[i6]);
            i5 = i6 + 1;
        }
        codeDeclare.invokeInterface(method, localNewLocal5, localNewLocal, localNewLocal4, localNewLocal2, localNewLocal3);
        Label label = new Label();
        codeDeclare.compare(Comparison.EQ, label, localNewLocal5, localNewLocal4);
        codeDeclare.cast(localNewLocal6, localNewLocal5);
        int i7 = 0;
        while (i7 < parameterTypes.length) {
            codeDeclare.loadConstant(localNewLocal8, Integer.valueOf(i7));
            codeDeclare.aget(localNewLocal9, localNewLocal6, localNewLocal8);
            if (parameterTypes[i7].isPrimitive()) {
                clsArr = parameterTypes;
                codeDeclare.invokeStatic(TypeId.get(TypeHelper.class).getMethod(typeIdArr[i7], Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167397198427355L) + capitalize(parameterTypes[i7].getName()), TypeId.OBJECT), localArr2[i7], localNewLocal9);
            } else {
                clsArr = parameterTypes;
                codeDeclare.cast(localArr2[i7], localNewLocal9);
            }
            i7++;
            parameterTypes = clsArr;
        }
        codeDeclare.mark(label);
        codeDeclare.invokeDirect(typeId2.getConstructor(typeIdArr), null, local, localArr2);
        codeDeclare.invokeInterface(method, null, localNewLocal, local, localNewLocal2, localNewLocal3);
        codeDeclare.returnVoid();
    }

    private static void generateProxyMethod(DexMaker dexMaker, TypeId<?> typeId, Method method, FieldId fieldId, boolean z) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        TypeId<?>[] typeIdArr = new TypeId[parameterTypes.length];
        for (int i = 0; i < parameterTypes.length; i++) {
            typeIdArr[i] = TypeId.get(parameterTypes[i]);
        }
        TypeId<R> typeId2 = TypeId.get(method.getReturnType());
        String name = z ? Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167422968231131L) + method.getName() : method.getName();
        if (z) {
            Code codeDeclare = dexMaker.declare(typeId.getMethod(typeId2, name, typeIdArr), 1);
            Local local = codeDeclare.getThis(typeId);
            Local<?> localNewLocal = typeId2.equals(TypeId.VOID) ? null : codeDeclare.newLocal(typeId2);
            Local<?>[] localArr = new Local[parameterTypes.length];
            for (int i2 = 0; i2 < parameterTypes.length; i2++) {
                localArr[i2] = codeDeclare.getParameter(i2, typeIdArr[i2]);
            }
            codeDeclare.invokeSuper(TypeId.get(method.getDeclaringClass()).getMethod(typeId2, method.getName(), typeIdArr), localNewLocal, local, localArr);
            if (typeId2.equals(TypeId.VOID)) {
                codeDeclare.returnVoid();
                return;
            } else {
                codeDeclare.returnValue(localNewLocal);
                return;
            }
        }
        generateHandlerMethod(dexMaker, typeId, name, method.getReturnType(), parameterTypes, 1, fieldId);
    }

    private static void generateHandlerMethod(DexMaker dexMaker, TypeId<?> typeId, String str, Class<?> cls, Class<?>[] clsArr, int i, FieldId fieldId) {
        Class<?>[] clsArr2 = clsArr;
        TypeId<?>[] typeIdArr = new TypeId[clsArr2.length];
        for (int i2 = 0; i2 < clsArr2.length; i2++) {
            typeIdArr[i2] = TypeId.get(clsArr2[i2]);
        }
        TypeId typeId2 = TypeId.get(Utilities.Callback3Return.class);
        TypeId<?> typeId3 = TypeId.OBJECT;
        MethodId method = typeId2.getMethod(typeId3, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167453033002203L), typeId3, typeId3, typeId3);
        TypeId<R> typeId4 = TypeId.get(cls);
        Code codeDeclare = dexMaker.declare(typeId.getMethod(typeId4, str, typeIdArr), i);
        Local<?> local = codeDeclare.getThis(typeId);
        Local<?> localNewLocal = !typeId4.equals(TypeId.VOID) ? codeDeclare.newLocal(typeId4) : null;
        Local localNewLocal2 = codeDeclare.newLocal(TypeId.get(Utilities.Callback3Return.class));
        Local<?> localNewLocal3 = codeDeclare.newLocal(TypeId.STRING);
        Local<?> localNewLocal4 = codeDeclare.newLocal(TypeId.get(Object[].class));
        TypeId<Integer> typeId5 = TypeId.INT;
        Local<Integer> localNewLocal5 = codeDeclare.newLocal(typeId5);
        Local<?> localNewLocal6 = codeDeclare.newLocal(typeId3);
        Local<Integer> localNewLocal7 = codeDeclare.newLocal(typeId5);
        Local<?>[] localArr = new Local[clsArr2.length];
        for (int i3 = 0; i3 < clsArr2.length; i3++) {
            localArr[i3] = codeDeclare.newLocal(TypeId.OBJECT);
        }
        codeDeclare.sget(fieldId, localNewLocal2);
        codeDeclare.loadConstant(localNewLocal3, buildMethodSignature(str, clsArr2));
        codeDeclare.loadConstant(localNewLocal5, Integer.valueOf(clsArr2.length));
        codeDeclare.newArray(localNewLocal4, localNewLocal5);
        int i4 = 0;
        while (i4 < clsArr2.length) {
            Local<?> parameter = codeDeclare.getParameter(i4, typeIdArr[i4]);
            TypeId typeId6 = TypeId.get(TypeHelper.class);
            TypeId<?> typeId7 = TypeId.OBJECT;
            int i5 = i4;
            codeDeclare.invokeStatic(typeId6.getMethod(typeId7, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167470212871387L), clsArr2[i5].isPrimitive() ? typeIdArr[i5] : typeId7), localArr[i5], parameter);
            codeDeclare.loadConstant(localNewLocal7, Integer.valueOf(i5));
            codeDeclare.aput(localNewLocal4, localNewLocal7, localArr[i5]);
            i4 = i5 + 1;
            clsArr2 = clsArr;
        }
        codeDeclare.invokeInterface(method, localNewLocal6, localNewLocal2, local, localNewLocal3, localNewLocal4);
        if (typeId4.equals(TypeId.VOID)) {
            codeDeclare.returnVoid();
            return;
        }
        if (cls.isPrimitive()) {
            codeDeclare.invokeStatic(TypeId.get(TypeHelper.class).getMethod(typeId4, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167487392740571L) + capitalize(cls.getName()), TypeId.OBJECT), localNewLocal, localNewLocal6);
        } else {
            codeDeclare.cast(localNewLocal, localNewLocal6);
        }
        codeDeclare.returnValue(localNewLocal);
    }

    private static void generateMvelMethod(DexMaker dexMaker, TypeId<?> typeId, String str, Class<?> cls, Class<?>[] clsArr, int i, String str2, List<String> list) {
        Local<?> local;
        Class<?>[] clsArr2 = clsArr;
        TypeId<?>[] typeIdArr = new TypeId[clsArr2.length];
        for (int i2 = 0; i2 < clsArr2.length; i2++) {
            typeIdArr[i2] = TypeId.get(clsArr2[i2]);
        }
        TypeId<R> typeId2 = TypeId.get(cls);
        Code codeDeclare = dexMaker.declare(typeId.getMethod(typeId2, str, typeIdArr), i);
        Local<?> local2 = Modifier.isStatic(i) ? null : codeDeclare.getThis(typeId);
        TypeId<Object> typeId3 = TypeId.OBJECT;
        Local<?> localNewLocal = codeDeclare.newLocal(typeId3);
        Local<?> localNewLocal2 = codeDeclare.newLocal(typeId3);
        Local<?> localNewLocal3 = codeDeclare.newLocal(typeId3);
        TypeId<String> typeId4 = TypeId.STRING;
        Local<?> localNewLocal4 = codeDeclare.newLocal(typeId4);
        Local<?> localNewLocal5 = codeDeclare.newLocal(TypeId.get(Object[].class));
        Local<?> localNewLocal6 = codeDeclare.newLocal(TypeId.get(String[].class));
        TypeId<Integer> typeId5 = TypeId.INT;
        Local<Integer> localNewLocal7 = codeDeclare.newLocal(typeId5);
        Local<Integer> localNewLocal8 = codeDeclare.newLocal(typeId5);
        Local localNewLocal9 = codeDeclare.newLocal(typeId3);
        Local localNewLocal10 = codeDeclare.newLocal(TypeId.get(String[].class));
        Local<?> localNewLocal11 = codeDeclare.newLocal(typeId4);
        Local<?> localNewLocal12 = typeId2.equals(TypeId.VOID) ? null : codeDeclare.newLocal(typeId2);
        Local<?>[] localArr = new Local[clsArr2.length];
        for (int i3 = 0; i3 < clsArr2.length; i3++) {
            localArr[i3] = codeDeclare.newLocal(TypeId.OBJECT);
        }
        codeDeclare.loadConstant(localNewLocal9, null);
        codeDeclare.move(localNewLocal, localNewLocal9);
        codeDeclare.move(localNewLocal2, localNewLocal9);
        if (!Modifier.isStatic(i)) {
            Object field = typeId.getField(TypeId.OBJECT, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167513162544347L));
            codeDeclare.cast(localNewLocal, local2);
            codeDeclare.iget(field, localNewLocal2, local2);
        }
        codeDeclare.loadConstant(localNewLocal4, str2);
        codeDeclare.loadConstant(localNewLocal7, Integer.valueOf(clsArr2.length));
        codeDeclare.newArray(localNewLocal5, localNewLocal7);
        int i4 = 0;
        while (i4 < clsArr2.length) {
            Local<?> parameter = codeDeclare.getParameter(i4, typeIdArr[i4]);
            TypeId typeId6 = TypeId.get(TypeHelper.class);
            TypeId<?> typeId7 = TypeId.OBJECT;
            int i5 = i4;
            codeDeclare.invokeStatic(typeId6.getMethod(typeId7, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167650601497819L), clsArr2[i4].isPrimitive() ? typeIdArr[i4] : typeId7), localArr[i5], parameter);
            codeDeclare.loadConstant(localNewLocal8, Integer.valueOf(i5));
            codeDeclare.aput(localNewLocal5, localNewLocal8, localArr[i5]);
            i4 = i5 + 1;
            clsArr2 = clsArr;
        }
        if (list != null && !list.isEmpty()) {
            codeDeclare.loadConstant(localNewLocal7, Integer.valueOf(list.size()));
            codeDeclare.newArray(localNewLocal6, localNewLocal7);
            for (int i6 = 0; i6 < list.size(); i6++) {
                codeDeclare.loadConstant(localNewLocal11, list.get(i6));
                codeDeclare.loadConstant(localNewLocal8, Integer.valueOf(i6));
                codeDeclare.aput(localNewLocal6, localNewLocal8, localNewLocal11);
            }
        } else {
            codeDeclare.loadConstant(localNewLocal10, null);
            codeDeclare.move(localNewLocal6, localNewLocal10);
        }
        TypeId typeId8 = TypeId.get(ClassProxy.class);
        TypeId<?> typeId9 = TypeId.OBJECT;
        codeDeclare.invokeStatic(typeId8.getMethod(typeId9, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167667781367003L), typeId9, typeId9, TypeId.STRING, TypeId.get(String[].class), TypeId.get(Object[].class)), localNewLocal3, localNewLocal, localNewLocal2, localNewLocal4, localNewLocal6, localNewLocal5);
        if (typeId2.equals(TypeId.VOID)) {
            codeDeclare.returnVoid();
            return;
        }
        if (cls.isPrimitive()) {
            MethodId method = TypeId.get(TypeHelper.class).getMethod(typeId2, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167745090778331L) + capitalize(cls.getName()), typeId9);
            Local<?>[] localArr2 = {localNewLocal3};
            local = localNewLocal12;
            codeDeclare.invokeStatic(method, local, localArr2);
        } else {
            local = localNewLocal12;
            codeDeclare.cast(local, localNewLocal3);
        }
        codeDeclare.returnValue(local);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void generateFieldAccessorMethod(DexMaker dexMaker, TypeId<?> typeId, FieldSpec fieldSpec, FieldMethodSpec fieldMethodSpec) {
        TypeId typeId2 = TypeId.get(fieldSpec.type);
        FieldId field = typeId.getField(typeId2, fieldSpec.name);
        boolean zIsStatic = Modifier.isStatic(fieldSpec.modifiers);
        int i = fieldMethodSpec.modifiers;
        if (i == 0) {
            i = 1;
        }
        if (fieldMethodSpec.getter) {
            Code codeDeclare = dexMaker.declare(typeId.getMethod(typeId2, fieldMethodSpec.name, new TypeId[0]), i);
            Local<?> localNewLocal = codeDeclare.newLocal(typeId2);
            if (zIsStatic) {
                codeDeclare.sget(field, localNewLocal);
            } else {
                codeDeclare.iget(field, localNewLocal, codeDeclare.getThis(typeId));
            }
            codeDeclare.returnValue(localNewLocal);
            return;
        }
        Code codeDeclare2 = dexMaker.declare(typeId.getMethod(TypeId.VOID, fieldMethodSpec.name, typeId2), i);
        Local parameter = codeDeclare2.getParameter(0, typeId2);
        if (zIsStatic) {
            codeDeclare2.sput(field, parameter);
        } else {
            codeDeclare2.iput(field, codeDeclare2.getThis(typeId), parameter);
        }
        codeDeclare2.returnVoid();
    }

    public static Object executeMvelMethod(Object obj, Object obj2, String str, String[] strArr, Object[] objArr) {
        String str2;
        HashMap map = new HashMap();
        if (objArr == null) {
            objArr = new Object[0];
        }
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167770860582107L), obj);
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167792335418587L), obj2);
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167822400189659L), obj2);
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167835285091547L), obj2);
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167856759928027L), objArr);
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167878234764507L), Integer.valueOf(objArr.length));
        for (int i = 0; i < objArr.length; i++) {
            Object obj3 = objArr[i];
            map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167899709600987L) + i, obj3);
            if (strArr != null && i < strArr.length && (str2 = strArr[i]) != null && !str2.isEmpty()) {
                map.put(str2, obj3);
            }
        }
        return MVEL.executeExpression((Serializable) ConcurrentMap$EL.computeIfAbsent(mvelExpressionCache, str, new HookFilter$$ExternalSyntheticLambda0()), obj, map);
    }

    private static String capitalize(String str) {
        if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167916889470171L))) {
            return Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167934069339355L);
        }
        if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167951249208539L))) {
            return Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986167985608946907L);
        }
        if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986168007083783387L))) {
            return Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986168032853587163L);
        }
        if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986168058623390939L))) {
            return Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986168080098227419L);
        }
        if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986168101573063899L))) {
            return Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986168123047900379L);
        }
        return str.substring(0, 1).toUpperCase() + str.substring(1);
    }
}
