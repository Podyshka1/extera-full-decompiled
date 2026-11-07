package org.lsposed.hiddenapibypass;

import android.util.Log;
import dalvik.system.VMRuntime;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Set;
import org.lsposed.hiddenapibypass.Helper;
import p002c.f$$ExternalSyntheticBUOutline1;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
public abstract class HiddenApiBypass {
    private static final long artFieldBias;
    private static final long artFieldSize;
    private static final long artMethodBias;
    private static final long artMethodSize;
    private static final long artOffset;
    private static final long classOffset;
    private static final long iFieldOffset;
    private static final long methodOffset;
    private static final long methodsOffset;
    private static final long sFieldOffset;
    private static final Unsafe unsafe;

    static {
        long jObjectFieldOffset;
        long jObjectFieldOffset2;
        try {
            Unsafe unsafe2 = (Unsafe) Unsafe.class.getDeclaredMethod("getUnsafe", null).invoke(null, null);
            unsafe = unsafe2;
            CoreOjClassLoader coreOjClassLoader = new CoreOjClassLoader();
            Class<?> clsLoadClass = coreOjClassLoader.loadClass(CoreOjClassLoader$$ExternalSyntheticApiModelOutline0.m953m().getName());
            Class<?> clsLoadClass2 = coreOjClassLoader.loadClass(CoreOjClassLoader$$ExternalSyntheticApiModelOutline1.m954m().getName());
            Class<?> clsLoadClass3 = coreOjClassLoader.loadClass(Class.class.getName());
            methodOffset = unsafe2.objectFieldOffset(clsLoadClass.getDeclaredField("artMethod"));
            classOffset = unsafe2.objectFieldOffset(clsLoadClass.getDeclaredField("declaringClass"));
            artOffset = unsafe2.objectFieldOffset(clsLoadClass2.getDeclaredField("artFieldOrMethod"));
            try {
                jObjectFieldOffset = unsafe2.objectFieldOffset(clsLoadClass3.getDeclaredField("fields"));
                jObjectFieldOffset2 = jObjectFieldOffset;
            } catch (NoSuchFieldException unused) {
                Unsafe unsafe3 = unsafe;
                jObjectFieldOffset = unsafe3.objectFieldOffset(clsLoadClass3.getDeclaredField("iFields"));
                jObjectFieldOffset2 = unsafe3.objectFieldOffset(clsLoadClass3.getDeclaredField("sFields"));
            }
            iFieldOffset = jObjectFieldOffset;
            sFieldOffset = jObjectFieldOffset2;
            Unsafe unsafe4 = unsafe;
            long jObjectFieldOffset3 = unsafe4.objectFieldOffset(clsLoadClass3.getDeclaredField("methods"));
            methodsOffset = jObjectFieldOffset3;
            Method declaredMethod = Helper.NeverCall.class.getDeclaredMethod("a", null);
            Method declaredMethod2 = Helper.NeverCall.class.getDeclaredMethod("b", null);
            declaredMethod.setAccessible(true);
            declaredMethod2.setAccessible(true);
            MethodHandle methodHandleUnreflect = MethodHandles.lookup().unreflect(declaredMethod);
            MethodHandle methodHandleUnreflect2 = MethodHandles.lookup().unreflect(declaredMethod2);
            long j = artOffset;
            long j2 = unsafe4.getLong(methodHandleUnreflect, j);
            long j3 = unsafe4.getLong(methodHandleUnreflect2, j);
            long j4 = unsafe4.getLong(Helper.NeverCall.class, jObjectFieldOffset3);
            long j5 = j3 - j2;
            artMethodSize = j5;
            artMethodBias = (j2 - j4) - j5;
            Field declaredField = Helper.NeverCall.class.getDeclaredField("i");
            Field declaredField2 = Helper.NeverCall.class.getDeclaredField("j");
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            MethodHandle methodHandleUnreflectGetter = MethodHandles.lookup().unreflectGetter(declaredField);
            MethodHandle methodHandleUnreflectGetter2 = MethodHandles.lookup().unreflectGetter(declaredField2);
            long j6 = unsafe4.getLong(methodHandleUnreflectGetter, j);
            long j7 = unsafe4.getLong(methodHandleUnreflectGetter2, j);
            long j8 = unsafe4.getLong(Helper.NeverCall.class, jObjectFieldOffset);
            artFieldSize = j7 - j6;
            artFieldBias = j6 - j8;
        } catch (ReflectiveOperationException e) {
            Log.e("HiddenApiBypass", "Initialize error", e);
            throw new ExceptionInInitializerError(e);
        }
    }

    public static Object invoke(Class<?> cls, Object obj, String str, Object... objArr) throws NoSuchMethodException {
        if (obj != null && !cls.isInstance(obj)) {
            f$$ExternalSyntheticBUOutline1.m212m("this object is not an instance of the given class");
            return null;
        }
        Method declaredMethod = Helper.InvokeStub.class.getDeclaredMethod("invoke", Object[].class);
        declaredMethod.setAccessible(true);
        Unsafe unsafe2 = unsafe;
        long j = unsafe2.getLong(cls, methodsOffset);
        if (j == 0) {
            throw new NoSuchMethodException("Cannot find matching method");
        }
        int i = unsafe2.getInt(j);
        for (int i2 = 0; i2 < i; i2++) {
            unsafe.putLong(declaredMethod, methodOffset, artMethodBias + (((long) i2) * artMethodSize) + j);
            if (str.equals(declaredMethod.getName()) && Helper.checkArgsForInvokeMethod(declaredMethod.getParameterTypes(), objArr)) {
                return declaredMethod.invoke(obj, objArr);
            }
        }
        throw new NoSuchMethodException("Cannot find matching method");
    }

    public static boolean setHiddenApiExemptions(String... strArr) {
        try {
            invoke(VMRuntime.class, invoke(VMRuntime.class, null, "getRuntime", new Object[0]), "setHiddenApiExemptions", strArr);
            return true;
        } catch (ReflectiveOperationException e) {
            Log.w("HiddenApiBypass", "setHiddenApiExemptions", e);
            return false;
        }
    }

    public static boolean addHiddenApiExemptions(String... strArr) {
        Set<String> set = Helper.signaturePrefixes;
        set.addAll(Arrays.asList(strArr));
        String[] strArr2 = new String[set.size()];
        set.toArray(strArr2);
        return setHiddenApiExemptions(strArr2);
    }
}
