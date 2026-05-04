package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.ClassImportResolverFactory;
import org.mvel2.integration.impl.ImmutableDefaultFactory;
import org.mvel2.integration.impl.StackResetResolverFactory;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class ImportNode extends ASTNode {
    private static final char[] WC_TEST = {'.', '*'};
    private int _offset;
    private Class importClass;
    private boolean packageImport;

    public ImportNode(char[] cArr, int i, int i2, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        this.pCtx = parserContext;
        if (ParseTools.endsWith(cArr, i, i2, WC_TEST)) {
            this.packageImport = true;
            short sFindLast = (short) ParseTools.findLast(cArr, i, i2, '.');
            this._offset = sFindLast;
            if (sFindLast == -1) {
                this._offset = 0;
                return;
            }
            return;
        }
        String str = new String(cArr, i, i2);
        ClassLoader classLoader = getClassLoader();
        try {
            this.importClass = Class.forName(str, true, classLoader);
        } catch (ClassNotFoundException unused) {
            StringBuilder sb = new StringBuilder();
            int iLastIndexOf = str.lastIndexOf(46);
            sb.append(str.substring(0, iLastIndexOf));
            sb.append("$");
            sb.append(str.substring(iLastIndexOf + 1));
            try {
                this.importClass = Class.forName(sb.toString().trim(), true, classLoader);
            } catch (ClassNotFoundException unused2) {
                throw new CompileException("class not found: " + new String(cArr), cArr, i);
            }
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (!this.packageImport) {
            if (MVEL.COMPILER_OPT_ALLOCATE_TYPE_LITERALS_TO_SHARED_SYMBOL_TABLE) {
                variableResolverFactory.createVariable(this.importClass.getSimpleName(), this.importClass);
                return this.importClass;
            }
            return ParseTools.findClassImportResolverFactory(variableResolverFactory, this.pCtx).addClass(this.importClass);
        }
        if (variableResolverFactory instanceof ImmutableDefaultFactory) {
            return null;
        }
        if ((variableResolverFactory instanceof StackResetResolverFactory) && (((StackResetResolverFactory) variableResolverFactory).getDelegate() instanceof ImmutableDefaultFactory)) {
            return null;
        }
        ClassImportResolverFactory classImportResolverFactoryFindClassImportResolverFactory = ParseTools.findClassImportResolverFactory(variableResolverFactory, this.pCtx);
        char[] cArr = this.expr;
        int i = this.start;
        classImportResolverFactoryFindClassImportResolverFactory.addPackageImport(new String(cArr, i, this._offset - i));
        return null;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return getReducedValueAccelerated(obj, obj2, variableResolverFactory);
    }

    public Class getImportClass() {
        return this.importClass;
    }

    public boolean isPackageImport() {
        return this.packageImport;
    }

    public void setPackageImport(boolean z) {
        this.packageImport = z;
    }

    public String getPackageImport() {
        char[] cArr = this.expr;
        int i = this.start;
        return new String(cArr, i, this._offset - i);
    }
}
