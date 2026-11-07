package org.mvel2.optimizers.dynamic;

import org.mvel2.ParserContext;
import org.mvel2.compiler.Accessor;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.OptimizerFactory;

/* JADX INFO: loaded from: classes5.dex */
public class DynamicSetAccessor implements DynamicAccessor {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Accessor _accessor;
    private final Accessor _safeAccessor;
    private ParserContext context;
    private String description;
    private int offset;
    private char[] property;
    private int start;
    private boolean opt = false;
    private int runcount = 0;
    private long stamp = System.currentTimeMillis();

    public DynamicSetAccessor(ParserContext parserContext, char[] cArr, int i, int i2, Accessor accessor) {
        this._accessor = accessor;
        this._safeAccessor = accessor;
        this.context = parserContext;
        this.property = cArr;
        this.start = i;
        this.offset = i2;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        if (!this.opt) {
            int i = this.runcount + 1;
            this.runcount = i;
            if (i > DynamicOptimizer.tenuringThreshold) {
                if (System.currentTimeMillis() - this.stamp < DynamicOptimizer.timeSpan) {
                    this.opt = true;
                    return optimize(obj, obj2, variableResolverFactory, obj3);
                }
                this.runcount = 0;
                this.stamp = System.currentTimeMillis();
            }
        }
        this._accessor.setValue(obj, obj2, variableResolverFactory, obj3);
        return obj3;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        throw new RuntimeException("value cannot be read with this accessor");
    }

    private Object optimize(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        if (DynamicOptimizer.isOverloaded()) {
            DynamicOptimizer.enforceTenureLimit();
        }
        this._accessor = OptimizerFactory.getAccessorCompiler("ASM").optimizeSetAccessor(this.context, this.property, this.start, this.offset, obj, obj2, variableResolverFactory, false, obj3, obj3 != null ? obj3.getClass() : Object.class);
        return obj3;
    }

    @Override // org.mvel2.optimizers.dynamic.DynamicAccessor
    public void deoptimize() {
        this._accessor = this._safeAccessor;
        this.opt = false;
        this.runcount = 0;
        this.stamp = System.currentTimeMillis();
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return this._safeAccessor.getKnownEgressType();
    }
}
