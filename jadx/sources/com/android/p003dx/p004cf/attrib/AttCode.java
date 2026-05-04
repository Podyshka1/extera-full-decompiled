package com.android.p003dx.p004cf.attrib;

import com.android.p003dx.p004cf.code.ByteCatchList;
import com.android.p003dx.p004cf.code.BytecodeArray;
import com.android.p003dx.p004cf.iface.AttributeList;
import com.android.p003dx.util.MutabilityException;

/* JADX INFO: loaded from: classes4.dex */
public final class AttCode extends BaseAttribute {
    public static final String ATTRIBUTE_NAME = "Code";
    private final AttributeList attributes;
    private final ByteCatchList catches;
    private final BytecodeArray code;
    private final int maxLocals;
    private final int maxStack;

    public AttCode(int i, int i2, BytecodeArray bytecodeArray, ByteCatchList byteCatchList, AttributeList attributeList) {
        super(ATTRIBUTE_NAME);
        if (i < 0) {
            throw new IllegalArgumentException("maxStack < 0");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("maxLocals < 0");
        }
        if (bytecodeArray == null) {
            throw new NullPointerException("code == null");
        }
        try {
            if (byteCatchList.isMutable()) {
                throw new MutabilityException("catches.isMutable()");
            }
            try {
                if (attributeList.isMutable()) {
                    throw new MutabilityException("attributes.isMutable()");
                }
                this.maxStack = i;
                this.maxLocals = i2;
                this.code = bytecodeArray;
                this.catches = byteCatchList;
                this.attributes = attributeList;
            } catch (NullPointerException unused) {
                throw new NullPointerException("attributes == null");
            }
        } catch (NullPointerException unused2) {
            throw new NullPointerException("catches == null");
        }
    }

    @Override // com.android.p003dx.p004cf.iface.Attribute
    public int byteLength() {
        return this.code.byteLength() + 10 + this.catches.byteLength() + this.attributes.byteLength();
    }

    public int getMaxStack() {
        return this.maxStack;
    }

    public int getMaxLocals() {
        return this.maxLocals;
    }

    public BytecodeArray getCode() {
        return this.code;
    }

    public ByteCatchList getCatches() {
        return this.catches;
    }

    public AttributeList getAttributes() {
        return this.attributes;
    }
}
