package com.google.gson.internal;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.view.Recreator$$ExternalSyntheticBUOutline0;
import com.google.android.recaptcha.internal.zzgf$$ExternalSyntheticBUOutline0;
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
        final String strCheckInstantiable = checkInstantiable(rawType);
        if (strCheckInstantiable != null) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda1
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return ConstructorConstructor.$r8$lambda$mS9QWEgt74nhELTiBGR1qWLfo_U(strCheckInstantiable);
                }
            };
        }
        if (!z) {
            final String str = "Unable to create instance of " + rawType + "; Register an InstanceCreator or a TypeAdapter for this type.";
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda2
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return ConstructorConstructor.m3265$r8$lambda$9R9Z0wyKZpuyVH3QjDCIVlD_60(str);
                }
            };
        }
        if (filterResult != ReflectionAccessFilter$FilterResult.ALLOW) {
            final String str2 = "Unable to create instance of " + rawType + "; ReflectionAccessFilter does not permit using reflection or Unsafe. Register an InstanceCreator or a TypeAdapter for this type or adjust the access filter to allow using reflection.";
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda3
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return ConstructorConstructor.m3274$r8$lambda$wOH1c45BceHOZ4h6nzslsJp46Q(str2);
                }
            };
        }
        return newUnsafeAllocator(rawType);
    }

    public static /* synthetic */ Object $r8$lambda$mS9QWEgt74nhELTiBGR1qWLfo_U(String str) {
        throw new JsonIOException(str);
    }

    /* JADX INFO: renamed from: $r8$lambda$9R-9Z0wyKZpuyVH3QjDCIVlD_60, reason: not valid java name */
    public static /* synthetic */ Object m3265$r8$lambda$9R9Z0wyKZpuyVH3QjDCIVlD_60(String str) {
        throw new JsonIOException(str);
    }

    /* JADX INFO: renamed from: $r8$lambda$wOH1c45BceHOZ4h6nzslsJ-p46Q, reason: not valid java name */
    public static /* synthetic */ Object m3274$r8$lambda$wOH1c45BceHOZ4h6nzslsJp46Q(String str) {
        throw new JsonIOException(str);
    }

    private static <T> ObjectConstructor<T> newSpecialCollectionConstructor(final Type type, Class<? super T> cls) {
        if (EnumSet.class.isAssignableFrom(cls)) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda10
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return ConstructorConstructor.m3272$r8$lambda$eDAbImyjL33S0bwRqMq_NHwgZQ(type);
                }
            };
        }
        if (cls == EnumMap.class) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda11
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return ConstructorConstructor.m3267$r8$lambda$GYNrukL5Q1_oQXHu0WSGJdAl_8(type);
                }
            };
        }
        return null;
    }

    /* JADX INFO: renamed from: $r8$lambda$eDA-bImyjL33S0bwRqMq_NHwgZQ, reason: not valid java name */
    public static /* synthetic */ Object m3272$r8$lambda$eDAbImyjL33S0bwRqMq_NHwgZQ(Type type) {
        if (type instanceof ParameterizedType) {
            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof Class) {
                return EnumSet.noneOf((Class) type2);
            }
            ConstructorConstructor$$ExternalSyntheticBUOutline0.m459m("Invalid EnumSet type: ", type);
            return null;
        }
        ConstructorConstructor$$ExternalSyntheticBUOutline0.m459m("Invalid EnumSet type: ", type);
        return null;
    }

    /* JADX INFO: renamed from: $r8$lambda$GYNrukL5Q1_-oQXHu0WSGJdAl_8, reason: not valid java name */
    public static /* synthetic */ Object m3267$r8$lambda$GYNrukL5Q1_oQXHu0WSGJdAl_8(Type type) {
        if (type instanceof ParameterizedType) {
            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof Class) {
                return new EnumMap((Class) type2);
            }
            ConstructorConstructor$$ExternalSyntheticBUOutline0.m459m("Invalid EnumMap type: ", type);
            return null;
        }
        ConstructorConstructor$$ExternalSyntheticBUOutline0.m459m("Invalid EnumMap type: ", type);
        return null;
    }

    private static <T> ObjectConstructor<T> newDefaultConstructor(Class<? super T> cls, ReflectionAccessFilter$FilterResult reflectionAccessFilter$FilterResult) {
        final String strTryMakeAccessible;
        if (Modifier.isAbstract(cls.getModifiers())) {
            return null;
        }
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(null);
            ReflectionAccessFilter$FilterResult reflectionAccessFilter$FilterResult2 = ReflectionAccessFilter$FilterResult.ALLOW;
            if (reflectionAccessFilter$FilterResult == reflectionAccessFilter$FilterResult2 || (ReflectionAccessFilterHelper.canAccess(declaredConstructor, null) && (reflectionAccessFilter$FilterResult != ReflectionAccessFilter$FilterResult.BLOCK_ALL || Modifier.isPublic(declaredConstructor.getModifiers())))) {
                if (reflectionAccessFilter$FilterResult == reflectionAccessFilter$FilterResult2 && (strTryMakeAccessible = ReflectionHelper.tryMakeAccessible(declaredConstructor)) != null) {
                    return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda18
                        @Override // com.google.gson.internal.ObjectConstructor
                        public final Object construct() {
                            return ConstructorConstructor.m3270$r8$lambda$SjD6xSYkreVGUnJqthxLuNh2RE(strTryMakeAccessible);
                        }
                    };
                }
                return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda19
                    @Override // com.google.gson.internal.ObjectConstructor
                    public final Object construct() {
                        return ConstructorConstructor.$r8$lambda$tMrwXvKBa7wEzN6bgJchqsDNnqc(declaredConstructor);
                    }
                };
            }
            final String str = "Unable to invoke no-args constructor of " + cls + "; constructor is not accessible and ReflectionAccessFilter does not permit making it accessible. Register an InstanceCreator or a TypeAdapter for this type, change the visibility of the constructor or adjust the access filter.";
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda17
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return ConstructorConstructor.m3273$r8$lambda$ehI23lT1x3Zzmna2iW1opXd7a4(str);
                }
            };
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$ehI23lT1x3Zzmna2iW-1opXd7a4, reason: not valid java name */
    public static /* synthetic */ Object m3273$r8$lambda$ehI23lT1x3Zzmna2iW1opXd7a4(String str) {
        throw new JsonIOException(str);
    }

    /* JADX INFO: renamed from: $r8$lambda$SjD6xS-YkreVGUnJqthxLuNh2RE, reason: not valid java name */
    public static /* synthetic */ Object m3270$r8$lambda$SjD6xSYkreVGUnJqthxLuNh2RE(String str) {
        throw new JsonIOException(str);
    }

    public static /* synthetic */ Object $r8$lambda$tMrwXvKBa7wEzN6bgJchqsDNnqc(Constructor constructor) {
        try {
            return constructor.newInstance(null);
        } catch (IllegalAccessException e) {
            throw ReflectionHelper.createExceptionForUnexpectedIllegalAccess(e);
        } catch (InstantiationException e2) {
            zzgf$$ExternalSyntheticBUOutline0.m441m("Failed to invoke constructor '", ReflectionHelper.constructorToString(constructor), "' with no args", e2);
            return null;
        } catch (InvocationTargetException e3) {
            Make$Map$$ExternalSyntheticBUOutline0.m877m("Failed to invoke constructor '" + ReflectionHelper.constructorToString(constructor) + "' with no args", e3.getCause());
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

    private static ObjectConstructor<? extends Collection<? extends Object>> newCollectionConstructor(Class<?> cls) {
        if (cls.isAssignableFrom(ArrayList.class)) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda4
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return ConstructorConstructor.m3264$r8$lambda$0pG1fdCxWNlpGZdpRUdWz3_MM();
                }
            };
        }
        if (cls.isAssignableFrom(LinkedHashSet.class)) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda5
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return ConstructorConstructor.m3271$r8$lambda$bbT35FFKvvcYnz09_xOyE8ggww();
                }
            };
        }
        if (cls.isAssignableFrom(TreeSet.class)) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda6
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return ConstructorConstructor.$r8$lambda$rJkUWb5cZZPoZ_Qpsz6xNa5nAwc();
                }
            };
        }
        if (cls.isAssignableFrom(ArrayDeque.class)) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda7
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return ConstructorConstructor.$r8$lambda$vAg_ooHOEQVMzC0v47C8x5QJH_Q();
                }
            };
        }
        return null;
    }

    /* JADX INFO: renamed from: $r8$lambda$0--pG1fdCxWNlpGZdpRUdWz3_MM, reason: not valid java name */
    public static /* synthetic */ Collection m3264$r8$lambda$0pG1fdCxWNlpGZdpRUdWz3_MM() {
        return new ArrayList();
    }

    /* JADX INFO: renamed from: $r8$lambda$bbT35FFKvvcYnz09_xOyE8g-gww, reason: not valid java name */
    public static /* synthetic */ Collection m3271$r8$lambda$bbT35FFKvvcYnz09_xOyE8ggww() {
        return new LinkedHashSet();
    }

    public static /* synthetic */ Collection $r8$lambda$rJkUWb5cZZPoZ_Qpsz6xNa5nAwc() {
        return new TreeSet();
    }

    public static /* synthetic */ Collection $r8$lambda$vAg_ooHOEQVMzC0v47C8x5QJH_Q() {
        return new ArrayDeque();
    }

    private static boolean hasStringKeyType(Type type) {
        if (!(type instanceof ParameterizedType)) {
            return true;
        }
        Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
        return actualTypeArguments.length != 0 && GsonTypes.getRawType(actualTypeArguments[0]) == String.class;
    }

    private static ObjectConstructor<? extends Map<? extends Object, Object>> newMapConstructor(Type type, Class<?> cls) {
        if (cls.isAssignableFrom(LinkedTreeMap.class) && hasStringKeyType(type)) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda12
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return ConstructorConstructor.$r8$lambda$kEdEsZbkV0Up9809dq8S2LO4FEI();
                }
            };
        }
        if (cls.isAssignableFrom(LinkedHashMap.class)) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda13
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return ConstructorConstructor.$r8$lambda$0IvMT2hNDEKC96obEsFXrkwEu_w();
                }
            };
        }
        if (cls.isAssignableFrom(TreeMap.class)) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda14
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return ConstructorConstructor.m3269$r8$lambda$KkbLW1gmo_lu5N8OEzLDAgv8dc();
                }
            };
        }
        if (cls.isAssignableFrom(ConcurrentHashMap.class)) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda15
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return ConstructorConstructor.m3263$r8$lambda$4ig_VwX805Af97dyfeHkzXDZD8();
                }
            };
        }
        if (cls.isAssignableFrom(ConcurrentSkipListMap.class)) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda16
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return ConstructorConstructor.m3268$r8$lambda$HPvxofGSRFp92SmDI3An_k9vYQ();
                }
            };
        }
        return null;
    }

    public static /* synthetic */ Map $r8$lambda$kEdEsZbkV0Up9809dq8S2LO4FEI() {
        return new LinkedTreeMap();
    }

    public static /* synthetic */ Map $r8$lambda$0IvMT2hNDEKC96obEsFXrkwEu_w() {
        return new LinkedHashMap();
    }

    /* JADX INFO: renamed from: $r8$lambda$KkbLW1gmo_lu5N8OEzL-DAgv8dc, reason: not valid java name */
    public static /* synthetic */ Map m3269$r8$lambda$KkbLW1gmo_lu5N8OEzLDAgv8dc() {
        return new TreeMap();
    }

    /* JADX INFO: renamed from: $r8$lambda$-4ig_VwX805Af97dyfeHkzXDZD8, reason: not valid java name */
    public static /* synthetic */ Map m3263$r8$lambda$4ig_VwX805Af97dyfeHkzXDZD8() {
        return new ConcurrentHashMap();
    }

    /* JADX INFO: renamed from: $r8$lambda$H-PvxofGSRFp92SmDI3An_k9vYQ, reason: not valid java name */
    public static /* synthetic */ Map m3268$r8$lambda$HPvxofGSRFp92SmDI3An_k9vYQ() {
        return new ConcurrentSkipListMap();
    }

    private <T> ObjectConstructor<T> newUnsafeAllocator(final Class<? super T> cls) {
        if (this.useJdkUnsafe) {
            return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda8
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    return ConstructorConstructor.m3266$r8$lambda$G62_J7kViNSmjGxO1pqK8pbpnY(cls);
                }
            };
        }
        final String strConcat = "Unable to create instance of " + cls + "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.";
        if (cls.getDeclaredConstructors().length == 0) {
            strConcat = strConcat.concat(" Or adjust your R8 configuration to keep the no-args constructor of the class.");
        }
        return new ObjectConstructor() { // from class: com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda9
            @Override // com.google.gson.internal.ObjectConstructor
            public final Object construct() {
                return ConstructorConstructor.$r8$lambda$gtzdjb5MGVWzYBupOdOqGHw0ta4(strConcat);
            }
        };
    }

    /* JADX INFO: renamed from: $r8$lambda$G62_J7kViN-SmjGxO1pqK8pbpnY, reason: not valid java name */
    public static /* synthetic */ Object m3266$r8$lambda$G62_J7kViNSmjGxO1pqK8pbpnY(Class cls) {
        try {
            return UnsafeAllocator.INSTANCE.newInstance(cls);
        } catch (Exception e) {
            Recreator$$ExternalSyntheticBUOutline0.m166m("Unable to create instance of ", cls, ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.", e);
            return null;
        }
    }

    public static /* synthetic */ Object $r8$lambda$gtzdjb5MGVWzYBupOdOqGHw0ta4(String str) {
        throw new JsonIOException(str);
    }

    public String toString() {
        return this.instanceCreators.toString();
    }
}
