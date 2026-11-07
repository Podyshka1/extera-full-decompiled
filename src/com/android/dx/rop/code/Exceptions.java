package com.android.dx.rop.code;

import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;

/* JADX INFO: loaded from: classes.dex */
public final class Exceptions {
    public static final StdTypeList LIST_Error;
    public static final StdTypeList LIST_Error_ArithmeticException;
    public static final StdTypeList LIST_Error_ClassCastException;
    public static final StdTypeList LIST_Error_NegativeArraySizeException;
    public static final StdTypeList LIST_Error_NullPointerException;
    public static final StdTypeList LIST_Error_Null_ArrayIndexOutOfBounds;
    public static final StdTypeList LIST_Error_Null_ArrayIndex_ArrayStore;
    public static final StdTypeList LIST_Error_Null_IllegalMonitorStateException;
    public static final Type TYPE_ArithmeticException;
    public static final Type TYPE_ArrayIndexOutOfBoundsException;
    public static final Type TYPE_ArrayStoreException;
    public static final Type TYPE_ClassCastException;
    public static final Type TYPE_Error;
    public static final Type TYPE_IllegalMonitorStateException;
    public static final Type TYPE_NegativeArraySizeException;
    public static final Type TYPE_NullPointerException;

    static {
        Type typeIntern = Type.intern("Ljava/lang/ArithmeticException;");
        TYPE_ArithmeticException = typeIntern;
        Type typeIntern2 = Type.intern("Ljava/lang/ArrayIndexOutOfBoundsException;");
        TYPE_ArrayIndexOutOfBoundsException = typeIntern2;
        Type typeIntern3 = Type.intern("Ljava/lang/ArrayStoreException;");
        TYPE_ArrayStoreException = typeIntern3;
        Type typeIntern4 = Type.intern("Ljava/lang/ClassCastException;");
        TYPE_ClassCastException = typeIntern4;
        Type typeIntern5 = Type.intern("Ljava/lang/Error;");
        TYPE_Error = typeIntern5;
        Type typeIntern6 = Type.intern("Ljava/lang/IllegalMonitorStateException;");
        TYPE_IllegalMonitorStateException = typeIntern6;
        Type typeIntern7 = Type.intern("Ljava/lang/NegativeArraySizeException;");
        TYPE_NegativeArraySizeException = typeIntern7;
        Type typeIntern8 = Type.intern("Ljava/lang/NullPointerException;");
        TYPE_NullPointerException = typeIntern8;
        LIST_Error = StdTypeList.make(typeIntern5);
        LIST_Error_ArithmeticException = StdTypeList.make(typeIntern5, typeIntern);
        LIST_Error_ClassCastException = StdTypeList.make(typeIntern5, typeIntern4);
        LIST_Error_NegativeArraySizeException = StdTypeList.make(typeIntern5, typeIntern7);
        LIST_Error_NullPointerException = StdTypeList.make(typeIntern5, typeIntern8);
        LIST_Error_Null_ArrayIndexOutOfBounds = StdTypeList.make(typeIntern5, typeIntern8, typeIntern2);
        LIST_Error_Null_ArrayIndex_ArrayStore = StdTypeList.make(typeIntern5, typeIntern8, typeIntern2, typeIntern3);
        LIST_Error_Null_IllegalMonitorStateException = StdTypeList.make(typeIntern5, typeIntern8, typeIntern6);
    }

    private Exceptions() {
    }
}
