package com.android.dx.cf.code;

import com.android.dx.cf.iface.Method;
import com.android.dx.cf.iface.MethodList;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.code.FillArrayDataInsn;
import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.InvokePolymorphicInsn;
import com.android.dx.rop.code.PlainCstInsn;
import com.android.dx.rop.code.PlainInsn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.code.Rops;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.code.SwitchInsn;
import com.android.dx.rop.code.ThrowingCstInsn;
import com.android.dx.rop.code.ThrowingInsn;
import com.android.dx.rop.code.TranslationAdvice;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstCallSiteRef;
import com.android.dx.rop.cst.CstFieldRef;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.IntList;
import java.util.ArrayList;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
final class RopperMachine extends ValueAwareMachine {
    private static final CstType ARRAY_REFLECT_TYPE;
    private static final CstMethodRef MULTIANEWARRAY_METHOD;
    private final TranslationAdvice advice;
    private boolean blockCanThrow;
    private TypeList catches;
    private boolean catchesUsed;
    private int extraBlockCount;
    private boolean hasJsr;
    private final ArrayList<Insn> insns;
    private final int maxLocals;
    private final ConcreteMethod method;
    private final MethodList methods;
    private int primarySuccessorIndex;
    private ReturnAddress returnAddress;
    private Rop returnOp;
    private SourcePosition returnPosition;
    private boolean returns;
    private final Ropper ropper;

    static {
        CstType cstType = new CstType(Type.internClassName("java/lang/reflect/Array"));
        ARRAY_REFLECT_TYPE = cstType;
        MULTIANEWARRAY_METHOD = new CstMethodRef(cstType, new CstNat(new CstString("newInstance"), new CstString("(Ljava/lang/Class;[I)Ljava/lang/Object;")));
    }

    public RopperMachine(Ropper ropper, ConcreteMethod concreteMethod, TranslationAdvice translationAdvice, MethodList methodList) {
        super(concreteMethod.getEffectiveDescriptor());
        if (methodList == null) {
            f$$ExternalSyntheticBUOutline2.m216m("methods == null");
            throw null;
        }
        if (ropper == null) {
            f$$ExternalSyntheticBUOutline2.m216m("ropper == null");
            throw null;
        }
        if (translationAdvice == null) {
            f$$ExternalSyntheticBUOutline2.m216m("advice == null");
            throw null;
        }
        this.ropper = ropper;
        this.method = concreteMethod;
        this.methods = methodList;
        this.advice = translationAdvice;
        this.maxLocals = concreteMethod.getMaxLocals();
        this.insns = new ArrayList<>(25);
        this.catches = null;
        this.catchesUsed = false;
        this.returns = false;
        this.primarySuccessorIndex = -1;
        this.extraBlockCount = 0;
        this.blockCanThrow = false;
        this.returnOp = null;
        this.returnPosition = null;
    }

    public ArrayList<Insn> getInsns() {
        return this.insns;
    }

    public Rop getReturnOp() {
        return this.returnOp;
    }

    public SourcePosition getReturnPosition() {
        return this.returnPosition;
    }

    public void startBlock(TypeList typeList) {
        this.catches = typeList;
        this.insns.clear();
        this.catchesUsed = false;
        this.returns = false;
        this.primarySuccessorIndex = 0;
        this.extraBlockCount = 0;
        this.blockCanThrow = false;
        this.hasJsr = false;
        this.returnAddress = null;
    }

    public boolean wereCatchesUsed() {
        return this.catchesUsed;
    }

    public boolean returns() {
        return this.returns;
    }

    public int getPrimarySuccessorIndex() {
        return this.primarySuccessorIndex;
    }

    public int getExtraBlockCount() {
        return this.extraBlockCount;
    }

    public boolean canThrow() {
        return this.blockCanThrow;
    }

    public boolean hasJsr() {
        return this.hasJsr;
    }

    public boolean hasRet() {
        return this.returnAddress != null;
    }

