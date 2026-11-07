package org.mvel2.integration;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public interface VariableResolver extends Serializable {
    int getFlags();

    String getName();

    Class getType();

    Object getValue();

    void setStaticType(Class cls);

    void setValue(Object obj);
}
