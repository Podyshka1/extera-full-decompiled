package com.yandex.runtime.sensors.internal.telephony;

import android.telephony.TelephonyManager;
import com.yandex.runtime.Runtime;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class NeighboringCellInfoProvider {
    public static List<GsmCellInfo> getNeighboringCellInfoGsm() {
        try {
            return TelephonyUtils.convertCellInfo(((TelephonyManager) Runtime.getApplicationContext().getSystemService("phone")).getAllCellInfo());
        } catch (Exception unused) {
            return new ArrayList();
        }
    }
}
