package com.android.p003dx.ssa;

import com.android.p003dx.rop.code.Insn;
import com.android.p003dx.rop.code.PlainCstInsn;
import com.android.p003dx.rop.code.PlainInsn;
import com.android.p003dx.rop.code.RegOps;
import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.code.Rop;
import com.android.p003dx.rop.code.Rops;
import com.android.p003dx.rop.code.TranslationAdvice;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstLiteralBits;
import com.android.p003dx.rop.type.TypeBearer;
import com.android.p003dx.ssa.SsaInsn;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class LiteralOpUpgrader {
    private final SsaMethod ssaMeth;

    public static void process(SsaMethod ssaMethod) {
        new LiteralOpUpgrader(ssaMethod).run();
    }

    private LiteralOpUpgrader(SsaMethod ssaMethod) {
        this.ssaMeth = ssaMethod;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isConstIntZeroOrKnownNull(RegisterSpec registerSpec) {
        TypeBearer typeBearer = registerSpec.getTypeBearer();
        return (typeBearer instanceof CstLiteralBits) && ((CstLiteralBits) typeBearer).getLongBits() == 0;
    }

    private void run() {
        final TranslationAdvice advice = Optimizer.getAdvice();
        this.ssaMeth.forEachInsn(new SsaInsn.Visitor() { // from class: com.android.dx.ssa.LiteralOpUpgrader.1
            @Override // com.android.dx.ssa.SsaInsn.Visitor
            public void visitMoveInsn(NormalSsaInsn normalSsaInsn) {
            }

            @Override // com.android.dx.ssa.SsaInsn.Visitor
            public void visitPhiInsn(PhiInsn phiInsn) {
            }

            @Override // com.android.dx.ssa.SsaInsn.Visitor
            public void visitNonMoveInsn(NormalSsaInsn normalSsaInsn) {
                Rop opcode = normalSsaInsn.getOriginalRopInsn().getOpcode();
                RegisterSpecList sources = normalSsaInsn.getSources();
                if (!LiteralOpUpgrader.this.tryReplacingWithConstant(normalSsaInsn) && sources.size() == 2) {
                    if (opcode.getBranchingness() == 4) {
                        if (LiteralOpUpgrader.isConstIntZeroOrKnownNull(sources.get(0))) {
                            LiteralOpUpgrader.this.replacePlainInsn(normalSsaInsn, sources.withoutFirst(), RegOps.flippedIfOpcode(opcode.getOpcode()), null);
                            return;
                        } else {
                            if (LiteralOpUpgrader.isConstIntZeroOrKnownNull(sources.get(1))) {
                                LiteralOpUpgrader.this.replacePlainInsn(normalSsaInsn, sources.withoutLast(), opcode.getOpcode(), null);
                                return;
                            }
                            return;
                        }
                    }
                    if (advice.hasConstantOperation(opcode, sources.get(0), sources.get(1))) {
                        normalSsaInsn.upgradeToLiteral();
                    } else if (opcode.isCommutative() && advice.hasConstantOperation(opcode, sources.get(1), sources.get(0))) {
                        normalSsaInsn.setNewSources(RegisterSpecList.make(sources.get(1), sources.get(0)));
                        normalSsaInsn.upgradeToLiteral();
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public boolean tryReplacingWithConstant(NormalSsaInsn normalSsaInsn) {
        Rop opcode = normalSsaInsn.getOriginalRopInsn().getOpcode();
        RegisterSpec result = normalSsaInsn.getResult();
        if (result != null && !this.ssaMeth.isRegALocal(result) && opcode.getOpcode() != 5) {
            TypeBearer typeBearer = normalSsaInsn.getResult().getTypeBearer();
            if (typeBearer.isConstant() && typeBearer.getBasicType() == 6) {
                RegisterSpecList registerSpecList = RegisterSpecList.EMPTY;
                replacePlainInsn(normalSsaInsn, registerSpecList, 5, (Constant) typeBearer);
                if (opcode.getOpcode() == 56) {
                    ArrayList<SsaInsn> insns = this.ssaMeth.getBlocks().get(normalSsaInsn.getBlock().getPredecessors().nextSetBit(0)).getInsns();
                    replacePlainInsn((NormalSsaInsn) insns.get(insns.size() - 1), registerSpecList, 6, null);
                }
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void replacePlainInsn(NormalSsaInsn normalSsaInsn, RegisterSpecList registerSpecList, int i, Constant constant) {
        Insn plainCstInsn;
        Insn originalRopInsn = normalSsaInsn.getOriginalRopInsn();
        Rop ropRopFor = Rops.ropFor(i, normalSsaInsn.getResult(), registerSpecList, constant);
        if (constant == null) {
            plainCstInsn = new PlainInsn(ropRopFor, originalRopInsn.getPosition(), normalSsaInsn.getResult(), registerSpecList);
        } else {
            plainCstInsn = new PlainCstInsn(ropRopFor, originalRopInsn.getPosition(), normalSsaInsn.getResult(), registerSpecList, constant);
        }
        NormalSsaInsn normalSsaInsn2 = new NormalSsaInsn(plainCstInsn, normalSsaInsn.getBlock());
        ArrayList<SsaInsn> insns = normalSsaInsn.getBlock().getInsns();
        this.ssaMeth.onInsnRemoved(normalSsaInsn);
        insns.set(insns.lastIndexOf(normalSsaInsn), normalSsaInsn2);
        this.ssaMeth.onInsnAdded(normalSsaInsn2);
    }
}
