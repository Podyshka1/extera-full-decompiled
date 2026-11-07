package org.mvel2.optimizers.dynamic;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.mvel2.ParserContext;
import org.mvel2.compiler.Accessor;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.AbstractOptimizer;
import org.mvel2.optimizers.AccessorOptimizer;
import org.mvel2.optimizers.OptimizerFactory;
import org.mvel2.optimizers.impl.asm.ASMAccessorOptimizer;

/* JADX INFO: loaded from: classes5.dex */
public class DynamicOptimizer extends AbstractOptimizer implements AccessorOptimizer {
    public static final int COLLECTION = 2;
    public static final int OBJ_CREATION = 3;
    public static final int REGULAR_ACCESSOR = 0;
    public static final int SET_ACCESSOR = 1;
    private static volatile DynamicClassLoader classLoader = null;
    private static ReadWriteLock lock = null;
    public static int maximumTenure = 1500;
    private static final Object oLock = new Object();
    private static Lock readLock = null;
    public static int tenuringThreshold = 50;
    public static long timeSpan = 100;
    public static int totalRecycled = 0;
    private static volatile boolean useSafeClassloading = false;
    private static Lock writeLock;
    private AccessorOptimizer firstStage = OptimizerFactory.getAccessorCompiler(OptimizerFactory.SAFE_REFLECTIVE);

    static {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        lock = reentrantReadWriteLock;
        readLock = reentrantReadWriteLock.readLock();
        writeLock = lock.writeLock();
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public void init() {
        _init();
    }

    private static void _init() {
        DynamicClassLoader dynamicClassLoader = new DynamicClassLoader(Thread.currentThread().getContextClassLoader(), maximumTenure);
        classLoader = dynamicClassLoader;
        ASMAccessorOptimizer.setMVELClassLoader(dynamicClassLoader);
    }

    public static void enforceTenureLimit() {
        writeLock.lock();
        try {
            if (classLoader.isOverloaded()) {
                classLoader.deoptimizeAll();
                totalRecycled = classLoader.getTotalClasses();
                _init();
            }
        } finally {
            writeLock.unlock();
        }
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public Accessor optimizeAccessor(ParserContext parserContext, char[] cArr, int i, int i2, Object obj, Object obj2, VariableResolverFactory variableResolverFactory, boolean z, Class cls) {
        readLock.lock();
        try {
            parserContext.optimizationNotify();
            return classLoader.registerDynamicAccessor(new DynamicGetAccessor(parserContext, cArr, i, i2, 0, this.firstStage.optimizeAccessor(parserContext, cArr, i, i2, obj, obj2, variableResolverFactory, z, cls)));
        } finally {
            readLock.unlock();
        }
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public Accessor optimizeSetAccessor(ParserContext parserContext, char[] cArr, int i, int i2, Object obj, Object obj2, VariableResolverFactory variableResolverFactory, boolean z, Object obj3, Class cls) {
        readLock.lock();
        try {
            return classLoader.registerDynamicAccessor(new DynamicSetAccessor(parserContext, cArr, i, i2, this.firstStage.optimizeSetAccessor(parserContext, cArr, i, i2, obj, obj2, variableResolverFactory, z, obj3, cls)));
        } finally {
            readLock.unlock();
        }
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public Accessor optimizeCollection(ParserContext parserContext, Object obj, Class cls, char[] cArr, int i, int i2, Object obj2, Object obj3, VariableResolverFactory variableResolverFactory) {
        readLock.lock();
        try {
            return classLoader.registerDynamicAccessor(new DynamicCollectionAccessor(parserContext, obj, cls, cArr, i, i2, 2, this.firstStage.optimizeCollection(parserContext, obj, cls, cArr, i, i2, obj2, obj3, variableResolverFactory)));
        } finally {
            readLock.unlock();
        }
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public Accessor optimizeObjectCreation(ParserContext parserContext, char[] cArr, int i, int i2, Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        readLock.lock();
        try {
            return classLoader.registerDynamicAccessor(new DynamicGetAccessor(parserContext, cArr, i, i2, 3, this.firstStage.optimizeObjectCreation(parserContext, cArr, i, i2, obj, obj2, variableResolverFactory)));
        } finally {
            readLock.unlock();
        }
    }

    public static boolean isOverloaded() {
        return classLoader.isOverloaded();
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public Object getResultOptPass() {
        return this.firstStage.getResultOptPass();
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public Class getEgressType() {
        return this.firstStage.getEgressType();
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public boolean isLiteralOnly() {
        return this.firstStage.isLiteralOnly();
    }
}
