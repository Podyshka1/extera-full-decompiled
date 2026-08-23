package com.android.dx.rop.code;

import com.android.dx.rop.type.TypeList;
import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import com.android.dx.util.LabeledItem;
import kotlin.text.CharsKt__CharKt$$ExternalSyntheticBUOutline0;
import okio.ByteString$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
public final class BasicBlock implements LabeledItem {
    private final InsnList insns;
    private final int label;
    private final int primarySuccessor;
    private final IntList successors;

    /* JADX INFO: loaded from: classes4.dex */
    public interface Visitor {
        void visitBlock(BasicBlock basicBlock);
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public BasicBlock(int i, InsnList insnList, IntList intList, int i2) {
        if (i < 0) {
            f$$ExternalSyntheticBUOutline1.m178m("label < 0");
            throw null;
        }
        try {
            insnList.throwIfMutable();
            int size = insnList.size();
            if (size == 0) {
                f$$ExternalSyntheticBUOutline1.m178m("insns.size() == 0");
                throw null;
            }
            for (int i3 = size - 2; i3 >= 0; i3--) {
                if (insnList.get(i3).getOpcode().getBranchingness() != 1) {
                    CharsKt__CharKt$$ExternalSyntheticBUOutline0.m805m("insns[", i3, "] is a branch or can throw");
                    throw null;
                }
            }
            if (insnList.get(size - 1).getOpcode().getBranchingness() == 1) {
                f$$ExternalSyntheticBUOutline1.m178m("insns does not end with a branch or throwing instruction");
                throw null;
            }
            try {
                intList.throwIfMutable();
                if (i2 < -1) {
                    f$$ExternalSyntheticBUOutline1.m178m("primarySuccessor < -1");
                    throw null;
                }
                if (i2 >= 0 && !intList.contains(i2)) {
                    throw new IllegalArgumentException("primarySuccessor " + i2 + " not in successors " + intList);
                }
                this.label = i;
                this.insns = insnList;
                this.successors = intList;
                this.primarySuccessor = i2;
            } catch (NullPointerException unused) {
                f$$ExternalSyntheticBUOutline2.m179m("successors == null");
                throw null;
            }
        } catch (NullPointerException unused2) {
            f$$ExternalSyntheticBUOutline2.m179m("insns == null");
            throw null;
        }
    }

    public int hashCode() {
        return System.identityHashCode(this);
    }

    @Override // com.android.dx.util.LabeledItem
    public int getLabel() {
        return this.label;
    }

    public InsnList getInsns() {
        return this.insns;
    }

    public IntList getSuccessors() {
        return this.successors;
    }

    public int getPrimarySuccessor() {
        return this.primarySuccessor;
    }

    public int getSecondarySuccessor() {
        if (this.successors.size() != 2) {
            ByteString$$ExternalSyntheticBUOutline0.m838m("block doesn't have exactly two successors");
            return 0;
        }
        int i = this.successors.get(0);
        return i == this.primarySuccessor ? this.successors.get(1) : i;
    }

    public Insn getFirstInsn() {
        return this.insns.get(0);
    }

    public Insn getLastInsn() {
        return this.insns.getLast();
    }

    public boolean canThrow() {
        return this.insns.getLast().canThrow();
    }

    public boolean hasExceptionHandlers() {
        return this.insns.getLast().getCatches().size() != 0;
    }

    public TypeList getExceptionHandlerTypes() {
        return this.insns.getLast().getCatches();
    }

    public BasicBlock withRegisterOffset(int i) {
        return new BasicBlock(this.label, this.insns.withRegisterOffset(i), this.successors, this.primarySuccessor);
    }

    public String toString() {
        return "{" + Hex.u2(this.label) + '}';
    }
}
