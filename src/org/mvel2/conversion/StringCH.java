package org.mvel2.conversion;

import org.mvel2.ConversionHandler;
import org.mvel2.compiler.BlankLiteral;

/* JADX INFO: loaded from: classes.dex */
public class StringCH implements ConversionHandler {
    @Override // org.mvel2.ConversionHandler
    public Object convertFrom(Object obj) {
        return String.valueOf(obj);
    }

    @Override // org.mvel2.ConversionHandler
    public boolean canConvertFrom(Class cls) {
        return cls != BlankLiteral.class;
    }
}
