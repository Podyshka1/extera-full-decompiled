package com.chaquo.python;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class PyInvocationHandler implements InvocationHandler {
    private PyObject dict;
    private PyObject type;

    private static native Object invokeNative(Object obj, String str, Object[] objArr, Class<?> cls);

    public PyInvocationHandler(PyObject pyObject) {
        this.type = pyObject;
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        String name;
        name = method.getName();
        name.getClass();
        switch (name) {
            case "_chaquopySetDict":
                this.dict = (PyObject) objArr[0];
                return null;
            case "_chaquopyGetDict":
                return this.dict;
            case "_chaquopyGetType":
                return this.type;
            default:
                return invokeNative(obj, name, objArr, method.getReturnType());
        }
    }
}
