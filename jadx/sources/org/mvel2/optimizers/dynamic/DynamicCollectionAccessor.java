package org.mvel2.optimizers.dynamic;

import org.mvel2.ParserContext;
import org.mvel2.compiler.Accessor;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.OptimizerFactory;

/* JADX INFO: loaded from: classes5.dex */
public class DynamicCollectionAccessor implements DynamicAccessor {
    private Accessor _accessor;
    private Accessor _safeAccessor;
    private Class colType;
    private int offset;
    private ParserContext pCtx;
    private char[] property;
    private Object rootObject;
    private int runcount;
    private int start;
    private int type;
    private boolean opt = false;
    private long stamp = System.currentTimeMillis();

    public DynamicCollectionAccessor(ParserContext parserContext, Object obj, Class cls, char[] cArr, int i, int i2, int i3, Accessor accessor) {
        this.pCtx = parserContext;
        this.rootObject = obj;
        this.colType = cls;
        this._accessor = accessor;
        this._safeAccessor = accessor;
        this.type = i3;
        this.property = cArr;
        this.start = i;
        this.offset = i2;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (!this.opt) {
            int i = this.runcount + 1;
            this.runcount = i;
            if (i > DynamicOptimizer.tenuringThreshold) {
                if (System.currentTimeMillis() - this.stamp < DynamicOptimizer.timeSpan) {
                    this.opt = true;
                    return optimize(this.pCtx, obj, obj2, variableResolverFactory);
                }
                this.runcount = 0;
                this.stamp = System.currentTimeMillis();
            }
        }
        return this._accessor.getValue(obj, obj2, variableResolverFactory);
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        this.runcount++;
        return this._accessor.setValue(obj, obj2, variableResolverFactory, obj3);
    }

    private Object optimize(ParserContext parserContext, Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (DynamicOptimizer.isOverloaded()) {
            DynamicOptimizer.enforceTenureLimit();
        }
        Accessor accessorOptimizeCollection = OptimizerFactory.getAccessorCompiler("ASM").optimizeCollection(parserContext, this.rootObject, this.colType, this.property, this.start, this.offset, obj, obj2, variableResolverFactory);
        this._accessor = accessorOptimizeCollection;
        return accessorOptimizeCollection.getValue(obj, obj2, variableResolverFactory);
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
        return this.colType;
    }
}
