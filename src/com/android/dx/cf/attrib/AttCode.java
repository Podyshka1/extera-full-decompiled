package com.android.dx.cf.attrib;

import com.android.dx.cf.code.ByteCatchList;
import com.android.dx.cf.code.BytecodeArray;
import com.android.dx.cf.iface.AttributeList;
import com.android.dx.util.MutabilityException;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

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
            f$$ExternalSyntheticBUOutline1.m212m("maxStack < 0");
            throw null;
        }
        if (i2 < 0) {
            f$$ExternalSyntheticBUOutline1.m212m("maxLocals < 0");
            throw null;
        }
        if (bytecodeArray == null) {
            f$$ExternalSyntheticBUOutline2.m213m("code == null");
            throw null;
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
                f$$ExternalSyntheticBUOutline2.m213m("attributes == null");
                throw null;
            }
        } catch (NullPointerException unused2) {
            f$$ExternalSyntheticBUOutline2.m213m("catches == null");
            throw null;
        }
    }

    @Override // com.android.dx.cf.iface.Attribute
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
