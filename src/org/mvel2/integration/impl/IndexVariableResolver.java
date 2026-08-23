package org.mvel2.integration.impl;

import org.mvel2.integration.VariableResolver;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class IndexVariableResolver implements VariableResolver {
    private int indexPos;
    private Class type;
    private Object[] vars;

    @Override // org.mvel2.integration.VariableResolver
    public int getFlags() {
        return 0;
    }

    @Override // org.mvel2.integration.VariableResolver
    public String getName() {
        return null;
    }

    public IndexVariableResolver(int i, Object[] objArr) {
        this.indexPos = i;
        this.vars = objArr;
        initializeType(objArr[i]);
    }

    @Override // org.mvel2.integration.VariableResolver
    public Class getType() {
        return this.type;
    }

    @Override // org.mvel2.integration.VariableResolver
    public void setStaticType(Class cls) {
        this.type = cls;
    }

    @Override // org.mvel2.integration.VariableResolver
    public Object getValue() {
        return this.vars[this.indexPos];
    }

    @Override // org.mvel2.integration.VariableResolver
    public void setValue(Object obj) {
        initializeType(obj);
        Class cls = this.type;
        if (cls == Object.class || cls == null) {
            this.vars[this.indexPos] = obj;
        } else {
            this.vars[this.indexPos] = SimpleSTValueResolver.handleTypeCoercion(cls, obj);
        }
    }

    private void initializeType(Object obj) {
        if (this.type != null || obj == null) {
            return;
        }
        if (ParseTools.isNumeric(obj)) {
            this.type = obj.getClass();
        } else {
            this.type = Object.class;
        }
    }
}
