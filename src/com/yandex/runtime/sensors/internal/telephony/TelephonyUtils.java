package com.yandex.runtime.sensors.internal.telephony;

import android.os.Build;
import android.os.SystemClock;
import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfo;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class TelephonyUtils {
    private static int replaceUnavailableToZero(int i) {
        if (i == Integer.MAX_VALUE) {
            return 0;
        }
        return i;
    }

    private static long unixTimestampMilliseconds(CellInfo cellInfo) {
        long timeStamp;
        long jCurrentTimeMillis = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        if (Build.VERSION.SDK_INT >= 30) {
            timeStamp = cellInfo.getTimestampMillis();
        } else {
            timeStamp = cellInfo.getTimeStamp() / 1000000;
        }
        return jCurrentTimeMillis + timeStamp;
    }

    private static GsmCellInfo convert(CellInfoGsm cellInfoGsm) {
        CellIdentityGsm cellIdentity = cellInfoGsm.getCellIdentity();
        if (cellIdentity.getCid() == Integer.MAX_VALUE || cellIdentity.getLac() == Integer.MAX_VALUE || cellIdentity.getMcc() == Integer.MAX_VALUE || cellIdentity.getMnc() == Integer.MAX_VALUE) {
            return null;
        }
        int timingAdvance = Build.VERSION.SDK_INT >= 26 ? cellInfoGsm.getCellSignalStrength().getTimingAdvance() : Integer.MAX_VALUE;
        return new GsmCellInfo(cellIdentity.getCid(), cellIdentity.getLac(), cellInfoGsm.getCellSignalStrength().getDbm(), cellIdentity.getMcc(), cellIdentity.getMnc(), timingAdvance != Integer.MAX_VALUE ? new Integer(timingAdvance) : null, CellType.Gsm, unixTimestampMilliseconds(cellInfoGsm), null, null);
    }

    private static GsmCellInfo convert(CellInfoLte cellInfoLte) {
        CellIdentityLte cellIdentity = cellInfoLte.getCellIdentity();
        int pci = cellIdentity.getPci();
        int earfcn = cellIdentity.getEarfcn();
        if (pci == Integer.MAX_VALUE && (cellIdentity.getCi() == Integer.MAX_VALUE || cellIdentity.getTac() == Integer.MAX_VALUE || cellIdentity.getMcc() == Integer.MAX_VALUE || cellIdentity.getMnc() == Integer.MAX_VALUE)) {
            return null;
        }
        int timingAdvance = cellInfoLte.getCellSignalStrength().getTimingAdvance();
        return new GsmCellInfo(replaceUnavailableToZero(cellIdentity.getCi()), replaceUnavailableToZero(cellIdentity.getTac()), cellInfoLte.getCellSignalStrength().getDbm(), replaceUnavailableToZero(cellIdentity.getMcc()), replaceUnavailableToZero(cellIdentity.getMnc()), timingAdvance == Integer.MAX_VALUE ? null : new Integer(timingAdvance), CellType.Lte, unixTimestampMilliseconds(cellInfoLte), pci == Integer.MAX_VALUE ? null : new Integer(pci), earfcn != Integer.MAX_VALUE ? new Integer(earfcn) : null);
    }

    private static GsmCellInfo convert(CellInfoWcdma cellInfoWcdma) {
        CellIdentityWcdma cellIdentity = cellInfoWcdma.getCellIdentity();
        if (cellIdentity.getCid() == Integer.MAX_VALUE || cellIdentity.getLac() == Integer.MAX_VALUE || cellIdentity.getMcc() == Integer.MAX_VALUE || cellIdentity.getMnc() == Integer.MAX_VALUE) {
            return null;
        }
        return new GsmCellInfo(cellIdentity.getCid(), cellIdentity.getLac(), cellInfoWcdma.getCellSignalStrength().getDbm(), cellIdentity.getMcc(), cellIdentity.getMnc(), null, CellType.Wcdma, unixTimestampMilliseconds(cellInfoWcdma), null, null);
    }

    public static List<GsmCellInfo> convertCellInfo(List<CellInfo> list) {
        GsmCellInfo gsmCellInfoConvert;
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (CellInfo cellInfo : list) {
                if (cellInfo instanceof CellInfoGsm) {
                    gsmCellInfoConvert = convert((CellInfoGsm) cellInfo);
                } else if (cellInfo instanceof CellInfoLte) {
                    gsmCellInfoConvert = convert((CellInfoLte) cellInfo);
                } else {
                    gsmCellInfoConvert = cellInfo instanceof CellInfoWcdma ? convert((CellInfoWcdma) cellInfo) : null;
                }
                if (gsmCellInfoConvert != null) {
                    arrayList.add(gsmCellInfoConvert);
                }
            }
        }
        return arrayList;
    }
}
