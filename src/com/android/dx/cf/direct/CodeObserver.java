package com.android.dx.cf.direct;

import com.android.dx.cf.code.ByteOps;
import com.android.dx.cf.code.BytecodeArray;
import com.android.dx.cf.code.SwitchList;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstDouble;
import com.android.dx.rop.cst.CstFloat;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstKnownNull;
import com.android.dx.rop.cst.CstLong;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public class CodeObserver implements BytecodeArray.Visitor {
    private final ByteArray bytes;
    private final ParseObserver observer;

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public int getPreviousOffset() {
        return -1;
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void setPreviousOffset(int i) {
    }

    public CodeObserver(ByteArray byteArray, ParseObserver parseObserver) {
        if (byteArray == null) {
            f$$ExternalSyntheticBUOutline2.m179m("bytes == null");
            throw null;
        }
        if (parseObserver == null) {
            f$$ExternalSyntheticBUOutline2.m179m("observer == null");
            throw null;
        }
        this.bytes = byteArray;
        this.observer = parseObserver;
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitInvalid(int i, int i2, int i3) {
        this.observer.parsed(this.bytes, i2, i3, header(i2));
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitNoArgs(int i, int i2, int i3, Type type) {
        this.observer.parsed(this.bytes, i2, i3, header(i2));
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitLocal(int i, int i2, int i3, int i4, Type type, int i5) {
        String string;
        String strU1 = i3 <= 3 ? Hex.u1(i4) : Hex.u2(i4);
        boolean z = i3 == 1;
        String strConcat = _UrlKt.FRAGMENT_ENCODE_SET;
        if (i != 132) {
            string = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            StringBuilder sb = new StringBuilder(", #");
            sb.append(i3 <= 3 ? Hex.s1(i5) : Hex.s2(i5));
            string = sb.toString();
        }
        if (type.isCategory2()) {
            strConcat = (z ? "," : " //").concat(" category-2");
        }
        ParseObserver parseObserver = this.observer;
        ByteArray byteArray = this.bytes;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(header(i2));
        sb2.append(z ? " // " : " ");
        sb2.append(strU1);
        sb2.append(string);
        sb2.append(strConcat);
        parseObserver.parsed(byteArray, i2, i3, sb2.toString());
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitConstant(int i, int i2, int i3, Constant constant, int i4) {
        String str;
        if (constant instanceof CstKnownNull) {
            visitNoArgs(i, i2, i3, null);
            return;
        }
        if (constant instanceof CstInteger) {
            visitLiteralInt(i, i2, i3, i4);
            return;
        }
        if (constant instanceof CstLong) {
            visitLiteralLong(i, i2, i3, ((CstLong) constant).getValue());
            return;
        }
        if (constant instanceof CstFloat) {
            visitLiteralFloat(i, i2, i3, ((CstFloat) constant).getIntBits());
            return;
        }
        if (constant instanceof CstDouble) {
            visitLiteralDouble(i, i2, i3, ((CstDouble) constant).getLongBits());
            return;
        }
        if (i4 == 0) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        } else if (i == 197) {
            str = ", " + Hex.u1(i4);
        } else {
            str = ", " + Hex.u2(i4);
        }
        this.observer.parsed(this.bytes, i2, i3, header(i2) + " " + constant + str);
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitBranch(int i, int i2, int i3, int i4) {
        String strU2 = i3 <= 3 ? Hex.u2(i4) : Hex.u4(i4);
        this.observer.parsed(this.bytes, i2, i3, header(i2) + " " + strU2);
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitSwitch(int i, int i2, int i3, SwitchList switchList, int i4) {
        int size = switchList.size();
        StringBuilder sb = new StringBuilder((size * 20) + 100);
        sb.append(header(i2));
        if (i4 != 0) {
            sb.append(" // padding: " + Hex.u4(i4));
        }
        sb.append('\n');
        for (int i5 = 0; i5 < size; i5++) {
            sb.append("  ");
            sb.append(Hex.s4(switchList.getValue(i5)));
            sb.append(": ");
            sb.append(Hex.u2(switchList.getTarget(i5)));
            sb.append('\n');
        }
        sb.append("  default: ");
        sb.append(Hex.u2(switchList.getDefaultTarget()));
        this.observer.parsed(this.bytes, i2, i3, sb.toString());
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitNewarray(int i, int i2, CstType cstType, ArrayList<Constant> arrayList) {
        String str = i2 == 1 ? " // " : " ";
        String human = cstType.getClassType().getComponentType().toHuman();
        this.observer.parsed(this.bytes, i, i2, header(i) + str + human);
    }

    private String header(int i) {
        int unsignedByte = this.bytes.getUnsignedByte(i);
        String strOpName = ByteOps.opName(unsignedByte);
        if (unsignedByte == 196) {
            strOpName = strOpName + " " + ByteOps.opName(this.bytes.getUnsignedByte(i + 1));
        }
        return Hex.u2(i) + ": " + strOpName;
    }

    private void visitLiteralInt(int i, int i2, int i3, int i4) {
        String str;
        String str2 = i3 == 1 ? " // " : " ";
        int unsignedByte = this.bytes.getUnsignedByte(i2);
        if (i3 == 1 || unsignedByte == 16) {
            str = "#" + Hex.s1(i4);
        } else if (unsignedByte == 17) {
            str = "#" + Hex.s2(i4);
        } else {
            str = "#" + Hex.s4(i4);
        }
        this.observer.parsed(this.bytes, i2, i3, header(i2) + str2 + str);
    }

    private void visitLiteralLong(int i, int i2, int i3, long j) {
        String strS8;
        String str = i3 == 1 ? " // " : " #";
        if (i3 == 1) {
            strS8 = Hex.s1((int) j);
        } else {
            strS8 = Hex.s8(j);
        }
        this.observer.parsed(this.bytes, i2, i3, header(i2) + str + strS8);
    }

    private void visitLiteralFloat(int i, int i2, int i3, int i4) {
        String str;
        if (i3 != 1) {
            str = " #" + Hex.u4(i4);
        } else {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        this.observer.parsed(this.bytes, i2, i3, header(i2) + str + " // " + Float.intBitsToFloat(i4));
    }

    private void visitLiteralDouble(int i, int i2, int i3, long j) {
        String str;
        if (i3 != 1) {
            str = " #" + Hex.u8(j);
        } else {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        this.observer.parsed(this.bytes, i2, i3, header(i2) + str + " // " + Double.longBitsToDouble(j));
    }
}
