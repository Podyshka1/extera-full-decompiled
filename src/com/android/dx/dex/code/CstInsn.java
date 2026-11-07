package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstString;
import com.android.dx.util.Hex;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
public final class CstInsn extends FixedSizeInsn {
    private int classIndex;
    private final Constant constant;
    private int index;

    public CstInsn(Dop dop, SourcePosition sourcePosition, RegisterSpecList registerSpecList, Constant constant) {
        super(dop, sourcePosition, registerSpecList);
        if (constant == null) {
            f$$ExternalSyntheticBUOutline2.m213m("constant == null");
            throw null;
        }
        this.constant = constant;
        this.index = -1;
        this.classIndex = -1;
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public DalvInsn withOpcode(Dop dop) {
        CstInsn cstInsn = new CstInsn(dop, getPosition(), getRegisters(), this.constant);
        int i = this.index;
        if (i >= 0) {
            cstInsn.setIndex(i);
        }
        int i2 = this.classIndex;
        if (i2 >= 0) {
            cstInsn.setClassIndex(i2);
        }
        return cstInsn;
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        CstInsn cstInsn = new CstInsn(getOpcode(), getPosition(), registerSpecList, this.constant);
        int i = this.index;
        if (i >= 0) {
            cstInsn.setIndex(i);
        }
        int i2 = this.classIndex;
        if (i2 >= 0) {
            cstInsn.setClassIndex(i2);
        }
        return cstInsn;
    }

    public Constant getConstant() {
        return this.constant;
    }

    public int getIndex() {
        int i = this.index;
        if (i >= 0) {
            return i;
        }
        CstInsn$$ExternalSyntheticBUOutline0.m222m("index not yet set for ", this.constant);
        return 0;
    }

    public boolean hasIndex() {
        return this.index >= 0;
    }

    public void setIndex(int i) {
        if (i < 0) {
            f$$ExternalSyntheticBUOutline1.m212m("index < 0");
        } else if (this.index >= 0) {
            Segment$$ExternalSyntheticBUOutline1.m925m("index already set");
        } else {
            this.index = i;
        }
    }

    public int getClassIndex() {
        int i = this.classIndex;
        if (i >= 0) {
            return i;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("class index not yet set");
        return 0;
    }

    public boolean hasClassIndex() {
        return this.classIndex >= 0;
    }

    public void setClassIndex(int i) {
        if (i < 0) {
            f$$ExternalSyntheticBUOutline1.m212m("index < 0");
        } else if (this.classIndex >= 0) {
            Segment$$ExternalSyntheticBUOutline1.m925m("class index already set");
        } else {
            this.classIndex = i;
        }
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public String argString() {
        return this.constant.toHuman();
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public String cstString() {
        Constant constant = this.constant;
        if (constant instanceof CstString) {
            return ((CstString) constant).toQuoted();
        }
        return constant.toHuman();
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public String cstComment() {
        if (!hasIndex()) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        StringBuilder sb = new StringBuilder(20);
        sb.append(getConstant().typeName());
        sb.append('@');
        int i = this.index;
        if (i < 65536) {
            sb.append(Hex.u2(i));
        } else {
            sb.append(Hex.u4(i));
        }
        return sb.toString();
    }
}
