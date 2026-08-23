package com.android.dx.rop.code;

/* JADX INFO: loaded from: classes4.dex */
public final class ConservativeTranslationAdvice implements TranslationAdvice {
    public static final ConservativeTranslationAdvice THE_ONE = new ConservativeTranslationAdvice();

    @Override // com.android.dx.rop.code.TranslationAdvice
    public int getMaxOptimalRegisterCount() {
        return Integer.MAX_VALUE;
    }

    @Override // com.android.dx.rop.code.TranslationAdvice
    public boolean hasConstantOperation(Rop rop, RegisterSpec registerSpec, RegisterSpec registerSpec2) {
        return false;
    }

    @Override // com.android.dx.rop.code.TranslationAdvice
    public boolean requiresSourcesInOrder(Rop rop, RegisterSpecList registerSpecList) {
        return false;
    }

    private ConservativeTranslationAdvice() {
    }
}
