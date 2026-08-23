package com.android.dx.rop.type;

import com.android.dx.util.Hex;
import com.sun.jna.Native$$ExternalSyntheticBUOutline5;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import okhttp3.internal.url._UrlKt;
import okio.Buffer$$ExternalSyntheticBUOutline4;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
public final class Type implements TypeBearer, Comparable<Type> {
    public static final Type ANNOTATION;
    public static final Type BOOLEAN;
    public static final Type BOOLEAN_ARRAY;
    public static final Type BOOLEAN_CLASS;
    public static final int BT_ADDR = 10;
    public static final int BT_BOOLEAN = 1;
    public static final int BT_BYTE = 2;
    public static final int BT_CHAR = 3;
    public static final int BT_COUNT = 11;
    public static final int BT_DOUBLE = 4;
    public static final int BT_FLOAT = 5;
    public static final int BT_INT = 6;
    public static final int BT_LONG = 7;
    public static final int BT_OBJECT = 9;
    public static final int BT_SHORT = 8;
    public static final int BT_VOID = 0;
    public static final Type BYTE;
    public static final Type BYTE_ARRAY;
    public static final Type BYTE_CLASS;
    public static final Type CHAR;
    public static final Type CHARACTER_CLASS;
    public static final Type CHAR_ARRAY;
    public static final Type CLASS;
    public static final Type CLONEABLE;
    public static final Type DOUBLE;
    public static final Type DOUBLE_ARRAY;
    public static final Type DOUBLE_CLASS;
    public static final Type FLOAT;
    public static final Type FLOAT_ARRAY;
    public static final Type FLOAT_CLASS;
    public static final Type INT;
    public static final Type INTEGER_CLASS;
    public static final Type INT_ARRAY;
    public static final Type KNOWN_NULL;
    public static final Type LONG;
    public static final Type LONG_ARRAY;
    public static final Type LONG_CLASS;
    public static final Type METHOD_HANDLE;
    public static final Type METHOD_TYPE;
    public static final Type OBJECT;
    public static final Type OBJECT_ARRAY;
    public static final Type RETURN_ADDRESS;
    public static final Type SERIALIZABLE;
    public static final Type SHORT;
    public static final Type SHORT_ARRAY;
    public static final Type SHORT_CLASS;
    public static final Type STRING;
    public static final Type THROWABLE;
    public static final Type VAR_HANDLE;
    public static final Type VOID;
    public static final Type VOID_CLASS;
    private static final ConcurrentMap<String, Type> internTable = new ConcurrentHashMap(10000, 0.75f);
    private Type arrayType;
    private final int basicType;
    private String className;
    private Type componentType;
    private final String descriptor;
    private Type initializedType;
    private final int newAt;

