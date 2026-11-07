package com.neovisionaries.ws.client;

import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes5.dex */
class HandshakeReader {
    private final WebSocket mWebSocket;

    public HandshakeReader(WebSocket webSocket) {
        this.mWebSocket = webSocket;
    }

    public Map<String, List<String>> readHandshake(WebSocketInputStream webSocketInputStream, String str) throws WebSocketException {
        StatusLine statusLine = readStatusLine(webSocketInputStream);
        Map<String, List<String>> httpHeaders = readHttpHeaders(webSocketInputStream);
        validateStatusLine(statusLine, httpHeaders, webSocketInputStream);
        validateUpgrade(statusLine, httpHeaders);
        validateConnection(statusLine, httpHeaders);
        validateAccept(statusLine, httpHeaders, str);
        validateExtensions(statusLine, httpHeaders);
        validateProtocol(statusLine, httpHeaders);
        return httpHeaders;
    }

    private StatusLine readStatusLine(WebSocketInputStream webSocketInputStream) throws WebSocketException {
        try {
            String line = webSocketInputStream.readLine();
            if (line == null || line.length() == 0) {
                throw new WebSocketException(WebSocketError.STATUS_LINE_EMPTY, "The status line of the opening handshake response is empty.");
            }
            try {
                return new StatusLine(line);
            } catch (Exception unused) {
                throw new WebSocketException(WebSocketError.STATUS_LINE_BAD_FORMAT, "The status line of the opening handshake response is badly formatted. The status line is: ".concat(line));
            }
        } catch (IOException e) {
            throw new WebSocketException(WebSocketError.OPENING_HANDSHAKE_RESPONSE_FAILURE, "Failed to read an opening handshake response from the server: " + e.getMessage(), e);
        }
    }

    private Map<String, List<String>> readHttpHeaders(WebSocketInputStream webSocketInputStream) throws WebSocketException {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        StringBuilder sb = null;
        while (true) {
            try {
                String line = webSocketInputStream.readLine();
                if (line == null || line.length() == 0) {
                    break;
                }
                char cCharAt = line.charAt(0);
                if (cCharAt != ' ' && cCharAt != '\t') {
                    if (sb != null) {
                        parseHttpHeader(treeMap, sb.toString());
                    }
                    sb = new StringBuilder(line);
                } else if (sb != null) {
                    sb.append(line.replaceAll("^[ \t]+", " "));
                }
            } catch (IOException e) {
                throw new WebSocketException(WebSocketError.HTTP_HEADER_FAILURE, "An error occurred while HTTP header section was being read: " + e.getMessage(), e);
            }
        }
        if (sb != null) {
            parseHttpHeader(treeMap, sb.toString());
        }
        return treeMap;
    }

