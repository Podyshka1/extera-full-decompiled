package com.exteragram.messenger.pillstack.ui.pills.crypto;

import android.annotation.SuppressLint;
import android.content.Context;
import com.exteragram.messenger.pillstack.core.PillStackConfig;
import com.exteragram.messenger.pillstack.core.PillType;
import com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill;
import com.exteragram.messenger.pillstack.ui.pills.crypto.utils.ColoredBackground;
import com.exteragram.messenger.pillstack.ui.pills.crypto.utils.PillStackCurrencies;
import org.telegram.messenger.C2573R;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ViewConstructor"})
public class UsdPill extends RatePill {
    private static final RatePill.RateCache CACHE = new RatePill.RateCache();

    public UsdPill(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider, CACHE, "USD", 2, C2573R.drawable.pillstack_usd, new ColoredBackground(-14840995, -15172775));
    }

    @Override // com.exteragram.messenger.pillstack.ui.pills.BasePill
    public int getPillId() {
        return PillType.USD.getId();
    }

    @Override // com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill
    public String getTargetSelection() {
        if ("USD".equalsIgnoreCase(PillStackConfig.getUsdTargetCurrency())) {
            return "AUTO";
        }
        return PillStackConfig.getUsdTargetCurrency();
    }

    @Override // com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill
    public void setTargetSelection(String str) {
        PillStackConfig.setUsdTargetCurrency(str);
    }

    @Override // com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill
    public String[] getTargetCurrencies() {
        return PillStackCurrencies.getTargetCurrencies("USD");
    }
}
