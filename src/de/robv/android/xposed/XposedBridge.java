package de.robv.android.xposed;

import android.util.Log;
import androidx.view.LiveData$$ExternalSyntheticBUOutline0;
import com.sun.jna.Callback;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XC_MethodHook.Unhook;
import dev.exterahook.runtime.bridge.HookBridgeProvider;
import dev.exterahook.runtime.bridge.JniBridgeBindings;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import kotlin.Unit;
import okhttp3.internal.url._UrlKt;
import org.lsposed.hiddenapibypass.HiddenApiBypass;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import p000a.C0002c;
import p000a.InterfaceC0000a;
import p001b.C1088a;
import p002c.AbstractC1095e;
import p002c.AbstractC1096f;
import p002c.C1094d;
import p002c.InterfaceC1092b;
import p002c.InterfaceC1093c;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
public class XposedBridge {
    private static final Object[] EMPTY_ARRAY = new Object[0];
    private static final String TAG = "exteraHook-XposedBridge";
    private static final Method callbackMethod;
    private static final InterfaceC0000a hookBridge;
    private static final C1094d hookRegistry;

    public static final class CopyOnWriteSortedSet<E> {
        private volatile transient Object[] elements = XposedBridge.EMPTY_ARRAY;

        private int indexOf(Object[] objArr, Object obj) {
            for (int i = 0; i < objArr.length; i++) {
                if (obj.equals(objArr[i])) {
                    return i;
                }
            }
            return -1;
        }

        private int insertionIndex(Object[] objArr, E e) {
            for (Object obj : objArr) {
                if (e.equals(obj)) {
                    return -1;
                }
            }
            Comparable comparable = (Comparable) e;
            for (int i = 0; i < objArr.length; i++) {
                if (comparable.compareTo(objArr[i]) < 0) {
                    return i;
                }
            }
            return objArr.length;
        }

        public synchronized boolean add(E e) {
            Object[] objArr = this.elements;
            int iInsertionIndex = insertionIndex(objArr, e);
            if (iInsertionIndex < 0) {
                return false;
            }
            Object[] objArr2 = new Object[objArr.length + 1];
            System.arraycopy(objArr, 0, objArr2, 0, iInsertionIndex);
            objArr2[iInsertionIndex] = e;
            System.arraycopy(objArr, iInsertionIndex, objArr2, iInsertionIndex + 1, objArr.length - iInsertionIndex);
            this.elements = objArr2;
            return true;
        }

        public Object[] getSnapshot() {
            return this.elements;
        }

        public synchronized boolean remove(E e) {
            Object[] objArr = this.elements;
            int iIndexOf = indexOf(objArr, e);
            if (iIndexOf == -1) {
                return false;
            }
            Object[] objArr2 = new Object[objArr.length - 1];
            System.arraycopy(objArr, 0, objArr2, 0, iIndexOf);
            System.arraycopy(objArr, iIndexOf + 1, objArr2, iIndexOf, (objArr.length - iIndexOf) - 1);
            this.elements = objArr2;
            return true;
        }

        public int size() {
            return this.elements.length;
        }
    }

    public static class HookInfo {
        private static final long BACKUP_PUBLISH_TIMEOUT_MS = 1000;
        private volatile Method backup;
        private final Class<?> boxedPrimitiveReturnType;
        private volatile boolean installFailed;
        private final boolean isStatic;
        private final Member method;
        private final Class<?> returnType;
        private final Object backupLock = new Object();
        private volatile Thread installingThread = Thread.currentThread();
        final CopyOnWriteSortedSet<XC_MethodHook> callbacks = new CopyOnWriteSortedSet<>();

        public HookInfo(Member member) {
            this.method = member;
            this.isStatic = Modifier.isStatic(member.getModifiers());
            if (member instanceof Method) {
                Class<?> returnType = ((Method) member).getReturnType();
                if (!returnType.isPrimitive()) {
                    this.returnType = returnType;
                    this.boxedPrimitiveReturnType = null;
                    return;
                }
                this.boxedPrimitiveReturnType = boxPrimitiveType(returnType);
            } else {
                this.boxedPrimitiveReturnType = null;
            }
            this.returnType = null;
        }

