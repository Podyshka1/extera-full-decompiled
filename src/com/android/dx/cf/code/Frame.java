package com.android.dx.cf.code;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import com.android.dx.util.IntList;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public final class Frame {
    private final LocalsArray locals;
    private final ExecutionStack stack;
    private final IntList subroutines;

    private Frame(LocalsArray localsArray, ExecutionStack executionStack) {
        this(localsArray, executionStack, IntList.EMPTY);
    }

    private Frame(LocalsArray localsArray, ExecutionStack executionStack, IntList intList) {
        if (localsArray == null) {
            f$$ExternalSyntheticBUOutline2.m213m("locals == null");
            throw null;
        }
        if (executionStack == null) {
            f$$ExternalSyntheticBUOutline2.m213m("stack == null");
            throw null;
        }
        intList.throwIfMutable();
        this.locals = localsArray;
        this.stack = executionStack;
        this.subroutines = intList;
    }

    public Frame(int i, int i2) {
        this(new OneLocalsArray(i), new ExecutionStack(i2));
    }

    public Frame copy() {
        return new Frame(this.locals.copy(), this.stack.copy(), this.subroutines);
    }

    public void setImmutable() {
        this.locals.setImmutable();
        this.stack.setImmutable();
    }

    public void makeInitialized(Type type) {
        this.locals.makeInitialized(type);
        this.stack.makeInitialized(type);
    }

    public LocalsArray getLocals() {
        return this.locals;
    }

    public ExecutionStack getStack() {
        return this.stack;
    }

    public IntList getSubroutines() {
        return this.subroutines;
    }

    public void initializeWithParameters(StdTypeList stdTypeList) {
        int size = stdTypeList.size();
        int category = 0;
        for (int i = 0; i < size; i++) {
            Type type = stdTypeList.get(i);
            this.locals.set(category, type);
            category += type.getCategory();
        }
    }

    public Frame subFrameForLabel(int i, int i2) {
        LocalsArray localsArray = this.locals;
        LocalsArray localsArraySubArrayForLabel = localsArray instanceof LocalsArraySet ? ((LocalsArraySet) localsArray).subArrayForLabel(i2) : null;
        try {
            IntList intListMutableCopy = this.subroutines.mutableCopy();
            if (intListMutableCopy.pop() != i) {
                throw new RuntimeException("returning from invalid subroutine");
            }
            intListMutableCopy.setImmutable();
            if (localsArraySubArrayForLabel == null) {
                return null;
            }
            return new Frame(localsArraySubArrayForLabel, this.stack, intListMutableCopy);
        } catch (IndexOutOfBoundsException unused) {
            GlShader$$ExternalSyntheticBUOutline1.m1056m("returning from invalid subroutine");
            return null;
        } catch (NullPointerException unused2) {
            f$$ExternalSyntheticBUOutline2.m213m("can't return from non-subroutine");
            return null;
        }
    }

    public Frame mergeWith(Frame frame) {
        LocalsArray localsArrayMerge = getLocals().merge(frame.getLocals());
        ExecutionStack executionStackMerge = getStack().merge(frame.getStack());
        IntList intListMergeSubroutineLists = mergeSubroutineLists(frame.subroutines);
        LocalsArray localsArrayAdjustLocalsForSubroutines = adjustLocalsForSubroutines(localsArrayMerge, intListMergeSubroutineLists);
        return (localsArrayAdjustLocalsForSubroutines == getLocals() && executionStackMerge == getStack() && this.subroutines == intListMergeSubroutineLists) ? this : new Frame(localsArrayAdjustLocalsForSubroutines, executionStackMerge, intListMergeSubroutineLists);
    }

    private IntList mergeSubroutineLists(IntList intList) {
        if (this.subroutines.equals(intList)) {
            return this.subroutines;
        }
        IntList intList2 = new IntList();
        int size = this.subroutines.size();
        int size2 = intList.size();
        for (int i = 0; i < size && i < size2 && this.subroutines.get(i) == intList.get(i); i++) {
            intList2.add(i);
        }
        intList2.setImmutable();
        return intList2;
    }

    private static LocalsArray adjustLocalsForSubroutines(LocalsArray localsArray, IntList intList) {
        if (!(localsArray instanceof LocalsArraySet)) {
            return localsArray;
        }
        LocalsArraySet localsArraySet = (LocalsArraySet) localsArray;
        return intList.size() == 0 ? localsArraySet.getPrimary() : localsArraySet;
    }

    public Frame mergeWithSubroutineCaller(Frame frame, int i, int i2) {
        LocalsArraySet localsArraySetMergeWithSubroutineCaller = getLocals().mergeWithSubroutineCaller(frame.getLocals(), i2);
        ExecutionStack executionStackMerge = getStack().merge(frame.getStack());
        IntList intListMutableCopy = frame.subroutines.mutableCopy();
        intListMutableCopy.add(i);
        intListMutableCopy.setImmutable();
        if (localsArraySetMergeWithSubroutineCaller == getLocals() && executionStackMerge == getStack() && this.subroutines.equals(intListMutableCopy)) {
            return this;
        }
        boolean zEquals = this.subroutines.equals(intListMutableCopy);
        IntList intList = this.subroutines;
        if (!zEquals) {
            int size = intList.size();
            int size2 = intListMutableCopy.size();
            IntList intList2 = this.subroutines;
            if (size > size2) {
                intListMutableCopy = intList2;
                intList2 = intListMutableCopy;
            }
            int size3 = intListMutableCopy.size();
            int size4 = intList2.size();
            for (int i3 = size4 - 1; i3 >= 0; i3--) {
                if (intList2.get(i3) != intListMutableCopy.get((size3 - size4) + i3)) {
                    GlShader$$ExternalSyntheticBUOutline1.m1056m("Incompatible merged subroutines");
                    return null;
                }
            }
            intList = intListMutableCopy;
        }
        return new Frame(localsArraySetMergeWithSubroutineCaller, executionStackMerge, intList);
    }

    public Frame makeNewSubroutineStartFrame(int i, int i2) {
        this.subroutines.mutableCopy().add(i);
        return new Frame(this.locals.getPrimary(), this.stack, IntList.makeImmutable(i)).mergeWithSubroutineCaller(this, i, i2);
    }

    public Frame makeExceptionHandlerStartFrame(CstType cstType) {
        ExecutionStack executionStackCopy = getStack().copy();
        executionStackCopy.clear();
        executionStackCopy.push(cstType);
        return new Frame(getLocals(), executionStackCopy, this.subroutines);
    }

    public void annotate(ExceptionWithContext exceptionWithContext) {
        this.locals.annotate(exceptionWithContext);
        this.stack.annotate(exceptionWithContext);
    }
}
