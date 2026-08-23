package com.sun.jna;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
public class CallbackParameterContext extends FromNativeContext {
    private Object[] args;
    private int index;
    private Method method;

    public CallbackParameterContext(Class<?> cls, Method method, Object[] objArr, int i) {
        super(cls);
        this.method = method;
        this.args = objArr;
        this.index = i;
    }

    public Method getMethod() {
        return this.method;
    }

    public Object[] getArguments() {
        return this.args;
    }

    public int getIndex() {
        return this.index;
    }
}
