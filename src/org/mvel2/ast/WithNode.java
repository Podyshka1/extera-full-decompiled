package org.mvel2.ast;

import java.io.Serializable;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.mvel2.CompileException;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ErrorUtil;
import org.mvel2.util.ParseTools;
import org.mvel2.util.PropertyTools;

/* JADX INFO: loaded from: classes5.dex */
public class WithNode extends BlockNode implements NestedStatement {
    protected String nestParm;
    protected ParmValuePair[] withExpressions;

    public WithNode(char[] cArr, int i, int i2, int i3, int i4, int i5, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        this.nestParm = ParseTools.createStringTrimmed(cArr, i, i2);
        this.blockStart = i3;
        this.blockOffset = i4;
        if ((i5 & 16) != 0) {
            parserContext.setBlockSymbols(true);
            ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i, i2, parserContext);
            this.compiledBlock = executableStatement;
            Class knownEgressType = executableStatement.getKnownEgressType();
            this.egressType = knownEgressType;
            this.withExpressions = compileWithExpressions(cArr, i3, i4, this.nestParm, knownEgressType, parserContext);
            parserContext.setBlockSymbols(false);
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Object value = this.compiledBlock.getValue(obj, obj2, variableResolverFactory);
        if (value == null) {
            Sign$$ExternalSyntheticBUOutline0.m868m("with-block against null pointer", this.expr, this.start);
            return null;
        }
        for (ParmValuePair parmValuePair : this.withExpressions) {
            parmValuePair.eval(value, variableResolverFactory);
        }
        return value;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        String str = this.nestParm;
        char[] cArr = this.expr;
        int i = this.blockStart;
        int i2 = this.blockOffset;
        Object objEval = MVEL.eval(cArr, this.start, this.offset, obj, variableResolverFactory);
        ParseTools.parseWithExpressions(str, cArr, i, i2, objEval, variableResolverFactory);
        return objEval;
    }

