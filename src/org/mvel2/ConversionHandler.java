package org.mvel2;

/* JADX INFO: loaded from: classes5.dex */
public interface ConversionHandler {
    boolean canConvertFrom(Class cls);

    Object convertFrom(Object obj);
}
