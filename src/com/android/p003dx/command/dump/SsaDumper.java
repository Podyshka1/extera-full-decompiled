package com.android.p003dx.command.dump;

import com.android.p003dx.p004cf.code.ConcreteMethod;
import com.android.p003dx.p004cf.code.Ropper;
import com.android.p003dx.p004cf.iface.Member;
import com.android.p003dx.p004cf.iface.Method;
import com.android.p003dx.rop.code.AccessFlags;
import com.android.p003dx.rop.code.DexTranslationAdvice;
import com.android.p003dx.rop.code.RopMethod;
import com.android.p003dx.ssa.Optimizer;
import com.android.p003dx.ssa.SsaBasicBlock;
import com.android.p003dx.ssa.SsaInsn;
import com.android.p003dx.ssa.SsaMethod;
import com.android.p003dx.util.ByteArray;
import com.android.p003dx.util.Hex;
import com.android.p003dx.util.IntList;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes4.dex */
public class SsaDumper extends BlockDumper {
    public static void dump(byte[] bArr, PrintStream printStream, String str, Args args) {
        new SsaDumper(bArr, printStream, str, args).dump();
    }

    private SsaDumper(byte[] bArr, PrintStream printStream, String str, Args args) {
        super(bArr, printStream, str, true, args);
    }

    @Override // com.android.p003dx.command.dump.BlockDumper, com.android.p003dx.command.dump.BaseDumper, com.android.p003dx.p004cf.iface.ParseObserver
    public void endParsingMember(ByteArray byteArray, int i, String str, String str2, Member member) {
        SsaMethod ssaMethodDebugDeadCodeRemover;
        if ((member instanceof Method) && shouldDumpMethod(str) && (member.getAccessFlags() & 1280) == 0) {
            ConcreteMethod concreteMethod = new ConcreteMethod((Method) member, this.classFile, true, true);
            DexTranslationAdvice dexTranslationAdvice = DexTranslationAdvice.THE_ONE;
            RopMethod ropMethodConvert = Ropper.convert(concreteMethod, dexTranslationAdvice, this.classFile.getMethods(), this.dexOptions);
            boolean zIsStatic = AccessFlags.isStatic(concreteMethod.getAccessFlags());
            int iComputeParamWidth = BaseDumper.computeParamWidth(concreteMethod, zIsStatic);
            String str3 = this.args.ssaStep;
            if (str3 == null) {
                ssaMethodDebugDeadCodeRemover = Optimizer.debugNoRegisterAllocation(ropMethodConvert, iComputeParamWidth, zIsStatic, true, dexTranslationAdvice, EnumSet.allOf(Optimizer.OptionalStep.class));
            } else if ("edge-split".equals(str3)) {
                ssaMethodDebugDeadCodeRemover = Optimizer.debugEdgeSplit(ropMethodConvert, iComputeParamWidth, zIsStatic, true, dexTranslationAdvice);
            } else if ("phi-placement".equals(this.args.ssaStep)) {
                ssaMethodDebugDeadCodeRemover = Optimizer.debugPhiPlacement(ropMethodConvert, iComputeParamWidth, zIsStatic, true, dexTranslationAdvice);
            } else if ("renaming".equals(this.args.ssaStep)) {
                ssaMethodDebugDeadCodeRemover = Optimizer.debugRenaming(ropMethodConvert, iComputeParamWidth, zIsStatic, true, dexTranslationAdvice);
            } else {
                ssaMethodDebugDeadCodeRemover = "dead-code".equals(this.args.ssaStep) ? Optimizer.debugDeadCodeRemover(ropMethodConvert, iComputeParamWidth, zIsStatic, true, dexTranslationAdvice) : null;
            }
            StringBuilder sb = new StringBuilder(2000);
            sb.append("first ");
            sb.append(Hex.m212u2(ssaMethodDebugDeadCodeRemover.blockIndexToRopLabel(ssaMethodDebugDeadCodeRemover.getEntryBlockIndex())));
            sb.append('\n');
            ArrayList arrayList = (ArrayList) ssaMethodDebugDeadCodeRemover.getBlocks().clone();
            Collections.sort(arrayList, SsaBasicBlock.LABEL_COMPARATOR);
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                SsaBasicBlock ssaBasicBlock = (SsaBasicBlock) obj;
                sb.append("block ");
                sb.append(Hex.m212u2(ssaBasicBlock.getRopLabel()));
                sb.append('\n');
                BitSet predecessors = ssaBasicBlock.getPredecessors();
                for (int iNextSetBit = predecessors.nextSetBit(0); iNextSetBit >= 0; iNextSetBit = predecessors.nextSetBit(iNextSetBit + 1)) {
                    sb.append("  pred ");
                    sb.append(Hex.m212u2(ssaMethodDebugDeadCodeRemover.blockIndexToRopLabel(iNextSetBit)));
                    sb.append('\n');
                }
                sb.append("  live in:" + ssaBasicBlock.getLiveInRegs());
                sb.append("\n");
                ArrayList<SsaInsn> insns = ssaBasicBlock.getInsns();
                int size2 = insns.size();
                int i3 = 0;
                while (i3 < size2) {
                    SsaInsn ssaInsn = insns.get(i3);
                    i3++;
                    sb.append("  ");
                    sb.append(ssaInsn.toHuman());
                    sb.append('\n');
                }
                if (ssaBasicBlock.getSuccessors().cardinality() == 0) {
                    sb.append("  returns\n");
                } else {
                    int primarySuccessorRopLabel = ssaBasicBlock.getPrimarySuccessorRopLabel();
                    IntList ropLabelSuccessorList = ssaBasicBlock.getRopLabelSuccessorList();
                    int size3 = ropLabelSuccessorList.size();
                    for (int i4 = 0; i4 < size3; i4++) {
                        sb.append("  next ");
                        sb.append(Hex.m212u2(ropLabelSuccessorList.get(i4)));
                        if (size3 != 1 && primarySuccessorRopLabel == ropLabelSuccessorList.get(i4)) {
                            sb.append(" *");
                        }
                        sb.append('\n');
                    }
                }
                sb.append("  live out:" + ssaBasicBlock.getLiveOutRegs());
                sb.append("\n");
            }
            this.suppressDump = false;
            parsed(byteArray, 0, byteArray.size(), sb.toString());
            this.suppressDump = true;
        }
    }
}
