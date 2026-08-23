package org.mvel2.optimizers;

import org.mvel2.ParserContext;
import org.mvel2.compiler.Accessor;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public interface AccessorOptimizer {
    Class getEgressType();

    Object getResultOptPass();

    void init();

    boolean isLiteralOnly();

    Accessor optimizeAccessor(ParserContext parserContext, char[] cArr, int i, int i2, Object obj, Object obj2, VariableResolverFactory variableResolverFactory, boolean z, Class cls);

    Accessor optimizeCollection(ParserContext parserContext, Object obj, Class cls, char[] cArr, int i, int i2, Object obj2, Object obj3, VariableResolverFactory variableResolverFactory);

    Accessor optimizeObjectCreation(ParserContext parserContext, char[] cArr, int i, int i2, Object obj, Object obj2, VariableResolverFactory variableResolverFactory);

    Accessor optimizeSetAccessor(ParserContext parserContext, char[] cArr, int i, int i2, Object obj, Object obj2, VariableResolverFactory variableResolverFactory, boolean z, Object obj3, Class cls);
}
