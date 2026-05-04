package org.mvel2.optimizers.impl.refl.nodes;

import java.io.Serializable;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.ast.WithNode;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.PropertyTools;

/* JADX INFO: loaded from: classes5.dex */
public class WithAccessor implements AccessorNode {
    protected String nestParm;
    protected ExecutableStatement nestedStatement;
    private AccessorNode nextNode;
    protected WithNode.ParmValuePair[] withExpressions;

    public WithAccessor(ParserContext parserContext, String str, char[] cArr, int i, int i2, Class cls) {
        parserContext.setBlockSymbols(true);
        this.withExpressions = WithNode.compileWithExpressions(cArr, i, i2, str, cls, parserContext);
        parserContext.setBlockSymbols(false);
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode == null) {
            return processWith(obj, obj2, variableResolverFactory);
        }
        return accessorNode.getValue(processWith(obj, obj2, variableResolverFactory), obj2, variableResolverFactory);
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return this.nextNode.setValue(processWith(obj, obj2, variableResolverFactory), obj2, variableResolverFactory, obj3);
    }

    public Object processWith(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        for (WithNode.ParmValuePair parmValuePair : this.withExpressions) {
            if (parmValuePair.getSetExpression() != null) {
                MVEL.executeSetExpression(parmValuePair.getSetExpression(), obj, variableResolverFactory, parmValuePair.getStatement().getValue(obj, obj2, variableResolverFactory));
            } else {
                parmValuePair.getStatement().getValue(obj, obj2, variableResolverFactory);
            }
        }
        return obj;
    }

    public static final class ExecutablePairs implements Serializable {
        private Serializable setExpression;
        private ExecutableStatement statement;

        public ExecutablePairs() {
        }

        public ExecutablePairs(String str, ExecutableStatement executableStatement, Class cls, ParserContext parserContext) {
            if (str != null && str.length() != 0) {
                this.setExpression = MVEL.compileSetExpression(str, cls != null ? PropertyTools.getReturnType(cls, str, parserContext) : Object.class, parserContext);
            }
            this.statement = executableStatement;
        }

        public Serializable getSetExpression() {
            return this.setExpression;
        }

        public void setSetExpression(Serializable serializable) {
            this.setExpression = serializable;
        }

        public ExecutableStatement getStatement() {
            return this.statement;
        }

        public void setStatement(ExecutableStatement executableStatement) {
            this.statement = executableStatement;
        }
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return Object.class;
    }
}
