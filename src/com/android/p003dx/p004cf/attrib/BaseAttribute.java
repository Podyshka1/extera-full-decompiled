package com.android.p003dx.p004cf.attrib;

import com.android.p003dx.p004cf.iface.Attribute;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseAttribute implements Attribute {
    private final String name;

    public BaseAttribute(String str) {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        this.name = str;
    }

    @Override // com.android.p003dx.p004cf.iface.Attribute
    public String getName() {
        return this.name;
    }
}
