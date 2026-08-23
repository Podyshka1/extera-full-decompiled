package org.mvel2.integration.impl;

import java.util.Set;
import org.mvel2.ScriptRuntimeException;
import org.mvel2.UnresolveablePropertyException;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class ImmutableDefaultFactory implements VariableResolverFactory {
    private boolean tiltFlag;

    @Override // org.mvel2.integration.VariableResolverFactory
    public Set<String> getKnownVariables() {
        return null;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolverFactory getNextFactory() {
        return null;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isIndexedFactory() {
        return false;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isResolveable(String str) {
        return false;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isTarget(String str) {
        return false;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public int variableIndexOf(String str) {
        return -1;
    }

    private void throwError() {
        throw new ScriptRuntimeException("cannot assign variables; no variable resolver factory available.");
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj) {
        throwError();
        return null;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createIndexedVariable(int i, String str, Object obj) {
        throwError();
        return null;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        throwError();
        return null;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createIndexedVariable(int i, String str, Object obj, Class<?> cls) {
        throwError();
        return null;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver setIndexedVariableResolver(int i, VariableResolver variableResolver) {
        throwError();
        return null;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolverFactory setNextFactory(VariableResolverFactory variableResolverFactory) {
        throw new RuntimeException("cannot chain to this factory");
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver getVariableResolver(String str) {
        throw new UnresolveablePropertyException(str);
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver getIndexedVariableResolver(int i) {
        throwError();
        return null;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean tiltFlag() {
        return this.tiltFlag;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public void setTiltFlag(boolean z) {
        this.tiltFlag = z;
    }
}
