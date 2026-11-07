package org.mvel2.debug;

import org.mvel2.ast.LineLabel;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class Frame {
    private VariableResolverFactory factory;
    private LineLabel label;

    public Frame(LineLabel lineLabel, VariableResolverFactory variableResolverFactory) {
        this.label = lineLabel;
        this.factory = variableResolverFactory;
    }

    public String getSourceName() {
        return this.label.getSourceFile();
    }

    public int getLineNumber() {
        return this.label.getLineNumber();
    }

    public VariableResolverFactory getFactory() {
        return this.factory;
    }

    public void setFactory(VariableResolverFactory variableResolverFactory) {
        this.factory = variableResolverFactory;
    }
}
