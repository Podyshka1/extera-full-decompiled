package org.mvel2.integration;

/* JADX INFO: loaded from: classes5.dex */
public interface PropertyHandler {
    Object getProperty(String str, Object obj, VariableResolverFactory variableResolverFactory);

    Object setProperty(String str, Object obj, VariableResolverFactory variableResolverFactory, Object obj2);
}
