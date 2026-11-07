package org.mvel2.integration;

import java.io.Serializable;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public interface VariableResolverFactory extends Serializable {
    VariableResolver createIndexedVariable(int i, String str, Object obj);

    VariableResolver createIndexedVariable(int i, String str, Object obj, Class<?> cls);

    VariableResolver createVariable(String str, Object obj);

    VariableResolver createVariable(String str, Object obj, Class<?> cls);

    VariableResolver getIndexedVariableResolver(int i);

    Set<String> getKnownVariables();

    VariableResolverFactory getNextFactory();

    VariableResolver getVariableResolver(String str);

    boolean isIndexedFactory();

    boolean isResolveable(String str);

    boolean isTarget(String str);

    VariableResolver setIndexedVariableResolver(int i, VariableResolver variableResolver);

    VariableResolverFactory setNextFactory(VariableResolverFactory variableResolverFactory);

    void setTiltFlag(boolean z);

    boolean tiltFlag();

    int variableIndexOf(String str);
}
