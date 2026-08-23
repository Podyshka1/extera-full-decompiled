package com.android.dx.cf.code;

import com.android.dx.cf.code.BytecodeArray;
import com.android.dx.cf.code.LocalVariableList;
import com.android.dx.dex.DexOptions;
import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstFieldRef;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstInterfaceMethodRef;
import com.android.dx.rop.cst.CstInvokeDynamic;
import com.android.dx.rop.cst.CstMethodHandle;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstProtoRef;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Prototype;
import com.android.dx.rop.type.Type;
import com.android.dx.util.Hex;
import java.util.ArrayList;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public class Simulator {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String LOCAL_MISMATCH_ERROR = "This is symptomatic of .class transformation tools that ignore local variable information.";
    private final BytecodeArray code;
    private final DexOptions dexOptions;
    private final LocalVariableList localVariables;
    private final Machine machine;
    private ConcreteMethod method;
    private final SimVisitor visitor;

    public Simulator(Machine machine, ConcreteMethod concreteMethod, DexOptions dexOptions) {
        if (machine == null) {
            f$$ExternalSyntheticBUOutline2.m179m("machine == null");
            throw null;
        }
        if (concreteMethod == null) {
            f$$ExternalSyntheticBUOutline2.m179m("method == null");
            throw null;
        }
        if (dexOptions == null) {
            f$$ExternalSyntheticBUOutline2.m179m("dexOptions == null");
            throw null;
        }
        this.machine = machine;
        this.code = concreteMethod.getCode();
        this.method = concreteMethod;
        this.localVariables = concreteMethod.getLocalVariables();
        this.visitor = new SimVisitor();
        this.dexOptions = dexOptions;
        if (concreteMethod.isDefaultOrStaticInterfaceMethod()) {
            checkInterfaceMethodDeclaration(concreteMethod);
        }
    }

    public void simulate(ByteBlock byteBlock, Frame frame) {
        int end = byteBlock.getEnd();
        this.visitor.setFrame(frame);
        try {
            int start = byteBlock.getStart();
            while (start < end) {
                int instruction = this.code.parseInstruction(start, this.visitor);
                this.visitor.setPreviousOffset(start);
                start += instruction;
            }
        } catch (SimException e) {
            frame.annotate(e);
            throw e;
        }
    }

    public int simulate(int i, Frame frame) {
        this.visitor.setFrame(frame);
        return this.code.parseInstruction(i, this.visitor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static SimException illegalTos() {
        return new SimException("stack mismatch: illegal top-of-stack for opcode");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Type requiredArrayTypeFor(Type type, Type type2) {
        Type type3;
        Type type4 = Type.KNOWN_NULL;
        return type2 == type4 ? type.isReference() ? type4 : type.getArrayType() : (type == Type.OBJECT && type2.isArray() && type2.getComponentType().isReference()) ? type2 : (type == Type.BYTE && type2 == (type3 = Type.BOOLEAN_ARRAY)) ? type3 : type.getArrayType();
    }

    public class SimVisitor implements BytecodeArray.Visitor {
        private Frame frame = null;
        private final Machine machine;
        private int previousOffset;

        public SimVisitor() {
            this.machine = Simulator.this.machine;
        }

        public void setFrame(Frame frame) {
            if (frame == null) {
                f$$ExternalSyntheticBUOutline2.m179m("frame == null");
            } else {
                this.frame = frame;
            }
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitInvalid(int i, int i2, int i3) {
            throw new SimException("invalid opcode " + Hex.u1(i));
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:116:0x02b8  */
        /* JADX WARN: Removed duplicated region for block: B:138:0x034c  */
        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void visitNoArgs(int i, int i2, int i3, Type type) {
            if (i == 0) {
                this.machine.clearArgs();
            } else if (i == 190) {
                Type typePeekType = this.frame.getStack().peekType(0);
                if (!typePeekType.isArrayOrKnownNull()) {
                    Simulator.this.fail("type mismatch: expected array type but encountered " + typePeekType.toHuman());
                }
                this.machine.popArgs(this.frame, Type.OBJECT);
            } else if (i != 191 && i != 194 && i != 195) {
                switch (i) {
                    case 0:
                        break;
                    case 46:
                        Type typeRequiredArrayTypeFor = Simulator.requiredArrayTypeFor(type, this.frame.getStack().peekType(1));
                        type = Type.KNOWN_NULL;
                        if (typeRequiredArrayTypeFor != type) {
                            type = typeRequiredArrayTypeFor.getComponentType();
                        }
                        this.machine.popArgs(this.frame, typeRequiredArrayTypeFor, Type.INT);
                        break;
                    case 79:
                        ExecutionStack stack = this.frame.getStack();
                        int i4 = type.isCategory1() ? 2 : 3;
                        Type typePeekType2 = stack.peekType(i4);
                        boolean zPeekLocal = stack.peekLocal(i4);
                        Type typeRequiredArrayTypeFor2 = Simulator.requiredArrayTypeFor(type, typePeekType2);
                        if (zPeekLocal) {
                            Type componentType = Type.KNOWN_NULL;
                            if (typeRequiredArrayTypeFor2 != componentType) {
                                componentType = typeRequiredArrayTypeFor2.getComponentType();
                            }
                            type = componentType;
                        }
                        this.machine.popArgs(this.frame, typeRequiredArrayTypeFor2, Type.INT, type);
                        break;
                    case 100:
                    case 104:
                    case 108:
                    case 112:
                    case 126:
                    case 128:
                    case 130:
                        this.machine.popArgs(this.frame, type, type);
                        break;
                    case 116:
                        this.machine.popArgs(this.frame, type);
                        break;
                    case 120:
                    case 122:
                    case 124:
                        this.machine.popArgs(this.frame, type, Type.INT);
                        break;
                    case 172:
                        Type typePeekType3 = type == Type.OBJECT ? this.frame.getStack().peekType(0) : type;
                        this.machine.popArgs(this.frame, type);
                        checkReturnType(typePeekType3);
                        break;
                    case 177:
                        this.machine.clearArgs();
                        checkReturnType(Type.VOID);
                        break;
                    default:
                        int i5 = 17;
                        switch (i) {
                            case 87:
                                if (this.frame.getStack().peekType(0).isCategory2()) {
                                    throw Simulator.illegalTos();
                                }
                                this.machine.popArgs(this.frame, 1);
                                break;
                                break;
                            case 88:
                            case 92:
                                ExecutionStack stack2 = this.frame.getStack();
                                if (stack2.peekType(0).isCategory2()) {
                                    this.machine.popArgs(this.frame, 1);
                                } else {
                                    if (!stack2.peekType(1).isCategory1()) {
                                        throw Simulator.illegalTos();
                                    }
                                    this.machine.popArgs(this.frame, 2);
                                    i5 = 8481;
                                }
                                if (i == 92) {
                                    this.machine.auxIntArg(i5);
                                }
                                break;
                            case 89:
                                if (this.frame.getStack().peekType(0).isCategory2()) {
                                    throw Simulator.illegalTos();
                                }
                                this.machine.popArgs(this.frame, 1);
                                this.machine.auxIntArg(17);
                                break;
                                break;
                            case 90:
                                ExecutionStack stack3 = this.frame.getStack();
                                if (!stack3.peekType(0).isCategory1() || !stack3.peekType(1).isCategory1()) {
                                    throw Simulator.illegalTos();
                                }
                                this.machine.popArgs(this.frame, 2);
                                this.machine.auxIntArg(530);
                                break;
                                break;
                            case 91:
                                ExecutionStack stack4 = this.frame.getStack();
                                if (stack4.peekType(0).isCategory2()) {
                                    throw Simulator.illegalTos();
                                }
                                if (stack4.peekType(1).isCategory2()) {
                                    this.machine.popArgs(this.frame, 2);
                                    this.machine.auxIntArg(530);
                                } else {
                                    if (!stack4.peekType(2).isCategory1()) {
                                        throw Simulator.illegalTos();
                                    }
                                    this.machine.popArgs(this.frame, 3);
                                    this.machine.auxIntArg(12819);
                                }
                                break;
                                break;
                            case 93:
                                ExecutionStack stack5 = this.frame.getStack();
                                if (stack5.peekType(0).isCategory2()) {
                                    if (stack5.peekType(2).isCategory2()) {
                                        throw Simulator.illegalTos();
                                    }
                                    this.machine.popArgs(this.frame, 2);
                                    this.machine.auxIntArg(530);
                                } else {
                                    if (stack5.peekType(1).isCategory2() || stack5.peekType(2).isCategory2()) {
                                        throw Simulator.illegalTos();
                                    }
                                    this.machine.popArgs(this.frame, 3);
                                    this.machine.auxIntArg(205106);
                                }
                                break;
                            case 94:
                                ExecutionStack stack6 = this.frame.getStack();
                                if (stack6.peekType(0).isCategory2()) {
                                    if (stack6.peekType(2).isCategory2()) {
                                        this.machine.popArgs(this.frame, 2);
                                        this.machine.auxIntArg(530);
                                    } else {
                                        if (!stack6.peekType(3).isCategory1()) {
                                            throw Simulator.illegalTos();
                                        }
                                        this.machine.popArgs(this.frame, 3);
                                        this.machine.auxIntArg(12819);
                                    }
                                } else {
                                    if (!stack6.peekType(1).isCategory1()) {
                                        throw Simulator.illegalTos();
                                    }
                                    if (stack6.peekType(2).isCategory2()) {
                                        this.machine.popArgs(this.frame, 3);
                                        this.machine.auxIntArg(205106);
                                    } else {
                                        if (!stack6.peekType(3).isCategory1()) {
                                            throw Simulator.illegalTos();
                                        }
                                        this.machine.popArgs(this.frame, 4);
                                        this.machine.auxIntArg(4399427);
                                    }
                                }
                                break;
                            case 95:
                                ExecutionStack stack7 = this.frame.getStack();
                                if (!stack7.peekType(0).isCategory1() || !stack7.peekType(1).isCategory1()) {
                                    throw Simulator.illegalTos();
                                }
                                this.machine.popArgs(this.frame, 2);
                                this.machine.auxIntArg(18);
                                break;
                                break;
                            case 96:
                                break;
                            default:
                                switch (i) {
                                    case 133:
                                    case 134:
                                    case 135:
                                    case 145:
                                    case 146:
                                    case 147:
                                        this.machine.popArgs(this.frame, Type.INT);
                                        break;
                                    case 136:
                                    case 137:
                                    case 138:
                                        this.machine.popArgs(this.frame, Type.LONG);
                                        break;
                                    case 139:
                                    case 140:
                                    case 141:
                                        this.machine.popArgs(this.frame, Type.FLOAT);
                                        break;
                                    case 142:
                                    case 143:
                                    case 144:
                                        this.machine.popArgs(this.frame, Type.DOUBLE);
                                        break;
                                    case 148:
                                        Machine machine = this.machine;
                                        Frame frame = this.frame;
                                        Type type2 = Type.LONG;
                                        machine.popArgs(frame, type2, type2);
                                        break;
                                    case 149:
                                    case 150:
                                        Machine machine2 = this.machine;
                                        Frame frame2 = this.frame;
                                        Type type3 = Type.FLOAT;
                                        machine2.popArgs(frame2, type3, type3);
                                        break;
                                    case 151:
                                    case 152:
                                        Machine machine3 = this.machine;
                                        Frame frame3 = this.frame;
                                        Type type4 = Type.DOUBLE;
                                        machine3.popArgs(frame3, type4, type4);
                                        break;
                                    default:
                                        visitInvalid(i, i2, i3);
                                        return;
                                }
                                break;
                        }
                        break;
                }
            } else {
                this.machine.popArgs(this.frame, Type.OBJECT);
            }
            this.machine.auxType(type);
            this.machine.run(this.frame, i2, i);
        }

        private void checkReturnType(Type type) {
            Type returnType = this.machine.getPrototype().getReturnType();
            if (Merger.isPossiblyAssignableFrom(returnType, type)) {
                return;
            }
            Simulator.this.fail("return type mismatch: prototype indicates " + returnType.toHuman() + ", but encountered type " + type.toHuman());
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0086  */
        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void visitLocal(int i, int i2, int i3, int i4, Type type, int i5) {
            Type type2;
            LocalItem localItem;
            LocalVariableList.Item itemPcAndIndexToLocal = Simulator.this.localVariables.pcAndIndexToLocal(i == 54 ? i2 + i3 : i2, i4);
            if (itemPcAndIndexToLocal != null) {
                type2 = itemPcAndIndexToLocal.getType();
                if (type2.getBasicFrameType() != type.getBasicFrameType()) {
                    type2 = type;
                    itemPcAndIndexToLocal = null;
                }
            } else {
                type2 = type;
            }
            if (i == 21) {
                this.machine.localArg(this.frame, i4);
                this.machine.localInfo(itemPcAndIndexToLocal == null);
                this.machine.auxType(type);
            } else if (i == 54) {
                localItem = itemPcAndIndexToLocal != null ? itemPcAndIndexToLocal.getLocalItem() : null;
                this.machine.popArgs(this.frame, type);
                this.machine.auxType(type);
                this.machine.localTarget(i4, type2, localItem);
            } else if (i != 132) {
                if (i != 169) {
                    visitInvalid(i, i2, i3);
                    return;
                }
                this.machine.localArg(this.frame, i4);
                this.machine.localInfo(itemPcAndIndexToLocal == null);
                this.machine.auxType(type);
            } else {
                localItem = itemPcAndIndexToLocal != null ? itemPcAndIndexToLocal.getLocalItem() : null;
                this.machine.localArg(this.frame, i4);
                this.machine.localTarget(i4, type2, localItem);
                this.machine.auxType(type);
                this.machine.auxIntArg(i5);
                this.machine.auxCstArg(CstInteger.make(i5));
            }
            this.machine.run(this.frame, i2, i);
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x0091  */
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
        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void visitConstant(int i, int i2, int i3, Constant constant, int i4) {
            Constant constantAddReference;
            if (i == 18 || i == 19) {
                if ((constant instanceof CstMethodHandle) || (constant instanceof CstProtoRef)) {
                    Simulator.this.checkConstMethodHandleSupported(constant);
                }
                this.machine.clearArgs();
                constantAddReference = constant;
            } else if (i == 189) {
                this.machine.popArgs(this.frame, Type.INT);
                constantAddReference = constant;
            } else if (i == 197) {
                this.machine.popArgs(this.frame, Prototype.internInts(Type.VOID, i4));
                constantAddReference = constant;
            } else if (i != 192 && i != 193) {
                switch (i) {
                    case 179:
                        this.machine.popArgs(this.frame, ((CstFieldRef) constant).getType());
                        constantAddReference = constant;
                        break;
                    case 180:
                        break;
                    case 181:
                        this.machine.popArgs(this.frame, Type.OBJECT, ((CstFieldRef) constant).getType());
                        constantAddReference = constant;
                        break;
                    case 182:
                    case 183:
                    case 184:
                    case 185:
                        boolean z = constant instanceof CstInterfaceMethodRef;
                        Constant constant2 = constant;
                        if (z) {
                            CstMethodRef methodRef = ((CstInterfaceMethodRef) constant).toMethodRef();
                            Simulator.this.checkInvokeInterfaceSupported(i, methodRef);
                            constant2 = methodRef;
                        }
                        if ((constant2 instanceof CstMethodRef) && ((CstMethodRef) constant2).isSignaturePolymorphic()) {
                            Simulator.this.checkInvokeSignaturePolymorphic(i);
                        }
                        this.machine.popArgs(this.frame, ((CstMethodRef) constant2).getPrototype(i == 184));
                        constantAddReference = constant2;
                        break;
                    case 186:
                        Simulator.this.checkInvokeDynamicSupported(i);
                        CstInvokeDynamic cstInvokeDynamic = (CstInvokeDynamic) constant;
                        this.machine.popArgs(this.frame, cstInvokeDynamic.getPrototype());
                        constantAddReference = cstInvokeDynamic.addReference();
                        break;
                    default:
                        this.machine.clearArgs();
                        constantAddReference = constant;
                        break;
                }
            } else {
                this.machine.popArgs(this.frame, Type.OBJECT);
                constantAddReference = constant;
            }
            this.machine.auxIntArg(i4);
            this.machine.auxCstArg(constantAddReference);
            this.machine.run(this.frame, i2, i);
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitBranch(int i, int i2, int i3, int i4) {
            switch (i) {
                case 153:
                case 154:
                case 155:
                case 156:
                case 157:
                case 158:
                    this.machine.popArgs(this.frame, Type.INT);
                    this.machine.auxTargetArg(i4);
                    this.machine.run(this.frame, i2, i);
                    break;
                case 159:
                case 160:
                case 161:
                case 162:
                case 163:
                case 164:
                    Machine machine = this.machine;
                    Frame frame = this.frame;
                    Type type = Type.INT;
                    machine.popArgs(frame, type, type);
                    this.machine.auxTargetArg(i4);
                    this.machine.run(this.frame, i2, i);
                    break;
                case 165:
                case 166:
                    Machine machine2 = this.machine;
                    Frame frame2 = this.frame;
                    Type type2 = Type.OBJECT;
                    machine2.popArgs(frame2, type2, type2);
                    this.machine.auxTargetArg(i4);
                    this.machine.run(this.frame, i2, i);
                    break;
                default:
                    switch (i) {
                        case 198:
                        case 199:
                            this.machine.popArgs(this.frame, Type.OBJECT);
                            break;
                        case 200:
                        case 201:
                            break;
                        default:
                            visitInvalid(i, i2, i3);
                            break;
                    }
                    this.machine.auxTargetArg(i4);
                    this.machine.run(this.frame, i2, i);
                case 167:
                case 168:
                    this.machine.clearArgs();
                    this.machine.auxTargetArg(i4);
                    this.machine.run(this.frame, i2, i);
                    break;
            }
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitSwitch(int i, int i2, int i3, SwitchList switchList, int i4) {
            this.machine.popArgs(this.frame, Type.INT);
            this.machine.auxIntArg(i4);
            this.machine.auxSwitchArg(switchList);
            this.machine.run(this.frame, i2, i);
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitNewarray(int i, int i2, CstType cstType, ArrayList<Constant> arrayList) {
            this.machine.popArgs(this.frame, Type.INT);
            this.machine.auxInitValues(arrayList);
            this.machine.auxCstArg(cstType);
            this.machine.run(this.frame, i, 188);
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public void setPreviousOffset(int i) {
            this.previousOffset = i;
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public int getPreviousOffset() {
            return this.previousOffset;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkConstMethodHandleSupported(Constant constant) {
        if (this.dexOptions.apiIsSupported(28)) {
            return;
        }
        fail(String.format("invalid constant type %s requires --min-sdk-version >= %d (currently %d)", constant.typeName(), 28, Integer.valueOf(this.dexOptions.minSdkVersion)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkInvokeDynamicSupported(int i) {
        if (this.dexOptions.apiIsSupported(26)) {
            return;
        }
        fail(String.format("invalid opcode %02x - invokedynamic requires --min-sdk-version >= %d (currently %d)", Integer.valueOf(i), 26, Integer.valueOf(this.dexOptions.minSdkVersion)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkInvokeInterfaceSupported(int i, CstMethodRef cstMethodRef) {
        if (i == 185 || this.dexOptions.apiIsSupported(24)) {
            return;
        }
        DexOptions dexOptions = this.dexOptions;
        boolean zApiIsSupported = dexOptions.allowAllInterfaceMethodInvokes;
        if (i == 184) {
            zApiIsSupported &= dexOptions.apiIsSupported(21);
        }
        String str = i == 184 ? "static" : "default";
        if (zApiIsSupported) {
            warn(String.format("invoking a %s interface method %s.%s strictly requires --min-sdk-version >= %d (experimental at current API level %d)", str, cstMethodRef.getDefiningClass().toHuman(), cstMethodRef.getNat().toHuman(), 24, Integer.valueOf(this.dexOptions.minSdkVersion)));
        } else {
            fail(String.format("invoking a %s interface method %s.%s strictly requires --min-sdk-version >= %d (blocked at current API level %d)", str, cstMethodRef.getDefiningClass().toHuman(), cstMethodRef.getNat().toHuman(), 24, Integer.valueOf(this.dexOptions.minSdkVersion)));
        }
    }

    private void checkInterfaceMethodDeclaration(ConcreteMethod concreteMethod) {
        if (this.dexOptions.apiIsSupported(24)) {
            return;
        }
        warn(String.format("defining a %s interface method requires --min-sdk-version >= %d (currently %d) for interface methods: %s.%s", concreteMethod.isStaticMethod() ? "static" : "default", 24, Integer.valueOf(this.dexOptions.minSdkVersion), concreteMethod.getDefiningClass().toHuman(), concreteMethod.getNat().toHuman()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkInvokeSignaturePolymorphic(int i) {
        if (!this.dexOptions.apiIsSupported(26)) {
            fail(String.format("invoking a signature-polymorphic requires --min-sdk-version >= %d (currently %d)", 26, Integer.valueOf(this.dexOptions.minSdkVersion)));
        } else if (i != 182) {
            fail("Unsupported signature polymorphic invocation (" + ByteOps.opName(i) + ")");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fail(String str) {
        throw new SimException(String.format("ERROR in %s.%s: %s", this.method.getDefiningClass().toHuman(), this.method.getNat().toHuman(), str));
    }

    private void warn(String str) {
        this.dexOptions.err.println(String.format("WARNING in %s.%s: %s", this.method.getDefiningClass().toHuman(), this.method.getNat().toHuman(), str));
    }
}
