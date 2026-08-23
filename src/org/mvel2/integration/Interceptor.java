package org.mvel2.integration;

import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
public interface Interceptor {
    public static final int END = 2;
    public static final int NORMAL_FLOW = 0;
    public static final int SKIP = 1;

    int doAfter(Object obj, ASTNode aSTNode, VariableResolverFactory variableResolverFactory);

    int doBefore(ASTNode aSTNode, VariableResolverFactory variableResolverFactory);
}
