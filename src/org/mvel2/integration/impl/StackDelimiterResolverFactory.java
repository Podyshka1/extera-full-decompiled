package org.mvel2.integration.impl;

import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class StackDelimiterResolverFactory extends StackDemarcResolverFactory {
    public StackDelimiterResolverFactory(VariableResolverFactory variableResolverFactory) {
        super(variableResolverFactory);
    }

    @Override // org.mvel2.integration.impl.StackDemarcResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj) {
        VariableResolverFactory delegate = getDelegate();
        VariableResolverFactory nextFactory = delegate.getNextFactory();
        delegate.setNextFactory(null);
        VariableResolver variableResolverCreateVariable = delegate.createVariable(str, obj);
        delegate.setNextFactory(nextFactory);
        return variableResolverCreateVariable;
    }
}
