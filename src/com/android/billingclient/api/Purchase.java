package com.android.billingclient.api;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class Purchase {
    private final String zza;
    private final String zzb;
    private final JSONObject zzc;

    public Purchase(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = new JSONObject(str);
    }

    private final ArrayList zza() {
        ArrayList arrayList = new ArrayList();
        boolean zHas = this.zzc.has("productIds");
        JSONObject jSONObject = this.zzc;
        if (zHas) {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("productIds");
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    arrayList.add(jSONArrayOptJSONArray.optString(i));
                }
            }
        } else if (jSONObject.has("productId")) {
            arrayList.add(this.zzc.optString("productId"));
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Purchase)) {
            return false;
        }
        Purchase purchase = (Purchase) obj;
        return TextUtils.equals(this.zza, purchase.getOriginalJson()) && TextUtils.equals(this.zzb, purchase.getSignature());
    }

    public AccountIdentifiers getAccountIdentifiers() {
        JSONObject jSONObject = this.zzc;
        String strOptString = jSONObject.optString("obfuscatedAccountId");
        String strOptString2 = jSONObject.optString("obfuscatedProfileId");
        if (strOptString == null && strOptString2 == null) {
            return null;
        }
        return new AccountIdentifiers(strOptString, strOptString2);
    }

    public String getOrderId() {
        String strOptString = this.zzc.optString("orderId");
        if (TextUtils.isEmpty(strOptString)) {
            return null;
        }
        return strOptString;
    }

    public String getOriginalJson() {
        return this.zza;
    }

    public List<String> getProducts() {
        return zza();
    }

    public int getPurchaseState() {
        return this.zzc.optInt("purchaseState", 1) != 4 ? 1 : 2;
    }

    public String getPurchaseToken() {
        JSONObject jSONObject = this.zzc;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    public String getSignature() {
        return this.zzb;
    }

    public int hashCode() {
        return this.zza.hashCode();
    }

    public boolean isAcknowledged() {
        return this.zzc.optBoolean("acknowledged", true);
    }

    public String toString() {
        return "Purchase. Json: ".concat(String.valueOf(this.zza));
    }
}