    private void parseHttpHeader(Map<String, List<String>> map, String str) {
        String[] strArrSplit = str.split(":", 2);
        if (strArrSplit.length < 2) {
            return;
        }
        String strTrim = strArrSplit[0].trim();
        String strTrim2 = strArrSplit[1].trim();
        List<String> arrayList = map.get(strTrim);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            map.put(strTrim, arrayList);
        }
        arrayList.add(strTrim2);
    }

    private void validateStatusLine(StatusLine statusLine, Map<String, List<String>> map, WebSocketInputStream webSocketInputStream) throws OpeningHandshakeException {
        if (statusLine.getStatusCode() == 101) {
            return;
        }
        byte[] body = readBody(map, webSocketInputStream);
        throw new OpeningHandshakeException(WebSocketError.NOT_SWITCHING_PROTOCOLS, "The status code of the opening handshake response is not '101 Switching Protocols'. The status line is: " + statusLine, statusLine, map, body);
    }

    private byte[] readBody(Map<String, List<String>> map, WebSocketInputStream webSocketInputStream) {
        int contentLength = getContentLength(map);
        if (contentLength <= 0) {
            return null;
        }
        try {
            byte[] bArr = new byte[contentLength];
            webSocketInputStream.readBytes(bArr, contentLength);
            return bArr;
        } catch (Throwable unused) {
            return null;
        }
    }

    private int getContentLength(Map<String, List<String>> map) {
        try {
            return Integer.parseInt(map.get("Content-Length").get(0));
        } catch (Exception unused) {
            return -1;
        }
    }

    private void validateUpgrade(StatusLine statusLine, Map<String, List<String>> map) throws OpeningHandshakeException {
        List<String> list = map.get("Upgrade");
        if (list == null || list.size() == 0) {
            throw new OpeningHandshakeException(WebSocketError.NO_UPGRADE_HEADER, "The opening handshake response does not contain 'Upgrade' header.", statusLine, map);
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            for (String str : it.next().split("\\s*,\\s*")) {
                if ("websocket".equalsIgnoreCase(str)) {
                    return;
                }
            }
        }
        throw new OpeningHandshakeException(WebSocketError.NO_WEBSOCKET_IN_UPGRADE_HEADER, "'websocket' was not found in 'Upgrade' header.", statusLine, map);
    }

    private void validateConnection(StatusLine statusLine, Map<String, List<String>> map) throws OpeningHandshakeException {
        List<String> list = map.get("Connection");
        if (list == null || list.size() == 0) {
            throw new OpeningHandshakeException(WebSocketError.NO_CONNECTION_HEADER, "The opening handshake response does not contain 'Connection' header.", statusLine, map);
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            for (String str : it.next().split("\\s*,\\s*")) {
                if ("Upgrade".equalsIgnoreCase(str)) {
                    return;
                }
            }
        }
        throw new OpeningHandshakeException(WebSocketError.NO_UPGRADE_IN_CONNECTION_HEADER, "'Upgrade' was not found in 'Connection' header.", statusLine, map);
    }

    private void validateAccept(StatusLine statusLine, Map<String, List<String>> map, String str) throws OpeningHandshakeException {
        List<String> list = map.get("Sec-WebSocket-Accept");
        if (list == null) {
            throw new OpeningHandshakeException(WebSocketError.NO_SEC_WEBSOCKET_ACCEPT_HEADER, "The opening handshake response does not contain 'Sec-WebSocket-Accept' header.", statusLine, map);
        }
        try {
            if (!Base64.encode(MessageDigest.getInstance("SHA-1").digest(Misc.getBytesUTF8(str + WebSocketProtocol.ACCEPT_MAGIC))).equals(list.get(0))) {
                throw new OpeningHandshakeException(WebSocketError.UNEXPECTED_SEC_WEBSOCKET_ACCEPT_HEADER, "The value of 'Sec-WebSocket-Accept' header is different from the expected one.", statusLine, map);
            }
        } catch (Exception unused) {
        }
    }

    private void validateExtensions(StatusLine statusLine, Map<String, List<String>> map) throws OpeningHandshakeException {
        List<String> list = map.get("Sec-WebSocket-Extensions");
        if (list == null || list.size() == 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            for (String str : it.next().split("\\s*,\\s*")) {
                WebSocketExtension webSocketExtension = WebSocketExtension.parse(str);
                if (webSocketExtension == null) {
                    throw new OpeningHandshakeException(WebSocketError.EXTENSION_PARSE_ERROR, "The value in 'Sec-WebSocket-Extensions' failed to be parsed: " + str, statusLine, map);
                }
                String name = webSocketExtension.getName();
                if (!this.mWebSocket.getHandshakeBuilder().containsExtension(name)) {
                    throw new OpeningHandshakeException(WebSocketError.UNSUPPORTED_EXTENSION, "The extension contained in the Sec-WebSocket-Extensions header is not supported: " + name, statusLine, map);
                }
                webSocketExtension.validate();
                arrayList.add(webSocketExtension);
            }
        }
        validateExtensionCombination(statusLine, map, arrayList);
        this.mWebSocket.setAgreedExtensions(arrayList);
    }

    private void validateExtensionCombination(StatusLine statusLine, Map<String, List<String>> map, List<WebSocketExtension> list) throws OpeningHandshakeException {
        WebSocketExtension webSocketExtension = null;
        for (WebSocketExtension webSocketExtension2 : list) {
            if (webSocketExtension2 instanceof PerMessageCompressionExtension) {
                if (webSocketExtension != null) {
                    throw new OpeningHandshakeException(WebSocketError.EXTENSIONS_CONFLICT, String.format("'%s' extension and '%s' extension conflict with each other.", webSocketExtension.getName(), webSocketExtension2.getName()), statusLine, map);
                }
                webSocketExtension = webSocketExtension2;
            }
        }
    }

    private void validateProtocol(StatusLine statusLine, Map<String, List<String>> map) throws OpeningHandshakeException {
        String str;
        List<String> list = map.get("Sec-WebSocket-Protocol");
        if (list == null || (str = list.get(0)) == null || str.length() == 0) {
            return;
        }
        if (!this.mWebSocket.getHandshakeBuilder().containsProtocol(str)) {
            throw new OpeningHandshakeException(WebSocketError.UNSUPPORTED_PROTOCOL, "The protocol contained in the Sec-WebSocket-Protocol header is not supported: ".concat(str), statusLine, map);
        }
        this.mWebSocket.setAgreedProtocol(str);
    }
}
