package com.neovisionaries.ws.client;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes5.dex */
abstract class SNIHelper {
    private static Constructor<?> sSNIHostNameConstructor;
    private static Method sSetServerNamesMethod;

    static {
        try {
            initialize();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void initialize() {
        sSNIHostNameConstructor = Misc.getConstructor("javax.net.ssl.SNIHostName", new Class[]{String.class});
        sSetServerNamesMethod = Misc.getMethod("javax.net.ssl.SSLParameters", "setServerNames", new Class[]{List.class});
    }

    private static Object createSNIHostName(String str) {
        return Misc.newInstance(sSNIHostNameConstructor, str);
    }

    private static List<Object> createSNIHostNames(String[] strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(createSNIHostName(str));
        }
        return arrayList;
    }

    private static void setServerNames(SSLParameters sSLParameters, String[] strArr) {
        Misc.invoke(sSetServerNamesMethod, sSLParameters, createSNIHostNames(strArr));
    }

    public static void setServerNames(Socket socket, String[] strArr) {
        if ((socket instanceof SSLSocket) && strArr != null) {
            int androidSDKVersion = getAndroidSDKVersion();
            if (androidSDKVersion > 0 && androidSDKVersion < 24) {
                try {
                    socket.getClass().getMethod("setHostname", String.class).invoke(socket, strArr[0]);
                    return;
                } catch (Exception e) {
                    System.err.println("SNI configuration failed: " + e.getMessage());
                    return;
                }
            }
            SSLParameters sSLParameters = ((SSLSocket) socket).getSSLParameters();
            if (sSLParameters == null) {
                return;
            }
            setServerNames(sSLParameters, strArr);
        }
    }

    public static int getAndroidSDKVersion() {
        try {
            try {
                return Class.forName("android.os.Build$VERSION").getField("SDK_INT").getInt(null);
            } catch (Exception unused) {
                return 0;
            }
        } catch (Exception unused2) {
            return Integer.parseInt((String) Class.forName("android.os.Build$VERSION").getField("SDK").get(null));
        }
    }
}
