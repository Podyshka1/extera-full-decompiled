package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.DataConversion;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ParseTools;
import org.mvel2.util.ReflectionUtil;

/* JADX INFO: loaded from: classes5.dex */
public class TypeCast extends ASTNode {
    private ExecutableStatement statement;
    private boolean widen;

    public TypeCast(char[] cArr, int i, int i2, Class cls, int i3, ParserContext parserContext) {
        super(parserContext);
        this.egressType = cls;
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        if ((i3 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i, i2, parserContext);
            this.statement = executableStatement;
            if (executableStatement.getKnownEgressType() == Object.class || DataConversion.canConvert(cls, this.statement.getKnownEgressType())) {
                return;
            }
            if (canCast(this.statement.getKnownEgressType(), cls)) {
                this.widen = true;
                return;
            }
            throw new CompileException("unable to cast type: " + this.statement.getKnownEgressType() + "; to: " + cls, cArr, i);
        }
    }

    private boolean canCast(Class cls, Class cls2) {
        if (ReflectionUtil.isAssignableFrom(cls, cls2)) {
            return true;
        }
        return cls.isInterface() && interfaceAssignable(cls, cls2);
    }

    private boolean interfaceAssignable(Class cls, Class cls2) {
        for (Class<?> cls3 : cls.getInterfaces()) {
            if (cls3.isAssignableFrom(cls2)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        boolean z = this.widen;
        Object value = this.statement.getValue(obj, obj2, variableResolverFactory);
        Class cls = this.egressType;
        return z ? typeCheck(value, cls) : DataConversion.convert(value, cls);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        boolean z = this.widen;
        char[] cArr = this.expr;
        return z ? typeCheck(MVEL.eval(cArr, this.start, this.offset, obj, variableResolverFactory), this.egressType) : DataConversion.convert(MVEL.eval(cArr, this.start, this.offset, obj, variableResolverFactory), this.egressType);
    }

    private static Object typeCheck(Object obj, Class cls) {
        if (obj == null) {
            return null;
        }
        if (cls.isInstance(obj)) {
            return obj;
        }
        throw new ClassCastException(obj.getClass().getName() + " cannot be cast to: " + cls.getName());
    }

    public ExecutableStatement getStatement() {
        return this.statement;
    }
}
