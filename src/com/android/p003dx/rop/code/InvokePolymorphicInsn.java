package com.android.p003dx.rop.code;

import com.android.p003dx.rop.code.Insn;
import com.android.p003dx.rop.cst.CstMethodRef;
import com.android.p003dx.rop.cst.CstNat;
import com.android.p003dx.rop.cst.CstProtoRef;
import com.android.p003dx.rop.cst.CstString;
import com.android.p003dx.rop.cst.CstType;
import com.android.p003dx.rop.type.Type;
import com.android.p003dx.rop.type.TypeList;

/* JADX INFO: loaded from: classes4.dex */
public class InvokePolymorphicInsn extends Insn {
    private final CstMethodRef callSiteMethod;
    private final CstProtoRef callSiteProto;
    private final TypeList catches;
    private final CstMethodRef polymorphicMethod;
    private static final CstString DEFAULT_DESCRIPTOR = new CstString("([Ljava/lang/Object;)Ljava/lang/Object;");
    private static final CstString VARHANDLE_SET_DESCRIPTOR = new CstString("([Ljava/lang/Object;)V");
    private static final CstString VARHANDLE_COMPARE_AND_SET_DESCRIPTOR = new CstString("([Ljava/lang/Object;)Z");

    public InvokePolymorphicInsn(Rop rop, SourcePosition sourcePosition, RegisterSpecList registerSpecList, TypeList typeList, CstMethodRef cstMethodRef) {
        super(rop, sourcePosition, null, registerSpecList);
        if (rop.getBranchingness() != 6) {
            throw new IllegalArgumentException("opcode with invalid branchingness: " + rop.getBranchingness());
        }
        if (typeList == null) {
            throw new NullPointerException("catches == null");
        }
        this.catches = typeList;
        if (cstMethodRef == null) {
            throw new NullPointerException("callSiteMethod == null");
        }
        if (!cstMethodRef.isSignaturePolymorphic()) {
            throw new IllegalArgumentException("callSiteMethod is not signature polymorphic");
        }
        this.callSiteMethod = cstMethodRef;
        this.polymorphicMethod = makePolymorphicMethod(cstMethodRef);
        this.callSiteProto = makeCallSiteProto(cstMethodRef);
    }

    @Override // com.android.p003dx.rop.code.Insn
    public TypeList getCatches() {
        return this.catches;
    }

    @Override // com.android.p003dx.rop.code.Insn
    public void accept(Insn.Visitor visitor) {
        visitor.visitInvokePolymorphicInsn(this);
    }

    @Override // com.android.p003dx.rop.code.Insn
    public Insn withAddedCatch(Type type) {
        return new InvokePolymorphicInsn(getOpcode(), getPosition(), getSources(), this.catches.withAddedType(type), getCallSiteMethod());
    }

    @Override // com.android.p003dx.rop.code.Insn
    public Insn withRegisterOffset(int i) {
        return new InvokePolymorphicInsn(getOpcode(), getPosition(), getSources().withOffset(i), this.catches, getCallSiteMethod());
    }

    @Override // com.android.p003dx.rop.code.Insn
    public Insn withNewRegisters(RegisterSpec registerSpec, RegisterSpecList registerSpecList) {
        return new InvokePolymorphicInsn(getOpcode(), getPosition(), registerSpecList, this.catches, getCallSiteMethod());
    }

    public CstMethodRef getCallSiteMethod() {
        return this.callSiteMethod;
    }

    public CstMethodRef getPolymorphicMethod() {
        return this.polymorphicMethod;
    }

    public CstProtoRef getCallSiteProto() {
        return this.callSiteProto;
    }

    @Override // com.android.p003dx.rop.code.Insn
    public String getInlineString() {
        return getPolymorphicMethod().toString() + " " + getCallSiteProto().toString() + " " + ThrowingInsn.toCatchString(this.catches);
    }

    private static CstMethodRef makePolymorphicMethod(CstMethodRef cstMethodRef) {
        CstType definingClass = cstMethodRef.getDefiningClass();
        CstString name = cstMethodRef.getNat().getName();
        String string = cstMethodRef.getNat().getName().getString();
        if (definingClass.equals(CstType.METHOD_HANDLE) && (string.equals("invoke") || string.equals("invokeExact"))) {
            return new CstMethodRef(definingClass, new CstNat(name, DEFAULT_DESCRIPTOR));
        }
        if (definingClass.equals(CstType.VAR_HANDLE)) {
            string.getClass();
            switch (string) {
                case "getAndBitwiseOrRelease":
                case "getAndBitwiseAndRelease":
                case "compareAndExchangeRelease":
                case "getAndAddRelease":
                case "getAndBitwiseAnd":
                case "getAndBitwiseXor":
                case "getAndBitwiseXorRelease":
                case "getAcquire":
                case "getAndSetRelease":
                case "get":
                case "getAndBitwiseOrAcquire":
                case "getVolatile":
                case "getAndAdd":
                case "getAndSet":
                case "getAndBitwiseAndAcquire":
                case "getOpaque":
                case "compareAndExchangeAcquire":
                case "getAndAddAcquire":
                case "getAndBitwiseXorAcquire":
                case "getAndBitwiseOr":
                case "compareAndExchange":
                case "getAndSetAcquire":
                    return new CstMethodRef(definingClass, new CstNat(name, DEFAULT_DESCRIPTOR));
                case "compareAndSet":
                case "weakCompareAndSet":
                case "weakCompareAndSetPlain":
                case "weakCompareAndSetAcquire":
                case "weakCompareAndSetRelease":
                    return new CstMethodRef(definingClass, new CstNat(name, VARHANDLE_COMPARE_AND_SET_DESCRIPTOR));
                case "setRelease":
                case "set":
                case "setVolatile":
                case "setOpaque":
                    return new CstMethodRef(definingClass, new CstNat(name, VARHANDLE_SET_DESCRIPTOR));
            }
        }
        throw new IllegalArgumentException("Unknown signature polymorphic method: " + cstMethodRef.toHuman());
    }

    private static CstProtoRef makeCallSiteProto(CstMethodRef cstMethodRef) {
        return new CstProtoRef(cstMethodRef.getPrototype(true));
    }
}
