package org.mvel2.ast;

import java.util.ArrayList;
import java.util.Map;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.compiler.ExpressionCompiler;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.DefaultLocalVariableResolverFactory;
import org.mvel2.integration.impl.FunctionVariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.integration.impl.StackDemarcResolverFactory;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class Function extends ASTNode implements Safe {
    protected ExecutableStatement compiledBlock;
    protected boolean compiledMode;
    protected String name;
    protected String[] parameters;
    protected int parmNum;
    protected boolean singleton;

    public Function(String str, char[] cArr, int i, int i2, int i3, int i4, int i5, ParserContext parserContext) {
        super(parserContext);
        this.compiledMode = false;
        this.name = str;
        if (str == null || str.length() == 0) {
            this.name = null;
        }
        this.expr = cArr;
        String[] parameterDefList = ParseTools.parseParameterDefList(cArr, i, i2);
        this.parameters = parameterDefList;
        this.parmNum = parameterDefList.length;
        ParserContext parserContext2 = new ParserContext(parserContext.getParserConfiguration(), parserContext, true);
        if (!parserContext.isFunctionContext()) {
            this.singleton = true;
            parserContext.declareFunction(this);
        } else {
            parserContext2.declareFunction(this);
        }
        for (String str2 : this.parameters) {
            parserContext2.addVariable(str2, Object.class);
            parserContext2.addIndexedInput(str2);
        }
        parserContext2.setIndexAllocation(false);
        ExpressionCompiler expressionCompiler = new ExpressionCompiler(cArr, i3, i4, parserContext2);
        expressionCompiler.setVerifyOnly(true);
        expressionCompiler.compile();
        parserContext2.setIndexAllocation(true);
        if (parserContext.getVariables() != null) {
            for (Map.Entry<String, Class> entry : parserContext.getVariables().entrySet()) {
                parserContext2.getVariables().remove(entry.getKey());
                parserContext2.addInput(entry.getKey(), entry.getValue());
            }
            parserContext2.processTables();
        }
        parserContext2.addIndexedInputs(parserContext2.getVariables().keySet());
        parserContext2.getVariables().clear();
        this.compiledBlock = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i3, i4, parserContext2);
        this.parameters = new String[parserContext2.getIndexedInputs().size()];
        ArrayList<String> indexedInputs = parserContext2.getIndexedInputs();
        int size = indexedInputs.size();
        int i6 = 0;
        int i7 = 0;
        while (i7 < size) {
            String str3 = indexedInputs.get(i7);
            i7++;
            this.parameters[i6] = str3;
            i6++;
        }
        this.compiledMode = (i5 & 16) != 0;
        this.egressType = this.compiledBlock.getKnownEgressType();
        parserContext.addVariable(str, Function.class);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        PrototypalFunctionInstance prototypalFunctionInstance = new PrototypalFunctionInstance(this, new MapVariableResolverFactory());
        if (this.name != null) {
            if (!variableResolverFactory.isIndexedFactory() && variableResolverFactory.isResolveable(this.name)) {
                throw new CompileException("duplicate function: " + this.name, this.expr, this.start);
            }
            variableResolverFactory.createVariable(this.name, prototypalFunctionInstance);
        }
        return prototypalFunctionInstance;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        PrototypalFunctionInstance prototypalFunctionInstance = new PrototypalFunctionInstance(this, new MapVariableResolverFactory());
        if (this.name != null) {
            if (!variableResolverFactory.isIndexedFactory() && variableResolverFactory.isResolveable(this.name)) {
                throw new CompileException("duplicate function: " + this.name, this.expr, this.start);
            }
            variableResolverFactory.createVariable(this.name, prototypalFunctionInstance);
        }
        return prototypalFunctionInstance;
    }

    public Object call(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object[] objArr) {
        if (objArr != null && objArr.length != 0) {
            if (variableResolverFactory instanceof FunctionVariableResolverFactory) {
                FunctionVariableResolverFactory functionVariableResolverFactory = (FunctionVariableResolverFactory) variableResolverFactory;
                if (functionVariableResolverFactory.getIndexedVariableResolvers().length == objArr.length && functionVariableResolverFactory.getFunction().equals(this)) {
                    VariableResolver[] indexedVariableResolvers = functionVariableResolverFactory.getIndexedVariableResolvers();
                    functionVariableResolverFactory.updateParameters(objArr);
                    try {
                        return this.compiledBlock.getValue(obj, obj2, functionVariableResolverFactory);
                    } finally {
                        functionVariableResolverFactory.setIndexedVariableResolvers(indexedVariableResolvers);
                    }
                }
            }
            return this.compiledBlock.getValue(obj2, new StackDemarcResolverFactory(new FunctionVariableResolverFactory(this, variableResolverFactory, this.parameters, objArr)));
        }
        if (this.compiledMode) {
            return this.compiledBlock.getValue(obj2, new StackDemarcResolverFactory(new DefaultLocalVariableResolverFactory(variableResolverFactory, this.parameters)));
        }
        return this.compiledBlock.getValue(obj2, new StackDemarcResolverFactory(new DefaultLocalVariableResolverFactory(variableResolverFactory, this.parameters)));
    }

    @Override // org.mvel2.ast.ASTNode
    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String[] getParameters() {
        return this.parameters;
    }

    public boolean hasParameters() {
        String[] strArr = this.parameters;
        return (strArr == null || strArr.length == 0) ? false : true;
    }

    public void checkArgumentCount(int i) {
        if (i != this.parmNum) {
            StringBuilder sb = new StringBuilder();
            sb.append("bad number of arguments in function call: ");
            sb.append(i);
            sb.append(" (expected: ");
            int i2 = this.parmNum;
            sb.append(i2 == 0 ? "none" : Integer.valueOf(i2));
            sb.append(")");
            throw new CompileException(sb.toString(), this.expr, this.start);
        }
    }

    public ExecutableStatement getCompiledBlock() {
        return this.compiledBlock;
    }

    @Override // org.mvel2.ast.ASTNode
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FunctionDef:");
        String str = this.name;
        if (str == null) {
            str = "Anonymous";
        }
        sb.append(str);
        return sb.toString();
    }
}
