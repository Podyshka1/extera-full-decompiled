package com.android.billingclient.api;

import android.os.Bundle;
import com.android.billingclient.api.BillingResult;
import com.google.android.gms.internal.play_billing.zze;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzcy {
    public static zzcx zza(Bundle bundle, String str, String str2) {
        BillingResult billingResult = zzcj.zzk;
        if (bundle == null) {
            zze.zzl("BillingClient", String.format("%s got null owned items list", str2));
            return new zzcx(billingResult, 54);
        }
        int iZzb = zze.zzb(bundle, "BillingClient");
        String strZzh = zze.zzh(bundle, "BillingClient");
        BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
        builderNewBuilder.setResponseCode(iZzb);
        builderNewBuilder.setDebugMessage(strZzh);
        BillingResult billingResultBuild = builderNewBuilder.build();
        if (iZzb != 0) {
            zze.zzl("BillingClient", String.format("%s failed. Response code: %s", str2, Integer.valueOf(iZzb)));
            return new zzcx(billingResultBuild, 23);
        }
        if (!bundle.containsKey("INAPP_PURCHASE_ITEM_LIST") || !bundle.containsKey("INAPP_PURCHASE_DATA_LIST") || !bundle.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
            zze.zzl("BillingClient", String.format("Bundle returned from %s doesn't contain required fields.", str2));
            return new zzcx(billingResult, 55);
        }
        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList<String> stringArrayList3 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        if (stringArrayList == null) {
            zze.zzl("BillingClient", String.format("Bundle returned from %s contains null SKUs list.", str2));
            return new zzcx(billingResult, 56);
        }
        if (stringArrayList2 == null) {
            zze.zzl("BillingClient", String.format("Bundle returned from %s contains null purchases list.", str2));
            return new zzcx(billingResult, 57);
        }
        if (stringArrayList3 != null) {
            return new zzcx(zzcj.zzl, 1);
        }
        zze.zzl("BillingClient", String.format("Bundle returned from %s contains null signatures list.", str2));
        return new zzcx(billingResult, 58);
    }
}
