package de.robv.android.xposed;

import android.util.Log;
import com.sun.jna.Callback;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XC_MethodHook.Unhook;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class XposedBridge {
    private static final Object[] EMPTY_ARRAY;
    private static final String TAG = "AliuHook-XposedBridge";
    private static volatile boolean blacklistSet;
    private static final Method callbackMethod;
    private static final Map<Member, HookInfo> hookRecords;

    private static native Object allocateInstance0(Class<?> cls);

    private static native boolean deoptimize0(Member member);

    public static native boolean disableHiddenApiRestrictions();

    public static native boolean disableProfileSaver();

    private static native Method hook0(Object obj, Member member, Method method);

    private static native boolean invokeConstructor0(Object obj, Constructor<?> constructor, Object[] objArr);

    private static native boolean isHooked0(Member member);

    private static native boolean makeClassInheritable0(Class<?> cls);

    private static native void setBlacklist0(String[] strArr);

    private static native boolean unhook0(Member member);

    static {
        try {
            callbackMethod = HookInfo.class.getMethod(Callback.METHOD_NAME, Object[].class);
            System.loadLibrary("aliuhook");
            EMPTY_ARRAY = new Object[0];
            hookRecords = new HashMap();
            blacklistSet = false;
        } catch (Throwable th) {
            throw new RuntimeException("Failed to initialize", th);
        }
    }

    private static void checkMethod(Member member) {
        if (member == null) {
            throw new NullPointerException("method must not be null");
        }
        if (!(member instanceof Method) && !(member instanceof Constructor)) {
            throw new IllegalArgumentException("method must be a Method or Constructor");
        }
        if (Modifier.isAbstract(member.getModifiers())) {
            throw new IllegalArgumentException("method must not be abstract");
        }
    }

    public static void setBlacklist(String[] strArr) {
        if (blacklistSet) {
            return;
        }
        setBlacklist0(strArr);
        blacklistSet = true;
    }

    public static boolean isHooked(Member member) {
        return hookRecords.containsKey(member);
    }

    public static boolean makeClassInheritable(Class<?> cls) {
        if (cls == null) {
            throw new NullPointerException("class must not be null");
        }
        return makeClassInheritable0(cls);
    }

    public static boolean deoptimizeMethod(Member member) {
        checkMethod(member);
        return deoptimize0(member);
    }

    public static XC_MethodHook.Unhook hookMethod(Member member, XC_MethodHook xC_MethodHook) {
        HookInfo hookInfo;
        checkMethod(member);
        if (xC_MethodHook == null) {
            throw new NullPointerException("callback must not be null");
        }
        Map<Member, HookInfo> map = hookRecords;
        synchronized (map) {
            try {
                hookInfo = map.get(member);
                if (hookInfo == null) {
                    hookInfo = new HookInfo(member);
                    Method methodHook0 = hook0(hookInfo, member, callbackMethod);
                    if (methodHook0 == null) {
                        throw new IllegalStateException("Failed to hook method");
                    }
                    hookInfo.backup = methodHook0;
                    map.put(member, hookInfo);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        hookInfo.callbacks.add(xC_MethodHook);
        return xC_MethodHook.new Unhook(member);
    }

    public static Set<XC_MethodHook.Unhook> hookAllMethods(Class<?> cls, String str, XC_MethodHook xC_MethodHook) {
        HashSet hashSet = new HashSet();
        for (Method method : cls.getDeclaredMethods()) {
            if (method.getName().equals(str)) {
                hashSet.add(hookMethod(method, xC_MethodHook));
            }
        }
        return hashSet;
    }

    public static Set<XC_MethodHook.Unhook> hookAllConstructors(Class<?> cls, XC_MethodHook xC_MethodHook) {
        HashSet hashSet = new HashSet();
        for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
            hashSet.add(hookMethod(constructor, xC_MethodHook));
        }
        return hashSet;
    }

    @Deprecated
    public static void unhookMethod(Member member, XC_MethodHook xC_MethodHook) {
        Map<Member, HookInfo> map = hookRecords;
        synchronized (map) {
            try {
                HookInfo hookInfo = map.get(member);
                if (hookInfo != null) {
                    hookInfo.callbacks.remove(xC_MethodHook);
                    if (hookInfo.callbacks.size() == 0) {
                        map.remove(member);
                        unhook0(member);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Object invokeOriginalMethod(Member member, Object obj, Object[] objArr) {
        if (objArr == null) {
            objArr = EMPTY_ARRAY;
        }
        HookInfo hookInfo = hookRecords.get(member);
        try {
            if (hookInfo != null) {
                return invokeMethod(hookInfo.backup, obj, objArr);
            }
            checkMethod(member);
            return invokeMethod(member, obj, objArr);
        } catch (InstantiationException unused) {
            throw new IllegalArgumentException("The class this Constructor belongs to is abstract and cannot be instantiated");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object invokeMethod(Member member, Object obj, Object[] objArr) {
        if (member instanceof Method) {
            Method method = (Method) member;
            method.setAccessible(true);
            return method.invoke(obj, objArr);
        }
        Constructor constructor = (Constructor) member;
        constructor.setAccessible(true);
        return constructor.newInstance(objArr);
    }

    public static <T> T allocateInstance(Class<T> cls) {
        Objects.requireNonNull(cls);
        return (T) allocateInstance0(cls);
    }

    public static <S, T extends S> boolean invokeConstructor(T t, Constructor<S> constructor, Object... objArr) {
        Objects.requireNonNull(t);
        Objects.requireNonNull(constructor);
        if (constructor.isVarArgs()) {
            throw new IllegalArgumentException("varargs parameters are not supported");
        }
        if (objArr.length == 0) {
            objArr = null;
        }
        return invokeConstructor0(t, constructor, objArr);
    }

    public static final class CopyOnWriteSortedSet<E> {
        private volatile transient Object[] elements = XposedBridge.EMPTY_ARRAY;

        public int size() {
            return this.elements.length;
        }

        public synchronized boolean add(E e) {
            if (indexOf(e) >= 0) {
                return false;
            }
            Object[] objArr = new Object[this.elements.length + 1];
            System.arraycopy(this.elements, 0, objArr, 0, this.elements.length);
            objArr[this.elements.length] = e;
            Arrays.sort(objArr);
            this.elements = objArr;
            return true;
        }

        public synchronized boolean remove(E e) {
            int iIndexOf = indexOf(e);
            if (iIndexOf == -1) {
                return false;
            }
            Object[] objArr = new Object[this.elements.length - 1];
            System.arraycopy(this.elements, 0, objArr, 0, iIndexOf);
            System.arraycopy(this.elements, iIndexOf + 1, objArr, iIndexOf, (this.elements.length - iIndexOf) - 1);
            this.elements = objArr;
            return true;
        }

        private int indexOf(Object obj) {
            for (int i = 0; i < this.elements.length; i++) {
                if (obj.equals(this.elements[i])) {
                    return i;
                }
            }
            return -1;
        }

        public Object[] getSnapshot() {
            return this.elements;
        }
    }

    public static class HookInfo {
        Member backup;
        final CopyOnWriteSortedSet<XC_MethodHook> callbacks = new CopyOnWriteSortedSet<>();
        private final boolean isStatic;
        private final Member method;
        private final Class<?> returnType;

        public HookInfo(Member member) {
            this.method = member;
            this.isStatic = Modifier.isStatic(member.getModifiers());
            if (member instanceof Method) {
                Class<?> returnType = ((Method) member).getReturnType();
                if (!returnType.isPrimitive()) {
                    this.returnType = returnType;
                    return;
                }
            }
            this.returnType = null;
        }

        public Object callback(Object[] objArr) throws Throwable {
            XC_MethodHook.MethodHookParam methodHookParam = new XC_MethodHook.MethodHookParam();
            methodHookParam.method = this.method;
            if (this.isStatic) {
                methodHookParam.thisObject = null;
                methodHookParam.args = objArr;
            } else {
                methodHookParam.thisObject = objArr[0];
                Object[] objArr2 = new Object[objArr.length - 1];
                methodHookParam.args = objArr2;
                System.arraycopy(objArr, 1, objArr2, 0, objArr.length - 1);
            }
            Object[] snapshot = this.callbacks.getSnapshot();
            int length = snapshot.length;
            if (length == 0) {
                try {
                    return XposedBridge.invokeMethod(this.backup, methodHookParam.thisObject, methodHookParam.args);
                } catch (InvocationTargetException e) {
                    throw e.getCause();
                }
            }
            int i = 0;
            while (true) {
                try {
                    ((XC_MethodHook) snapshot[i]).beforeHookedMethod(methodHookParam);
                } catch (Throwable th) {
                    XposedBridge.log(th);
                    methodHookParam.setResult(null);
                    methodHookParam.returnEarly = false;
                }
                if (methodHookParam.returnEarly) {
                    i++;
                    break;
                }
                i++;
                if (i >= length) {
                    break;
                }
            }
            if (!methodHookParam.returnEarly) {
                try {
                    methodHookParam.setResult(XposedBridge.invokeMethod(this.backup, methodHookParam.thisObject, methodHookParam.args));
                } catch (InvocationTargetException e2) {
                    methodHookParam.setThrowable(e2.getCause());
                }
            }
            int i2 = i - 1;
            do {
                Object result = methodHookParam.getResult();
                Throwable throwable = methodHookParam.getThrowable();
                try {
                    ((XC_MethodHook) snapshot[i2]).afterHookedMethod(methodHookParam);
                } catch (Throwable th2) {
                    XposedBridge.log(th2);
                    if (throwable == null) {
                        methodHookParam.setResult(result);
                    } else {
                        methodHookParam.setThrowable(throwable);
                    }
                }
                i2--;
            } while (i2 >= 0);
            Object resultOrThrowable = methodHookParam.getResultOrThrowable();
            Class<?> cls = this.returnType;
            return cls != null ? cls.cast(resultOrThrowable) : resultOrThrowable;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void log(Throwable th) {
        Log.e(TAG, "Uncaught Exception", th);
    }
}