    public ReturnAddress getReturnAddress() {
        return this.returnAddress;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:112:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:129:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0289  */
    /* JADX WARN: Type inference failed for: r13v9, types: [com.android.dx.rop.code.RegisterSpecList] */
    /* JADX WARN: Type inference failed for: r14v10, types: [com.android.dx.rop.code.RegisterSpecList, com.android.dx.util.FixedSizeList] */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v8, types: [com.android.dx.rop.type.TypeBearer] */
    /* JADX WARN: Type inference failed for: r18v0, types: [com.android.dx.cf.code.BaseMachine, com.android.dx.cf.code.RopperMachine, com.android.dx.cf.code.ValueAwareMachine] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v17, types: [com.android.dx.rop.code.RegisterSpecList] */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9, types: [com.android.dx.rop.code.RegisterSpecList, com.android.dx.rop.type.TypeList] */
    /* JADX WARN: Type inference failed for: r8v18, types: [com.android.dx.rop.code.Insn, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v29 */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r8v31 */
    /* JADX WARN: Type inference failed for: r8v32 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14, types: [int] */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v18 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v3, types: [com.android.dx.rop.type.TypeBearer] */
    /* JADX WARN: Type inference failed for: r9v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v9 */
    @Override // com.android.dx.cf.code.ValueAwareMachine, com.android.dx.cf.code.Machine
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run(Frame frame, int i, int i2) {
        RegisterSpec registerSpec;
        ?? Make;
        int i3;
        ?? r3;
        RegisterSpec registerSpec2;
        TypeBearer typeBearer;
        Constant constant;
        RegisterSpec registerSpec3;
        Object plainInsn;
        ?? r14;
        Constant constant2;
        Constant constantIntern;
        RegisterSpecList registerSpecListWithoutFirst;
        SwitchList auxCases;
        ArrayList<Constant> initValues;
        Constant constant3;
        Insn plainInsn2;
        Object obj;
        ?? r9;
        Insn plainCstInsn;
        Object obj2;
        ?? r92;
        int i4;
        Object obj3;
        ?? r93;
        ?? r94;
        ?? r8;
        ?? r4;
        Type returnType;
        ThrowingCstInsn throwingCstInsn;
        boolean z;
        int i5 = i2;
        int size = this.maxLocals + frame.getStack().size();
        RegisterSpecList sources = getSources(i5, size);
        int size2 = sources.size();
        super.run(frame, i, i2);
        SourcePosition sourcePositionMakeSourcePosistion = this.method.makeSourcePosistion(i);
        RegisterSpec localTarget = getLocalTarget(i5 == 54);
        int iResultCount = resultCount();
        if (iResultCount != 0) {
            if (localTarget == null) {
                if (iResultCount == 1) {
                    localTarget = RegisterSpec.make(size, result(0));
                } else {
                    int firstTempStackReg = this.ropper.getFirstTempStackReg();
                    RegisterSpec[] registerSpecArr = new RegisterSpec[size2];
                    for (int i6 = 0; i6 < size2; i6++) {
                        RegisterSpec registerSpec4 = sources.get(i6);
                        TypeBearer typeBearer2 = registerSpec4.getTypeBearer();
                        RegisterSpec registerSpecWithReg = registerSpec4.withReg(firstTempStackReg);
                        this.insns.add(new PlainInsn(Rops.opMove(typeBearer2), sourcePositionMakeSourcePosistion, registerSpecWithReg, registerSpec4));
                        registerSpecArr[i6] = registerSpecWithReg;
                        firstTempStackReg += registerSpec4.getCategory();
                    }
                    for (int auxInt = getAuxInt(); auxInt != 0; auxInt >>= 4) {
                        RegisterSpec registerSpec5 = registerSpecArr[(auxInt & 15) - 1];
                        TypeBearer typeBearer3 = registerSpec5.getTypeBearer();
                        this.insns.add(new PlainInsn(Rops.opMove(typeBearer3), sourcePositionMakeSourcePosistion, registerSpec5.withReg(size), registerSpec5));
                        size += typeBearer3.getType().getCategory();
                    }
                    return;
                }
            }
            registerSpec = localTarget;
        } else if (i5 == 87 || i5 == 88) {
            return;
        } else {
            registerSpec = null;
        }
        TypeBearer typeBearer4 = registerSpec != null ? registerSpec : Type.VOID;
        Constant auxCst = getAuxCst();
        if (i5 == 197) {
            this.blockCanThrow = true;
            this.extraBlockCount = 6;
            int nextReg = registerSpec.getNextReg();
            Type type = Type.INT_ARRAY;
            RegisterSpec registerSpecMake = RegisterSpec.make(nextReg, type);
            this.insns.add(new ThrowingCstInsn(Rops.opFilledNewArray(type, size2), sourcePositionMakeSourcePosistion, sources, this.catches, CstType.INT_ARRAY));
            this.insns.add(new PlainInsn(Rops.opMoveResult(type), sourcePositionMakeSourcePosistion, registerSpecMake, RegisterSpecList.EMPTY));
            Type classType = ((CstType) auxCst).getClassType();
            for (int i7 = 0; i7 < size2; i7++) {
                classType = classType.getComponentType();
            }
            RegisterSpec registerSpecMake2 = RegisterSpec.make(registerSpec.getReg(), Type.CLASS);
            if (classType.isPrimitive()) {
                constant = auxCst;
                CstFieldRef cstFieldRefForPrimitiveType = CstFieldRef.forPrimitiveType(classType);
                registerSpec2 = null;
                i3 = 0;
                z = true;
                typeBearer = typeBearer4;
                sourcePositionMakeSourcePosistion = sourcePositionMakeSourcePosistion;
                throwingCstInsn = new ThrowingCstInsn(Rops.GET_STATIC_OBJECT, sourcePositionMakeSourcePosistion, RegisterSpecList.EMPTY, this.catches, cstFieldRefForPrimitiveType);
            } else {
                sourcePositionMakeSourcePosistion = sourcePositionMakeSourcePosistion;
                i3 = 0;
                registerSpec2 = null;
                typeBearer = typeBearer4;
                constant = auxCst;
                Rop rop = Rops.CONST_OBJECT;
                RegisterSpecList registerSpecList = RegisterSpecList.EMPTY;
                TypeList typeList = this.catches;
                CstType cstType = new CstType(classType);
                z = true;
                throwingCstInsn = new ThrowingCstInsn(rop, sourcePositionMakeSourcePosistion, registerSpecList, typeList, cstType);
            }
            this.insns.add(throwingCstInsn);
            Rop ropOpMoveResultPseudo = Rops.opMoveResultPseudo(registerSpecMake2.getType());
            RegisterSpecList registerSpecList2 = RegisterSpecList.EMPTY;
            this.insns.add(new PlainInsn(ropOpMoveResultPseudo, sourcePositionMakeSourcePosistion, registerSpecMake2, registerSpecList2));
            RegisterSpec registerSpecMake3 = RegisterSpec.make(registerSpec.getReg(), Type.OBJECT);
            CstMethodRef cstMethodRef = MULTIANEWARRAY_METHOD;
            this.insns.add(new ThrowingCstInsn(Rops.opInvokeStatic(cstMethodRef.getPrototype()), sourcePositionMakeSourcePosistion, RegisterSpecList.make(registerSpecMake2, registerSpecMake), this.catches, cstMethodRef));
            this.insns.add(new PlainInsn(Rops.opMoveResult(cstMethodRef.getPrototype().getReturnType()), sourcePositionMakeSourcePosistion, registerSpecMake3, registerSpecList2));
            Make = RegisterSpecList.make(registerSpecMake3);
            i5 = 192;
            r3 = z;
        } else {
            Make = sources;
            i3 = 0;
            r3 = 1;
            registerSpec2 = null;
            typeBearer = typeBearer4;
            constant = auxCst;
            if (i5 == 168) {
                this.hasJsr = true;
                return;
            } else if (i5 == 169) {
                try {
                    this.returnAddress = (ReturnAddress) arg(0);
                    return;
                } catch (ClassCastException e) {
                    Make$Map$$ExternalSyntheticBUOutline0.m1021m("Argument to RET was not a ReturnAddress", e);
                    return;
                }
            }
        }
        int iJopToRopOpcode = jopToRopOpcode(i5, constant);
        Rop ropRopFor = Rops.ropFor(iJopToRopOpcode, typeBearer, Make, constant);
        if (registerSpec != null && ropRopFor.isCallLike()) {
            this.extraBlockCount += r3;
            if (ropRopFor.getOpcode() == 59) {
                returnType = ((CstCallSiteRef) constant).getReturnType();
            } else {
                returnType = ((CstMethodRef) constant).getPrototype().getReturnType();
            }
            PlainInsn plainInsn3 = new PlainInsn(Rops.opMoveResult(returnType), sourcePositionMakeSourcePosistion, registerSpec, RegisterSpecList.EMPTY);
            registerSpec3 = registerSpec2;
            plainInsn = plainInsn3;
        } else if (registerSpec == null || !ropRopFor.canThrow()) {
            registerSpec3 = registerSpec;
            plainInsn = registerSpec2;
        } else {
            this.extraBlockCount += r3;
            plainInsn = new PlainInsn(Rops.opMoveResultPseudo(registerSpec.getTypeBearer()), sourcePositionMakeSourcePosistion, registerSpec, RegisterSpecList.EMPTY);
            registerSpec3 = registerSpec2;
        }
        if (iJopToRopOpcode == 41) {
            constantIntern = CstType.intern(ropRopFor.getResult());
            r4 = Make;
        } else {
            if (constant == null && size2 == 2) {
                ?? typeBearer5 = Make.get(i3).getTypeBearer();
                ?? typeBearer6 = Make.get(r3).getTypeBearer();
                if ((typeBearer6.isConstant() || typeBearer5.isConstant()) && this.advice.hasConstantOperation(ropRopFor, Make.get(i3), Make.get(r3))) {
                    if (typeBearer6.isConstant()) {
                        Constant constantMake = (Constant) typeBearer6;
                        RegisterSpecList registerSpecListWithoutLast = Make.withoutLast();
                        if (ropRopFor.getOpcode() == 15) {
                            constantMake = CstInteger.make(-((CstInteger) typeBearer6).getValue());
                            iJopToRopOpcode = 14;
                        }
                        constantIntern = constantMake;
                        registerSpecListWithoutFirst = registerSpecListWithoutLast;
                    } else {
                        constantIntern = (Constant) typeBearer5;
                        registerSpecListWithoutFirst = Make.withoutFirst();
                    }
                    ropRopFor = Rops.ropFor(iJopToRopOpcode, typeBearer, registerSpecListWithoutFirst, constantIntern);
                    r4 = registerSpecListWithoutFirst;
                }
            }
            r14 = Make;
            constant2 = constant;
            auxCases = getAuxCases();
            initValues = getInitValues();
            boolean zCanThrow = ropRopFor.canThrow();
            this.blockCanThrow |= zCanThrow;
            if (auxCases == null) {
                if (auxCases.size() == 0) {
                    plainInsn2 = new PlainInsn(Rops.GOTO, sourcePositionMakeSourcePosistion, (RegisterSpec) null, RegisterSpecList.EMPTY);
                    this.primarySuccessorIndex = 0;
                    obj3 = plainInsn;
                    r93 = r3;
                    constant3 = constant2;
                    r8 = obj3;
                    r94 = r93;
                } else {
                    IntList values = auxCases.getValues();
                    plainCstInsn = new SwitchInsn(ropRopFor, sourcePositionMakeSourcePosistion, registerSpec3, r14, values);
                    this.primarySuccessorIndex = values.size();
                    obj = plainInsn;
                    r9 = r3;
                    constant3 = constant2;
                    plainInsn2 = plainCstInsn;
                    r8 = obj;
                    r94 = r9;
                }
            } else if (iJopToRopOpcode == 33) {
                if (r14.size() != 0) {
                    i4 = 0;
                    RegisterSpec registerSpec6 = r14.get(0);
                    TypeBearer typeBearer7 = registerSpec6.getTypeBearer();
                    if (registerSpec6.getReg() != 0) {
                        this.insns.add(new PlainInsn(Rops.opMove(typeBearer7), sourcePositionMakeSourcePosistion, RegisterSpec.make(0, typeBearer7), registerSpec6));
                    }
                } else {
                    i4 = 0;
                }
                PlainInsn plainInsn4 = new PlainInsn(Rops.GOTO, sourcePositionMakeSourcePosistion, (RegisterSpec) null, RegisterSpecList.EMPTY);
                this.primarySuccessorIndex = i4;
                updateReturnOp(ropRopFor, sourcePositionMakeSourcePosistion);
                this.returns = r3;
                obj3 = plainInsn;
                r93 = r3;
                plainInsn2 = plainInsn4;
                constant3 = constant2;
                r8 = obj3;
                r94 = r93;
            } else if (constant2 == null) {
                Object obj4 = plainInsn;
                ?? r95 = r3;
                constant3 = constant2;
                if (zCanThrow) {
                    ThrowingInsn throwingInsn = new ThrowingInsn(ropRopFor, sourcePositionMakeSourcePosistion, r14, this.catches);
                    this.catchesUsed = r95;
                    if (i5 == 191) {
                        this.primarySuccessorIndex = -1;
                    } else {
                        this.primarySuccessorIndex = this.catches.size();
                    }
                    plainInsn2 = throwingInsn;
                    r8 = obj4;
                    r94 = r95;
                } else {
                    plainInsn2 = new PlainInsn(ropRopFor, sourcePositionMakeSourcePosistion, registerSpec3, (RegisterSpecList) r14);
                    r8 = obj4;
                    r94 = r95;
                }
            } else if (zCanThrow) {
                int opcode = ropRopFor.getOpcode();
                TypeList typeList2 = this.catches;
                if (opcode == 58) {
                    obj2 = plainInsn;
                    r92 = r3;
                    plainInsn2 = makeInvokePolymorphicInsn(ropRopFor, sourcePositionMakeSourcePosistion, r14, typeList2, constant2);
                    constant3 = constant2;
                } else {
                    obj2 = plainInsn;
                    r92 = r3;
                    constant3 = constant2;
                    plainInsn2 = new ThrowingCstInsn(ropRopFor, sourcePositionMakeSourcePosistion, r14, typeList2, constant3);
                }
                this.catchesUsed = r92;
                this.primarySuccessorIndex = this.catches.size();
                r8 = obj2;
                r94 = r92;
            } else {
                obj = plainInsn;
                r9 = r3;
                constant3 = constant2;
                plainCstInsn = new PlainCstInsn(ropRopFor, sourcePositionMakeSourcePosistion, registerSpec3, r14, constant3);
                plainInsn2 = plainCstInsn;
                r8 = obj;
                r94 = r9;
            }
            this.insns.add(plainInsn2);
            if (r8 != 0) {
                this.insns.add((Insn) r8);
            }
            if (initValues == null) {
                this.extraBlockCount += r94;
                this.insns.add(new FillArrayDataInsn(Rops.FILL_ARRAY_DATA, sourcePositionMakeSourcePosistion, RegisterSpecList.make(r8.getResult()), initValues, constant3));
                return;
            }
            return;
        }
        r14 = r4;
        constant2 = constantIntern;
        auxCases = getAuxCases();
        initValues = getInitValues();
        boolean zCanThrow2 = ropRopFor.canThrow();
        this.blockCanThrow |= zCanThrow2;
        if (auxCases == null) {
        }
        this.insns.add(plainInsn2);
        if (r8 != 0) {
        }
        if (initValues == null) {
        }
    }

    private RegisterSpecList getSources(int i, int i2) {
        RegisterSpecList registerSpecList;
        int iArgCount = argCount();
        if (iArgCount == 0) {
            return RegisterSpecList.EMPTY;
        }
        int localIndex = getLocalIndex();
        if (localIndex >= 0) {
            registerSpecList = new RegisterSpecList(1);
            registerSpecList.set(0, RegisterSpec.make(localIndex, arg(0)));
        } else {
            RegisterSpecList registerSpecList2 = new RegisterSpecList(iArgCount);
            for (int i3 = 0; i3 < iArgCount; i3++) {
                RegisterSpec registerSpecMake = RegisterSpec.make(i2, arg(i3));
                registerSpecList2.set(i3, registerSpecMake);
                i2 += registerSpecMake.getCategory();
            }
            if (i == 79) {
                if (iArgCount != 3) {
                    GlShader$$ExternalSyntheticBUOutline1.m1109m("shouldn't happen");
                    return null;
                }
                RegisterSpec registerSpec = registerSpecList2.get(0);
                RegisterSpec registerSpec2 = registerSpecList2.get(1);
                registerSpecList2.set(0, registerSpecList2.get(2));
                registerSpecList2.set(1, registerSpec);
                registerSpecList2.set(2, registerSpec2);
            } else if (i == 181) {
                if (iArgCount != 2) {
                    GlShader$$ExternalSyntheticBUOutline1.m1109m("shouldn't happen");
                    return null;
                }
                RegisterSpec registerSpec3 = registerSpecList2.get(0);
                registerSpecList2.set(0, registerSpecList2.get(1));
                registerSpecList2.set(1, registerSpec3);
            }
            registerSpecList = registerSpecList2;
        }
        registerSpecList.setImmutable();
        return registerSpecList;
    }

    private void updateReturnOp(Rop rop, SourcePosition sourcePosition) {
        if (rop == null) {
            f$$ExternalSyntheticBUOutline2.m216m("op == null");
            return;
        }
        if (sourcePosition == null) {
            f$$ExternalSyntheticBUOutline2.m216m("pos == null");
            return;
        }
        Rop rop2 = this.returnOp;
        if (rop2 == null) {
            this.returnOp = rop;
            this.returnPosition = sourcePosition;
        } else {
            if (rop2 != rop) {
                StringBuilder sb = new StringBuilder("return op mismatch: ");
                sb.append(rop);
                Rop rop3 = this.returnOp;
                sb.append(", ");
                sb.append(rop3);
                throw new SimException(sb.toString());
            }
            if (sourcePosition.getLine() > this.returnPosition.getLine()) {
                this.returnPosition = sourcePosition;
            }
        }
    }

    private int jopToRopOpcode(int i, Constant constant) {
        if (i == 0) {
            return 1;
        }
        if (i == 20) {
            return 5;
        }
        if (i == 21) {
            return 2;
        }
        if (i == 171) {
            return 13;
        }
        if (i == 172) {
            return 33;
        }
        if (i == 198) {
            return 7;
        }
        if (i == 199) {
            return 8;
        }
        switch (i) {
            case 0:
                return 1;
            case 18:
                return 5;
            case 46:
                return 38;
            case 54:
                return 2;
            case 79:
                return 39;
            case 96:
                return 14;
            case 100:
                return 15;
            case 104:
                return 16;
            case 108:
                return 17;
            case 112:
                return 18;
            case 116:
                return 19;
            case 120:
                return 23;
            case 122:
                return 24;
            case 124:
                return 25;
            case 126:
                return 20;
            case 128:
                return 21;
            case 130:
                return 22;
            default:
                switch (i) {
                    case 132:
                        return 14;
                    case 133:
                    case 134:
                    case 135:
                    case 136:
                    case 137:
                    case 138:
                    case 139:
                    case 140:
                    case 141:
                    case 142:
                    case 143:
                    case 144:
                        return 29;
                    case 145:
                        return 30;
                    case 146:
                        return 31;
                    case 147:
                        return 32;
                    case 148:
                    case 149:
                    case 151:
                        return 27;
                    case 150:
                    case 152:
                        return 28;
                    case 153:
                    case 159:
                    case 165:
                        return 7;
                    case 154:
                    case 160:
                    case 166:
                        return 8;
                    case 155:
                    case 161:
                        return 9;
                    case 156:
                    case 162:
                        return 10;
                    case 157:
                    case 163:
                        return 12;
                    case 158:
                    case 164:
                        return 11;
                    case 167:
                        return 6;
                    default:
                        switch (i) {
                            case 177:
                                return 33;
                            case 178:
                                return 46;
                            case 179:
                                return 48;
                            case 180:
                                return 45;
                            case 181:
                                return 47;
                            case 182:
                                CstMethodRef cstMethodRef = (CstMethodRef) constant;
                                if (cstMethodRef.getDefiningClass().equals(this.method.getDefiningClass())) {
                                    for (int i2 = 0; i2 < this.methods.size(); i2++) {
                                        Method method = this.methods.get(i2);
                                        if (AccessFlags.isPrivate(method.getAccessFlags()) && cstMethodRef.getNat().equals(method.getNat())) {
                                            return 52;
                                        }
                                    }
                                }
                                return cstMethodRef.isSignaturePolymorphic() ? 58 : 50;
                            case 183:
                                CstMethodRef cstMethodRef2 = (CstMethodRef) constant;
                                return (cstMethodRef2.isInstanceInit() || cstMethodRef2.getDefiningClass().equals(this.method.getDefiningClass())) ? 52 : 51;
                            case 184:
                                return 49;
                            case 185:
                                return 53;
                            case 186:
                                return 59;
                            case 187:
                                return 40;
                            case 188:
                            case 189:
                                return 41;
                            case 190:
                                return 34;
                            case 191:
                                return 35;
                            case 192:
                                return 43;
                            case 193:
                                return 44;
                            case 194:
                                return 36;
                            case 195:
                                return 37;
                            default:
                                GlShader$$ExternalSyntheticBUOutline1.m1109m("shouldn't happen");
                                return 0;
                        }
                }
        }
    }

    private Insn makeInvokePolymorphicInsn(Rop rop, SourcePosition sourcePosition, RegisterSpecList registerSpecList, TypeList typeList, Constant constant) {
        return new InvokePolymorphicInsn(rop, sourcePosition, registerSpecList, typeList, (CstMethodRef) constant);
    }
}