        private Method awaitBackupMethodSlowPath() {
            boolean z = false;
            try {
                synchronized (this.backupLock) {
                    if (Thread.currentThread() == this.installingThread) {
                        throw new IllegalStateException("Backup method for " + this.method + " is not published yet, the hook is still being installed on this thread");
                    }
                    long jNanoTime = System.nanoTime() + 1000000000;
                    for (long jNanoTime2 = 1000; this.backup == null && !this.installFailed && jNanoTime2 > 0; jNanoTime2 = (jNanoTime - System.nanoTime()) / 1000000) {
                        try {
                            this.backupLock.wait(jNanoTime2);
                        } catch (InterruptedException unused) {
                            z = true;
                        }
                    }
                    Method method = this.backup;
                    if (method != null) {
                        return method;
                    }
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    boolean z2 = this.installFailed;
                    Member member = this.method;
                    if (z2) {
                        LiveData$$ExternalSyntheticBUOutline0.m153m("Hooking ", member, " failed, the original method is unavailable");
                        return null;
                    }
                    LiveData$$ExternalSyntheticBUOutline0.m153m("Backup method for ", member, " was not published within 1000ms");
                    return null;
                }
            } finally {
                if (0 != 0) {
                    Thread.currentThread().interrupt();
                }
            }
        }

        private static Class<?> boxPrimitiveType(Class<?> cls) {
            if (cls == Void.TYPE) {
                return null;
            }
            if (cls == Boolean.TYPE) {
                return Boolean.class;
            }
            if (cls == Byte.TYPE) {
                return Byte.class;
            }
            if (cls == Character.TYPE) {
                return Character.class;
            }
            if (cls == Short.TYPE) {
                return Short.class;
            }
            if (cls == Integer.TYPE) {
                return Integer.class;
            }
            if (cls == Long.TYPE) {
                return Long.class;
            }
            if (cls == Float.TYPE) {
                return Float.class;
            }
            if (cls == Double.TYPE) {
                return Double.class;
            }
            throw new AssertionError("Unknown primitive type: " + cls);
        }

        public Method awaitBackupMethod() {
            Method method = this.backup;
            return method != null ? method : awaitBackupMethodSlowPath();
        }

        public Object callback(Object[] objArr) {
            return HookCallbackDispatcher.dispatch(this, objArr);
        }

        public Member getBackup() {
            return this.backup;
        }

        public Class<?> getBoxedPrimitiveReturnType() {
            return this.boxedPrimitiveReturnType;
        }

        public CopyOnWriteSortedSet<XC_MethodHook> getCallbacks() {
            return this.callbacks;
        }

        public Member getMethod() {
            return this.method;
        }

        public Class<?> getReturnType() {
            return this.returnType;
        }

        public boolean isStaticHook() {
            return this.isStatic;
        }

