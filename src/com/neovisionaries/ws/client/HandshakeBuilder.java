package com.neovisionaries.ws.client;

import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
class HandshakeBuilder {
    private static final String[] CONNECTION_HEADER = {"Connection", "Upgrade"};
    private static final String[] UPGRADE_HEADER = {"Upgrade", "websocket"};
    private static final String[] VERSION_HEADER = {"Sec-WebSocket-Version", "13"};
    private List<WebSocketExtension> mExtensions;
    private List<String[]> mHeaders;
    private final String mHost;
    private String mKey;
    private final String mPath;
    private Set<String> mProtocols;
    private boolean mSecure;
    private final URI mUri;
    private String mUserInfo;

    public HandshakeBuilder(boolean z, String str, String str2, String str3) {
        this.mSecure = z;
        this.mUserInfo = str;
        this.mHost = str2;
        this.mPath = str3;
        this.mUri = URI.create(String.format("%s://%s%s", z ? "wss" : "ws", str2, str3));
    }

    public boolean containsProtocol(String str) {
        synchronized (this) {
            try {
                Set<String> set = this.mProtocols;
                if (set == null) {
                    return false;
                }
                return set.contains(str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean containsExtension(String str) {
        if (str == null) {
            return false;
        }
        synchronized (this) {
            try {
                List<WebSocketExtension> list = this.mExtensions;
                if (list == null) {
                    return false;
                }
                Iterator<WebSocketExtension> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next().getName().equals(str)) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setKey(String str) {
        this.mKey = str;
    }

    public String buildRequestLine() {
        return String.format("GET %s HTTP/1.1", this.mPath);
    }

    public List<String[]> buildHeaders() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new String[]{"Host", this.mHost});
        arrayList.add(CONNECTION_HEADER);
        arrayList.add(UPGRADE_HEADER);
        arrayList.add(VERSION_HEADER);
        arrayList.add(new String[]{"Sec-WebSocket-Key", this.mKey});
        Set<String> set = this.mProtocols;
        if (set != null && set.size() != 0) {
            arrayList.add(new String[]{"Sec-WebSocket-Protocol", Misc.join(this.mProtocols, ", ")});
        }
        List<WebSocketExtension> list = this.mExtensions;
        if (list != null && list.size() != 0) {
            arrayList.add(new String[]{"Sec-WebSocket-Extensions", Misc.join(this.mExtensions, ", ")});
        }
        String str = this.mUserInfo;
        if (str != null && str.length() != 0) {
            arrayList.add(new String[]{"Authorization", "Basic " + Base64.encode(this.mUserInfo)});
        }
        List<String[]> list2 = this.mHeaders;
        if (list2 != null && list2.size() != 0) {
            arrayList.addAll(this.mHeaders);
        }
        return arrayList;
    }

    public static String build(String str, List<String[]> list) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\r\n");
        for (String[] strArr : list) {
            sb.append(strArr[0]);
            sb.append(": ");
            sb.append(strArr[1]);
            sb.append("\r\n");
        }
        sb.append("\r\n");
        return sb.toString();
    }
}