    /* JADX WARN: Code restructure failed: missing block: B:134:0x0168, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01ba A[Catch: CompileException -> 0x01a2, TryCatch #0 {CompileException -> 0x01a2, blocks: (B:93:0x0176, B:97:0x017f, B:99:0x0184, B:103:0x01ab, B:102:0x01a4, B:104:0x01b2, B:105:0x01b7, B:107:0x01ba, B:109:0x01d8, B:108:0x01c1), top: B:115:0x0176 }] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01c1 A[Catch: CompileException -> 0x01a2, TryCatch #0 {CompileException -> 0x01a2, blocks: (B:93:0x0176, B:97:0x017f, B:99:0x0184, B:103:0x01ab, B:102:0x01a4, B:104:0x01b2, B:105:0x01b7, B:107:0x01ba, B:109:0x01d8, B:108:0x01c1), top: B:115:0x0176 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0120 A[PHI: r9
  0x0120: PHI (r9v8 int) = (r9v6 int), (r9v9 int) binds: [B:75:0x0148, B:62:0x011e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0155  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ParmValuePair[] compileWithExpressions(char[] cArr, int i, int i2, String str, Class cls, ParserContext parserContext) {
        String str2;
        ExecutableStatement executableStatement;
        String str3;
        String str4;
        ExecutableStatement executableStatement2;
        ArrayList arrayList = new ArrayList();
        int i3 = i + i2;
        String str5 = _UrlKt.FRAGMENT_ENCODE_SET;
        int iBalancedCapture = i;
        int i4 = iBalancedCapture;
        String strCreateStringTrimmed = _UrlKt.FRAGMENT_ENCODE_SET;
        int iOpLookup = -1;
        while (iBalancedCapture < i3) {
            char c2 = cArr[iBalancedCapture];
            if (c2 != '\"') {
                str3 = str5;
                if (c2 == '%') {
                    int i5 = iBalancedCapture + 1;
                    if (i5 < i3 && cArr[i5] == '=') {
                        iOpLookup = ParseTools.opLookup(c2);
                    }
                } else if (c2 != '/') {
                    if (c2 == '=') {
                        strCreateStringTrimmed = ParseTools.createStringTrimmed(cArr, i4, (iBalancedCapture - i4) - (iOpLookup != -1 ? 1 : 0));
                        i4 = iBalancedCapture + 1;
                    } else if (c2 != '[' && c2 != '{' && c2 != '\'' && c2 != '(') {
                        switch (c2) {
                            case ',':
                                if (strCreateStringTrimmed == null || strCreateStringTrimmed.length() == 0) {
                                    if (str == null) {
                                        try {
                                            str4 = new String(cArr, i4, iBalancedCapture - i4);
                                        } catch (CompileException e) {
                                            e.setCursor(i4 + (e.getCursor() - (e.getExpr().length - i2)));
                                            e.setExpr(cArr);
                                            throw e;
                                        }
                                    } else {
                                        str4 = str + '.' + new String(cArr, i4, iBalancedCapture - i4);
                                    }
                                    arrayList.add(new ParmValuePair(null, (ExecutableStatement) ParseTools.subCompileExpression(str4, parserContext), cls, parserContext));
                                    iBalancedCapture++;
                                } else {
                                    if (str == null) {
                                        Sign$$ExternalSyntheticBUOutline0.m868m("operative assignment not possible here", cArr, i);
                                        return null;
                                    }
                                    try {
                                        if (iOpLookup != -1) {
                                            executableStatement2 = (ExecutableStatement) ParseTools.subCompileExpression(ParseTools.createShortFormOperativeAssignment(str + "." + strCreateStringTrimmed, cArr, i4, iBalancedCapture - i4, iOpLookup), parserContext);
                                        } else {
                                            executableStatement2 = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i4, iBalancedCapture - i4, parserContext);
                                        }
                                        arrayList.add(new ParmValuePair(strCreateStringTrimmed, executableStatement2, cls, parserContext));
                                        iBalancedCapture++;
                                        strCreateStringTrimmed = null;
                                    } catch (CompileException e2) {
                                        e2.setCursor(i4 + (e2.getCursor() - (e2.getExpr().length - i2)));
                                        e2.setExpr(cArr);
                                        throw e2;
                                    }
                                }
                                i4 = iBalancedCapture;
                                iOpLookup = -1;
                                break;
                        }
                    }
                } else if (iBalancedCapture < i3 && cArr[iBalancedCapture + 1] == '/') {
                    while (iBalancedCapture < i3 && cArr[iBalancedCapture] != '\n') {
                        cArr[iBalancedCapture] = ' ';
                        iBalancedCapture++;
                    }
                    if (strCreateStringTrimmed == null) {
                    }
                } else if (iBalancedCapture < i3 && cArr[iBalancedCapture + 1] == '*') {
                    int i6 = i3 - 1;
                    while (iBalancedCapture < i6 && (cArr[iBalancedCapture] != '*' || cArr[iBalancedCapture + 1] != '/')) {
                        cArr[iBalancedCapture] = ' ';
                        iBalancedCapture++;
                    }
                    int i7 = iBalancedCapture + 1;
                    cArr[iBalancedCapture] = ' ';
                    iBalancedCapture += 2;
                    cArr[i7] = ' ';
                    if (strCreateStringTrimmed == null) {
                        i4 = iBalancedCapture;
                    }
                } else if (iBalancedCapture < i3 && cArr[iBalancedCapture + 1] == '=') {
                    iOpLookup = 3;
                }
                iBalancedCapture++;
                str5 = str3;
            } else {
                str3 = str5;
            }
            iBalancedCapture = ParseTools.balancedCapture(cArr, iBalancedCapture, i3, c2);
            iBalancedCapture++;
            str5 = str3;
        }
        String str6 = str5;
        if (i4 != i3) {
            if (strCreateStringTrimmed != null) {
                try {
                    if (str6.equals(strCreateStringTrimmed)) {
                        if (str != null) {
                            str2 = new String(cArr, i4, i3 - i4);
                        } else {
                            str2 = str + '.' + new String(cArr, i4, i3 - i4);
                        }
                        arrayList.add(new ParmValuePair(null, (ExecutableStatement) ParseTools.subCompileExpression(str2, parserContext), cls, parserContext));
                    } else {
                        if (str == null) {
                            throw new CompileException("operative assignment not possible here", cArr, i);
                        }
                        if (iOpLookup != -1) {
                            executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(ParseTools.createShortFormOperativeAssignment(str + "." + strCreateStringTrimmed, cArr, i4, i3 - i4, iOpLookup), parserContext);
                        } else {
                            executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i4, i3 - i4, parserContext);
                        }
                        arrayList.add(new ParmValuePair(strCreateStringTrimmed, executableStatement, cls, parserContext));
                    }
                } catch (CompileException e3) {
                    throw ErrorUtil.rewriteIfNeeded(e3, cArr, i4);
                }
            } else {
                if (str != null) {
                }
                arrayList.add(new ParmValuePair(null, (ExecutableStatement) ParseTools.subCompileExpression(str2, parserContext), cls, parserContext));
            }
        }
        ParmValuePair[] parmValuePairArr = new ParmValuePair[arrayList.size()];
        arrayList.toArray(parmValuePairArr);
        return parmValuePairArr;
    }

    @Override // org.mvel2.ast.NestedStatement
    public ExecutableStatement getNestedStatement() {
        return this.compiledBlock;
    }

    public ParmValuePair[] getWithExpressions() {
        return this.withExpressions;
    }

    public static final class ParmValuePair implements Serializable {
        private Serializable setExpression;
        private ExecutableStatement statement;

        public ParmValuePair(String str, ExecutableStatement executableStatement, Class cls, ParserContext parserContext) {
            if (str != null && str.length() != 0) {
                this.setExpression = MVEL.compileSetExpression(str, cls != null ? PropertyTools.getReturnType(cls, str, parserContext) : Object.class, parserContext);
            }
            this.statement = executableStatement;
        }

        public Serializable getSetExpression() {
            return this.setExpression;
        }

        public ExecutableStatement getStatement() {
            return this.statement;
        }

        public void eval(Object obj, VariableResolverFactory variableResolverFactory) {
            Serializable serializable = this.setExpression;
            ExecutableStatement executableStatement = this.statement;
            if (serializable == null) {
                executableStatement.getValue(obj, variableResolverFactory);
            } else {
                MVEL.executeSetExpression(serializable, obj, variableResolverFactory, executableStatement.getValue(obj, variableResolverFactory));
            }
        }
    }
}
