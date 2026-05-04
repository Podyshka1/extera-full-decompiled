package com.exteragram.messenger.pillstack.p014ui.pills.crypto;

import android.content.Context;
import android.content.SharedPreferences;
import com.exteragram.messenger.pillstack.core.PillStackConfig;
import com.exteragram.messenger.pillstack.p014ui.pills.crypto.RatePill;
import com.exteragram.messenger.pillstack.p014ui.pills.crypto.utils.ColoredBackground;
import com.exteragram.messenger.pillstack.p014ui.pills.crypto.utils.PillStackCurrencies;
import org.telegram.messenger.C2888R;
import org.telegram.p029ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes.dex */
public class UsdPill extends RatePill {
    private static final RatePill.RateCache CACHE = new RatePill.RateCache();

    public UsdPill(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider, CACHE, "USD", 2, C2888R.drawable.pillstack_usd, new ColoredBackground(-14840995, -15172775));
    }

    @Override // com.exteragram.messenger.pillstack.p014ui.pills.BasePill
    public int getPillId() {
        return PillStackConfig.PillType.USD.f298id;
    }

    @Override // com.exteragram.messenger.pillstack.p014ui.pills.crypto.RatePill
    protected String getTargetSelection() {
        if ("USD".equalsIgnoreCase(PillStackConfig.usdTargetCurrency)) {
            return "AUTO";
        }
        return PillStackConfig.usdTargetCurrency;
    }

    @Override // com.exteragram.messenger.pillstack.p014ui.pills.crypto.RatePill
    protected void setTargetSelection(String str) {
        SharedPreferences.Editor editor = PillStackConfig.editor;
        PillStackConfig.usdTargetCurrency = str;
        editor.putString("usdTargetCurrency", str).apply();
    }

    @Override // com.exteragram.messenger.pillstack.p014ui.pills.crypto.RatePill
    protected String[] getTargetCurrencies() {
        return PillStackCurrencies.getTargetCurrencies("USD");
    }
}
