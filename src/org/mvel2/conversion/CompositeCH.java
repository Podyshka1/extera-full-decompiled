package org.mvel2.conversion;

import org.mvel2.ConversionHandler;

/* JADX INFO: loaded from: classes.dex */
public class CompositeCH implements ConversionHandler {
    private final ConversionHandler[] converters;

    public CompositeCH(ConversionHandler... conversionHandlerArr) {
        this.converters = conversionHandlerArr;
    }

    @Override // org.mvel2.ConversionHandler
    public Object convertFrom(Object obj) {
        for (ConversionHandler conversionHandler : this.converters) {
            if (conversionHandler.canConvertFrom(obj.getClass())) {
                return conversionHandler.convertFrom(obj);
            }
        }
        return null;
    }

    @Override // org.mvel2.ConversionHandler
    public boolean canConvertFrom(Class cls) {
        for (ConversionHandler conversionHandler : this.converters) {
            if (conversionHandler.canConvertFrom(cls)) {
                return true;
            }
        }
        return false;
    }
}
