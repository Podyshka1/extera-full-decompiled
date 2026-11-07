package org.telegram.ui.Wallet;

import android.net.Uri;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_toncenter;

/* JADX INFO: loaded from: classes8.dex */
abstract class GramWalletDns {
    public static String normalizeDomain(String str) {
        if (str != null && str.length() <= 126) {
            String lowerCase = str.toLowerCase(Locale.ROOT);
            if (lowerCase.matches("[a-z0-9_-]+(?:\\.[a-z0-9_-]+)*\\.ton")) {
                return lowerCase;
            }
        }
        return null;
    }

    public static int resolve(int i, final String str, final Utilities.Callback<String> callback) {
        TL_toncenter.performApiRequest performapirequest = new TL_toncenter.performApiRequest();
        performapirequest.endpoint = "/api/v3/dns/records";
        performapirequest.query = "domain=" + Uri.encode(str) + "&limit=2";
        return ConnectionsManager.getInstance(i).sendRequestTyped(performapirequest, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletDns$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                GramWalletDns.m23079$r8$lambda$K_3VuCTyxKSMMILBP6ZhjAvR74(str, callback, (TL_toncenter.apiResponse) obj, (TLRPC.TL_error) obj2);
            }
        }, MessagesController.getInstance(i).webFileDatacenterId, 0);
    }

    /* JADX INFO: renamed from: $r8$lambda$K_3VuCTyxKSMMILBP6ZhjAvR7-4, reason: not valid java name */
    public static /* synthetic */ void m23079$r8$lambda$K_3VuCTyxKSMMILBP6ZhjAvR74(String str, Utilities.Callback callback, TL_toncenter.apiResponse apiresponse, TLRPC.TL_error tL_error) {
        String walletAddress;
        if (tL_error != null || apiresponse == null || apiresponse.response == null) {
            walletAddress = null;
        } else {
            try {
                walletAddress = parseWalletAddress(str, new JSONObject(apiresponse.response.data));
            } catch (JSONException e) {
                FileLog.m1040e(e);
                walletAddress = null;
            }
        }
        callback.run(walletAddress);
    }

    public static String parseWalletAddress(String str, JSONObject jSONObject) throws JSONException {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("records");
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() == 1) {
            JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(0);
            if (!str.equals(jSONObject2.optString("domain"))) {
                return null;
            }
            String strOptString = jSONObject2.optString("dns_wallet", _UrlKt.FRAGMENT_ENCODE_SET);
            if (WalletEngine2.isValidAddress(strOptString)) {
                return strOptString;
            }
        }
        return null;
    }
}
