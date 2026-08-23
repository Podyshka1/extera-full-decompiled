package com.exteragram.messenger.pillstack.ui.pills.crypto;

import android.annotation.SuppressLint;
import android.content.Context;
import com.exteragram.messenger.pillstack.core.PillStackConfig;
import com.exteragram.messenger.pillstack.core.PillType;
import com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill;
import com.exteragram.messenger.pillstack.ui.pills.crypto.utils.ColoredBackground;
import org.telegram.messenger.C2573R;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ViewConstructor"})
public class GramPill extends RatePill {
    private static final RatePill.RateCache CACHE = new RatePill.RateCache();

    public GramPill(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider, CACHE, "TON", 3, C2573R.drawable.mini_gram_16, new ColoredBackground());
    }

    @Override // com.exteragram.messenger.pillstack.ui.pills.BasePill
    public int getPillId() {
        return PillType.GRAM.getId();
    }

    @Override // com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill
    public String getTargetSelection() {
        return PillStackConfig.getGramTargetCurrency();
    }

    @Override // com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill
    public void setTargetSelection(String str) {
        PillStackConfig.setGramTargetCurrency(str);
    }
}
