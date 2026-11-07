package com.android.dx.cf.attrib;

import com.android.dx.cf.iface.Attribute;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseAttribute implements Attribute {
    private final String name;

    public BaseAttribute(String str) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m216m("name == null");
            throw null;
        }
        this.name = str;
    }

    @Override // com.android.dx.cf.iface.Attribute
    public String getName() {
        return this.name;
    }
}
