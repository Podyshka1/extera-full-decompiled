package org.mvel2.ast;

import java.util.ArrayList;
import java.util.Collection;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.DefaultLocalVariableResolverFactory;
import org.mvel2.integration.impl.ItemResolverFactory;
import org.mvel2.util.CompilerTools;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class Fold extends ASTNode {
    private ExecutableStatement constraintEx;
    private ExecutableStatement dataEx;
    private ExecutableStatement subEx;

    public Fold(char[] cArr, int i, int i2, int i3, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        int i4 = i2 + i;
        int i5 = i;
        while (true) {
            if (i5 >= i4) {
                break;
            }
            if (ParseTools.isWhitespace(cArr[i5])) {
                while (i5 < i4 && ParseTools.isWhitespace(cArr[i5])) {
                    i5++;
                }
                if (cArr[i5] == 'i' && cArr[i5 + 1] == 'n' && ParseTools.isJunct(cArr[i5 + 2])) {
                    break;
                }
            }
            i5++;
        }
        this.subEx = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i, (i5 - i) - 1, parserContext);
        int i6 = i5 + 2;
        int i7 = i6;
        while (true) {
            if (i7 >= i4) {
                break;
            }
            if (ParseTools.isWhitespace(cArr[i7])) {
                while (i7 < i4 && ParseTools.isWhitespace(cArr[i7])) {
                    i7++;
                }
                if (cArr[i7] == 'i' && cArr[i7 + 1] == 'f') {
                    int i8 = i7 + 2;
                    if (ParseTools.isJunct(cArr[i8])) {
                        this.constraintEx = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i8, i4 - i8, parserContext);
                        break;
                    }
                }
            }
            i7++;
        }
        while (ParseTools.isWhitespace(cArr[i7])) {
            i7--;
        }
        ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i6, i7 - i6, parserContext);
        this.dataEx = executableStatement;
        CompilerTools.expectType(parserContext, executableStatement, Collection.class, (i3 & 16) != 0);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        ItemResolverFactory.ItemResolver itemResolver = new ItemResolverFactory.ItemResolver("$");
        ItemResolverFactory itemResolverFactory = new ItemResolverFactory(itemResolver, new DefaultLocalVariableResolverFactory(variableResolverFactory));
        ExecutableStatement executableStatement = this.constraintEx;
        ExecutableStatement executableStatement2 = this.dataEx;
        if (executableStatement != null) {
            Collection collection = (Collection) executableStatement2.getValue(obj, obj2, variableResolverFactory);
            ArrayList arrayList = new ArrayList(collection.size());
            for (Object obj3 : collection) {
                itemResolver.value = obj3;
                if (((Boolean) this.constraintEx.getValue(obj, obj2, itemResolverFactory)).booleanValue()) {
                    arrayList.add(this.subEx.getValue(obj3, obj2, itemResolverFactory));
                }
            }
            return arrayList;
        }
        Collection collection2 = (Collection) executableStatement2.getValue(obj, obj2, variableResolverFactory);
        ArrayList arrayList2 = new ArrayList(collection2.size());
        for (Object obj4 : collection2) {
            ExecutableStatement executableStatement3 = this.subEx;
            itemResolver.value = obj4;
            arrayList2.add(executableStatement3.getValue(obj4, obj2, itemResolverFactory));
        }
        return arrayList2;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        ItemResolverFactory.ItemResolver itemResolver = new ItemResolverFactory.ItemResolver("$");
        ItemResolverFactory itemResolverFactory = new ItemResolverFactory(itemResolver, new DefaultLocalVariableResolverFactory(variableResolverFactory));
        ExecutableStatement executableStatement = this.constraintEx;
        ExecutableStatement executableStatement2 = this.dataEx;
        if (executableStatement != null) {
            Object value = executableStatement2.getValue(obj, obj2, variableResolverFactory);
            if (!(value instanceof Collection)) {
                throw new CompileException("was expecting type: Collection; but found type: ".concat(value != null ? value.getClass().getName() : "null"), this.expr, this.start);
            }
            Collection collection = (Collection) value;
            ArrayList arrayList = new ArrayList(collection.size());
            for (Object obj3 : collection) {
                itemResolver.value = obj3;
                if (((Boolean) this.constraintEx.getValue(obj, obj2, itemResolverFactory)).booleanValue()) {
                    arrayList.add(this.subEx.getValue(obj3, obj2, itemResolverFactory));
                }
            }
            return arrayList;
        }
        Object value2 = executableStatement2.getValue(obj, obj2, variableResolverFactory);
        if (!(value2 instanceof Collection)) {
            throw new CompileException("was expecting type: Collection; but found type: ".concat(value2 != null ? value2.getClass().getName() : "null"), this.expr, this.start);
        }
        Collection collection2 = (Collection) value2;
        ArrayList arrayList2 = new ArrayList(collection2.size());
        for (Object obj4 : collection2) {
            ExecutableStatement executableStatement3 = this.subEx;
            itemResolver.value = obj4;
            arrayList2.add(executableStatement3.getValue(obj4, obj2, itemResolverFactory));
        }
        return arrayList2;
    }

    @Override // org.mvel2.ast.ASTNode
    public Class getEgressType() {
        return Collection.class;
    }
}
