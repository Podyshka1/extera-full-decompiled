package com.android.p003dx.rop.cst;

import com.android.p003dx.rop.type.Type;

/* JADX INFO: loaded from: classes4.dex */
public final class CstMethodHandle extends TypedConstant {
    public static final int METHOD_HANDLE_TYPE_INSTANCE_GET = 3;
    public static final int METHOD_HANDLE_TYPE_INSTANCE_PUT = 2;
    public static final int METHOD_HANDLE_TYPE_INVOKE_CONSTRUCTOR = 6;
    public static final int METHOD_HANDLE_TYPE_INVOKE_DIRECT = 7;
    public static final int METHOD_HANDLE_TYPE_INVOKE_INSTANCE = 5;
    public static final int METHOD_HANDLE_TYPE_INVOKE_INTERFACE = 8;
    public static final int METHOD_HANDLE_TYPE_INVOKE_STATIC = 4;
    public static final int METHOD_HANDLE_TYPE_STATIC_GET = 1;
    public static final int METHOD_HANDLE_TYPE_STATIC_PUT = 0;
    private static final String[] TYPE_NAMES = {"static-put", "static-get", "instance-put", "instance-get", "invoke-static", "invoke-instance", "invoke-constructor", "invoke-direct", "invoke-interface"};
    private final Constant ref;
    private final int type;

    public static boolean isAccessor(int i) {
        return i == 0 || i == 1 || i == 2 || i == 3;
    }

    public static boolean isInvocation(int i) {
        switch (i) {
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

    @Override // com.android.p003dx.rop.cst.Constant
    public boolean isCategory2() {
        return false;
    }

    public static CstMethodHandle make(int i, Constant constant) {
        if (isAccessor(i)) {
            if (!(constant instanceof CstFieldRef)) {
                throw new IllegalArgumentException("ref has wrong type: " + constant.getClass());
            }
        } else if (isInvocation(i)) {
            if (!(constant instanceof CstBaseMethodRef)) {
                throw new IllegalArgumentException("ref has wrong type: " + constant.getClass());
            }
        } else {
            throw new IllegalArgumentException("type is out of range: " + i);
        }
        return new CstMethodHandle(i, constant);
    }

    private CstMethodHandle(int i, Constant constant) {
        this.type = i;
        this.ref = constant;
    }

    public Constant getRef() {
        return this.ref;
    }

    public int getMethodHandleType() {
        return this.type;
    }

    public boolean isAccessor() {
        return isAccessor(this.type);
    }

    public boolean isInvocation() {
        return isInvocation(this.type);
    }

    public static String getMethodHandleTypeName(int i) {
        return TYPE_NAMES[i];
    }

    @Override // com.android.p003dx.rop.cst.Constant
    protected int compareTo0(Constant constant) {
        CstMethodHandle cstMethodHandle = (CstMethodHandle) constant;
        if (getMethodHandleType() == cstMethodHandle.getMethodHandleType()) {
            return getRef().compareTo(cstMethodHandle.getRef());
        }
        return Integer.compare(getMethodHandleType(), cstMethodHandle.getMethodHandleType());
    }

    public String toString() {
        return "method-handle{" + toHuman() + "}";
    }

    @Override // com.android.p003dx.rop.cst.Constant
    public String typeName() {
        return "method handle";
    }

    @Override // com.android.p003dx.util.ToHuman
    public String toHuman() {
        return getMethodHandleTypeName(this.type) + "," + this.ref.toString();
    }

    @Override // com.android.p003dx.rop.type.TypeBearer
    public Type getType() {
        return Type.METHOD_HANDLE;
    }
}
