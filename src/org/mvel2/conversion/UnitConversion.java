package org.mvel2.conversion;

import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.url._UrlKt;
import org.mvel2.ConversionHandler;
import org.mvel2.Unit;

/* JADX INFO: loaded from: classes5.dex */
public class UnitConversion implements ConversionHandler {
    private static final Logger LOG = Logger.getLogger(UnitConversion.class.getName());

    @Override // org.mvel2.ConversionHandler
    public Object convertFrom(Object obj) {
        try {
            return ((Unit) Unit.class.newInstance()).convertFrom(obj);
        } catch (IllegalAccessException e) {
            LOG.log(Level.SEVERE, _UrlKt.FRAGMENT_ENCODE_SET, (Throwable) e);
            return null;
        } catch (InstantiationException e2) {
            LOG.log(Level.SEVERE, _UrlKt.FRAGMENT_ENCODE_SET, (Throwable) e2);
            return null;
        }
    }

    @Override // org.mvel2.ConversionHandler
    public boolean canConvertFrom(Class cls) {
        if (!Unit.class.isAssignableFrom(cls) && !Number.class.isAssignableFrom(cls)) {
            return false;
        }
        try {
            return ((Unit) Unit.class.newInstance()).canConvertFrom(cls);
        } catch (IllegalAccessException e) {
            LOG.log(Level.SEVERE, _UrlKt.FRAGMENT_ENCODE_SET, (Throwable) e);
            return false;
        } catch (InstantiationException e2) {
            LOG.log(Level.SEVERE, _UrlKt.FRAGMENT_ENCODE_SET, (Throwable) e2);
            return false;
        }
    }
}
