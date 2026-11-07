package com.google.gson.internal;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.view.Recreator$$ExternalSyntheticBUOutline0;
import com.google.gson.JsonIOException;
import com.google.gson.ReflectionAccessFilter$FilterResult;
import com.google.gson.internal.reflect.ReflectionHelper;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListMap;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
public final class ConstructorConstructor {
    private final Map<Type, Object> instanceCreators;
    private final List<Object> reflectionFilters;
    private final boolean useJdkUnsafe;

    public ConstructorConstructor(Map<Type, Object> map, boolean z, List<Object> list) {
        this.instanceCreators = map;
        this.useJdkUnsafe = z;
        this.reflectionFilters = list;
    }

    public static String checkInstantiable(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            return "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ".concat(cls.getName());
        }
        if (!Modifier.isAbstract(modifiers)) {
            return null;
        }
        return "Abstract classes can't be instantiated! Adjust the R8 configuration or register an InstanceCreator or a TypeAdapter for this type. Class name: " + cls.getName() + "\nSee " + TroubleshootingGuide.createUrl("r8-abstract-class");
    }

    public <T> ObjectConstructor<T> get(TypeToken<T> typeToken, boolean z) {
        Type type = typeToken.getType();
        Class<? super T> rawType = typeToken.getRawType();
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(this.instanceCreators.get(type));
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(this.instanceCreators.get(rawType));
        ObjectConstructor<T> objectConstructorNewSpecialCollectionConstructor = newSpecialCollectionConstructor(type, rawType);
        if (objectConstructorNewSpecialCollectionConstructor != null) {
            return objectConstructorNewSpecialCollectionConstructor;
        }
        ReflectionAccessFilter$FilterResult filterResult = ReflectionAccessFilterHelper.getFilterResult(this.reflectionFilters, rawType);
        ObjectConstructor<T> objectConstructorNewDefaultConstructor = newDefaultConstructor(rawType, filterResult);
        if (objectConstructorNewDefaultConstructor != null) {
            return objectConstructorNewDefaultConstructor;
        }
        ObjectConstructor<T> objectConstructorNewDefaultImplementationConstructor = newDefaultImplementationConstructor(type, rawType);
        if (objectConstructorNewDefaultImplementationConstructor != null) {
            return objectConstructorNewDefaultImplementationConstructor;
        }
        String strCheckInstantiable = checkInstantiable(rawType);
        if (strCheckInstantiable != null) {
            return new ThrowingObjectConstructor(strCheckInstantiable);
        }
        if (!z) {
            return new ThrowingObjectConstructor("Unable to create instance of " + rawType + "; Register an InstanceCreator or a TypeAdapter for this type.");
        }
        if (filterResult != ReflectionAccessFilter$FilterResult.ALLOW) {
            return new ThrowingObjectConstructor("Unable to create instance of " + rawType + "; ReflectionAccessFilter does not permit using reflection or Unsafe. Register an InstanceCreator or a TypeAdapter for this type or adjust the access filter to allow using reflection.");
        }
        return newUnsafeAllocator(rawType);
    }

    private static <T> ObjectConstructor<T> newSpecialCollectionConstructor(final Type type, Class<? super T> cls) {
        if (EnumSet.class.isAssignableFrom(cls)) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda6
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return ConstructorConstructor.$r8$lambda$sWQG8nS8otwtpSrrbzem4XNrFzs(type);
                }
            };
        }
        if (cls == EnumMap.class) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda7
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return ConstructorConstructor.$r8$lambda$jTsTLBoJPmQabBAZSPOYP3s_TSs(type);
                }
            };
        }
        return null;
    }

    public static /* synthetic */ Object $r8$lambda$sWQG8nS8otwtpSrrbzem4XNrFzs(Type type) {
        if (type instanceof ParameterizedType) {
            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof Class) {
                return EnumSet.noneOf((Class) type2);
            }
            ConstructorConstructor$$ExternalSyntheticBUOutline0.m475m("Invalid EnumSet type: ", type);
            return null;
        }
        ConstructorConstructor$$ExternalSyntheticBUOutline0.m475m("Invalid EnumSet type: ", type);
        return null;
    }

    public static /* synthetic */ Object $r8$lambda$jTsTLBoJPmQabBAZSPOYP3s_TSs(Type type) {
        if (type instanceof ParameterizedType) {
            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof Class) {
                return new EnumMap((Class) type2);
            }
            ConstructorConstructor$$ExternalSyntheticBUOutline0.m475m("Invalid EnumMap type: ", type);
            return null;
        }
        ConstructorConstructor$$ExternalSyntheticBUOutline0.m475m("Invalid EnumMap type: ", type);
        return null;
    }

    private static <T> ObjectConstructor<T> newDefaultConstructor(Class<? super T> cls, ReflectionAccessFilter$FilterResult reflectionAccessFilter$FilterResult) {
        String strTryMakeAccessible;
        if (Modifier.isAbstract(cls.getModifiers())) {
            return null;
        }
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(null);
            ReflectionAccessFilter$FilterResult reflectionAccessFilter$FilterResult2 = ReflectionAccessFilter$FilterResult.ALLOW;
            if (reflectionAccessFilter$FilterResult == reflectionAccessFilter$FilterResult2 || (ReflectionAccessFilterHelper.canAccess(declaredConstructor, null) && (reflectionAccessFilter$FilterResult != ReflectionAccessFilter$FilterResult.BLOCK_ALL || Modifier.isPublic(declaredConstructor.getModifiers())))) {
                if (reflectionAccessFilter$FilterResult == reflectionAccessFilter$FilterResult2 && (strTryMakeAccessible = ReflectionHelper.tryMakeAccessible(declaredConstructor)) != null) {
                    return new ThrowingObjectConstructor(strTryMakeAccessible);
                }
                return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda13
                    @Override // com.google.gson.internal.ObjectConstructor
                    public final Object construct() {
                        return ConstructorConstructor.$r8$lambda$u8caRUOAahiBpbmiNgmseeMobTQ(declaredConstructor);
                    }
                };
            }
            return new ThrowingObjectConstructor("Unable to invoke no-args constructor of " + cls + "; constructor is not accessible and ReflectionAccessFilter does not permit making it accessible. Register an InstanceCreator or a TypeAdapter for this type, change the visibility of the constructor or adjust the access filter.");
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public static /* synthetic */ Object $r8$lambda$u8caRUOAahiBpbmiNgmseeMobTQ(Constructor constructor) {
        try {
            return constructor.newInstance(null);
        } catch (IllegalAccessException e) {
            throw ReflectionHelper.createExceptionForUnexpectedIllegalAccess(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.constructorToString(constructor) + "' with no args", e2);
        } catch (InvocationTargetException e3) {
            Make$Map$$ExternalSyntheticBUOutline0.m973m("Failed to invoke constructor '" + ReflectionHelper.constructorToString(constructor) + "' with no args", e3.getCause());
            return null;
        }
    }

    private static <T> ObjectConstructor<T> newDefaultImplementationConstructor(Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            return (ObjectConstructor<T>) newCollectionConstructor(cls);
        }
        if (Map.class.isAssignableFrom(cls)) {
            return (ObjectConstructor<T>) newMapConstructor(type, cls);
        }
        return null;
    }

    private static ObjectConstructor<? extends Collection<?>> newCollectionConstructor(Class<?> cls) {
        if (cls.isAssignableFrom(ArrayList.class)) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda1
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return new ArrayList();
                }
            };
        }
        if (cls.isAssignableFrom(LinkedHashSet.class)) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda2
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return new LinkedHashSet();
                }
            };
        }
        if (cls.isAssignableFrom(TreeSet.class)) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda3
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return new TreeSet();
                }
            };
        }
        if (cls.isAssignableFrom(ArrayDeque.class)) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda4
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return new ArrayDeque();
                }
            };
        }
        return null;
    }

    private static boolean hasStringKeyType(Type type) {
        if (!(type instanceof ParameterizedType)) {
            return true;
        }
        Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
        return actualTypeArguments.length != 0 && GsonTypes.getRawType(actualTypeArguments[0]) == String.class;
    }

    private static ObjectConstructor<? extends Map<?, Object>> newMapConstructor(Type type, Class<?> cls) {
        if (cls.isAssignableFrom(LinkedTreeMap.class) && hasStringKeyType(type)) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda8
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return ConstructorConstructor.m3058$r8$lambda$lG8pSQcV9Pwb85UOXKOKVdYJV8();
                }
            };
        }
        if (cls.isAssignableFrom(LinkedHashMap.class)) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda9
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return new LinkedHashMap();
                }
            };
        }
        if (cls.isAssignableFrom(TreeMap.class)) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda10
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return new TreeMap();
                }
            };
        }
        if (cls.isAssignableFrom(ConcurrentHashMap.class)) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda11
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return new ConcurrentHashMap();
                }
            };
        }
        if (cls.isAssignableFrom(ConcurrentSkipListMap.class)) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda12
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return new ConcurrentSkipListMap();
                }
            };
        }
        return null;
    }

    /* JADX INFO: renamed from: $r8$lambda$lG8pSQcV9Pwb85UOXKOKVdYJ-V8, reason: not valid java name */
    public static /* synthetic */ Map m3058$r8$lambda$lG8pSQcV9Pwb85UOXKOKVdYJV8() {
        return new LinkedTreeMap();
    }

    private <T> ObjectConstructor<T> newUnsafeAllocator(final Class<? super T> cls) {
        if (this.useJdkUnsafe) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda5
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return ConstructorConstructor.m3057$r8$lambda$0n_5b0E8lkRJ8hlZ5T79sZITQE(cls);
                }
            };
        }
        String strConcat = "Unable to create instance of " + cls + "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.";
        if (cls.getDeclaredConstructors().length == 0) {
            strConcat = strConcat.concat(" Or adjust your R8 configuration to keep the no-args constructor of the class.");
        }
        return new ThrowingObjectConstructor(strConcat);
    }

    /* JADX INFO: renamed from: $r8$lambda$0n_5b0E8lkRJ8hlZ5T79s-ZITQE, reason: not valid java name */
    public static /* synthetic */ Object m3057$r8$lambda$0n_5b0E8lkRJ8hlZ5T79sZITQE(Class cls) {
        try {
            return UnsafeAllocator.INSTANCE.newInstance(cls);
        } catch (Exception e) {
            Recreator$$ExternalSyntheticBUOutline0.m200m("Unable to create instance of ", cls, ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.", e);
            return null;
        }
    }

    public String toString() {
        return this.instanceCreators.toString();
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class ThrowingObjectConstructor<T> implements ObjectConstructor<T> {
        private final String exceptionMessage;

        public ThrowingObjectConstructor(String str) {
            this.exceptionMessage = str;
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            throw new JsonIOException(this.exceptionMessage);
        }
    }
}
