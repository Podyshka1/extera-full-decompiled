package org.mvel2.integration;

/* JADX INFO: loaded from: classes5.dex */
public class ResolverTools {
    public static <T extends VariableResolverFactory> T appendFactory(VariableResolverFactory variableResolverFactory, T t) {
        if (variableResolverFactory.getNextFactory() == null) {
            variableResolverFactory.setNextFactory(t);
            return t;
        }
        while (variableResolverFactory.getNextFactory() != null) {
            variableResolverFactory = variableResolverFactory.getNextFactory();
        }
        variableResolverFactory.setNextFactory(t);
        return t;
    }

    public static <T extends VariableResolverFactory> T insertFactory(VariableResolverFactory variableResolverFactory, T t) {
        if (variableResolverFactory.getNextFactory() == null) {
            variableResolverFactory.setNextFactory(t);
            return t;
        }
        t.setNextFactory(variableResolverFactory.getNextFactory());
        variableResolverFactory.setNextFactory(t);
        return t;
    }
}
