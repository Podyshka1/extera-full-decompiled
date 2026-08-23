package com.android.p003dx.ssa.back;

import com.android.p003dx.ssa.SetFactory;
import com.android.p003dx.util.IntSet;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class InterferenceGraph {
    private final ArrayList<IntSet> interference;

    public InterferenceGraph(int i) {
        this.interference = new ArrayList<>(i);
        for (int i2 = 0; i2 < i; i2++) {
            this.interference.add(SetFactory.makeInterferenceSet(i));
        }
    }

    public void add(int i, int i2) {
        ensureCapacity(Math.max(i, i2) + 1);
        this.interference.get(i).add(i2);
        this.interference.get(i2).add(i);
    }

    public void dumpToStdout() {
        int size = this.interference.size();
        for (int i = 0; i < size; i++) {
            StringBuilder sb = new StringBuilder();
            sb.append("Reg " + i + ":" + this.interference.get(i).toString());
            System.out.println(sb.toString());
        }
    }

    public void mergeInterferenceSet(int i, IntSet intSet) {
        if (i < this.interference.size()) {
            intSet.merge(this.interference.get(i));
        }
    }

    private void ensureCapacity(int i) {
        this.interference.ensureCapacity(i);
        for (int size = this.interference.size(); size < i; size++) {
            this.interference.add(SetFactory.makeInterferenceSet(i));
        }
    }
}
