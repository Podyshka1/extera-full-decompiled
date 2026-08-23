package com.sun.jna;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes5.dex */
abstract class Klass {
    private Klass() {
    }

    public static <T> T newInstance(Class<T> cls) {
        try {
            return cls.getDeclaredConstructor(null).newInstance(null);
        } catch (IllegalAccessException e) {
            e = e;
            throw new IllegalArgumentException("Can't create an instance of " + cls + ", requires a public no-arg constructor: " + e, e);
        } catch (IllegalArgumentException e2) {
            e = e2;
            throw new IllegalArgumentException("Can't create an instance of " + cls + ", requires a public no-arg constructor: " + e, e);
        } catch (InstantiationException e3) {
            e = e3;
            throw new IllegalArgumentException("Can't create an instance of " + cls + ", requires a public no-arg constructor: " + e, e);
        } catch (NoSuchMethodException e4) {
            e = e4;
            throw new IllegalArgumentException("Can't create an instance of " + cls + ", requires a public no-arg constructor: " + e, e);
        } catch (SecurityException e5) {
            e = e5;
            throw new IllegalArgumentException("Can't create an instance of " + cls + ", requires a public no-arg constructor: " + e, e);
        } catch (InvocationTargetException e6) {
            if (e6.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e6.getCause());
            }
            throw new IllegalArgumentException("Can't create an instance of " + cls + ", requires a public no-arg constructor: " + e6, e6);
        }
    }
}