    @Override // com.android.dx.rop.type.TypeBearer
    public Type getType() {
        return this;
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public boolean isConstant() {
        return false;
    }

    static {
        Type type = new Type("Z", 1);
        BOOLEAN = type;
        Type type2 = new Type("B", 2);
        BYTE = type2;
        Type type3 = new Type("C", 3);
        CHAR = type3;
        Type type4 = new Type("D", 4);
        DOUBLE = type4;
        Type type5 = new Type("F", 5);
        FLOAT = type5;
        Type type6 = new Type("I", 6);
        INT = type6;
        Type type7 = new Type("J", 7);
        LONG = type7;
        Type type8 = new Type("S", 8);
        SHORT = type8;
        VOID = new Type("V", 0);
        KNOWN_NULL = new Type("<null>", 9);
        RETURN_ADDRESS = new Type("<addr>", 10);
        ANNOTATION = new Type("Ljava/lang/annotation/Annotation;", 9);
        CLASS = new Type("Ljava/lang/Class;", 9);
        CLONEABLE = new Type("Ljava/lang/Cloneable;", 9);
        METHOD_HANDLE = new Type("Ljava/lang/invoke/MethodHandle;", 9);
        METHOD_TYPE = new Type("Ljava/lang/invoke/MethodType;", 9);
        VAR_HANDLE = new Type("Ljava/lang/invoke/VarHandle;", 9);
        Type type9 = new Type("Ljava/lang/Object;", 9);
        OBJECT = type9;
        SERIALIZABLE = new Type("Ljava/io/Serializable;", 9);
        STRING = new Type("Ljava/lang/String;", 9);
        THROWABLE = new Type("Ljava/lang/Throwable;", 9);
        BOOLEAN_CLASS = new Type("Ljava/lang/Boolean;", 9);
        BYTE_CLASS = new Type("Ljava/lang/Byte;", 9);
        CHARACTER_CLASS = new Type("Ljava/lang/Character;", 9);
        DOUBLE_CLASS = new Type("Ljava/lang/Double;", 9);
        FLOAT_CLASS = new Type("Ljava/lang/Float;", 9);
        INTEGER_CLASS = new Type("Ljava/lang/Integer;", 9);
        LONG_CLASS = new Type("Ljava/lang/Long;", 9);
        SHORT_CLASS = new Type("Ljava/lang/Short;", 9);
        VOID_CLASS = new Type("Ljava/lang/Void;", 9);
        BOOLEAN_ARRAY = new Type("[" + type.descriptor, 9);
        BYTE_ARRAY = new Type("[" + type2.descriptor, 9);
        CHAR_ARRAY = new Type("[" + type3.descriptor, 9);
        DOUBLE_ARRAY = new Type("[" + type4.descriptor, 9);
        FLOAT_ARRAY = new Type("[" + type5.descriptor, 9);
        INT_ARRAY = new Type("[" + type6.descriptor, 9);
        LONG_ARRAY = new Type("[" + type7.descriptor, 9);
        OBJECT_ARRAY = new Type("[" + type9.descriptor, 9);
        SHORT_ARRAY = new Type("[" + type8.descriptor, 9);
        initInterns();
    }

    private static void initInterns() {
        putIntern(BOOLEAN);
        putIntern(BYTE);
        putIntern(CHAR);
        putIntern(DOUBLE);
        putIntern(FLOAT);
        putIntern(INT);
        putIntern(LONG);
        putIntern(SHORT);
        putIntern(ANNOTATION);
        putIntern(CLASS);
        putIntern(CLONEABLE);
        putIntern(METHOD_HANDLE);
        putIntern(VAR_HANDLE);
        putIntern(OBJECT);
        putIntern(SERIALIZABLE);
        putIntern(STRING);
        putIntern(THROWABLE);
        putIntern(BOOLEAN_CLASS);
        putIntern(BYTE_CLASS);
        putIntern(CHARACTER_CLASS);
        putIntern(DOUBLE_CLASS);
        putIntern(FLOAT_CLASS);
        putIntern(INTEGER_CLASS);
        putIntern(LONG_CLASS);
        putIntern(SHORT_CLASS);
        putIntern(VOID_CLASS);
        putIntern(BOOLEAN_ARRAY);
        putIntern(BYTE_ARRAY);
        putIntern(CHAR_ARRAY);
        putIntern(DOUBLE_ARRAY);
        putIntern(FLOAT_ARRAY);
        putIntern(INT_ARRAY);
        putIntern(LONG_ARRAY);
        putIntern(OBJECT_ARRAY);
        putIntern(SHORT_ARRAY);
    }

    public static Type intern(String str) {
        Type type = internTable.get(str);
        if (type != null) {
            return type;
        }
        try {
            char cCharAt = str.charAt(0);
            if (cCharAt == '[') {
                return intern(str.substring(1)).getArrayType();
            }
            int length = str.length();
            if (cCharAt == 'L') {
                int i = length - 1;
                if (str.charAt(i) == ';') {
                    for (int i2 = 1; i2 < i; i2++) {
                        char cCharAt2 = str.charAt(i2);
                        if (cCharAt2 != '(' && cCharAt2 != ')' && cCharAt2 != '.') {
                            if (cCharAt2 == '/') {
                                if (i2 == 1 || i2 == i || str.charAt(i2 - 1) == '/') {
                                    f$$ExternalSyntheticBUOutline1.m178m("bad descriptor: ".concat(str));
                                    return null;
                                }
                            } else if (cCharAt2 == ';' || cCharAt2 == '[') {
                            }
                        }
                        f$$ExternalSyntheticBUOutline1.m178m("bad descriptor: ".concat(str));
                        return null;
                    }
                    return putIntern(new Type(str, 9));
                }
            }
            f$$ExternalSyntheticBUOutline1.m178m("bad descriptor: ".concat(str));
            return null;
        } catch (IndexOutOfBoundsException unused) {
            f$$ExternalSyntheticBUOutline1.m178m("descriptor is empty");
            return null;
        } catch (NullPointerException unused2) {
            f$$ExternalSyntheticBUOutline2.m179m("descriptor == null");
            return null;
        }
    }

    public static Type internReturnType(String str) {
        try {
            if (str.equals("V")) {
                return VOID;
            }
            return intern(str);
        } catch (NullPointerException unused) {
            f$$ExternalSyntheticBUOutline2.m179m("descriptor == null");
            return null;
        }
    }

    public static Type internClassName(String str) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m179m("name == null");
            return null;
        }
        if (str.startsWith("[")) {
            return intern(str);
        }
        return intern("L" + str + ';');
    }

    private Type(String str, int i, int i2) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m179m("descriptor == null");
            throw null;
        }
        if (i < 0 || i >= 11) {
            f$$ExternalSyntheticBUOutline1.m178m("bad basicType");
            throw null;
        }
        if (i2 < -1) {
            f$$ExternalSyntheticBUOutline1.m178m("newAt < -1");
            throw null;
        }
        this.descriptor = str;
        this.basicType = i;
        this.newAt = i2;
        this.arrayType = null;
        this.componentType = null;
        this.initializedType = null;
    }

    private Type(String str, int i) {
        this(str, i, -1);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Type) {
            return this.descriptor.equals(((Type) obj).descriptor);
        }
        return false;
    }

    public int hashCode() {
        return this.descriptor.hashCode();
    }

    @Override // java.lang.Comparable
    public int compareTo(Type type) {
        return this.descriptor.compareTo(type.descriptor);
    }

    public String toString() {
        return this.descriptor;
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        switch (this.basicType) {
            case 0:
                return "void";
            case 1:
                return "boolean";
            case 2:
                return "byte";
            case 3:
                return "char";
            case 4:
                return "double";
            case 5:
                return "float";
            case 6:
                return "int";
            case 7:
                return "long";
            case 8:
                return "short";
            case 9:
                if (isArray()) {
                    return getComponentType().toHuman() + _UrlKt.PATH_SEGMENT_ENCODE_SET_URI;
                }
                return getClassName().replace("/", ".");
            default:
                return this.descriptor;
        }
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public Type getFrameType() {
        int i = this.basicType;
        return (i == 1 || i == 2 || i == 3 || i == 6 || i == 8) ? INT : this;
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public int getBasicType() {
        return this.basicType;
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public int getBasicFrameType() {
        int i = this.basicType;
        if (i == 1 || i == 2 || i == 3 || i == 6 || i == 8) {
            return 6;
        }
        return i;
    }

    public String getDescriptor() {
        return this.descriptor;
    }

    public String getClassName() {
        if (this.className == null) {
            boolean zIsReference = isReference();
            String str = this.descriptor;
            if (!zIsReference) {
                Native$$ExternalSyntheticBUOutline5.m470m("not an object type: ", str);
                return null;
            }
            char cCharAt = str.charAt(0);
            String str2 = this.descriptor;
            if (cCharAt == '[') {
                this.className = str2;
            } else {
                this.className = str2.substring(1, str2.length() - 1);
            }
        }
        return this.className;
    }

    public int getCategory() {
        int i = this.basicType;
        return (i == 4 || i == 7) ? 2 : 1;
    }

    public boolean isCategory1() {
        int i = this.basicType;
        return (i == 4 || i == 7) ? false : true;
    }

    public boolean isCategory2() {
        int i = this.basicType;
        return i == 4 || i == 7;
    }

    public boolean isIntlike() {
        int i = this.basicType;
        return i == 1 || i == 2 || i == 3 || i == 6 || i == 8;
    }

    public boolean isPrimitive() {
        switch (this.basicType) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public boolean isReference() {
        return this.basicType == 9;
    }

    public boolean isArray() {
        return this.descriptor.charAt(0) == '[';
    }

    public boolean isArrayOrKnownNull() {
        return isArray() || equals(KNOWN_NULL);
    }

    public boolean isUninitialized() {
        return this.newAt >= 0;
    }

    public int getNewAt() {
        return this.newAt;
    }

    public Type getInitializedType() {
        Type type = this.initializedType;
        if (type != null) {
            return type;
        }
        Buffer$$ExternalSyntheticBUOutline4.m837m("initialized type: ", this.descriptor);
        return null;
    }

    public Type getArrayType() {
        if (this.arrayType == null) {
            this.arrayType = putIntern(new Type("[" + this.descriptor, 9));
        }
        return this.arrayType;
    }

    public Type getComponentType() {
        if (this.componentType == null) {
            char cCharAt = this.descriptor.charAt(0);
            String str = this.descriptor;
            if (cCharAt != '[') {
                Native$$ExternalSyntheticBUOutline5.m470m("not an array type: ", str);
                return null;
            }
            this.componentType = intern(str.substring(1));
        }
        return this.componentType;
    }

    public Type asUninitialized(int i) {
        if (i < 0) {
            f$$ExternalSyntheticBUOutline1.m178m("newAt < 0");
            return null;
        }
        if (!isReference()) {
            Buffer$$ExternalSyntheticBUOutline4.m837m("not a reference type: ", this.descriptor);
            return null;
        }
        if (isUninitialized()) {
            Buffer$$ExternalSyntheticBUOutline4.m837m("already uninitialized: ", this.descriptor);
            return null;
        }
        Type type = new Type("N" + Hex.u2(i) + this.descriptor, 9, i);
        type.initializedType = this;
        return putIntern(type);
    }

    private static Type putIntern(Type type) {
        Type typePutIfAbsent = internTable.putIfAbsent(type.getDescriptor(), type);
        return typePutIfAbsent != null ? typePutIfAbsent : type;
    }

    public static void clearInternTable() {
        internTable.clear();
        initInterns();
    }
}
