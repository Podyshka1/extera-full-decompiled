package com.android.p003dx.p004cf.code;

import com.android.dex.util.ExceptionWithContext;
import com.android.p003dx.rop.type.Type;
import com.android.p003dx.rop.type.TypeBearer;
import com.android.p003dx.util.Hex;
import com.android.p003dx.util.MutabilityControl;

/* JADX INFO: loaded from: classes4.dex */
public final class ExecutionStack extends MutabilityControl {
    private final boolean[] local;
    private final TypeBearer[] stack;
    private int stackPtr;

    public ExecutionStack(int i) {
        super(i != 0);
        this.stack = new TypeBearer[i];
        this.local = new boolean[i];
        this.stackPtr = 0;
    }

    public ExecutionStack copy() {
        ExecutionStack executionStack = new ExecutionStack(this.stack.length);
        TypeBearer[] typeBearerArr = this.stack;
        System.arraycopy(typeBearerArr, 0, executionStack.stack, 0, typeBearerArr.length);
        boolean[] zArr = this.local;
        System.arraycopy(zArr, 0, executionStack.local, 0, zArr.length);
        executionStack.stackPtr = this.stackPtr;
        return executionStack;
    }

    public void annotate(ExceptionWithContext exceptionWithContext) {
        int i = this.stackPtr - 1;
        int i2 = 0;
        while (i2 <= i) {
            exceptionWithContext.addContext("stack[" + (i2 == i ? "top0" : Hex.m212u2(i - i2)) + "]: " + stackElementString(this.stack[i2]));
            i2++;
        }
    }

    public void makeInitialized(Type type) {
        if (this.stackPtr == 0) {
            return;
        }
        throwIfImmutable();
        Type initializedType = type.getInitializedType();
        for (int i = 0; i < this.stackPtr; i++) {
            TypeBearer[] typeBearerArr = this.stack;
            if (typeBearerArr[i] == type) {
                typeBearerArr[i] = initializedType;
            }
        }
    }

    public int getMaxStack() {
        return this.stack.length;
    }

    public int size() {
        return this.stackPtr;
    }

    public void clear() {
        throwIfImmutable();
        for (int i = 0; i < this.stackPtr; i++) {
            this.stack[i] = null;
            this.local[i] = false;
        }
        this.stackPtr = 0;
    }

    public void push(TypeBearer typeBearer) {
        throwIfImmutable();
        try {
            TypeBearer frameType = typeBearer.getFrameType();
            int category = frameType.getType().getCategory();
            int i = this.stackPtr;
            int i2 = i + category;
            TypeBearer[] typeBearerArr = this.stack;
            if (i2 > typeBearerArr.length) {
                throwSimException("overflow");
                return;
            }
            if (category == 2) {
                typeBearerArr[i] = null;
                this.stackPtr = i + 1;
            }
            int i3 = this.stackPtr;
            typeBearerArr[i3] = frameType;
            this.stackPtr = i3 + 1;
        } catch (NullPointerException unused) {
            throw new NullPointerException("type == null");
        }
    }

    public void setLocal() {
        throwIfImmutable();
        this.local[this.stackPtr] = true;
    }

    public TypeBearer peek(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("n < 0");
        }
        if (i >= this.stackPtr) {
            return throwSimException("underflow");
        }
        return this.stack[(r0 - i) - 1];
    }

    public boolean peekLocal(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("n < 0");
        }
        if (i >= this.stackPtr) {
            throw new SimException("stack: underflow");
        }
        return this.local[(r0 - i) - 1];
    }

    public Type peekType(int i) {
        return peek(i).getType();
    }

    public TypeBearer pop() {
        throwIfImmutable();
        TypeBearer typeBearerPeek = peek(0);
        TypeBearer[] typeBearerArr = this.stack;
        int i = this.stackPtr;
        typeBearerArr[i - 1] = null;
        this.local[i - 1] = false;
        this.stackPtr = i - typeBearerPeek.getType().getCategory();
        return typeBearerPeek;
    }

    public void change(int i, TypeBearer typeBearer) {
        throwIfImmutable();
        try {
            TypeBearer frameType = typeBearer.getFrameType();
            int i2 = (this.stackPtr - i) - 1;
            TypeBearer typeBearer2 = this.stack[i2];
            if (typeBearer2 == null || typeBearer2.getType().getCategory() != frameType.getType().getCategory()) {
                throwSimException("incompatible substitution: " + stackElementString(typeBearer2) + " -> " + stackElementString(frameType));
            }
            this.stack[i2] = frameType;
        } catch (NullPointerException unused) {
            throw new NullPointerException("type == null");
        }
    }

    public ExecutionStack merge(ExecutionStack executionStack) {
        try {
            return Merger.mergeStack(this, executionStack);
        } catch (SimException e) {
            e.addContext("underlay stack:");
            annotate(e);
            e.addContext("overlay stack:");
            executionStack.annotate(e);
            throw e;
        }
    }

    private static String stackElementString(TypeBearer typeBearer) {
        if (typeBearer == null) {
            return "<invalid>";
        }
        return typeBearer.toString();
    }

    private static TypeBearer throwSimException(String str) {
        throw new SimException("stack: " + str);
    }
}
