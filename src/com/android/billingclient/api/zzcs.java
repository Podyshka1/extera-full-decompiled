package com.android.billingclient.api;

import com.android.billingclient.api.ProductDetails;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.scilab.forge.jlatexmath.TeXSymbolParser;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcs {
    public zzcs(JSONObject jSONObject) throws JSONException {
        jSONObject.getString(TeXSymbolParser.TYPE_ATTR);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("balanceThresholds");
        ArrayList arrayList = new ArrayList();
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                arrayList.add(Integer.valueOf(jSONArrayOptJSONArray.getInt(i)));
            }
        }
        new ProductDetails.PricingPhases(jSONObject.getJSONArray("pricingPhases"));
    }
}
