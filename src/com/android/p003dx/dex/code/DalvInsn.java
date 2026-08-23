package com.android.p003dx.dex.code;

import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.code.SourcePosition;
import com.android.p003dx.ssa.RegisterMapper;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.Hex;
import com.android.p003dx.util.TwoColumnOutput;
import java.util.BitSet;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DalvInsn {
    private int address;
    private final Dop opcode;
    private final SourcePosition position;
    private final RegisterSpecList registers;

    protected abstract String argString();

    public abstract int codeSize();

    protected abstract String listingString0(boolean z);

    public abstract DalvInsn withOpcode(Dop dop);

    public abstract DalvInsn withRegisterOffset(int i);

    public abstract DalvInsn withRegisters(RegisterSpecList registerSpecList);

    public abstract void writeTo(AnnotatedOutput annotatedOutput);

    public static SimpleInsn makeMove(SourcePosition sourcePosition, RegisterSpec registerSpec, RegisterSpec registerSpec2) {
        Dop dop;
        boolean z = registerSpec.getCategory() == 1;
        boolean zIsReference = registerSpec.getType().isReference();
        int reg = registerSpec.getReg();
        if ((registerSpec2.getReg() | reg) < 16) {
            if (zIsReference) {
                dop = Dops.MOVE_OBJECT;
            } else {
                dop = z ? Dops.MOVE : Dops.MOVE_WIDE;
            }
        } else if (reg < 256) {
            if (zIsReference) {
                dop = Dops.MOVE_OBJECT_FROM16;
            } else {
                dop = z ? Dops.MOVE_FROM16 : Dops.MOVE_WIDE_FROM16;
            }
        } else if (zIsReference) {
            dop = Dops.MOVE_OBJECT_16;
        } else {
            dop = z ? Dops.MOVE_16 : Dops.MOVE_WIDE_16;
        }
        return new SimpleInsn(dop, sourcePosition, RegisterSpecList.make(registerSpec, registerSpec2));
    }

    public DalvInsn(Dop dop, SourcePosition sourcePosition, RegisterSpecList registerSpecList) {
        if (dop == null) {
            throw new NullPointerException("opcode == null");
        }
        if (sourcePosition == null) {
            throw new NullPointerException("position == null");
        }
        if (registerSpecList == null) {
            throw new NullPointerException("registers == null");
        }
        this.address = -1;
        this.opcode = dop;
        this.position = sourcePosition;
        this.registers = registerSpecList;
    }

    public final String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder(100);
        sb.append(identifierString());
        sb.append(' ');
        sb.append(this.position);
        sb.append(": ");
        sb.append(this.opcode.getName());
        if (this.registers.size() != 0) {
            sb.append(this.registers.toHuman(" ", ", ", null));
            z = true;
        } else {
            z = false;
        }
        String strArgString = argString();
        if (strArgString != null) {
            if (z) {
                sb.append(',');
            }
            sb.append(' ');
            sb.append(strArgString);
        }
        return sb.toString();
    }

    public final boolean hasAddress() {
        return this.address >= 0;
    }

    public final int getAddress() {
        int i = this.address;
        if (i >= 0) {
            return i;
        }
        throw new RuntimeException("address not yet known");
    }

    public final Dop getOpcode() {
        return this.opcode;
    }

    public final SourcePosition getPosition() {
        return this.position;
    }

    public final RegisterSpecList getRegisters() {
        return this.registers;
    }

    public final boolean hasResult() {
        return this.opcode.hasResult();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.android.dx.rop.code.RegisterSpecList] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.BitSet] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final int getMinimumRegisterRequirement(BitSet bitSet) {
        ?? HasResult = hasResult();
        int size = this.registers.size();
        int category = 0;
        int category2 = (HasResult == 0 || bitSet.get(0)) ? 0 : this.registers.get(0).getCategory();
        while (HasResult < size) {
            if (!bitSet.get(HasResult)) {
                category += this.registers.get(HasResult).getCategory();
            }
            HasResult++;
        }
        return Math.max(category, category2);
    }

    public DalvInsn getLowRegVersion() {
        return withRegisters(this.registers.withExpandedRegisters(0, hasResult(), null));
    }

    public DalvInsn expandedPrefix(BitSet bitSet) {
        RegisterSpecList registerSpecList = this.registers;
        boolean z = bitSet.get(0);
        if (hasResult()) {
            bitSet.set(0);
        }
        RegisterSpecList registerSpecListSubset = registerSpecList.subset(bitSet);
        if (hasResult()) {
            bitSet.set(0, z);
        }
        if (registerSpecListSubset.size() == 0) {
            return null;
        }
        return new HighRegisterPrefix(this.position, registerSpecListSubset);
    }

    public DalvInsn expandedSuffix(BitSet bitSet) {
        if (!hasResult() || bitSet.get(0)) {
            return null;
        }
        RegisterSpec registerSpec = this.registers.get(0);
        return makeMove(this.position, registerSpec, registerSpec.withReg(0));
    }

    public DalvInsn expandedVersion(BitSet bitSet) {
        return withRegisters(this.registers.withExpandedRegisters(0, hasResult(), bitSet));
    }

    public final String identifierString() {
        int i = this.address;
        return i != -1 ? String.format("%04x", Integer.valueOf(i)) : Hex.m214u4(System.identityHashCode(this));
    }

    public final String listingString(String str, int i, boolean z) {
        String strListingString0 = listingString0(z);
        if (strListingString0 == null) {
            return null;
        }
        String str2 = str + identifierString() + ": ";
        int length = str2.length();
        return TwoColumnOutput.toString(str2, length, _UrlKt.FRAGMENT_ENCODE_SET, strListingString0, i == 0 ? strListingString0.length() : i - length);
    }

    public final void setAddress(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("address < 0");
        }
        this.address = i;
    }

    public final int getNextAddress() {
        return getAddress() + codeSize();
    }

    public DalvInsn withMapper(RegisterMapper registerMapper) {
        return withRegisters(registerMapper.map(getRegisters()));
    }

    public String cstString() {
        throw new UnsupportedOperationException("Not supported.");
    }

    public String cstComment() {
        throw new UnsupportedOperationException("Not supported.");
    }
}
