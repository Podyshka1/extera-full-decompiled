package org.mvel2.ast;

import java.io.Serializable;
import okhttp3.internal.url._UrlKt;
import org.mvel2.CompileException;
import org.mvel2.ParserConfiguration;
import org.mvel2.ParserContext;
import org.mvel2.PropertyAccessor;
import org.mvel2.compiler.Accessor;
import org.mvel2.debug.DebugTools;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.AccessorOptimizer;
import org.mvel2.optimizers.OptimizationNotSupported;
import org.mvel2.optimizers.OptimizerFactory;
import org.mvel2.util.CompilerTools;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes.dex */
public class ASTNode implements Cloneable, Serializable {
    public static final int ARRAY_TYPE_LITERAL = 67108864;
    public static final int ASSIGN = 128;
    public static final int BLOCK_DO = 65536;
    public static final int BLOCK_DO_UNTIL = 131072;
    public static final int BLOCK_FOR = 262144;
    public static final int BLOCK_FOREACH = 4096;
    public static final int BLOCK_IF = 2048;
    public static final int BLOCK_UNTIL = 16384;
    public static final int BLOCK_WHILE = 32768;
    public static final int BLOCK_WITH = 8192;
    public static final int COLLECTION = 256;
    public static final int COMPILE_IMMEDIATE = 16;
    public static final int DEEP_PROPERTY = 2;
    public static final int DEFERRED_TYPE_RES = 8388608;
    public static final int DEOP = 268435456;
    public static final int DISCARD = 536870912;
    public static final int FQCN = 1048576;
    public static final int IDENTIFIER = 8;
    public static final int INLINE_COLLECTION = 1024;
    public static final int INVERT = 64;
    public static final int LITERAL = 1;
    public static final int NOJIT = 134217728;
    public static final int NUMERIC = 32;
    public static final int OPERATOR = 4;
    public static final int OPT_SUBTR = 524288;
    public static final int PCTX_STORED = 33554432;
    public static final int STACKLANG = 4194304;
    public static final int STRONG_TYPING = 16777216;
    public static final int THISREF = 512;
    protected volatile transient Accessor accessor;
    protected int cursorPosition;
    protected Class egressType;
    protected int endOfName;
    protected char[] expr;
    public int fields;
    protected int firstUnion;
    protected Object literal;
    protected String nameCache;
    public ASTNode nextASTNode;
    protected int offset;
    protected ParserContext pCtx;
    protected volatile Accessor safeAccessor;
    protected int start;

    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (this.accessor != null) {
            try {
                return this.accessor.getValue(obj, obj2, variableResolverFactory);
            } catch (ClassCastException e) {
                return deop(obj, obj2, variableResolverFactory, e);
            }
        }
        return optimize(obj, obj2, variableResolverFactory);
    }

    private Object deop(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, RuntimeException runtimeException) {
        Object reducedValueAccelerated;
        if ((this.fields & 268435456) == 0) {
            this.accessor = null;
            this.fields |= 402653184;
            synchronized (this) {
                reducedValueAccelerated = getReducedValueAccelerated(obj, obj2, variableResolverFactory);
            }
            return reducedValueAccelerated;
        }
        throw runtimeException;
    }

    private Object optimize(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        AccessorOptimizer accessorCompiler;
        ParserContext parserContext;
        int i = this.fields;
        if ((i & 268435456) != 0) {
            this.fields = i ^ 268435456;
        }
        if ((this.fields & 134217728) != 0 || (variableResolverFactory != null && variableResolverFactory.isResolveable(getName()))) {
            accessorCompiler = OptimizerFactory.getAccessorCompiler(OptimizerFactory.SAFE_REFLECTIVE);
        } else {
            accessorCompiler = OptimizerFactory.getDefaultAccessorCompiler();
        }
        if ((this.fields & 33554432) != 0) {
            parserContext = (ParserContext) this.literal;
        } else {
            parserContext = new ParserContext(new ParserConfiguration(CompilerTools.getInjectedImports(variableResolverFactory), null));
        }
        try {
            parserContext.optimizationNotify();
            setAccessor(accessorCompiler.optimizeAccessor(parserContext, this.expr, this.start, this.offset, obj, obj2, variableResolverFactory, true, this.egressType));
        } catch (OptimizationNotSupported unused) {
            accessorCompiler = OptimizerFactory.getAccessorCompiler(OptimizerFactory.SAFE_REFLECTIVE);
            setAccessor(accessorCompiler.optimizeAccessor(parserContext, this.expr, this.start, this.offset, obj, obj2, variableResolverFactory, true, null));
        }
        if (this.accessor == null) {
            return PropertyAccessor.get(this.expr, this.start, this.offset, obj, variableResolverFactory, obj2, parserContext);
        }
        Object resultOptPass = accessorCompiler.getResultOptPass();
        if (this.egressType == null) {
            this.egressType = accessorCompiler.getEgressType();
        }
        return resultOptPass;
    }

    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if ((this.fields & 1) != 0) {
            return this.literal;
        }
        return PropertyAccessor.get(this.expr, this.start, this.offset, obj, variableResolverFactory, obj2, this.pCtx);
    }

    protected String getAbsoluteRootElement() {
        if ((this.fields & 258) != 0) {
            return new String(this.expr, this.start, getAbsoluteFirstPart());
        }
        return this.nameCache;
    }

    public Class getEgressType() {
        return this.egressType;
    }

    public void setEgressType(Class cls) {
        this.egressType = cls;
    }

    public char[] getNameAsArray() {
        char[] cArr = this.expr;
        int i = this.start;
        return ParseTools.subArray(cArr, i, this.offset + i);
    }

    private int getAbsoluteFirstPart() {
        int i = this.fields;
        if ((i & 256) != 0) {
            int i2 = this.firstUnion;
            return (i2 < 0 || this.endOfName < i2) ? this.endOfName : i2;
        }
        if ((i & 2) != 0) {
            return this.firstUnion;
        }
        return -1;
    }

    public String getAbsoluteName() {
        int i = this.firstUnion;
        int i2 = this.start;
        if (i > i2) {
            return new String(this.expr, i2, getAbsoluteFirstPart() - this.start);
        }
        return getName();
    }

    public String getName() {
        String str = this.nameCache;
        if (str != null) {
            return str;
        }
        char[] cArr = this.expr;
        if (cArr != null) {
            String str2 = new String(cArr, this.start, this.offset);
            this.nameCache = str2;
            return str2;
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public Object getLiteralValue() {
        return this.literal;
    }

    public void storeInLiteralRegister(Object obj) {
        this.literal = obj;
    }

    public void setLiteralValue(Object obj) {
        this.literal = obj;
        this.fields |= 1;
    }

    protected void setName(char[] cArr) {
        if (ParseTools.isNumber(cArr, this.start, this.offset)) {
            Object objHandleNumericConversion = ParseTools.handleNumericConversion(cArr, this.start, this.offset);
            this.literal = objHandleNumericConversion;
            this.egressType = objHandleNumericConversion.getClass();
            int i = this.fields | 41;
            this.fields = i;
            if ((i & 64) != 0) {
                try {
                    this.literal = Integer.valueOf(~((Integer) this.literal).intValue());
                    return;
                } catch (ClassCastException unused) {
                    throw new CompileException("bitwise (~) operator can only be applied to integers", this.expr, this.start);
                }
            }
            return;
        }
        this.literal = new String(cArr, this.start, this.offset);
        int i2 = this.start;
        int i3 = this.offset + i2;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            char c = cArr[i2];
            if (c != '(') {
                if (c != '.') {
                    if (c != '[') {
                        continue;
                    }
                } else if (this.firstUnion == 0) {
                    this.firstUnion = i2;
                }
                i2++;
            }
            if (this.firstUnion == 0) {
                this.firstUnion = i2;
            }
            if (this.endOfName == 0) {
                this.endOfName = i2;
                if (i2 < cArr.length && cArr[i2 + 1] == ']') {
                    this.fields |= 67108864;
                }
            } else {
                i2++;
            }
        }
        int i4 = this.fields;
        if ((i4 & 1024) != 0) {
            return;
        }
        if (this.firstUnion > this.start) {
            this.fields = i4 | 10;
        } else {
            this.fields = i4 | 8;
        }
    }

    public Accessor setAccessor(Accessor accessor) {
        this.accessor = accessor;
        return accessor;
    }

    public boolean isIdentifier() {
        return (this.fields & 8) != 0;
    }

    public boolean isLiteral() {
        return (this.fields & 1) != 0;
    }

    public boolean isThisVal() {
        return (this.fields & 512) != 0;
    }

    public boolean isOperator() {
        return (this.fields & 4) != 0;
    }

    public boolean isOperator(Integer num) {
        return (this.fields & 4) != 0 && num.equals(this.literal);
    }

    public Integer getOperator() {
        return -1;
    }

    protected boolean isCollection() {
        return (this.fields & 256) != 0;
    }

    public boolean isAssignment() {
        return (this.fields & 128) != 0;
    }

    public boolean isDeepProperty() {
        return (this.fields & 2) != 0;
    }

    public boolean isFQCN() {
        return (this.fields & 1048576) != 0;
    }

    public void setAsLiteral() {
        this.fields |= 1;
    }

    public void setAsFQCNReference() {
        this.fields |= 1048576;
    }

    public int getCursorPosition() {
        return this.cursorPosition;
    }

    public void setCursorPosition(int i) {
        this.cursorPosition = i;
    }

    public boolean isDiscard() {
        int i = this.fields;
        return (i == -1 || (i & 536870912) == 0) ? false : true;
    }

    public void discard() {
        this.fields |= 536870912;
    }

    public void strongTyping() {
        this.fields |= 16777216;
    }

    public void storePctx() {
        this.fields |= 33554432;
    }

    public boolean isDebuggingSymbol() {
        return this.fields == -1;
    }

    public int getFields() {
        return this.fields;
    }

    public Accessor getAccessor() {
        return this.accessor;
    }

    public boolean canSerializeAccessor() {
        return this.safeAccessor != null;
    }

    public int getStart() {
        return this.start;
    }

    public int getOffset() {
        return this.offset;
    }

    public char[] getExpr() {
        return this.expr;
    }

    protected ASTNode(ParserContext parserContext) {
        this.fields = 0;
        this.pCtx = parserContext;
    }

    public ASTNode(char[] cArr, int i, int i2, int i3, ParserContext parserContext) {
        this(parserContext);
        this.fields = i3;
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        setName(cArr);
    }

    public String toString() {
        if (!isOperator()) {
            return (33554432 & this.fields) != 0 ? this.nameCache : new String(this.expr, this.start, this.offset);
        }
        return "<<" + DebugTools.getOperatorName(getOperator().intValue()) + ">>";
    }

    protected ClassLoader getClassLoader() {
        ParserContext parserContext = this.pCtx;
        return parserContext != null ? parserContext.getClassLoader() : Thread.currentThread().getContextClassLoader();
    }
}
