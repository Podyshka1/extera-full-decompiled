package org.mvel2.integration.impl;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolver;
import org.mvel2.util.MethodStub;

/* JADX INFO: loaded from: classes5.dex */
public class StaticMethodImportResolverFactory extends BaseVariableResolverFactory {
    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        return null;
    }

    public StaticMethodImportResolverFactory(ParserContext parserContext) {
        this.variableResolvers = new HashMap();
        for (Map.Entry<String, Object> entry : parserContext.getImports().entrySet()) {
            if (entry.getValue() instanceof Method) {
                createVariable(entry.getKey(), entry.getValue());
            }
        }
    }

    public StaticMethodImportResolverFactory() {
        this.variableResolvers = new HashMap();
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj) {
        if (obj instanceof Method) {
            obj = new MethodStub((Method) obj);
        }
        StaticMethodImportResolver staticMethodImportResolver = new StaticMethodImportResolver(str, (MethodStub) obj);
        this.variableResolvers.put(str, staticMethodImportResolver);
        return staticMethodImportResolver;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isTarget(String str) {
        return this.variableResolvers.containsKey(str);
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isResolveable(String str) {
        return isTarget(str) || isNextResolveable(str);
    }

    public Map<String, Method> getImportedMethods() {
        HashMap map = new HashMap();
        for (Map.Entry<String, VariableResolver> entry : this.variableResolvers.entrySet()) {
            map.put(entry.getKey(), (Method) entry.getValue().getValue());
        }
        return map;
    }
}
