package com.android.p003dx.p004cf.attrib;

import com.android.p003dx.rop.type.TypeList;
import com.android.p003dx.util.MutabilityException;

/* JADX INFO: loaded from: classes4.dex */
public final class AttExceptions extends BaseAttribute {
    public static final String ATTRIBUTE_NAME = "Exceptions";
    private final TypeList exceptions;

    public AttExceptions(TypeList typeList) {
        super(ATTRIBUTE_NAME);
        try {
            if (typeList.isMutable()) {
                throw new MutabilityException("exceptions.isMutable()");
            }
            this.exceptions = typeList;
        } catch (NullPointerException unused) {
            throw new NullPointerException("exceptions == null");
        }
    }

    @Override // com.android.p003dx.p004cf.iface.Attribute
    public int byteLength() {
        return (this.exceptions.size() * 2) + 8;
    }

    public TypeList getExceptions() {
        return this.exceptions;
    }
}
