package org.mvel2;

import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
public class UnresolveablePropertyException extends RuntimeException {
    private String name;

    public UnresolveablePropertyException(ASTNode aSTNode, Throwable th) {
        super("unable to resolve token: " + aSTNode.getName(), th);
        this.name = aSTNode.getName();
    }

    public UnresolveablePropertyException(ASTNode aSTNode) {
        super("unable to resolve token: " + aSTNode.getName());
        this.name = aSTNode.getName();
    }

    public UnresolveablePropertyException(String str) {
        super("unable to resolve token: " + str);
        this.name = str;
    }

    public String getName() {
        return this.name;
    }

    @Override // java.lang.Throwable
    public synchronized Throwable fillInStackTrace() {
        return null;
    }
}
