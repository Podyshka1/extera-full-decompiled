package com.android.p003dx;

import com.android.p003dx.DexMaker;
import com.android.p003dx.rop.code.BasicBlockList;
import com.android.p003dx.rop.code.Insn;
import com.android.p003dx.rop.code.PlainCstInsn;
import com.android.p003dx.rop.code.PlainInsn;
import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.code.Rop;
import com.android.p003dx.rop.code.Rops;
import com.android.p003dx.rop.code.SourcePosition;
import com.android.p003dx.rop.code.ThrowingCstInsn;
import com.android.p003dx.rop.code.ThrowingInsn;
import com.android.p003dx.rop.cst.CstInteger;
import com.android.p003dx.rop.type.StdTypeList;
import com.android.p003dx.rop.type.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class Code {
    private final List<Label> catchLabels;
    private final List<TypeId<?>> catchTypes;
    private StdTypeList catches;
    private Label currentLabel;
    private final List<Label> labels = new ArrayList();
    private final List<Local<?>> locals;
    private boolean localsInitialized;
    private final MethodId<?, ?> method;
    private final List<Local<?>> parameters;
    private SourcePosition sourcePosition;
    private final Local<?> thisLocal;

    Code(DexMaker.MethodDeclaration methodDeclaration) {
        ArrayList arrayList = new ArrayList();
        this.parameters = arrayList;
        this.locals = new ArrayList();
        this.sourcePosition = SourcePosition.NO_INFO;
        this.catchTypes = new ArrayList();
        this.catchLabels = new ArrayList();
        this.catches = StdTypeList.EMPTY;
        MethodId<?, ?> methodId = methodDeclaration.method;
        this.method = methodId;
        if (methodDeclaration.isStatic()) {
            this.thisLocal = null;
        } else {
            Local<?> local = Local.get(this, methodId.declaringType);
            this.thisLocal = local;
            arrayList.add(local);
        }
        TypeId<?>[] typeIdArr = methodId.parameters.types;
        for (TypeId<?> typeId : typeIdArr) {
            this.parameters.add(Local.get(this, typeId));
        }
        Label label = new Label();
        this.currentLabel = label;
        adopt(label);
        this.currentLabel.marked = true;
    }

    public <T> Local<T> newLocal(TypeId<T> typeId) {
        if (this.localsInitialized) {
            throw new IllegalStateException("Cannot allocate locals after adding instructions");
        }
        Local<T> local = Local.get(this, typeId);
        this.locals.add(local);
        return local;
    }

    public <T> Local<T> getParameter(int i, TypeId<T> typeId) {
        if (this.thisLocal != null) {
            i++;
        }
        return coerce(this.parameters.get(i), typeId);
    }

    public <T> Local<T> getThis(TypeId<T> typeId) {
        Local<?> local = this.thisLocal;
        if (local == null) {
            throw new IllegalStateException("static methods cannot access 'this'");
        }
        return coerce(local, typeId);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> Local<T> coerce(Local<?> local, TypeId<T> typeId) {
        if (local.type.equals(typeId)) {
            return local;
        }
        throw new IllegalArgumentException("requested " + typeId + " but was " + local.type);
    }

    void initializeLocals() {
        if (this.localsInitialized) {
            throw new AssertionError();
        }
        this.localsInitialized = true;
        Iterator<Local<?>> it = this.locals.iterator();
        int iInitialize = 0;
        while (it.hasNext()) {
            iInitialize += it.next().initialize(iInitialize);
        }
        ArrayList arrayList = new ArrayList();
        int iInitialize2 = iInitialize;
        for (Local<?> local : this.parameters) {
            CstInteger cstIntegerMake = CstInteger.make(iInitialize2 - iInitialize);
            iInitialize2 += local.initialize(iInitialize2);
            arrayList.add(new PlainCstInsn(Rops.opMoveParam(local.type.ropType), this.sourcePosition, local.spec(), RegisterSpecList.EMPTY, cstIntegerMake));
        }
        this.labels.get(0).instructions.addAll(0, arrayList);
    }

    int paramSize() {
        Iterator<Local<?>> it = this.parameters.iterator();
        int size = 0;
        while (it.hasNext()) {
            size += it.next().size();
        }
        return size;
    }

    private void adopt(Label label) {
        Code code = label.code;
        if (code == this) {
            return;
        }
        if (code != null) {
            throw new IllegalArgumentException("Cannot adopt label; it belongs to another Code");
        }
        label.code = this;
        this.labels.add(label);
    }

    public void mark(Label label) {
        adopt(label);
        if (label.marked) {
            throw new IllegalStateException("already marked");
        }
        label.marked = true;
        if (this.currentLabel != null) {
            jump(label);
        }
        this.currentLabel = label;
    }

    public void jump(Label label) {
        adopt(label);
        addInstruction(new PlainInsn(Rops.GOTO, this.sourcePosition, (RegisterSpec) null, RegisterSpecList.EMPTY), label);
    }

    public void addCatchClause(TypeId<? extends Throwable> typeId, Label label) {
        if (this.catchTypes.contains(typeId)) {
            throw new IllegalArgumentException("Already caught: " + typeId);
        }
        adopt(label);
        this.catchTypes.add(typeId);
        this.catches = toTypeList(this.catchTypes);
        this.catchLabels.add(label);
    }

    public Label removeCatchClause(TypeId<? extends Throwable> typeId) {
        int iIndexOf = this.catchTypes.indexOf(typeId);
        if (iIndexOf == -1) {
            throw new IllegalArgumentException("No catch clause: " + typeId);
        }
        this.catchTypes.remove(iIndexOf);
        this.catches = toTypeList(this.catchTypes);
        return this.catchLabels.remove(iIndexOf);
    }

    public void throwValue(Local<? extends Throwable> local) {
        addInstruction(new ThrowingInsn(Rops.THROW, this.sourcePosition, RegisterSpecList.make(local.spec()), this.catches));
    }

    private StdTypeList toTypeList(List<TypeId<?>> list) {
        StdTypeList stdTypeList = new StdTypeList(list.size());
        for (int i = 0; i < list.size(); i++) {
            stdTypeList.set(i, list.get(i).ropType);
        }
        return stdTypeList;
    }

    private void addInstruction(Insn insn) {
        addInstruction(insn, null);
    }

    private void addInstruction(Insn insn, Label label) {
        Label label2 = this.currentLabel;
        if (label2 == null || !label2.marked) {
            throw new IllegalStateException("no current label");
        }
        label2.instructions.add(insn);
        int branchingness = insn.getOpcode().getBranchingness();
        if (branchingness == 1) {
            if (label == null) {
                return;
            }
            throw new IllegalArgumentException("unexpected branch: " + label);
        }
        if (branchingness == 2) {
            if (label != null) {
                throw new IllegalArgumentException("unexpected branch: " + label);
            }
            this.currentLabel = null;
            return;
        }
        if (branchingness == 3) {
            if (label == null) {
                throw new IllegalArgumentException("branch == null");
            }
            this.currentLabel.primarySuccessor = label;
            this.currentLabel = null;
            return;
        }
        if (branchingness == 4) {
            if (label == null) {
                throw new IllegalArgumentException("branch == null");
            }
            splitCurrentLabel(label, Collections.EMPTY_LIST);
        } else {
            if (branchingness != 6) {
                throw new IllegalArgumentException();
            }
            if (label != null) {
                throw new IllegalArgumentException("unexpected branch: " + label);
            }
            splitCurrentLabel(null, new ArrayList(this.catchLabels));
        }
    }

    private void splitCurrentLabel(Label label, List<Label> list) {
        Label label2 = new Label();
        adopt(label2);
        Label label3 = this.currentLabel;
        label3.primarySuccessor = label2;
        label3.alternateSuccessor = label;
        label3.catchLabels = list;
        this.currentLabel = label2;
        label2.marked = true;
    }

    public <T> void loadConstant(Local<T> local, T t) {
        loadConstantInternal(local, t);
    }

    public void loadDeferredClassConstant(Local<Class> local, TypeId typeId) {
        loadConstantInternal(local, typeId);
    }

    private void loadConstantInternal(Local local, Object obj) {
        Rop ropOpConst;
        if (obj == null) {
            ropOpConst = Rops.CONST_OBJECT_NOTHROW;
        } else {
            ropOpConst = Rops.opConst(local.type.ropType);
        }
        Rop rop = ropOpConst;
        if (rop.getBranchingness() == 1) {
            addInstruction(new PlainCstInsn(rop, this.sourcePosition, local.spec(), RegisterSpecList.EMPTY, Constants.getConstant(obj)));
        } else {
            addInstruction(new ThrowingCstInsn(rop, this.sourcePosition, RegisterSpecList.EMPTY, this.catches, Constants.getConstant(obj)));
            moveResult(local, true);
        }
    }

    public <T> void move(Local<T> local, Local<T> local2) {
        addInstruction(new PlainInsn(Rops.opMove(local2.type.ropType), this.sourcePosition, local.spec(), local2.spec()));
    }

    /* JADX INFO: renamed from: op */
    public <T> void m205op(UnaryOp unaryOp, Local<T> local, Local<T> local2) {
        addInstruction(new PlainInsn(unaryOp.rop(local2.type), this.sourcePosition, local.spec(), local2.spec()));
    }

    /* JADX INFO: renamed from: op */
    public <T1, T2> void m204op(BinaryOp binaryOp, Local<T1> local, Local<T1> local2, Local<T2> local3) {
        Rop rop = binaryOp.rop(StdTypeList.make(local2.type.ropType, local3.type.ropType));
        RegisterSpecList registerSpecListMake = RegisterSpecList.make(local2.spec(), local3.spec());
        if (rop.getBranchingness() == 1) {
            addInstruction(new PlainInsn(rop, this.sourcePosition, local.spec(), registerSpecListMake));
        } else {
            addInstruction(new ThrowingInsn(rop, this.sourcePosition, registerSpecListMake, this.catches));
            moveResult(local, true);
        }
    }

    public <T> void compare(Comparison comparison, Label label, Local<T> local, Local<T> local2) {
        adopt(label);
        addInstruction(new PlainInsn(comparison.rop(StdTypeList.make(local.type.ropType, local2.type.ropType)), this.sourcePosition, (RegisterSpec) null, RegisterSpecList.make(local.spec(), local2.spec())), label);
    }

    public <T> void compareZ(Comparison comparison, Label label, Local<?> local) {
        adopt(label);
        addInstruction(new PlainInsn(comparison.rop(StdTypeList.make(local.type.ropType)), this.sourcePosition, (RegisterSpec) null, RegisterSpecList.make(local.spec())), label);
    }

    public <T extends Number> void compareFloatingPoint(Local<Integer> local, Local<T> local2, Local<T> local3, int i) {
        Rop ropOpCmpl;
        if (i == 1) {
            ropOpCmpl = Rops.opCmpg(local2.type.ropType);
        } else if (i == -1) {
            ropOpCmpl = Rops.opCmpl(local2.type.ropType);
        } else {
            throw new IllegalArgumentException("expected 1 or -1 but was " + i);
        }
        addInstruction(new PlainInsn(ropOpCmpl, this.sourcePosition, local.spec(), RegisterSpecList.make(local2.spec(), local3.spec())));
    }

    public void compareLongs(Local<Integer> local, Local<Long> local2, Local<Long> local3) {
        addInstruction(new PlainInsn(Rops.CMPL_LONG, this.sourcePosition, local.spec(), RegisterSpecList.make(local2.spec(), local3.spec())));
    }

    public <D, V> void iget(FieldId<D, ? extends V> fieldId, Local<V> local, Local<D> local2) {
        addInstruction(new ThrowingCstInsn(Rops.opGetField(local.type.ropType), this.sourcePosition, RegisterSpecList.make(local2.spec()), this.catches, fieldId.constant));
        moveResult(local, true);
    }

    public <D, V> void iput(FieldId<D, V> fieldId, Local<? extends D> local, Local<? extends V> local2) {
        addInstruction(new ThrowingCstInsn(Rops.opPutField(local2.type.ropType), this.sourcePosition, RegisterSpecList.make(local2.spec(), local.spec()), this.catches, fieldId.constant));
    }

    public <V> void sget(FieldId<?, ? extends V> fieldId, Local<V> local) {
        addInstruction(new ThrowingCstInsn(Rops.opGetStatic(local.type.ropType), this.sourcePosition, RegisterSpecList.EMPTY, this.catches, fieldId.constant));
        moveResult(local, true);
    }

    public <V> void sput(FieldId<?, V> fieldId, Local<? extends V> local) {
        addInstruction(new ThrowingCstInsn(Rops.opPutStatic(local.type.ropType), this.sourcePosition, RegisterSpecList.make(local.spec()), this.catches, fieldId.constant));
    }

    public <T> void newInstance(Local<T> local, MethodId<T, Void> methodId, Local<?>... localArr) {
        if (local == null) {
            throw new IllegalArgumentException();
        }
        addInstruction(new ThrowingCstInsn(Rops.NEW_INSTANCE, this.sourcePosition, RegisterSpecList.EMPTY, this.catches, methodId.declaringType.constant));
        moveResult(local, true);
        invokeDirect(methodId, null, local, localArr);
    }

    public <R> void invokeStatic(MethodId<?, R> methodId, Local<? super R> local, Local<?>... localArr) {
        invoke(Rops.opInvokeStatic(methodId.prototype(true)), methodId, local, null, localArr);
    }

    public <D, R> void invokeVirtual(MethodId<D, R> methodId, Local<? super R> local, Local<? extends D> local2, Local<?>... localArr) {
        invoke(Rops.opInvokeVirtual(methodId.prototype(true)), methodId, local, local2, localArr);
    }

    public <D, R> void invokeDirect(MethodId<D, R> methodId, Local<? super R> local, Local<? extends D> local2, Local<?>... localArr) {
        invoke(Rops.opInvokeDirect(methodId.prototype(true)), methodId, local, local2, localArr);
    }

    public <D, R> void invokeSuper(MethodId<D, R> methodId, Local<? super R> local, Local<? extends D> local2, Local<?>... localArr) {
        invoke(Rops.opInvokeSuper(methodId.prototype(true)), methodId, local, local2, localArr);
    }

    public <D, R> void invokeInterface(MethodId<D, R> methodId, Local<? super R> local, Local<? extends D> local2, Local<?>... localArr) {
        invoke(Rops.opInvokeInterface(methodId.prototype(true)), methodId, local, local2, localArr);
    }

    private <D, R> void invoke(Rop rop, MethodId<D, R> methodId, Local<? super R> local, Local<? extends D> local2, Local<?>... localArr) {
        addInstruction(new ThrowingCstInsn(rop, this.sourcePosition, concatenate(local2, localArr), this.catches, methodId.constant));
        if (local != null) {
            moveResult(local, false);
        }
    }

    public void instanceOfType(Local<?> local, Local<?> local2, TypeId<?> typeId) {
        addInstruction(new ThrowingCstInsn(Rops.INSTANCE_OF, this.sourcePosition, RegisterSpecList.make(local2.spec()), this.catches, typeId.constant));
        moveResult(local, true);
    }

    public void cast(Local<?> local, Local<?> local2) {
        if (local2.getType().ropType.isReference()) {
            addInstruction(new ThrowingCstInsn(Rops.CHECK_CAST, this.sourcePosition, RegisterSpecList.make(local2.spec()), this.catches, local.type.constant));
            moveResult(local, true);
        } else {
            addInstruction(new PlainInsn(getCastRop(local2.type.ropType, local.type.ropType), this.sourcePosition, local.spec(), local2.spec()));
        }
    }

    private Rop getCastRop(Type type, Type type2) {
        if (type.getBasicType() == 6) {
            int basicType = type2.getBasicType();
            if (basicType == 2) {
                return Rops.TO_BYTE;
            }
            if (basicType == 3) {
                return Rops.TO_CHAR;
            }
            if (basicType == 8) {
                return Rops.TO_SHORT;
            }
        }
        return Rops.opConv(type2, type);
    }

    public <T> void arrayLength(Local<Integer> local, Local<T> local2) {
        addInstruction(new ThrowingInsn(Rops.ARRAY_LENGTH, this.sourcePosition, RegisterSpecList.make(local2.spec()), this.catches));
        moveResult(local, true);
    }

    public <T> void newArray(Local<T> local, Local<Integer> local2) {
        addInstruction(new ThrowingCstInsn(Rops.opNewArray(local.type.ropType), this.sourcePosition, RegisterSpecList.make(local2.spec()), this.catches, local.type.constant));
        moveResult(local, true);
    }

    public void aget(Local<?> local, Local<?> local2, Local<Integer> local3) {
        addInstruction(new ThrowingInsn(Rops.opAget(local.type.ropType), this.sourcePosition, RegisterSpecList.make(local2.spec(), local3.spec()), this.catches));
        moveResult(local, true);
    }

    public void aput(Local<?> local, Local<Integer> local2, Local<?> local3) {
        addInstruction(new ThrowingInsn(Rops.opAput(local3.type.ropType), this.sourcePosition, RegisterSpecList.make(local3.spec(), local.spec(), local2.spec()), this.catches));
    }

    public void returnVoid() {
        if (!this.method.returnType.equals(TypeId.VOID)) {
            throw new IllegalArgumentException("declared " + this.method.returnType + " but returned void");
        }
        addInstruction(new PlainInsn(Rops.RETURN_VOID, this.sourcePosition, (RegisterSpec) null, RegisterSpecList.EMPTY));
    }

    public void returnValue(Local<?> local) {
        if (!local.type.equals(this.method.returnType)) {
            throw new IllegalArgumentException("declared " + this.method.returnType + " but returned " + local.type);
        }
        addInstruction(new PlainInsn(Rops.opReturn(local.type.ropType), this.sourcePosition, (RegisterSpec) null, RegisterSpecList.make(local.spec())));
    }

    private void moveResult(Local<?> local, boolean z) {
        Rop ropOpMoveResult;
        if (z) {
            ropOpMoveResult = Rops.opMoveResultPseudo(local.type.ropType);
        } else {
            ropOpMoveResult = Rops.opMoveResult(local.type.ropType);
        }
        addInstruction(new PlainInsn(ropOpMoveResult, this.sourcePosition, local.spec(), RegisterSpecList.EMPTY));
    }

    public void monitorEnter(Local<?> local) {
        addInstruction(new ThrowingInsn(Rops.MONITOR_ENTER, this.sourcePosition, RegisterSpecList.make(local.spec()), this.catches));
    }

    public void monitorExit(Local<?> local) {
        addInstruction(new ThrowingInsn(Rops.MONITOR_EXIT, this.sourcePosition, RegisterSpecList.make(local.spec()), this.catches));
    }

    BasicBlockList toBasicBlocks() {
        if (!this.localsInitialized) {
            initializeLocals();
        }
        cleanUpLabels();
        BasicBlockList basicBlockList = new BasicBlockList(this.labels.size());
        for (int i = 0; i < this.labels.size(); i++) {
            basicBlockList.set(i, this.labels.get(i).toBasicBlock());
        }
        return basicBlockList;
    }

    private void cleanUpLabels() {
        Iterator<Label> it = this.labels.iterator();
        int i = 0;
        while (it.hasNext()) {
            Label next = it.next();
            if (next.isEmpty()) {
                it.remove();
            } else {
                next.compact();
                next.f87id = i;
                i++;
            }
        }
    }

    private static RegisterSpecList concatenate(Local<?> local, Local<?>[] localArr) {
        int i = local != null ? 1 : 0;
        RegisterSpecList registerSpecList = new RegisterSpecList(localArr.length + i);
        if (local != null) {
            registerSpecList.set(0, local.spec());
        }
        for (int i2 = 0; i2 < localArr.length; i2++) {
            registerSpecList.set(i2 + i, localArr[i2].spec());
        }
        return registerSpecList;
    }
}
