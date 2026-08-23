package com.stripe.android.util;

import com.stripe.android.model.Card;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class StripeNetworkUtils {
    public static Map hashMapFromCard(Card card) {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        map2.put("number", StripeTextUtils.nullIfBlank(card.getNumber()));
        map2.put("cvc", StripeTextUtils.nullIfBlank(card.getCVC()));
        map2.put("exp_month", card.getExpMonth());
        map2.put("exp_year", card.getExpYear());
        map2.put("name", StripeTextUtils.nullIfBlank(card.getName()));
        map2.put("currency", StripeTextUtils.nullIfBlank(card.getCurrency()));
        map2.put("address_line1", StripeTextUtils.nullIfBlank(card.getAddressLine1()));
        map2.put("address_line2", StripeTextUtils.nullIfBlank(card.getAddressLine2()));
        map2.put("address_city", StripeTextUtils.nullIfBlank(card.getAddressCity()));
        map2.put("address_zip", StripeTextUtils.nullIfBlank(card.getAddressZip()));
        map2.put("address_state", StripeTextUtils.nullIfBlank(card.getAddressState()));
        map2.put("address_country", StripeTextUtils.nullIfBlank(card.getAddressCountry()));
        for (String str : new HashSet(map2.keySet())) {
            if (map2.get(str) == null) {
                map2.remove(str);
            }
        }
        map.put("card", map2);
        return map;
    }
}
