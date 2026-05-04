package com.android.p003dx.p004cf.code;

import com.android.p003dx.rop.code.LocalItem;
import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.type.Prototype;
import com.android.p003dx.rop.type.StdTypeList;
import com.android.p003dx.rop.type.Type;
import com.android.p003dx.rop.type.TypeBearer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseMachine implements Machine {
    private int argCount;
    private TypeBearer[] args;
    private SwitchList auxCases;
    private Constant auxCst;
    private ArrayList<Constant> auxInitValues;
    private int auxInt;
    private int auxTarget;
    private Type auxType;
    private int localIndex;
    private boolean localInfo;
    private RegisterSpec localTarget;
    private final Prototype prototype;
    private int resultCount;
    private TypeBearer[] results;

    public BaseMachine(Prototype prototype) {
        if (prototype == null) {
            throw new NullPointerException("prototype == null");
        }
        this.prototype = prototype;
        this.args = new TypeBearer[10];
        this.results = new TypeBearer[6];
        clearArgs();
    }

    @Override // com.android.p003dx.p004cf.code.Machine
    public Prototype getPrototype() {
        return this.prototype;
    }

    @Override // com.android.p003dx.p004cf.code.Machine
    public final void clearArgs() {
        this.argCount = 0;
        this.auxType = null;
        this.auxInt = 0;
        this.auxCst = null;
        this.auxTarget = 0;
        this.auxCases = null;
        this.auxInitValues = null;
        this.localIndex = -1;
        this.localInfo = false;
        this.localTarget = null;
        this.resultCount = -1;
    }

    @Override // com.android.p003dx.p004cf.code.Machine
    public final void popArgs(Frame frame, int i) {
        ExecutionStack stack = frame.getStack();
        clearArgs();
        if (i > this.args.length) {
            this.args = new TypeBearer[i + 10];
        }
        for (int i2 = i - 1; i2 >= 0; i2--) {
            this.args[i2] = stack.pop();
        }
        this.argCount = i;
    }

    @Override // com.android.p003dx.p004cf.code.Machine
    public void popArgs(Frame frame, Prototype prototype) {
        StdTypeList parameterTypes = prototype.getParameterTypes();
        int size = parameterTypes.size();
        popArgs(frame, size);
        for (int i = 0; i < size; i++) {
            if (!Merger.isPossiblyAssignableFrom(parameterTypes.getType(i), this.args[i])) {
                throw new SimException("at stack depth " + ((size - 1) - i) + ", expected type " + parameterTypes.getType(i).toHuman() + " but found " + this.args[i].getType().toHuman());
            }
        }
    }

    @Override // com.android.p003dx.p004cf.code.Machine
    public final void popArgs(Frame frame, Type type) {
        popArgs(frame, 1);
        if (Merger.isPossiblyAssignableFrom(type, this.args[0])) {
            return;
        }
        throw new SimException("expected type " + type.toHuman() + " but found " + this.args[0].getType().toHuman());
    }

    @Override // com.android.p003dx.p004cf.code.Machine
    public final void popArgs(Frame frame, Type type, Type type2) {
        popArgs(frame, 2);
        if (!Merger.isPossiblyAssignableFrom(type, this.args[0])) {
            throw new SimException("expected type " + type.toHuman() + " but found " + this.args[0].getType().toHuman());
        }
        if (Merger.isPossiblyAssignableFrom(type2, this.args[1])) {
            return;
        }
        throw new SimException("expected type " + type2.toHuman() + " but found " + this.args[1].getType().toHuman());
    }

    @Override // com.android.p003dx.p004cf.code.Machine
    public final void popArgs(Frame frame, Type type, Type type2, Type type3) {
        popArgs(frame, 3);
        if (!Merger.isPossiblyAssignableFrom(type, this.args[0])) {
            throw new SimException("expected type " + type.toHuman() + " but found " + this.args[0].getType().toHuman());
        }
        if (!Merger.isPossiblyAssignableFrom(type2, this.args[1])) {
            throw new SimException("expected type " + type2.toHuman() + " but found " + this.args[1].getType().toHuman());
        }
        if (Merger.isPossiblyAssignableFrom(type3, this.args[2])) {
            return;
        }
        throw new SimException("expected type " + type3.toHuman() + " but found " + this.args[2].getType().toHuman());
    }

    @Override // com.android.p003dx.p004cf.code.Machine
    public final void localArg(Frame frame, int i) {
        clearArgs();
        this.args[0] = frame.getLocals().get(i);
        this.argCount = 1;
        this.localIndex = i;
    }

    @Override // com.android.p003dx.p004cf.code.Machine
    public final void localInfo(boolean z) {
        this.localInfo = z;
    }

    @Override // com.android.p003dx.p004cf.code.Machine
    public final void auxType(Type type) {
        this.auxType = type;
    }

    @Override // com.android.p003dx.p004cf.code.Machine
    public final void auxIntArg(int i) {
        this.auxInt = i;
    }

    @Override // com.android.p003dx.p004cf.code.Machine
    public final void auxCstArg(Constant constant) {
        if (constant == null) {
            throw new NullPointerException("cst == null");
        }
        this.auxCst = constant;
    }

    @Override // com.android.p003dx.p004cf.code.Machine
    public final void auxTargetArg(int i) {
        this.auxTarget = i;
    }

    @Override // com.android.p003dx.p004cf.code.Machine
    public final void auxSwitchArg(SwitchList switchList) {
        if (switchList == null) {
            throw new NullPointerException("cases == null");
        }
        this.auxCases = switchList;
    }

    @Override // com.android.p003dx.p004cf.code.Machine
    public final void auxInitValues(ArrayList<Constant> arrayList) {
        this.auxInitValues = arrayList;
    }

    @Override // com.android.p003dx.p004cf.code.Machine
    public final void localTarget(int i, Type type, LocalItem localItem) {
        this.localTarget = RegisterSpec.makeLocalOptional(i, type, localItem);
    }

    protected final int argCount() {
        return this.argCount;
    }

    protected final int argWidth() {
        int category = 0;
        for (int i = 0; i < this.argCount; i++) {
            category += this.args[i].getType().getCategory();
        }
        return category;
    }

    protected final TypeBearer arg(int i) {
        if (i >= this.argCount) {
            throw new IllegalArgumentException("n >= argCount");
        }
        try {
            return this.args[i];
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("n < 0");
        }
    }

    protected final Type getAuxType() {
        return this.auxType;
    }

    protected final int getAuxInt() {
        return this.auxInt;
    }

    protected final Constant getAuxCst() {
        return this.auxCst;
    }

    protected final int getAuxTarget() {
        return this.auxTarget;
    }

    protected final SwitchList getAuxCases() {
        return this.auxCases;
    }

    protected final ArrayList<Constant> getInitValues() {
        return this.auxInitValues;
    }

    protected final int getLocalIndex() {
        return this.localIndex;
    }

    protected final boolean getLocalInfo() {
        return this.localInfo;
    }

    protected final RegisterSpec getLocalTarget(boolean z) {
        if (this.localTarget == null) {
            return null;
        }
        if (this.resultCount != 1) {
            StringBuilder sb = new StringBuilder();
            sb.append("local target with ");
            sb.append(this.resultCount == 0 ? "no" : "multiple");
            sb.append(" results");
            throw new SimException(sb.toString());
        }
        TypeBearer typeBearer = this.results[0];
        Type type = typeBearer.getType();
        Type type2 = this.localTarget.getType();
        if (type == type2) {
            if (z) {
                return this.localTarget.withType(typeBearer);
            }
            return this.localTarget;
        }
        if (!Merger.isPossiblyAssignableFrom(type2, type)) {
            throwLocalMismatch(type, type2);
            return null;
        }
        if (type2 == Type.OBJECT) {
            this.localTarget = this.localTarget.withType(typeBearer);
        }
        return this.localTarget;
    }

    protected final void clearResult() {
        this.resultCount = 0;
    }

    protected final void setResult(TypeBearer typeBearer) {
        if (typeBearer == null) {
            throw new NullPointerException("result == null");
        }
        this.results[0] = typeBearer;
        this.resultCount = 1;
    }

    protected final void addResult(TypeBearer typeBearer) {
        if (typeBearer == null) {
            throw new NullPointerException("result == null");
        }
        TypeBearer[] typeBearerArr = this.results;
        int i = this.resultCount;
        typeBearerArr[i] = typeBearer;
        this.resultCount = i + 1;
    }

    protected final int resultCount() {
        int i = this.resultCount;
        if (i >= 0) {
            return i;
        }
        throw new SimException("results never set");
    }

    protected final int resultWidth() {
        int category = 0;
        for (int i = 0; i < this.resultCount; i++) {
            category += this.results[i].getType().getCategory();
        }
        return category;
    }

    protected final TypeBearer result(int i) {
        if (i >= this.resultCount) {
            throw new IllegalArgumentException("n >= resultCount");
        }
        try {
            return this.results[i];
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("n < 0");
        }
    }

    protected final void storeResults(Frame frame) {
        int i = this.resultCount;
        if (i < 0) {
            throw new SimException("results never set");
        }
        if (i == 0) {
            return;
        }
        if (this.localTarget != null) {
            frame.getLocals().set(getLocalTarget(false));
            return;
        }
        ExecutionStack stack = frame.getStack();
        for (int i2 = 0; i2 < this.resultCount; i2++) {
            if (this.localInfo) {
                stack.setLocal();
            }
            stack.push(this.results[i2]);
        }
    }

    public static void throwLocalMismatch(TypeBearer typeBearer, TypeBearer typeBearer2) {
        throw new SimException("local variable type mismatch: attempt to set or access a value of type " + typeBearer.toHuman() + " using a local variable of type " + typeBearer2.toHuman() + ". This is symptomatic of .class transformation tools that ignore local variable information.");
    }
}
