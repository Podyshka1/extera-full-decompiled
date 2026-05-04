package com.android.p003dx.rop.code;

import com.android.p003dx.rop.type.StdTypeList;
import com.android.p003dx.rop.type.Type;
import com.android.p003dx.rop.type.TypeList;
import com.android.p003dx.util.ToHuman;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Insn implements ToHuman {
    private final Rop opcode;
    private final SourcePosition position;
    private final RegisterSpec result;
    private final RegisterSpecList sources;

    public static class BaseVisitor implements Visitor {
        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitFillArrayDataInsn(FillArrayDataInsn fillArrayDataInsn) {
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitInvokePolymorphicInsn(InvokePolymorphicInsn invokePolymorphicInsn) {
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitPlainCstInsn(PlainCstInsn plainCstInsn) {
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitPlainInsn(PlainInsn plainInsn) {
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitSwitchInsn(SwitchInsn switchInsn) {
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitThrowingCstInsn(ThrowingCstInsn throwingCstInsn) {
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitThrowingInsn(ThrowingInsn throwingInsn) {
        }
    }

    public interface Visitor {
        void visitFillArrayDataInsn(FillArrayDataInsn fillArrayDataInsn);

        void visitInvokePolymorphicInsn(InvokePolymorphicInsn invokePolymorphicInsn);

        void visitPlainCstInsn(PlainCstInsn plainCstInsn);

        void visitPlainInsn(PlainInsn plainInsn);

        void visitSwitchInsn(SwitchInsn switchInsn);

        void visitThrowingCstInsn(ThrowingCstInsn throwingCstInsn);

        void visitThrowingInsn(ThrowingInsn throwingInsn);
    }

    public abstract void accept(Visitor visitor);

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public abstract TypeList getCatches();

    public String getInlineString() {
        return null;
    }

    public abstract Insn withAddedCatch(Type type);

    public abstract Insn withNewRegisters(RegisterSpec registerSpec, RegisterSpecList registerSpecList);

    public abstract Insn withRegisterOffset(int i);

    public Insn withSourceLiteral() {
        return this;
    }

    public Insn(Rop rop, SourcePosition sourcePosition, RegisterSpec registerSpec, RegisterSpecList registerSpecList) {
        if (rop == null) {
            throw new NullPointerException("opcode == null");
        }
        if (sourcePosition == null) {
            throw new NullPointerException("position == null");
        }
        if (registerSpecList == null) {
            throw new NullPointerException("sources == null");
        }
        this.opcode = rop;
        this.position = sourcePosition;
        this.result = registerSpec;
        this.sources = registerSpecList;
    }

    public final int hashCode() {
        return System.identityHashCode(this);
    }

    public String toString() {
        return toStringWithInline(getInlineString());
    }

    @Override // com.android.p003dx.util.ToHuman
    public String toHuman() {
        return toHumanWithInline(getInlineString());
    }

    public final Rop getOpcode() {
        return this.opcode;
    }

    public final SourcePosition getPosition() {
        return this.position;
    }

    public final RegisterSpec getResult() {
        return this.result;
    }

    public final RegisterSpec getLocalAssignment() {
        RegisterSpec registerSpec;
        if (this.opcode.getOpcode() == 54) {
            registerSpec = this.sources.get(0);
        } else {
            registerSpec = this.result;
        }
        if (registerSpec == null || registerSpec.getLocalItem() == null) {
            return null;
        }
        return registerSpec;
    }

    public final RegisterSpecList getSources() {
        return this.sources;
    }

    public final boolean canThrow() {
        return this.opcode.canThrow();
    }

    public Insn copy() {
        return withRegisterOffset(0);
    }

    private static boolean equalsHandleNulls(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public boolean contentEquals(Insn insn) {
        return this.opcode == insn.getOpcode() && this.position.equals(insn.getPosition()) && getClass() == insn.getClass() && equalsHandleNulls(this.result, insn.getResult()) && equalsHandleNulls(this.sources, insn.getSources()) && StdTypeList.equalContents(getCatches(), insn.getCatches());
    }

    protected final String toStringWithInline(String str) {
        StringBuilder sb = new StringBuilder(80);
        sb.append("Insn{");
        sb.append(this.position);
        sb.append(' ');
        sb.append(this.opcode);
        if (str != null) {
            sb.append(' ');
            sb.append(str);
        }
        sb.append(" :: ");
        RegisterSpec registerSpec = this.result;
        if (registerSpec != null) {
            sb.append(registerSpec);
            sb.append(" <- ");
        }
        sb.append(this.sources);
        sb.append('}');
        return sb.toString();
    }

    protected final String toHumanWithInline(String str) {
        StringBuilder sb = new StringBuilder(80);
        sb.append(this.position);
        sb.append(": ");
        sb.append(this.opcode.getNickname());
        if (str != null) {
            sb.append("(");
            sb.append(str);
            sb.append(")");
        }
        if (this.result == null) {
            sb.append(" .");
        } else {
            sb.append(" ");
            sb.append(this.result.toHuman());
        }
        sb.append(" <-");
        int size = this.sources.size();
        if (size == 0) {
            sb.append(" .");
        } else {
            for (int i = 0; i < size; i++) {
                sb.append(" ");
                sb.append(this.sources.get(i).toHuman());
            }
        }
        return sb.toString();
    }
}
