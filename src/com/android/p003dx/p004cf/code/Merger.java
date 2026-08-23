package com.android.p003dx.p004cf.code;

import com.android.p003dx.rop.type.Type;
import com.android.p003dx.rop.type.TypeBearer;
import com.android.p003dx.util.Hex;

/* JADX INFO: loaded from: classes4.dex */
public final class Merger {
    private Merger() {
    }

    public static OneLocalsArray mergeLocals(OneLocalsArray oneLocalsArray, OneLocalsArray oneLocalsArray2) {
        if (oneLocalsArray == oneLocalsArray2) {
            return oneLocalsArray;
        }
        int maxLocals = oneLocalsArray.getMaxLocals();
        if (oneLocalsArray2.getMaxLocals() != maxLocals) {
            throw new SimException("mismatched maxLocals values");
        }
        OneLocalsArray oneLocalsArrayCopy = null;
        for (int i = 0; i < maxLocals; i++) {
            TypeBearer orNull = oneLocalsArray.getOrNull(i);
            TypeBearer typeBearerMergeType = mergeType(orNull, oneLocalsArray2.getOrNull(i));
            if (typeBearerMergeType != orNull) {
                if (oneLocalsArrayCopy == null) {
                    oneLocalsArrayCopy = oneLocalsArray.copy();
                }
                if (typeBearerMergeType == null) {
                    oneLocalsArrayCopy.invalidate(i);
                } else {
                    oneLocalsArrayCopy.set(i, typeBearerMergeType);
                }
            }
        }
        if (oneLocalsArrayCopy == null) {
            return oneLocalsArray;
        }
        oneLocalsArrayCopy.setImmutable();
        return oneLocalsArrayCopy;
    }

    public static ExecutionStack mergeStack(ExecutionStack executionStack, ExecutionStack executionStack2) {
        if (executionStack == executionStack2) {
            return executionStack;
        }
        int size = executionStack.size();
        if (executionStack2.size() != size) {
            throw new SimException("mismatched stack depths");
        }
        ExecutionStack executionStackCopy = null;
        for (int i = 0; i < size; i++) {
            TypeBearer typeBearerPeek = executionStack.peek(i);
            TypeBearer typeBearerPeek2 = executionStack2.peek(i);
            TypeBearer typeBearerMergeType = mergeType(typeBearerPeek, typeBearerPeek2);
            if (typeBearerMergeType != typeBearerPeek) {
                if (executionStackCopy == null) {
                    executionStackCopy = executionStack.copy();
                }
                if (typeBearerMergeType == null) {
                    throw new SimException("incompatible: " + typeBearerPeek + ", " + typeBearerPeek2);
                }
                try {
                    executionStackCopy.change(i, typeBearerMergeType);
                } catch (SimException e) {
                    e.addContext("...while merging stack[" + Hex.m212u2(i) + "]");
                    throw e;
                }
                e.addContext("...while merging stack[" + Hex.m212u2(i) + "]");
                throw e;
            }
        }
        if (executionStackCopy == null) {
            return executionStack;
        }
        executionStackCopy.setImmutable();
        return executionStackCopy;
    }

    public static TypeBearer mergeType(TypeBearer typeBearer, TypeBearer typeBearer2) {
        if (typeBearer == null || typeBearer.equals(typeBearer2)) {
            return typeBearer;
        }
        if (typeBearer2 == null) {
            return null;
        }
        Type type = typeBearer.getType();
        Type type2 = typeBearer2.getType();
        if (type == type2) {
            return type;
        }
        if (type.isReference() && type2.isReference()) {
            Type type3 = Type.KNOWN_NULL;
            if (type == type3) {
                return type2;
            }
            if (type2 == type3) {
                return type;
            }
            if (type.isArray() && type2.isArray()) {
                TypeBearer typeBearerMergeType = mergeType(type.getComponentType(), type2.getComponentType());
                if (typeBearerMergeType == null) {
                    return Type.OBJECT;
                }
                return ((Type) typeBearerMergeType).getArrayType();
            }
            return Type.OBJECT;
        }
        if (type.isIntlike() && type2.isIntlike()) {
            return Type.INT;
        }
        return null;
    }

    public static boolean isPossiblyAssignableFrom(TypeBearer typeBearer, TypeBearer typeBearer2) {
        Type type = typeBearer.getType();
        Type type2 = typeBearer2.getType();
        if (type.equals(type2)) {
            return true;
        }
        int basicType = type.getBasicType();
        int basicType2 = type2.getBasicType();
        if (basicType == 10) {
            type = Type.OBJECT;
            basicType = 9;
        }
        if (basicType2 == 10) {
            type2 = Type.OBJECT;
            basicType2 = 9;
        }
        if (basicType != 9 || basicType2 != 9) {
            return type.isIntlike() && type2.isIntlike();
        }
        Type type3 = Type.KNOWN_NULL;
        if (type == type3) {
            return false;
        }
        if (type2 == type3 || type == Type.OBJECT) {
            return true;
        }
        if (!type.isArray()) {
            return !type2.isArray() || type == Type.SERIALIZABLE || type == Type.CLONEABLE;
        }
        if (!type2.isArray()) {
            return false;
        }
        do {
            type = type.getComponentType();
            type2 = type2.getComponentType();
            if (!type.isArray()) {
                break;
            }
        } while (type2.isArray());
        return isPossiblyAssignableFrom(type, type2);
    }
}
