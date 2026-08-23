package com.android.p003dx.ssa.back;

import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.ssa.PhiInsn;
import com.android.p003dx.ssa.SsaBasicBlock;
import com.android.p003dx.ssa.SsaInsn;
import com.android.p003dx.ssa.SsaMethod;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class LivenessAnalyzer {
    private SsaBasicBlock blockN;
    private final InterferenceGraph interference;
    private final BitSet liveOutBlocks;
    private NextFunction nextFunction;
    private final int regV;
    private final SsaMethod ssaMeth;
    private int statementIndex;
    private final BitSet visitedBlocks;

    private enum NextFunction {
        LIVE_IN_AT_STATEMENT,
        LIVE_OUT_AT_STATEMENT,
        LIVE_OUT_AT_BLOCK,
        DONE
    }

    public static InterferenceGraph constructInterferenceGraph(SsaMethod ssaMethod) {
        int regCount = ssaMethod.getRegCount();
        InterferenceGraph interferenceGraph = new InterferenceGraph(regCount);
        for (int i = 0; i < regCount; i++) {
            new LivenessAnalyzer(ssaMethod, i, interferenceGraph).run();
        }
        coInterferePhis(ssaMethod, interferenceGraph);
        return interferenceGraph;
    }

    private LivenessAnalyzer(SsaMethod ssaMethod, int i, InterferenceGraph interferenceGraph) {
        int size = ssaMethod.getBlocks().size();
        this.ssaMeth = ssaMethod;
        this.regV = i;
        this.visitedBlocks = new BitSet(size);
        this.liveOutBlocks = new BitSet(size);
        this.interference = interferenceGraph;
    }

    /* JADX INFO: renamed from: com.android.dx.ssa.back.LivenessAnalyzer$1 */
    static /* synthetic */ class C09871 {
        static final /* synthetic */ int[] $SwitchMap$com$android$dx$ssa$back$LivenessAnalyzer$NextFunction;

        static {
            int[] iArr = new int[NextFunction.values().length];
            $SwitchMap$com$android$dx$ssa$back$LivenessAnalyzer$NextFunction = iArr;
            try {
                iArr[NextFunction.LIVE_IN_AT_STATEMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$dx$ssa$back$LivenessAnalyzer$NextFunction[NextFunction.LIVE_OUT_AT_STATEMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$dx$ssa$back$LivenessAnalyzer$NextFunction[NextFunction.LIVE_OUT_AT_BLOCK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private void handleTailRecursion() {
        while (true) {
            NextFunction nextFunction = this.nextFunction;
            NextFunction nextFunction2 = NextFunction.DONE;
            if (nextFunction == nextFunction2) {
                return;
            }
            int i = C09871.$SwitchMap$com$android$dx$ssa$back$LivenessAnalyzer$NextFunction[nextFunction.ordinal()];
            if (i == 1) {
                this.nextFunction = nextFunction2;
                liveInAtStatement();
            } else if (i == 2) {
                this.nextFunction = nextFunction2;
                liveOutAtStatement();
            } else if (i == 3) {
                this.nextFunction = nextFunction2;
                liveOutAtBlock();
            }
        }
    }

    public void run() {
        for (SsaInsn ssaInsn : this.ssaMeth.getUseListForRegister(this.regV)) {
            this.nextFunction = NextFunction.DONE;
            if (ssaInsn instanceof PhiInsn) {
                Iterator<SsaBasicBlock> it = ((PhiInsn) ssaInsn).predBlocksForReg(this.regV, this.ssaMeth).iterator();
                while (it.hasNext()) {
                    this.blockN = it.next();
                    this.nextFunction = NextFunction.LIVE_OUT_AT_BLOCK;
                    handleTailRecursion();
                }
            } else {
                SsaBasicBlock block = ssaInsn.getBlock();
                this.blockN = block;
                int iIndexOf = block.getInsns().indexOf(ssaInsn);
                this.statementIndex = iIndexOf;
                if (iIndexOf < 0) {
                    throw new RuntimeException("insn not found in it's own block");
                }
                this.nextFunction = NextFunction.LIVE_IN_AT_STATEMENT;
                handleTailRecursion();
            }
        }
        while (true) {
            int iNextSetBit = this.liveOutBlocks.nextSetBit(0);
            if (iNextSetBit < 0) {
                return;
            }
            this.blockN = this.ssaMeth.getBlocks().get(iNextSetBit);
            this.liveOutBlocks.clear(iNextSetBit);
            this.nextFunction = NextFunction.LIVE_OUT_AT_BLOCK;
            handleTailRecursion();
        }
    }

    private void liveOutAtBlock() {
        if (this.visitedBlocks.get(this.blockN.getIndex())) {
            return;
        }
        this.visitedBlocks.set(this.blockN.getIndex());
        this.blockN.addLiveOut(this.regV);
        this.statementIndex = this.blockN.getInsns().size() - 1;
        this.nextFunction = NextFunction.LIVE_OUT_AT_STATEMENT;
    }

    private void liveInAtStatement() {
        int i = this.statementIndex;
        if (i == 0) {
            this.blockN.addLiveIn(this.regV);
            this.liveOutBlocks.or(this.blockN.getPredecessors());
        } else {
            this.statementIndex = i - 1;
            this.nextFunction = NextFunction.LIVE_OUT_AT_STATEMENT;
        }
    }

    private void liveOutAtStatement() {
        SsaInsn ssaInsn = this.blockN.getInsns().get(this.statementIndex);
        RegisterSpec result = ssaInsn.getResult();
        if (ssaInsn.isResultReg(this.regV)) {
            return;
        }
        if (result != null) {
            this.interference.add(this.regV, result.getReg());
        }
        this.nextFunction = NextFunction.LIVE_IN_AT_STATEMENT;
    }

    private static void coInterferePhis(SsaMethod ssaMethod, InterferenceGraph interferenceGraph) {
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        int size = blocks.size();
        int i = 0;
        while (i < size) {
            SsaBasicBlock ssaBasicBlock = blocks.get(i);
            i++;
            List<SsaInsn> phiInsns = ssaBasicBlock.getPhiInsns();
            int size2 = phiInsns.size();
            for (int i2 = 0; i2 < size2; i2++) {
                for (int i3 = 0; i3 < size2; i3++) {
                    if (i2 != i3) {
                        SsaInsn ssaInsn = phiInsns.get(i2);
                        SsaInsn ssaInsn2 = phiInsns.get(i3);
                        coInterferePhiRegisters(interferenceGraph, ssaInsn.getResult(), ssaInsn2.getSources());
                        coInterferePhiRegisters(interferenceGraph, ssaInsn2.getResult(), ssaInsn.getSources());
                        interferenceGraph.add(ssaInsn.getResult().getReg(), ssaInsn2.getResult().getReg());
                    }
                }
            }
        }
    }

    private static void coInterferePhiRegisters(InterferenceGraph interferenceGraph, RegisterSpec registerSpec, RegisterSpecList registerSpecList) {
        int reg = registerSpec.getReg();
        for (int i = 0; i < registerSpecList.size(); i++) {
            interferenceGraph.add(reg, registerSpecList.get(i).getReg());
        }
    }
}
