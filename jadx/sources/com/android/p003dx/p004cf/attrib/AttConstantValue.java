package com.android.p003dx.p004cf.attrib;

import com.android.p003dx.rop.cst.CstDouble;
import com.android.p003dx.rop.cst.CstFloat;
import com.android.p003dx.rop.cst.CstInteger;
import com.android.p003dx.rop.cst.CstLong;
import com.android.p003dx.rop.cst.CstString;
import com.android.p003dx.rop.cst.TypedConstant;

/* JADX INFO: loaded from: classes4.dex */
public final class AttConstantValue extends BaseAttribute {
    public static final String ATTRIBUTE_NAME = "ConstantValue";
    private final TypedConstant constantValue;

    @Override // com.android.p003dx.p004cf.iface.Attribute
    public int byteLength() {
        return 8;
    }

    public AttConstantValue(TypedConstant typedConstant) {
        super(ATTRIBUTE_NAME);
        if ((typedConstant instanceof CstString) || (typedConstant instanceof CstInteger) || (typedConstant instanceof CstLong) || (typedConstant instanceof CstFloat) || (typedConstant instanceof CstDouble)) {
            this.constantValue = typedConstant;
        } else {
            if (typedConstant == null) {
                throw new NullPointerException("constantValue == null");
            }
            throw new IllegalArgumentException("bad type for constantValue");
        }
    }

    public TypedConstant getConstantValue() {
        return this.constantValue;
    }
}
