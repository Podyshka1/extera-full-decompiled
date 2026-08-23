package com.google.firebase.crashlytics.internal.network;

import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import de.robv.android.xposed.callbacks.XCallback;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public class HttpGetRequest {
    private final Map headers = new HashMap();
    private final Map queryParams;
    private final String url;

    public HttpGetRequest(String str, Map map) {
        this.url = str;
        this.queryParams = map;
    }

    public HttpGetRequest header(String str, String str2) {
        this.headers.put(str, str2);
        return this;
    }

    public HttpResponse execute() throws Throwable {
        HttpsURLConnection httpsURLConnection;
        CrashlyticsWorkers.checkBlockingThread();
        InputStream inputStream = null;
        String stream = null;
        inputStream = null;
        try {
            String strCreateUrlWithParams = createUrlWithParams(this.url, this.queryParams);
            Logger.getLogger().m507v("GET Request URL: " + strCreateUrlWithParams);
            httpsURLConnection = (HttpsURLConnection) new URL(strCreateUrlWithParams).openConnection();
            try {
                httpsURLConnection.setReadTimeout(XCallback.PRIORITY_HIGHEST);
                httpsURLConnection.setConnectTimeout(XCallback.PRIORITY_HIGHEST);
                httpsURLConnection.setRequestMethod("GET");
                for (Map.Entry entry : this.headers.entrySet()) {
                    httpsURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                httpsURLConnection.connect();
                int responseCode = httpsURLConnection.getResponseCode();
                InputStream inputStream2 = httpsURLConnection.getInputStream();
                if (inputStream2 != null) {
                    try {
                        stream = readStream(inputStream2);
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStream2;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (httpsURLConnection != null) {
                            httpsURLConnection.disconnect();
                        }
                        throw th;
                    }
                }
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                httpsURLConnection.disconnect();
                return new HttpResponse(responseCode, stream);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            httpsURLConnection = null;
        }
    }

    private String createUrlWithParams(String str, Map map) {
        String strCreateParamsString = createParamsString(map);
        if (strCreateParamsString.isEmpty()) {
            return str;
        }
        if (str.contains("?")) {
            if (!str.endsWith("&")) {
                strCreateParamsString = "&" + strCreateParamsString;
            }
            return str + strCreateParamsString;
        }
        return str + "?" + strCreateParamsString;
    }

    private String createParamsString(Map map) {
        StringBuilder sb = new StringBuilder();
        Iterator it = map.entrySet().iterator();
        Map.Entry entry = (Map.Entry) it.next();
        sb.append((String) entry.getKey());
        sb.append("=");
        sb.append(entry.getValue() != null ? URLEncoder.encode((String) entry.getValue(), "UTF-8") : _UrlKt.FRAGMENT_ENCODE_SET);
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            sb.append("&");
            sb.append((String) entry2.getKey());
            sb.append("=");
            sb.append(entry2.getValue() != null ? URLEncoder.encode((String) entry2.getValue(), "UTF-8") : _UrlKt.FRAGMENT_ENCODE_SET);
        }
        return sb.toString();
    }

    private String readStream(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        char[] cArr = new char[8192];
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i = bufferedReader.read(cArr);
            if (i != -1) {
                sb.append(cArr, 0, i);
            } else {
                return sb.toString();
            }
        }
    }
}
