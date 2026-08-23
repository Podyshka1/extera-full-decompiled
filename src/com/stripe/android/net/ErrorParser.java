package com.stripe.android.net;

import androidx.mediarouter.media.MediaRouteProviderProtocol;
import com.stripe.android.util.StripeJsonUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.scilab.forge.jlatexmath.TeXSymbolParser;

/* JADX INFO: loaded from: classes5.dex */
abstract class ErrorParser {

    public static class StripeError {
        public String charge;
        public String code;
        public String decline_code;
        public String message;
        public String param;
        public String type;
    }

    public static StripeError parseError(String str) {
        StripeError stripeError = new StripeError();
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject(MediaRouteProviderProtocol.SERVICE_DATA_ERROR);
            stripeError.charge = StripeJsonUtils.optString(jSONObject, "charge");
            stripeError.code = StripeJsonUtils.optString(jSONObject, "code");
            stripeError.decline_code = StripeJsonUtils.optString(jSONObject, "decline_code");
            stripeError.message = StripeJsonUtils.optString(jSONObject, "message");
            stripeError.param = StripeJsonUtils.optString(jSONObject, "param");
            stripeError.type = StripeJsonUtils.optString(jSONObject, TeXSymbolParser.TYPE_ATTR);
            return stripeError;
        } catch (JSONException unused) {
            stripeError.message = "An improperly formatted error response was found.";
            return stripeError;
        }
    }
}