        public void markInstallFailed() {
            synchronized (this.backupLock) {
                try {
                    if (this.backup != null) {
                        return;
                    }
                    this.installFailed = true;
                    this.installingThread = null;
                    this.backupLock.notifyAll();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void setBackup(Member member) {
            Method method = (Method) member;
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            synchronized (this.backupLock) {
                this.backup = method;
                this.installingThread = null;
                this.backupLock.notifyAll();
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$-10kFl-2JjBfEwc-KLdb607Wxxs, reason: not valid java name */
    public static Member m3077$r8$lambda$10kFl2JjBfEwcKLdb607Wxxs(Object obj, Member member) {
        InterfaceC0000a interfaceC0000aBridge = bridge();
        Method method = callbackMethod;
        C0002c c0002c = (C0002c) interfaceC0000aBridge;
        c0002c.getClass();
        c0002c.m1a();
        return JniBridgeBindings.hook0(obj, member, method);
    }

    static {
        try {
            callbackMethod = HookInfo.class.getMethod(Callback.METHOD_NAME, Object[].class);
            hookRegistry = new C1094d();
            hookBridge = HookBridgeProvider.createDefault();
        } catch (Throwable th) {
            Make$Map$$ExternalSyntheticBUOutline0.m973m("Failed to initialize callback bridge", th);
        }
    }

    private static InterfaceC0000a bridge() {
        return hookBridge;
    }

    public static boolean deoptimizeMethod(Member member) {
        AbstractC1096f.m210a(member);
        C0002c c0002c = (C0002c) bridge();
        c0002c.getClass();
        c0002c.m1a();
        return JniBridgeBindings.deoptimize0(member);
    }

    public static boolean disableHiddenApiRestrictions() {
        boolean zDisableHiddenApiRestrictions;
        C1088a c1088a = ((C0002c) bridge()).f1b;
        boolean z = true;
        if (c1088a.f26b) {
            return true;
        }
        synchronized (c1088a) {
            if (!c1088a.f26b) {
                if (HiddenApiBypass.addHiddenApiExemptions(_UrlKt.FRAGMENT_ENCODE_SET)) {
                    zDisableHiddenApiRestrictions = true;
                } else {
                    c1088a.f25a.f27a.m214a();
                    zDisableHiddenApiRestrictions = JniBridgeBindings.disableHiddenApiRestrictions();
                }
                if (zDisableHiddenApiRestrictions) {
                    c1088a.f26b = true;
                }
                z = zDisableHiddenApiRestrictions;
            }
        }
        return z;
    }

    public static boolean disableProfileSaver() {
        ((C0002c) bridge()).m1a();
        return JniBridgeBindings.disableProfileSaver0();
    }

    public static Set<XC_MethodHook.Unhook> hookAllConstructors(Class<?> cls, XC_MethodHook xC_MethodHook) {
        HashSet hashSet = new HashSet();
        try {
            for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
                hashSet.add(hookMethod(constructor, xC_MethodHook));
            }
            return hashSet;
        } catch (Error | RuntimeException e) {
            rollbackHooks(hashSet, e);
            throw e;
        }
    }

    public static Set<XC_MethodHook.Unhook> hookAllMethods(Class<?> cls, String str, XC_MethodHook xC_MethodHook) {
        HashSet hashSet = new HashSet();
        try {
            for (Method method : cls.getDeclaredMethods()) {
                if (method.getName().equals(str)) {
                    hashSet.add(hookMethod(method, xC_MethodHook));
                }
            }
            return hashSet;
        } catch (Error | RuntimeException e) {
            rollbackHooks(hashSet, e);
            throw e;
        }
    }

    public static XC_MethodHook.Unhook hookMethod(Member member, XC_MethodHook xC_MethodHook) {
        AbstractC1096f.m210a(member);
        if (xC_MethodHook == null) {
            f$$ExternalSyntheticBUOutline2.m213m("callback must not be null");
            return null;
        }
        C1094d c1094d = hookRegistry;
        InterfaceC1092b interfaceC1092b = new InterfaceC1092b() { // from class: de.robv.android.xposed.XposedBridge$$ExternalSyntheticLambda0
            @Override // p002c.InterfaceC1092b
            /* JADX INFO: renamed from: a */
            public final Member mo207a(Object obj, Member member2) {
                return XposedBridge.m3077$r8$lambda$10kFl2JjBfEwcKLdb607Wxxs(obj, member2);
            }
        };
        c1094d.getClass();
        synchronized (c1094d.f28a) {
            try {
                HookInfo hookInfo = (HookInfo) c1094d.f28a.get(member);
                if (hookInfo != null) {
                    hookInfo.getCallbacks().add(xC_MethodHook);
                } else {
                    c1094d.m209a(member, xC_MethodHook, interfaceC1092b);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return xC_MethodHook.new Unhook(member);
    }

    public static <S, T extends S> boolean invokeConstructor(T t, Constructor<S> constructor, Object... objArr) {
        if (t == null) {
            f$$ExternalSyntheticBUOutline2.m213m("instance");
            return false;
        }
        if (constructor == null) {
            f$$ExternalSyntheticBUOutline2.m213m("constructor");
            return false;
        }
        if (constructor.isVarArgs()) {
            f$$ExternalSyntheticBUOutline1.m212m("varargs parameters are not supported");
            return false;
        }
        if (objArr.length == 0) {
            objArr = null;
        }
        C0002c c0002c = (C0002c) bridge();
        c0002c.getClass();
        c0002c.m1a();
        return JniBridgeBindings.invokeConstructor0(t, constructor, objArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object invokeOriginalMethod(Member member, Object obj, Object[] objArr) {
        HookInfo hookInfo;
        if (objArr == null) {
            objArr = EMPTY_ARRAY;
        }
        C1094d c1094d = hookRegistry;
        c1094d.getClass();
        synchronized (c1094d.f28a) {
            hookInfo = (HookInfo) c1094d.f28a.get(member);
        }
        if (hookInfo != null) {
            return hookInfo.awaitBackupMethod().invoke(obj, objArr);
        }
        try {
            AbstractC1096f.m210a(member);
            if (objArr == null) {
                objArr = AbstractC1095e.f29a;
            }
            AccessibleObject accessibleObject = (AccessibleObject) member;
            if (!accessibleObject.isAccessible()) {
                accessibleObject.setAccessible(true);
            }
            return member instanceof Method ? ((Method) member).invoke(obj, objArr) : ((Constructor) member).newInstance(objArr);
        } catch (InstantiationException unused) {
            f$$ExternalSyntheticBUOutline1.m212m("The class this Constructor belongs to is abstract and cannot be instantiated");
            return null;
        }
    }

    public static boolean isHooked(Member member) {
        boolean zContainsKey;
        C1094d c1094d = hookRegistry;
        c1094d.getClass();
        synchronized (c1094d.f28a) {
            zContainsKey = c1094d.f28a.containsKey(member);
        }
        return zContainsKey;
    }

    private static boolean isHooked0(Member member) {
        C0002c c0002c = (C0002c) bridge();
        c0002c.getClass();
        c0002c.m1a();
        return JniBridgeBindings.isHooked0(member);
    }

    public static void log(Throwable th) {
        Log.e(TAG, "Uncaught Exception", th);
    }

    private static void rollbackHooks(Set<XC_MethodHook.Unhook> set, Throwable th) {
        Iterator<XC_MethodHook.Unhook> it = set.iterator();
        while (it.hasNext()) {
            try {
                it.next().unhook();
            } catch (Throwable th2) {
                if (th2 != th) {
                    th.addSuppressed(th2);
                }
            }
        }
    }

    @Deprecated
    public static void unhookMethod(Member member, XC_MethodHook xC_MethodHook) {
        C1094d c1094d = hookRegistry;
        final InterfaceC0000a interfaceC0000aBridge = bridge();
        Objects.requireNonNull(interfaceC0000aBridge);
        InterfaceC1093c interfaceC1093c = new InterfaceC1093c() { // from class: de.robv.android.xposed.XposedBridge$$ExternalSyntheticLambda1
            @Override // p002c.InterfaceC1093c
            /* JADX INFO: renamed from: a */
            public final boolean mo208a(Member member2) {
                return interfaceC0000aBridge.mo0a(member2);
            }
        };
        c1094d.getClass();
        synchronized (c1094d.f28a) {
            try {
                HookInfo hookInfo = (HookInfo) c1094d.f28a.get(member);
                if (hookInfo == null) {
                    return;
                }
                hookInfo.getCallbacks().remove(xC_MethodHook);
                if (hookInfo.getCallbacks().size() == 0) {
                    c1094d.f28a.remove(member);
                    interfaceC1093c.mo208a(member);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static <T> T allocateInstance(Class<T> cls) {
        if (cls != null) {
            C0002c c0002c = (C0002c) bridge();
            c0002c.getClass();
            c0002c.m1a();
            return (T) JniBridgeBindings.allocateInstance0(cls);
        }
        f$$ExternalSyntheticBUOutline2.m213m("clazz");
        return null;
    }

    public static boolean makeClassInheritable(Class<?> cls) {
        if (cls != null) {
            C0002c c0002c = (C0002c) bridge();
            c0002c.getClass();
            c0002c.m1a();
            return JniBridgeBindings.makeClassInheritable0(cls);
        }
        f$$ExternalSyntheticBUOutline2.m213m("class must not be null");
        return false;
    }
}
