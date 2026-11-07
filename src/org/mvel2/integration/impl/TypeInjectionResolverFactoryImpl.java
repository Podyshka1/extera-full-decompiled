package org.mvel2.integration.impl;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class TypeInjectionResolverFactoryImpl extends MapVariableResolverFactory implements TypeInjectionResolverFactory {
    public TypeInjectionResolverFactoryImpl() {
        this.variables = new HashMap();
    }

    public TypeInjectionResolverFactoryImpl(Map<String, Object> map) {
        this.variables = map;
    }

    public TypeInjectionResolverFactoryImpl(ParserContext parserContext, VariableResolverFactory variableResolverFactory) {
        super(parserContext.getImports(), parserContext.hasFunction() ? new TypeInjectionResolverFactoryImpl((Map<String, Object>) parserContext.getFunctions(), variableResolverFactory) : variableResolverFactory);
    }

    public TypeInjectionResolverFactoryImpl(Map<String, Object> map, VariableResolverFactory variableResolverFactory) {
        super(map, variableResolverFactory);
    }

    public TypeInjectionResolverFactoryImpl(Map<String, Object> map, boolean z) {
        super(map);
    }

    @Override // org.mvel2.integration.impl.MapVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj) {
        if (this.nextFactory == null) {
            this.nextFactory = new MapVariableResolverFactory(new HashMap());
        }
        return this.nextFactory.createVariable(str, obj);
    }

    @Override // org.mvel2.integration.impl.MapVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        if (this.nextFactory == null) {
            this.nextFactory = new MapVariableResolverFactory(new HashMap());
        }
        return this.nextFactory.createVariable(str, obj, cls);
    }

    @Override // org.mvel2.integration.impl.MapVariableResolverFactory, org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public Set<String> getKnownVariables() {
        VariableResolverFactory variableResolverFactory = this.nextFactory;
        if (variableResolverFactory == null) {
            return new HashSet(0);
        }
        return variableResolverFactory.getKnownVariables();
    }
}
