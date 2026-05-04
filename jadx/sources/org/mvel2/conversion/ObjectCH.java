package org.mvel2.conversion;

import org.mvel2.ConversionHandler;

/* JADX INFO: loaded from: classes.dex */
public class ObjectCH implements ConversionHandler {
    @Override // org.mvel2.ConversionHandler
    public boolean canConvertFrom(Class cls) {
        return true;
    }

    @Override // org.mvel2.ConversionHandler
    public Object convertFrom(Object obj) {
        return obj;
    }
}
