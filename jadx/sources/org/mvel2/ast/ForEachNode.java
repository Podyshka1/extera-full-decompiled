package org.mvel2.ast;

import java.lang.reflect.Array;
import java.util.Iterator;
import org.mvel2.CompileException;
import org.mvel2.DataConversion;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.DefaultLocalVariableResolverFactory;
import org.mvel2.integration.impl.ItemResolverFactory;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class ForEachNode extends BlockNode {
    private static final int ARRAY = 1;
    private static final int CHARSEQUENCE = 2;
    private static final int INTEGER = 3;
    private static final int ITERABLE = 0;
    protected ExecutableStatement condition;
    protected String item;
    protected Class itemType;
    private int type;

    public ForEachNode(char[] cArr, int i, int i2, int i3, int i4, int i5, ParserContext parserContext) {
        ParserContext parserContextCreateSubcontext;
        super(parserContext);
        this.type = -1;
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        this.fields = i5;
        handleCond(cArr, i, i2, i5, parserContext);
        this.blockStart = i3;
        this.blockOffset = i4;
        if ((i5 & 16) != 0) {
            if (!parserContext.isStrictTypeEnforcement() || this.itemType == null) {
                parserContextCreateSubcontext = parserContext;
            } else {
                parserContextCreateSubcontext = parserContext.createSubcontext();
                parserContextCreateSubcontext.addInput(this.item, this.itemType);
            }
            parserContextCreateSubcontext.pushVariableScope();
            parserContextCreateSubcontext.makeVisible(this.item);
            this.compiledBlock = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i3, i4, parserContextCreateSubcontext);
            parserContextCreateSubcontext.popVariableScope();
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        ItemResolverFactory.ItemResolver itemResolver = new ItemResolverFactory.ItemResolver(this.item);
        ItemResolverFactory itemResolverFactory = new ItemResolverFactory(itemResolver, new DefaultLocalVariableResolverFactory(variableResolverFactory));
        Object value = this.condition.getValue(obj, obj2, variableResolverFactory);
        if (this.type == -1) {
            determineIterType(value.getClass());
        }
        int i = this.type;
        if (i == 0) {
            Iterator it = ((Iterable) value).iterator();
            while (it.hasNext()) {
                itemResolver.setValue(it.next());
                Object value2 = this.compiledBlock.getValue(obj, obj2, itemResolverFactory);
                if (itemResolverFactory.tiltFlag()) {
                    return value2;
                }
            }
            return null;
        }
        int i2 = 0;
        if (i == 1) {
            int length = Array.getLength(value);
            while (i2 < length) {
                itemResolver.setValue(Array.get(value, i2));
                Object value3 = this.compiledBlock.getValue(obj, obj2, itemResolverFactory);
                if (itemResolverFactory.tiltFlag()) {
                    return value3;
                }
                i2++;
            }
            return null;
        }
        if (i == 2) {
            char[] charArray = value.toString().toCharArray();
            int length2 = charArray.length;
            while (i2 < length2) {
                itemResolver.setValue(Character.valueOf(charArray[i2]));
                Object value4 = this.compiledBlock.getValue(obj, obj2, itemResolverFactory);
                if (itemResolverFactory.tiltFlag()) {
                    return value4;
                }
                i2++;
            }
            return null;
        }
        if (i != 3) {
            return null;
        }
        int iIntValue = ((Integer) value).intValue() + 1;
        for (int i3 = 1; i3 != iIntValue; i3++) {
            itemResolver.setValue(Integer.valueOf(i3));
            Object value5 = this.compiledBlock.getValue(obj, obj2, itemResolverFactory);
            if (itemResolverFactory.tiltFlag()) {
                return value5;
            }
        }
        return null;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        ItemResolverFactory.ItemResolver itemResolver = new ItemResolverFactory.ItemResolver(this.item);
        ItemResolverFactory itemResolverFactory = new ItemResolverFactory(itemResolver, new DefaultLocalVariableResolverFactory(variableResolverFactory));
        Object objEval = MVEL.eval(this.expr, this.start, this.offset, obj2, variableResolverFactory);
        Class cls = this.itemType;
        if (cls != null && cls.isArray()) {
            enforceTypeSafety(this.itemType, ParseTools.getBaseComponentType(objEval.getClass()));
        }
        this.compiledBlock = (ExecutableStatement) ParseTools.subCompileExpression(this.expr, this.blockStart, this.blockOffset, this.pCtx);
        if (objEval instanceof Iterable) {
            Iterator it = ((Iterable) objEval).iterator();
            while (it.hasNext()) {
                itemResolver.setValue(it.next());
                Object value = this.compiledBlock.getValue(obj, obj2, itemResolverFactory);
                if (itemResolverFactory.tiltFlag()) {
                    return value;
                }
            }
            return null;
        }
        int i = 0;
        if (objEval != null && objEval.getClass().isArray()) {
            int length = Array.getLength(objEval);
            while (i < length) {
                itemResolver.setValue(Array.get(objEval, i));
                Object value2 = this.compiledBlock.getValue(obj, obj2, itemResolverFactory);
                if (itemResolverFactory.tiltFlag()) {
                    return value2;
                }
                i++;
            }
            return null;
        }
        if (objEval instanceof CharSequence) {
            char[] charArray = objEval.toString().toCharArray();
            int length2 = charArray.length;
            while (i < length2) {
                itemResolver.setValue(Character.valueOf(charArray[i]));
                Object value3 = this.compiledBlock.getValue(obj, obj2, itemResolverFactory);
                if (itemResolverFactory.tiltFlag()) {
                    return value3;
                }
                i++;
            }
            return null;
        }
        if (objEval instanceof Integer) {
            int iIntValue = ((Integer) objEval).intValue() + 1;
            for (int i2 = 1; i2 != iIntValue; i2++) {
                itemResolver.setValue(Integer.valueOf(i2));
                Object value4 = this.compiledBlock.getValue(obj, obj2, itemResolverFactory);
                if (itemResolverFactory.tiltFlag()) {
                    return value4;
                }
            }
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("non-iterable type: ");
        sb.append(objEval != null ? objEval.getClass().getName() : "null");
        throw new CompileException(sb.toString(), this.expr, this.start);
    }

    private void handleCond(char[] cArr, int i, int i2, int i3, ParserContext parserContext) {
        int i4 = i + i2;
        int i5 = i;
        while (i5 < i4 && cArr[i5] != ':') {
            i5++;
        }
        if (i5 == i4 || cArr[i5] != ':') {
            throw new CompileException("expected : in foreach", cArr, i5);
        }
        int i6 = i5 - i;
        String strCreateStringTrimmed = ParseTools.createStringTrimmed(cArr, i, i6);
        this.item = strCreateStringTrimmed;
        int iIndexOf = strCreateStringTrimmed.indexOf(32);
        if (iIndexOf != -1) {
            String strSubstring = this.item.substring(0, iIndexOf);
            try {
                this.itemType = ParseTools.findClass(null, strSubstring, parserContext);
                String str = this.item;
                this.item = str.substring(str.lastIndexOf(32) + 1, this.item.length());
            } catch (ClassNotFoundException unused) {
                throw new CompileException("cannot resolve identifier: " + strSubstring, cArr, i);
            }
        }
        int i7 = i5 + 1;
        this.start = i7;
        int i8 = (i2 - i6) - 1;
        this.offset = i8;
        if ((i3 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(this.expr, i7, i8, parserContext);
            this.condition = executableStatement;
            Class knownEgressType = executableStatement.getKnownEgressType();
            if (this.itemType != null && knownEgressType.isArray()) {
                enforceTypeSafety(this.itemType, ParseTools.getBaseComponentType(this.condition.getKnownEgressType()));
            } else if (parserContext.isStrongTyping()) {
                determineIterType(knownEgressType);
            }
        }
    }

    private void determineIterType(Class cls) {
        if (Iterable.class.isAssignableFrom(cls)) {
            this.type = 0;
            return;
        }
        if (cls.isArray()) {
            this.type = 1;
            return;
        }
        if (CharSequence.class.isAssignableFrom(cls)) {
            this.type = 2;
        } else {
            if (Integer.class.isAssignableFrom(cls)) {
                this.type = 3;
                return;
            }
            throw new CompileException("non-iterable type: " + cls.getName(), this.expr, this.start);
        }
    }

    private void enforceTypeSafety(Class cls, Class cls2) {
        if (cls.isAssignableFrom(cls2) || DataConversion.canConvert(cls2, cls)) {
            return;
        }
        throw new CompileException("type mismatch in foreach: expected: " + cls.getName() + "; but found: " + ParseTools.getBaseComponentType(cls2), this.expr, this.start);
    }
}
