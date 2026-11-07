package org.mvel2.optimizers.impl.refl.collection;

import java.util.HashMap;
import java.util.Map;
import org.mvel2.compiler.Accessor;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class MapCreator implements Accessor {
    private Accessor[] keys;
    private int size;
    private Accessor[] vals;

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        HashMap map = new HashMap(this.size * 2);
        int i = this.size;
        while (true) {
            i--;
            if (i == -1) {
                return map;
            }
            map.put(this.keys[i].getValue(obj, obj2, variableResolverFactory), this.vals[i].getValue(obj, obj2, variableResolverFactory));
        }
    }

    public MapCreator(Accessor[] accessorArr, Accessor[] accessorArr2) {
        this.keys = accessorArr;
        this.size = accessorArr.length;
        this.vals = accessorArr2;
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return Map.class;
    }
}
