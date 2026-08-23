package com.sun.jna;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
public class MethodResultContext extends FunctionResultContext {
    private final Method method;

    public MethodResultContext(Class<?> cls, Function function, Object[] objArr, Method method) {
        super(cls, function, objArr);
        this.method = method;
    }

    public Method getMethod() {
        return this.method;
    }
}
