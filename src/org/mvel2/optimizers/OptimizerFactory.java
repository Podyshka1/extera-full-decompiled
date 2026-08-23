package org.mvel2.optimizers;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.mvel2.optimizers.dynamic.DynamicOptimizer;
import org.mvel2.optimizers.impl.asm.ASMAccessorOptimizer;
import org.mvel2.optimizers.impl.refl.ReflectiveAccessorOptimizer;

/* JADX INFO: loaded from: classes.dex */
public class OptimizerFactory {
    public static String DYNAMIC = "dynamic";
    private static final Logger LOG = Logger.getLogger(OptimizerFactory.class.getName());
    public static String SAFE_REFLECTIVE = "reflective";
    private static final Map<String, AccessorOptimizer> accessorCompilers;
    private static String defaultOptimizer;
    private static ThreadLocal<Class<? extends AccessorOptimizer>> threadOptimizer;

    static {
        HashMap map = new HashMap();
        accessorCompilers = map;
        threadOptimizer = new ThreadLocal<>();
        map.put(SAFE_REFLECTIVE, new ReflectiveAccessorOptimizer());
        map.put(DYNAMIC, new DynamicOptimizer());
        try {
            if (OptimizerFactory.class.getClassLoader() != null) {
                OptimizerFactory.class.getClassLoader().loadClass("org.mvel2.asm.ClassWriter");
            } else {
                ClassLoader.getSystemClassLoader().loadClass("org.mvel2.asm.ClassWriter");
            }
            map.put("ASM", new ASMAccessorOptimizer());
        } catch (ClassNotFoundException unused) {
            defaultOptimizer = SAFE_REFLECTIVE;
        } catch (Throwable th) {
            LOG.log(Level.WARNING, "[MVEL] Notice: Possible incorrect version of ASM present (3.0 required).  Disabling JIT compiler.  Reflective Optimizer will be used.", th);
            defaultOptimizer = SAFE_REFLECTIVE;
        }
        if (Boolean.getBoolean("mvel2.disable.jit")) {
            setDefaultOptimizer(SAFE_REFLECTIVE);
        } else {
            setDefaultOptimizer(DYNAMIC);
        }
    }

    public static AccessorOptimizer getDefaultAccessorCompiler() {
        try {
            return (AccessorOptimizer) accessorCompilers.get(defaultOptimizer).getClass().newInstance();
        } catch (Exception e) {
            throw new RuntimeException("unable to instantiate accessor compiler", e);
        }
    }

    public static AccessorOptimizer getAccessorCompiler(String str) {
        try {
            return (AccessorOptimizer) accessorCompilers.get(str).getClass().newInstance();
        } catch (Exception e) {
            throw new RuntimeException("unable to instantiate accessor compiler", e);
        }
    }

    public static AccessorOptimizer getThreadAccessorOptimizer() {
        if (threadOptimizer.get() == null) {
            threadOptimizer.set((Class<? extends AccessorOptimizer>) getDefaultAccessorCompiler().getClass());
        }
        try {
            return threadOptimizer.get().newInstance();
        } catch (Exception e) {
            throw new RuntimeException("unable to instantiate accessor compiler", e);
        }
    }

    public static void setThreadAccessorOptimizer(Class<? extends AccessorOptimizer> cls) {
        if (cls == null) {
            throw new RuntimeException("null optimizer");
        }
        threadOptimizer.set(cls);
    }

    public static void setDefaultOptimizer(String str) {
        try {
            Map<String, AccessorOptimizer> map = accessorCompilers;
            defaultOptimizer = str;
            map.get(str).init();
            threadOptimizer.set(null);
        } catch (Exception e) {
            throw new RuntimeException("unable to instantiate accessor compiler", e);
        }
    }

    public static void clearThreadAccessorOptimizer() {
        threadOptimizer.set(null);
        threadOptimizer.remove();
    }

    public static boolean isThreadAccessorOptimizerInitialized() {
        return threadOptimizer.get() != null;
    }
}
