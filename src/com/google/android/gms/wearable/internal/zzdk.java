package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.util.Log;
import com.google.android.gms.common.data.DataBufferRef;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdk extends DataBufferRef implements DataItem {
    private final int zza;

    public zzdk(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.zza = i2;
    }

    public final Map<String, DataItemAsset> getAssets() {
        HashMap map = new HashMap(this.zza);
        for (int i = 0; i < this.zza; i++) {
            zzdg zzdgVar = new zzdg(this.mDataHolder, this.mDataRow + i);
            if (zzdgVar.getString("asset_key") != null) {
                map.put(zzdgVar.getString("asset_key"), zzdgVar);
            }
        }
        return map;
    }

    public final Uri getUri() {
        return Uri.parse(getString("path"));
    }

    public final String toString() {
        boolean zIsLoggable = Log.isLoggable("DataItem", 3);
        byte[] byteArray = getByteArray("data");
        Map<String, DataItemAsset> assets = getAssets();
        StringBuilder sb = new StringBuilder("DataItemRef{ ");
        sb.append("uri=".concat(String.valueOf(getUri())));
        sb.append(", dataSz=".concat((byteArray == null ? "null" : Integer.valueOf(byteArray.length)).toString()));
        sb.append(", numAssets=" + assets.size());
        if (zIsLoggable && !assets.isEmpty()) {
            sb.append(", assets=[");
            String str = _UrlKt.FRAGMENT_ENCODE_SET;
            for (Map.Entry<String, DataItemAsset> entry : assets.entrySet()) {
                sb.append(str + entry.getKey() + ": " + entry.getValue().getId());
                str = ", ";
            }
            sb.append("]");
        }
        sb.append(" }");
        return sb.toString();
    }
}
