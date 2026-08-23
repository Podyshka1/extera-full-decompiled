package com.exteragram.messenger.pillstack.p014ui.pills.crypto;

import android.content.Context;
import android.content.SharedPreferences;
import com.exteragram.messenger.pillstack.core.PillStackConfig;
import com.exteragram.messenger.pillstack.p014ui.pills.crypto.RatePill;
import com.exteragram.messenger.pillstack.p014ui.pills.crypto.utils.ColoredBackground;
import org.telegram.messenger.C2888R;
import org.telegram.p029ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes4.dex */
public class BtcPill extends RatePill {
    private static final RatePill.RateCache CACHE = new RatePill.RateCache();

    public BtcPill(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider, CACHE, "BTC", 2, C2888R.drawable.pillstack_btc, new ColoredBackground(-1071598, -1608430));
    }

    @Override // com.exteragram.messenger.pillstack.p014ui.pills.BasePill
    public int getPillId() {
        return PillStackConfig.PillType.BTC.f298id;
    }

    @Override // com.exteragram.messenger.pillstack.p014ui.pills.crypto.RatePill
    protected String getTargetSelection() {
        return PillStackConfig.btcTargetCurrency;
    }

    @Override // com.exteragram.messenger.pillstack.p014ui.pills.crypto.RatePill
    protected void setTargetSelection(String str) {
        SharedPreferences.Editor editor = PillStackConfig.editor;
        PillStackConfig.btcTargetCurrency = str;
        editor.putString("btcTargetCurrency", str).apply();
    }
}
