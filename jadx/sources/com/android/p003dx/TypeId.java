package com.android.p003dx;

import com.android.p003dx.rop.cst.CstType;
import com.android.p003dx.rop.type.Type;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class TypeId<T> {
    public static final TypeId<Boolean> BOOLEAN;
    public static final TypeId<Byte> BYTE;
    public static final TypeId<Character> CHAR;
    public static final TypeId<Double> DOUBLE;
    public static final TypeId<Float> FLOAT;
    public static final TypeId<Integer> INT;
    public static final TypeId<Long> LONG;
    public static final TypeId<Object> OBJECT;
    private static final Map<Class<?>, TypeId<?>> PRIMITIVE_TO_TYPE;
    public static final TypeId<Short> SHORT;
    public static final TypeId<String> STRING;
    public static final TypeId<Void> VOID;
    final CstType constant;
    final String name;
    final Type ropType;

    static {
        TypeId<Boolean> typeId = new TypeId<>(Type.BOOLEAN);
        BOOLEAN = typeId;
        TypeId<Byte> typeId2 = new TypeId<>(Type.BYTE);
        BYTE = typeId2;
        TypeId<Character> typeId3 = new TypeId<>(Type.CHAR);
        CHAR = typeId3;
        TypeId<Double> typeId4 = new TypeId<>(Type.DOUBLE);
        DOUBLE = typeId4;
        TypeId<Float> typeId5 = new TypeId<>(Type.FLOAT);
        FLOAT = typeId5;
        TypeId<Integer> typeId6 = new TypeId<>(Type.INT);
        INT = typeId6;
        TypeId<Long> typeId7 = new TypeId<>(Type.LONG);
        LONG = typeId7;
        TypeId<Short> typeId8 = new TypeId<>(Type.SHORT);
        SHORT = typeId8;
        TypeId<Void> typeId9 = new TypeId<>(Type.VOID);
        VOID = typeId9;
        OBJECT = new TypeId<>(Type.OBJECT);
        STRING = new TypeId<>(Type.STRING);
        HashMap map = new HashMap();
        PRIMITIVE_TO_TYPE = map;
        map.put(Boolean.TYPE, typeId);
        map.put(Byte.TYPE, typeId2);
        map.put(Character.TYPE, typeId3);
        map.put(Double.TYPE, typeId4);
        map.put(Float.TYPE, typeId5);
        map.put(Integer.TYPE, typeId6);
        map.put(Long.TYPE, typeId7);
        map.put(Short.TYPE, typeId8);
        map.put(Void.TYPE, typeId9);
    }

    TypeId(Type type) {
        this(type.getDescriptor(), type);
    }

    TypeId(String str, Type type) {
        if (str == null || type == null) {
            throw null;
        }
        this.name = str;
        this.ropType = type;
        this.constant = CstType.intern(type);
    }

    public static <T> TypeId<T> get(String str) {
        return new TypeId<>(str, Type.internReturnType(str));
    }

    public static <T> TypeId<T> get(Class<T> cls) {
        if (cls.isPrimitive()) {
            return (TypeId) PRIMITIVE_TO_TYPE.get(cls);
        }
        String strReplace = cls.getName().replace('.', '/');
        if (!cls.isArray()) {
            strReplace = 'L' + strReplace + ';';
        }
        return get(strReplace);
    }

    public <V> FieldId<T, V> getField(TypeId<V> typeId, String str) {
        return new FieldId<>(this, typeId, str);
    }

    public MethodId<T, Void> getConstructor(TypeId<?>... typeIdArr) {
        return new MethodId<>(this, VOID, "<init>", new TypeList(typeIdArr));
    }

    public MethodId<T, Void> getStaticInitializer() {
        return new MethodId<>(this, VOID, "<clinit>", new TypeList(new TypeId[0]));
    }

    public <R> MethodId<T, R> getMethod(TypeId<R> typeId, String str, TypeId<?>... typeIdArr) {
        return new MethodId<>(this, typeId, str, new TypeList(typeIdArr));
    }

    public String getName() {
        return this.name;
    }

    public boolean equals(Object obj) {
        return (obj instanceof TypeId) && ((TypeId) obj).name.equals(this.name);
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public String toString() {
        return this.name;
    }
}
