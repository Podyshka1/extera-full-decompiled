package com.exteragram.messenger.pillstack.ui.pills.crypto;

import android.content.Context;
import android.content.SharedPreferences;
import com.exteragram.messenger.pillstack.core.PillStackConfig;
import com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill;
import com.exteragram.messenger.pillstack.ui.pills.crypto.utils.ColoredBackground;
import org.telegram.messenger.C2484R;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes.dex */
public class TonPill extends RatePill {
    private static final RatePill.RateCache CACHE = new RatePill.RateCache();

    public TonPill(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider, CACHE, "TON", 3, C2484R.drawable.ton_16, new ColoredBackground());
    }

    @Override // com.exteragram.messenger.pillstack.ui.pills.BasePill
    public int getPillId() {
        return PillStackConfig.PillType.TON.id;
    }

    @Override // com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill
    protected String getTargetSelection() {
        return PillStackConfig.tonTargetCurrency;
    }

    @Override // com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill
    protected void setTargetSelection(String str) {
        SharedPreferences.Editor editor = PillStackConfig.editor;
        PillStackConfig.tonTargetCurrency = str;
        editor.putString("tonTargetCurrency", str).apply();
    }
}
