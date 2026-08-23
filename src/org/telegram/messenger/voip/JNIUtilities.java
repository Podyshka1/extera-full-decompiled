package org.telegram.messenger.voip;

import android.annotation.TargetApi;
import android.net.ConnectivityManager;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.Network;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.util.Iterator;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.ApplicationLoader;

/* JADX INFO: loaded from: classes.dex */
public class JNIUtilities {
    public static int getMaxVideoResolution() {
        return 320;
    }

    @TargetApi(23)
    public static String getCurrentNetworkInterfaceName() {
        LinkProperties linkProperties;
        ConnectivityManager connectivityManager = (ConnectivityManager) ApplicationLoader.applicationContext.getSystemService("connectivity");
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null || (linkProperties = connectivityManager.getLinkProperties(activeNetwork)) == null) {
            return null;
        }
        return linkProperties.getInterfaceName();
    }

    public static String[] getLocalNetworkAddressesAndInterfaceName() {
        LinkProperties linkProperties;
        ConnectivityManager connectivityManager = (ConnectivityManager) ApplicationLoader.applicationContext.getSystemService("connectivity");
        Network activeNetwork = connectivityManager.getActiveNetwork();
        String hostAddress = null;
        if (activeNetwork == null || (linkProperties = connectivityManager.getLinkProperties(activeNetwork)) == null) {
            return null;
        }
        Iterator<LinkAddress> it = linkProperties.getLinkAddresses().iterator();
        String hostAddress2 = null;
        while (it.hasNext()) {
            InetAddress address = it.next().getAddress();
            if (address instanceof Inet4Address) {
                if (!address.isLinkLocalAddress()) {
                    hostAddress = address.getHostAddress();
                }
            } else if ((address instanceof Inet6Address) && !address.isLinkLocalAddress() && (address.getAddress()[0] & 240) != 240) {
                hostAddress2 = address.getHostAddress();
            }
        }
        return new String[]{linkProperties.getInterfaceName(), hostAddress, hostAddress2};
    }

    public static String[] getCarrierInfo() {
        String strSubstring;
        String strSubstring2;
        TelephonyManager telephonyManagerCreateForSubscriptionId = (TelephonyManager) ApplicationLoader.applicationContext.getSystemService("phone");
        if (Build.VERSION.SDK_INT >= 24) {
            telephonyManagerCreateForSubscriptionId = telephonyManagerCreateForSubscriptionId.createForSubscriptionId(SubscriptionManager.getDefaultDataSubscriptionId());
        }
        if (TextUtils.isEmpty(telephonyManagerCreateForSubscriptionId.getNetworkOperatorName())) {
            return null;
        }
        String networkOperator = telephonyManagerCreateForSubscriptionId.getNetworkOperator();
        if (networkOperator != null && networkOperator.length() > 3) {
            strSubstring = networkOperator.substring(0, 3);
            strSubstring2 = networkOperator.substring(3);
        } else {
            strSubstring = _UrlKt.FRAGMENT_ENCODE_SET;
            strSubstring2 = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return new String[]{telephonyManagerCreateForSubscriptionId.getNetworkOperatorName(), telephonyManagerCreateForSubscriptionId.getNetworkCountryIso().toUpperCase(), strSubstring, strSubstring2};
    }

    public static int[] getWifiInfo() {
        try {
            WifiInfo connectionInfo = ((WifiManager) ApplicationLoader.applicationContext.getSystemService("wifi")).getConnectionInfo();
            return new int[]{connectionInfo.getRssi(), connectionInfo.getLinkSpeed()};
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getSupportedVideoCodecs() {
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }
}
