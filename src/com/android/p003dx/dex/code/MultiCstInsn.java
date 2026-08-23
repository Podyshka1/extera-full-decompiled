package com.android.p003dx.dex.code;

import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.code.SourcePosition;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.util.Hex;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class MultiCstInsn extends FixedSizeInsn {
    private static final int NOT_SET = -1;
    private int classIndex;
    private final Constant[] constants;
    private final int[] index;

    public MultiCstInsn(Dop dop, SourcePosition sourcePosition, RegisterSpecList registerSpecList, Constant[] constantArr) {
        super(dop, sourcePosition, registerSpecList);
        if (constantArr == null) {
            throw new NullPointerException("constants == null");
        }
        this.constants = constantArr;
        this.index = new int[constantArr.length];
        int i = 0;
        while (true) {
            int[] iArr = this.index;
            if (i < iArr.length) {
                if (constantArr[i] == null) {
                    throw new NullPointerException("constants[i] == null");
                }
                iArr[i] = -1;
                i++;
            } else {
                this.classIndex = -1;
                return;
            }
        }
    }

    private MultiCstInsn(Dop dop, SourcePosition sourcePosition, RegisterSpecList registerSpecList, Constant[] constantArr, int[] iArr, int i) {
        super(dop, sourcePosition, registerSpecList);
        this.constants = constantArr;
        this.index = iArr;
        this.classIndex = i;
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    public DalvInsn withOpcode(Dop dop) {
        return new MultiCstInsn(dop, getPosition(), getRegisters(), this.constants, this.index, this.classIndex);
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    public DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        return new MultiCstInsn(getOpcode(), getPosition(), registerSpecList, this.constants, this.index, this.classIndex);
    }

    public int getNumberOfConstants() {
        return this.constants.length;
    }

    public Constant getConstant(int i) {
        return this.constants[i];
    }

    public int getIndex(int i) {
        if (!hasIndex(i)) {
            throw new IllegalStateException("index not yet set for constant " + i + " value = " + this.constants[i]);
        }
        return this.index[i];
    }

    public boolean hasIndex(int i) {
        return this.index[i] != -1;
    }

    public void setIndex(int i, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("index < 0");
        }
        if (hasIndex(i)) {
            throw new IllegalStateException("index already set");
        }
        this.index[i] = i2;
    }

    public int getClassIndex() {
        if (!hasClassIndex()) {
            throw new IllegalStateException("class index not yet set");
        }
        return this.classIndex;
    }

    public boolean hasClassIndex() {
        return this.classIndex != -1;
    }

    public void setClassIndex(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("index < 0");
        }
        if (hasClassIndex()) {
            throw new IllegalStateException("class index already set");
        }
        this.classIndex = i;
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    protected String argString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.constants.length; i++) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(this.constants[i].toHuman());
        }
        return sb.toString();
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    public String cstString() {
        return argString();
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    public String cstComment() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.constants.length; i++) {
            if (!hasIndex(i)) {
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(getConstant(i).typeName());
            sb.append('@');
            int index = getIndex(i);
            if (index < 65536) {
                sb.append(Hex.m212u2(index));
            } else {
                sb.append(Hex.m214u4(index));
            }
        }
        return sb.toString();
    }
}
