package com.android.p003dx.ssa;

import com.android.p003dx.rop.code.RopMethod;
import com.android.p003dx.rop.code.TranslationAdvice;
import com.android.p003dx.ssa.back.LivenessAnalyzer;
import com.android.p003dx.ssa.back.SsaToRop;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes4.dex */
public class Optimizer {
    private static TranslationAdvice advice = null;
    private static boolean preserveLocals = true;

    public enum OptionalStep {
        MOVE_PARAM_COMBINER,
        SCCP,
        LITERAL_UPGRADE,
        CONST_COLLECTOR,
        ESCAPE_ANALYSIS
    }

    public static boolean getPreserveLocals() {
        return preserveLocals;
    }

    public static TranslationAdvice getAdvice() {
        return advice;
    }

    public static RopMethod optimize(RopMethod ropMethod, int i, boolean z, boolean z2, TranslationAdvice translationAdvice) {
        return optimize(ropMethod, i, z, z2, translationAdvice, EnumSet.allOf(OptionalStep.class));
    }

    public static RopMethod optimize(RopMethod ropMethod, int i, boolean z, boolean z2, TranslationAdvice translationAdvice, EnumSet<OptionalStep> enumSet) {
        preserveLocals = z2;
        advice = translationAdvice;
        SsaMethod ssaMethodConvertToSsaMethod = SsaConverter.convertToSsaMethod(ropMethod, i, z);
        runSsaFormSteps(ssaMethodConvertToSsaMethod, enumSet);
        RopMethod ropMethodConvertToRopMethod = SsaToRop.convertToRopMethod(ssaMethodConvertToSsaMethod, false);
        return ropMethodConvertToRopMethod.getBlocks().getRegCount() > advice.getMaxOptimalRegisterCount() ? optimizeMinimizeRegisters(ropMethod, i, z, enumSet) : ropMethodConvertToRopMethod;
    }

    private static RopMethod optimizeMinimizeRegisters(RopMethod ropMethod, int i, boolean z, EnumSet<OptionalStep> enumSet) {
        SsaMethod ssaMethodConvertToSsaMethod = SsaConverter.convertToSsaMethod(ropMethod, i, z);
        EnumSet<E> enumSetClone = enumSet.clone();
        enumSetClone.remove(OptionalStep.CONST_COLLECTOR);
        runSsaFormSteps(ssaMethodConvertToSsaMethod, enumSetClone);
        return SsaToRop.convertToRopMethod(ssaMethodConvertToSsaMethod, true);
    }

    private static void runSsaFormSteps(SsaMethod ssaMethod, EnumSet<OptionalStep> enumSet) {
        boolean z;
        if (enumSet.contains(OptionalStep.MOVE_PARAM_COMBINER)) {
            MoveParamCombiner.process(ssaMethod);
        }
        boolean z2 = false;
        if (enumSet.contains(OptionalStep.SCCP)) {
            SCCP.process(ssaMethod);
            DeadCodeRemover.process(ssaMethod);
            z = false;
        } else {
            z = true;
        }
        if (enumSet.contains(OptionalStep.LITERAL_UPGRADE)) {
            LiteralOpUpgrader.process(ssaMethod);
            DeadCodeRemover.process(ssaMethod);
            z = false;
        }
        OptionalStep optionalStep = OptionalStep.ESCAPE_ANALYSIS;
        enumSet.remove(optionalStep);
        if (enumSet.contains(optionalStep)) {
            EscapeAnalysis.process(ssaMethod);
            DeadCodeRemover.process(ssaMethod);
            z = false;
        }
        if (enumSet.contains(OptionalStep.CONST_COLLECTOR)) {
            ConstCollector.process(ssaMethod);
            DeadCodeRemover.process(ssaMethod);
        } else {
            z2 = z;
        }
        if (z2) {
            DeadCodeRemover.process(ssaMethod);
        }
        PhiTypeResolver.process(ssaMethod);
    }

    public static SsaMethod debugEdgeSplit(RopMethod ropMethod, int i, boolean z, boolean z2, TranslationAdvice translationAdvice) {
        preserveLocals = z2;
        advice = translationAdvice;
        return SsaConverter.testEdgeSplit(ropMethod, i, z);
    }

    public static SsaMethod debugPhiPlacement(RopMethod ropMethod, int i, boolean z, boolean z2, TranslationAdvice translationAdvice) {
        preserveLocals = z2;
        advice = translationAdvice;
        return SsaConverter.testPhiPlacement(ropMethod, i, z);
    }

    public static SsaMethod debugRenaming(RopMethod ropMethod, int i, boolean z, boolean z2, TranslationAdvice translationAdvice) {
        preserveLocals = z2;
        advice = translationAdvice;
        return SsaConverter.convertToSsaMethod(ropMethod, i, z);
    }

    public static SsaMethod debugDeadCodeRemover(RopMethod ropMethod, int i, boolean z, boolean z2, TranslationAdvice translationAdvice) {
        preserveLocals = z2;
        advice = translationAdvice;
        SsaMethod ssaMethodConvertToSsaMethod = SsaConverter.convertToSsaMethod(ropMethod, i, z);
        DeadCodeRemover.process(ssaMethodConvertToSsaMethod);
        return ssaMethodConvertToSsaMethod;
    }

    public static SsaMethod debugNoRegisterAllocation(RopMethod ropMethod, int i, boolean z, boolean z2, TranslationAdvice translationAdvice, EnumSet<OptionalStep> enumSet) {
        preserveLocals = z2;
        advice = translationAdvice;
        SsaMethod ssaMethodConvertToSsaMethod = SsaConverter.convertToSsaMethod(ropMethod, i, z);
        runSsaFormSteps(ssaMethodConvertToSsaMethod, enumSet);
        LivenessAnalyzer.constructInterferenceGraph(ssaMethodConvertToSsaMethod);
        return ssaMethodConvertToSsaMethod;
    }
}
