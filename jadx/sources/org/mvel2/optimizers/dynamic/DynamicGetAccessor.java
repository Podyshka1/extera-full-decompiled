package org.mvel2.optimizers.dynamic;

import org.mvel2.ParserContext;
import org.mvel2.compiler.Accessor;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.AccessorOptimizer;
import org.mvel2.optimizers.OptimizationNotSupported;
import org.mvel2.optimizers.OptimizerFactory;

/* JADX INFO: loaded from: classes.dex */
public class DynamicGetAccessor implements DynamicAccessor {
    private Accessor _accessor;
    private Accessor _safeAccessor;
    private char[] expr;
    private int offset;
    private ParserContext pCtx;
    private int runcount;
    private int start;
    private int type;
    private boolean opt = false;
    private long stamp = System.currentTimeMillis();

    public DynamicGetAccessor(ParserContext parserContext, char[] cArr, int i, int i2, int i3, Accessor accessor) {
        this._accessor = accessor;
        this._safeAccessor = accessor;
        this.type = i3;
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        this.pCtx = parserContext;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (!this.opt) {
            int i = this.runcount + 1;
            this.runcount = i;
            if (i > DynamicOptimizer.tenuringThreshold) {
                if (System.currentTimeMillis() - this.stamp < DynamicOptimizer.timeSpan) {
                    this.opt = true;
                    try {
                        return optimize(obj, obj2, variableResolverFactory);
                    } catch (OptimizationNotSupported unused) {
                    }
                } else {
                    this.runcount = 0;
                    this.stamp = System.currentTimeMillis();
                }
            }
        }
        return this._accessor.getValue(obj, obj2, variableResolverFactory);
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        this.runcount++;
        return this._accessor.setValue(obj, obj2, variableResolverFactory, obj3);
    }

    private Object optimize(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (DynamicOptimizer.isOverloaded()) {
            DynamicOptimizer.enforceTenureLimit();
        }
        AccessorOptimizer accessorCompiler = OptimizerFactory.getAccessorCompiler("ASM");
        int i = this.type;
        if (i == 0) {
            this._accessor = accessorCompiler.optimizeAccessor(this.pCtx, this.expr, this.start, this.offset, obj, obj2, variableResolverFactory, false, null);
            return accessorCompiler.getResultOptPass();
        }
        if (i == 2) {
            Accessor accessorOptimizeCollection = accessorCompiler.optimizeCollection(this.pCtx, obj, null, this.expr, this.start, this.offset, obj, obj2, variableResolverFactory);
            this._accessor = accessorOptimizeCollection;
            return accessorOptimizeCollection.getValue(obj, obj2, variableResolverFactory);
        }
        if (i != 3) {
            return null;
        }
        Accessor accessorOptimizeObjectCreation = accessorCompiler.optimizeObjectCreation(this.pCtx, this.expr, this.start, this.offset, obj, obj2, variableResolverFactory);
        this._accessor = accessorOptimizeObjectCreation;
        return accessorOptimizeObjectCreation.getValue(obj, obj2, variableResolverFactory);
    }

    @Override // org.mvel2.optimizers.dynamic.DynamicAccessor
    public void deoptimize() {
        this._accessor = this._safeAccessor;
        this.opt = false;
        this.runcount = 0;
        this.stamp = System.currentTimeMillis();
    }

    public long getStamp() {
        return this.stamp;
    }

    public int getRuncount() {
        return this.runcount;
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return this._safeAccessor.getKnownEgressType();
    }

    public Accessor getAccessor() {
        return this._accessor;
    }

    public Accessor getSafeAccessor() {
        return this._safeAccessor;
    }
}
