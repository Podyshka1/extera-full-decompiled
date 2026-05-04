package org.mvel2.util;

import java.util.Set;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;

/* JADX INFO: loaded from: classes5.dex */
public class VariableSpaceCompiler {
    private static final Object[] EMPTY_OBJ = new Object[0];

    public static SharedVariableSpaceModel compileShared(String str, ParserContext parserContext) {
        return compileShared(str, parserContext, EMPTY_OBJ);
    }

    public static SharedVariableSpaceModel compileShared(String str, ParserContext parserContext, Object[] objArr) {
        String[] indexedVarNames = parserContext.getIndexedVarNames();
        ParserContext parserContextCreate = ParserContext.create();
        parserContextCreate.setIndexAllocation(true);
        MVEL.analysisCompile(str, parserContextCreate);
        Set<String> setKeySet = parserContextCreate.getVariables().keySet();
        parserContext.addIndexedLocals(setKeySet);
        String[] strArr = (String[]) setKeySet.toArray(new String[setKeySet.size()]);
        String[] strArr2 = new String[indexedVarNames.length + strArr.length];
        System.arraycopy(indexedVarNames, 0, strArr2, 0, indexedVarNames.length);
        System.arraycopy(strArr, 0, strArr2, indexedVarNames.length, strArr.length);
        return new SharedVariableSpaceModel(strArr2, objArr);
    }

    public static SimpleVariableSpaceModel compile(String str, ParserContext parserContext) {
        String[] indexedVarNames = parserContext.getIndexedVarNames();
        ParserContext parserContextCreate = ParserContext.create();
        parserContextCreate.setIndexAllocation(true);
        MVEL.analysisCompile(str, parserContextCreate);
        Set<String> setKeySet = parserContextCreate.getVariables().keySet();
        parserContext.addIndexedLocals(setKeySet);
        String[] strArr = (String[]) setKeySet.toArray(new String[setKeySet.size()]);
        String[] strArr2 = new String[indexedVarNames.length + strArr.length];
        System.arraycopy(indexedVarNames, 0, strArr2, 0, indexedVarNames.length);
        System.arraycopy(strArr, 0, strArr2, indexedVarNames.length, strArr.length);
        return new SimpleVariableSpaceModel(strArr2);
    }
}
