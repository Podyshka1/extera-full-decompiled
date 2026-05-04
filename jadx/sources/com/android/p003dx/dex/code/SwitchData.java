package com.android.p003dx.dex.code;

import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.code.SourcePosition;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.Hex;
import com.android.p003dx.util.IntList;

/* JADX INFO: loaded from: classes4.dex */
public final class SwitchData extends VariableSizeInsn {
    private final IntList cases;
    private final boolean packed;
    private final CodeAddress[] targets;
    private final CodeAddress user;

    public SwitchData(SourcePosition sourcePosition, CodeAddress codeAddress, IntList intList, CodeAddress[] codeAddressArr) {
        super(sourcePosition, RegisterSpecList.EMPTY);
        if (codeAddress == null) {
            throw new NullPointerException("user == null");
        }
        if (intList == null) {
            throw new NullPointerException("cases == null");
        }
        if (codeAddressArr == null) {
            throw new NullPointerException("targets == null");
        }
        int size = intList.size();
        if (size != codeAddressArr.length) {
            throw new IllegalArgumentException("cases / targets mismatch");
        }
        if (size > 65535) {
            throw new IllegalArgumentException("too many cases");
        }
        this.user = codeAddress;
        this.cases = intList;
        this.targets = codeAddressArr;
        this.packed = shouldPack(intList);
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    public int codeSize() {
        return (int) (this.packed ? packedCodeSize(this.cases) : sparseCodeSize(this.cases));
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    public void writeTo(AnnotatedOutput annotatedOutput) {
        int address;
        int address2 = this.user.getAddress();
        int iCodeSize = Dops.PACKED_SWITCH.getFormat().codeSize();
        int length = this.targets.length;
        int i = 0;
        if (this.packed) {
            int i2 = length == 0 ? 0 : this.cases.get(0);
            int i3 = ((length == 0 ? 0 : this.cases.get(length - 1)) - i2) + 1;
            annotatedOutput.writeShort(256);
            annotatedOutput.writeShort(i3);
            annotatedOutput.writeInt(i2);
            int i4 = 0;
            while (i < i3) {
                if (this.cases.get(i4) > i2 + i) {
                    address = iCodeSize;
                } else {
                    address = this.targets[i4].getAddress() - address2;
                    i4++;
                }
                annotatedOutput.writeInt(address);
                i++;
            }
            return;
        }
        annotatedOutput.writeShort(512);
        annotatedOutput.writeShort(length);
        for (int i5 = 0; i5 < length; i5++) {
            annotatedOutput.writeInt(this.cases.get(i5));
        }
        while (i < length) {
            annotatedOutput.writeInt(this.targets[i].getAddress() - address2);
            i++;
        }
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    public DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        return new SwitchData(getPosition(), this.user, this.cases, this.targets);
    }

    public boolean isPacked() {
        return this.packed;
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    protected String argString() {
        StringBuilder sb = new StringBuilder(100);
        int length = this.targets.length;
        for (int i = 0; i < length; i++) {
            sb.append("\n    ");
            sb.append(this.cases.get(i));
            sb.append(": ");
            sb.append(this.targets[i]);
        }
        return sb.toString();
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    protected String listingString0(boolean z) {
        int address = this.user.getAddress();
        StringBuilder sb = new StringBuilder(100);
        int length = this.targets.length;
        sb.append(this.packed ? "packed" : "sparse");
        sb.append("-switch-payload // for switch @ ");
        sb.append(Hex.m212u2(address));
        for (int i = 0; i < length; i++) {
            int address2 = this.targets[i].getAddress();
            sb.append("\n  ");
            sb.append(this.cases.get(i));
            sb.append(": ");
            sb.append(Hex.m214u4(address2));
            sb.append(" // ");
            sb.append(Hex.m209s4(address2 - address));
        }
        return sb.toString();
    }

    private static long packedCodeSize(IntList intList) {
        long j = (((((long) intList.get(intList.size() - 1)) - ((long) intList.get(0))) + 1) * 2) + 4;
        if (j <= 2147483647L) {
            return j;
        }
        return -1L;
    }

    private static long sparseCodeSize(IntList intList) {
        return (((long) intList.size()) * 4) + 2;
    }

    private static boolean shouldPack(IntList intList) {
        if (intList.size() < 2) {
            return true;
        }
        long jPackedCodeSize = packedCodeSize(intList);
        return jPackedCodeSize >= 0 && jPackedCodeSize <= (sparseCodeSize(intList) * 5) / 4;
    }
}
