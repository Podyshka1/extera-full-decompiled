package org.mvel2.ast;

import org.mvel2.compiler.ExecutableStatement;

/* JADX INFO: loaded from: classes5.dex */
public interface Assignment {
    String getAssignmentVar();

    char[] getExpression();

    boolean isNewDeclaration();

    void setValueStatement(ExecutableStatement executableStatement);
}
