package com.neovisionaries.ws.client;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.List;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import org.vosk.Model$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
class ProxyHandshaker {
    private final String mHost;
    private final int mPort;
    private final ProxySettings mSettings;

    public ProxyHandshaker(String str, int i, ProxySettings proxySettings) {
        this.mHost = str;
        this.mPort = i;
        this.mSettings = proxySettings;
    }

    public void perform(Socket socket) throws IOException {
        sendRequest(socket);
        receiveResponse(socket);
    }

    private void sendRequest(Socket socket) throws IOException {
        byte[] bytesUTF8 = Misc.getBytesUTF8(buildRequest());
        OutputStream outputStream = socket.getOutputStream();
        outputStream.write(bytesUTF8);
        outputStream.flush();
    }

    private String buildRequest() {
        String str = String.format("%s:%d", this.mHost, Integer.valueOf(this.mPort));
        StringBuilder sb = new StringBuilder();
        sb.append("CONNECT ");
        sb.append(str);
        sb.append(" HTTP/1.1\r\nHost: ");
        sb.append(str);
        sb.append("\r\n");
        addHeaders(sb);
        addProxyAuthorization(sb);
        sb.append("\r\n");
        return sb.toString();
    }

    private void addHeaders(StringBuilder sb) {
        for (Map.Entry<String, List<String>> entry : this.mSettings.getHeaders().entrySet()) {
            String key = entry.getKey();
            for (String str : entry.getValue()) {
                if (str == null) {
                    str = _UrlKt.FRAGMENT_ENCODE_SET;
                }
                sb.append(key);
                sb.append(": ");
                sb.append(str);
                sb.append("\r\n");
            }
        }
    }

    private void addProxyAuthorization(StringBuilder sb) {
        String id = this.mSettings.getId();
        if (id == null || id.length() == 0) {
            return;
        }
        String password = this.mSettings.getPassword();
        if (password == null) {
            password = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String str = String.format("%s:%s", id, password);
        sb.append("Proxy-Authorization: Basic ");
        sb.append(Base64.encode(str));
        sb.append("\r\n");
    }

    private void receiveResponse(Socket socket) throws IOException {
        InputStream inputStream = socket.getInputStream();
        readStatusLine(inputStream);
        skipHeaders(inputStream);
    }

    private void readStatusLine(InputStream inputStream) throws IOException {
        String line = Misc.readLine(inputStream, "UTF-8");
        if (line == null || line.length() == 0) {
            Model$$ExternalSyntheticBUOutline0.m1107m("The response from the proxy server does not contain a status line.");
            return;
        }
        String[] strArrSplit = line.split(" +", 3);
        if (strArrSplit.length < 2) {
            Model$$ExternalSyntheticBUOutline0.m1107m("The status line in the response from the proxy server is badly formatted. The status line is: ".concat(line));
        } else {
            if ("200".equals(strArrSplit[1])) {
                return;
            }
            Model$$ExternalSyntheticBUOutline0.m1107m("The status code in the response from the proxy server is not '200 Connection established'. The status line is: ".concat(line));
        }
    }

    private void skipHeaders(InputStream inputStream) throws IOException {
        while (true) {
            int i = 0;
            while (true) {
                int i2 = inputStream.read();
                if (i2 == -1) {
                    throw new EOFException("The end of the stream from the proxy server was reached unexpectedly.");
                }
                if (i2 == 10) {
                    if (i == 0) {
                        return;
                    }
                } else if (i2 != 13) {
                    i++;
                } else {
                    int i3 = inputStream.read();
                    if (i3 == -1) {
                        throw new EOFException("The end of the stream from the proxy server was reached unexpectedly after a carriage return.");
                    }
                    if (i3 != 10) {
                        i += 2;
                    } else if (i == 0) {
                        return;
                    }
                }
            }
        }
    }

    public String getProxiedHostname() {
        return this.mHost;
    }
}
