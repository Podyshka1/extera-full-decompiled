package org.mvel2.ast;

import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class InvokationContextFactory extends MapVariableResolverFactory {
    private VariableResolverFactory protoContext;

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public boolean isIndexedFactory() {
        return true;
    }

    public InvokationContextFactory(VariableResolverFactory variableResolverFactory, VariableResolverFactory variableResolverFactory2) {
        this.nextFactory = variableResolverFactory;
        this.protoContext = variableResolverFactory2;
    }

    @Override // org.mvel2.integration.impl.MapVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj) {
        if (isResolveable(str) && !this.protoContext.isResolveable(str)) {
            return this.nextFactory.createVariable(str, obj);
        }
        return this.protoContext.createVariable(str, obj);
    }

    @Override // org.mvel2.integration.impl.MapVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        if (isResolveable(str) && !this.protoContext.isResolveable(str)) {
            return this.nextFactory.createVariable(str, obj, cls);
        }
        return this.protoContext.createVariable(str, obj, cls);
    }

    @Override // org.mvel2.integration.impl.MapVariableResolverFactory, org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver getVariableResolver(String str) {
        if (isResolveable(str) && !this.protoContext.isResolveable(str)) {
            return this.nextFactory.getVariableResolver(str);
        }
        return this.protoContext.getVariableResolver(str);
    }

    @Override // org.mvel2.integration.impl.MapVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public boolean isTarget(String str) {
        return this.protoContext.isTarget(str);
    }

    @Override // org.mvel2.integration.impl.MapVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public boolean isResolveable(String str) {
        return this.protoContext.isResolveable(str) || this.nextFactory.isResolveable(str);
    }
}
