package com.android.p003dx;

import com.android.p003dx.rop.code.BasicBlock;
import com.android.p003dx.rop.code.Insn;
import com.android.p003dx.rop.code.InsnList;
import com.android.p003dx.util.IntList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class Label {
    Label alternateSuccessor;
    Code code;
    Label primarySuccessor;
    final List<Insn> instructions = new ArrayList();
    boolean marked = false;
    List<Label> catchLabels = Collections.EMPTY_LIST;

    /* JADX INFO: renamed from: id */
    int f87id = -1;

    boolean isEmpty() {
        return this.instructions.isEmpty();
    }

    void compact() {
        for (int i = 0; i < this.catchLabels.size(); i++) {
            while (this.catchLabels.get(i).isEmpty()) {
                List<Label> list = this.catchLabels;
                list.set(i, list.get(i).primarySuccessor);
            }
        }
        while (true) {
            Label label = this.primarySuccessor;
            if (label == null || !label.isEmpty()) {
                break;
            } else {
                this.primarySuccessor = this.primarySuccessor.primarySuccessor;
            }
        }
        while (true) {
            Label label2 = this.alternateSuccessor;
            if (label2 == null || !label2.isEmpty()) {
                return;
            } else {
                this.alternateSuccessor = this.alternateSuccessor.primarySuccessor;
            }
        }
    }

    BasicBlock toBasicBlock() {
        int i;
        InsnList insnList = new InsnList(this.instructions.size());
        for (int i2 = 0; i2 < this.instructions.size(); i2++) {
            insnList.set(i2, this.instructions.get(i2));
        }
        insnList.setImmutable();
        IntList intList = new IntList();
        Iterator<Label> it = this.catchLabels.iterator();
        while (it.hasNext()) {
            intList.add(it.next().f87id);
        }
        Label label = this.primarySuccessor;
        if (label != null) {
            i = label.f87id;
            intList.add(i);
        } else {
            i = -1;
        }
        Label label2 = this.alternateSuccessor;
        if (label2 != null) {
            intList.add(label2.f87id);
        }
        intList.setImmutable();
        return new BasicBlock(this.f87id, insnList, intList, i);
    }
}
