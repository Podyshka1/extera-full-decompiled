package org.telegram.utils.proxy;

import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import j$.net.URLEncoder;
import java.io.UnsupportedEncodingException;
import java.net.IDN;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Pattern;
import kotlin.UByte;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline0;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes8.dex */
public final class ProxySettings {
    private final String address;
    private final String password;
    private final int port;
    private final String secret;
    private final Type type;
    private final String user;
    private static final Pattern WEB_PROXY_PATH_PATTERN = Pattern.compile("[A-Za-z0-9][A-Za-z0-9_-]*(/[A-Za-z0-9][A-Za-z0-9_-]*)*");
    private static final Pattern WEB_PROXY_MARKED_SECRET_PATTERN = Pattern.compile("[A-Za-z0-9_-]+");
    public static final ProxySettings EMPTY = builder().build();

    public enum Type {
        SOCKS5,
        MTPROTO,
        WEB
    }

    private ProxySettings(Builder builder) {
        Type type = builder.type;
        this.type = type;
        this.address = builder.address;
        if (type == Type.WEB) {
            this.secret = builder.secret;
            this.port = 0;
            this.user = _UrlKt.FRAGMENT_ENCODE_SET;
            this.password = _UrlKt.FRAGMENT_ENCODE_SET;
            return;
        }
        if (type == Type.MTPROTO) {
            this.secret = builder.secret;
            this.port = builder.port;
            this.user = _UrlKt.FRAGMENT_ENCODE_SET;
            this.password = _UrlKt.FRAGMENT_ENCODE_SET;
            return;
        }
        if (type == Type.SOCKS5) {
            this.secret = _UrlKt.FRAGMENT_ENCODE_SET;
            this.port = builder.port;
            this.user = builder.user;
            this.password = builder.password;
            return;
        }
        Segment$$ExternalSyntheticBUOutline0.m972m();
        throw null;
    }

    public Type getType() {
        return this.type;
    }

    public String getAddress() {
        return this.address;
    }

    public int getPort() {
        return this.port;
    }

    public String getUser() {
        return this.user;
    }

    public String getPassword() {
        return this.password;
    }

    public String getSecret() {
        return this.secret;
    }

    public boolean isValid() {
        if (TextUtils.isEmpty(this.address)) {
            return false;
        }
        return this.type == Type.WEB ? isValidWebAddress(this.address) && isValidWebProxySecret(this.secret) : this.port > 0;
    }

    /* JADX INFO: renamed from: org.telegram.utils.proxy.ProxySettings$1 */
    public static /* synthetic */ class C67381 {
        static final /* synthetic */ int[] $SwitchMap$org$telegram$utils$proxy$ProxySettings$Type;

        static {
            int[] iArr = new int[Type.values().length];
            $SwitchMap$org$telegram$utils$proxy$ProxySettings$Type = iArr;
            try {
                iArr[Type.MTPROTO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$telegram$utils$proxy$ProxySettings$Type[Type.WEB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$telegram$utils$proxy$ProxySettings$Type[Type.SOCKS5.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public String getLink() {
        StringBuilder sb;
        String strEncodeMarkedWebProxySecret;
        int i = C67381.$SwitchMap$org$telegram$utils$proxy$ProxySettings$Type[this.type.ordinal()];
        if (i == 1) {
            sb = new StringBuilder("https://t.me/proxy?");
        } else if (i == 2) {
            sb = new StringBuilder("https://t.me/webproxy?");
        } else {
            sb = new StringBuilder("https://t.me/socks?");
        }
        try {
            sb.append("server=");
            sb.append(URLEncoder.encode(this.address, "UTF-8"));
            Type type = this.type;
            Type type2 = Type.WEB;
            if (type != type2) {
                sb.append("&port=");
                sb.append(this.port);
            }
            if (!TextUtils.isEmpty(this.user)) {
                sb.append("&user=");
                sb.append(URLEncoder.encode(this.user, "UTF-8"));
            }
            if (!TextUtils.isEmpty(this.password)) {
                sb.append("&pass=");
                sb.append(URLEncoder.encode(this.password, "UTF-8"));
            }
            if (!TextUtils.isEmpty(this.secret)) {
                if (this.type == type2 && hasWebProxyPath(this.address)) {
                    strEncodeMarkedWebProxySecret = encodeMarkedWebProxySecret(this.secret);
                } else {
                    strEncodeMarkedWebProxySecret = this.secret;
                }
                sb.append("&secret=");
                sb.append(URLEncoder.encode(strEncodeMarkedWebProxySecret, "UTF-8"));
            }
        } catch (UnsupportedEncodingException unused) {
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProxySettings)) {
            return false;
        }
        ProxySettings proxySettings = (ProxySettings) obj;
        return this.port == proxySettings.port && this.type == proxySettings.type && Objects.equals(this.address, proxySettings.address) && Objects.equals(this.user, proxySettings.user) && Objects.equals(this.password, proxySettings.password) && Objects.equals(this.secret, proxySettings.secret);
    }

    public int hashCode() {
        return Objects.hash(this.type, this.address, Integer.valueOf(this.port), this.user, this.password, this.secret);
    }

    public static Builder builder() {
        return new Builder();
    }

    public static ProxySettings fromSharedPreferences(SharedPreferences sharedPreferences) {
        Type type;
        String string = sharedPreferences.getString("proxy_ip", _UrlKt.FRAGMENT_ENCODE_SET);
        String string2 = sharedPreferences.getString("proxy_user", _UrlKt.FRAGMENT_ENCODE_SET);
        String string3 = sharedPreferences.getString("proxy_pass", _UrlKt.FRAGMENT_ENCODE_SET);
        String string4 = sharedPreferences.getString("proxy_secret", _UrlKt.FRAGMENT_ENCODE_SET);
        int i = sharedPreferences.getInt("proxy_port", 1080);
        if (TextUtils.isEmpty(string4)) {
            type = Type.SOCKS5;
        } else {
            type = Type.MTPROTO;
        }
        return builder().setAddress(string).setUser(string2).setPassword(string3).setSecret(string4).setPort(i).setType(intToType(sharedPreferences.getInt("proxy_type", typeToInt(type)))).build();
    }

    public void toSharedPreferences(SharedPreferences.Editor editor) {
        editor.putInt("proxy_type", typeToInt(this.type));
        editor.putString("proxy_ip", this.address);
        int i = C67381.$SwitchMap$org$telegram$utils$proxy$ProxySettings$Type[this.type.ordinal()];
        if (i == 1) {
            editor.putString("proxy_secret", this.secret);
            editor.putInt("proxy_port", this.port);
            editor.remove("proxy_pass");
            editor.remove("proxy_user");
            return;
        }
        if (i == 2) {
            editor.putString("proxy_secret", this.secret);
            editor.remove("proxy_port");
            editor.remove("proxy_pass");
            editor.remove("proxy_user");
            return;
        }
        if (i != 3) {
            return;
        }
        editor.putInt("proxy_port", this.port);
        editor.remove("proxy_secret");
        if (TextUtils.isEmpty(this.password)) {
            editor.remove("proxy_pass");
        } else {
            editor.putString("proxy_pass", this.password);
        }
        if (TextUtils.isEmpty(this.user)) {
            editor.remove("proxy_user");
        } else {
            editor.putString("proxy_user", this.user);
        }
    }

    public static ProxySettings fromUri(Uri uri) {
        String path;
        Type type;
        Type type2;
        int i;
        if (uri == null) {
            return null;
        }
        try {
            String scheme = uri.getScheme();
            if (scheme == null) {
                return null;
            }
            if (scheme.equalsIgnoreCase("http") || scheme.equalsIgnoreCase("https")) {
                String host = uri.getHost();
                if (host == null) {
                    return null;
                }
                String lowerCase = host.toLowerCase();
                if ((!lowerCase.equals("telegram.me") && !lowerCase.equals("t.me") && !lowerCase.equals("telegram.dog")) || (path = uri.getPath()) == null) {
                    return null;
                }
                if (path.startsWith("/socks")) {
                    type = Type.SOCKS5;
                } else if (path.startsWith("/proxy")) {
                    type = Type.MTPROTO;
                } else {
                    if (!path.startsWith("/webproxy")) {
                        return null;
                    }
                    type = Type.WEB;
                }
                type2 = type;
            } else {
                if (!scheme.equalsIgnoreCase("tg")) {
                    return null;
                }
                String string = uri.toString();
                if (string.startsWith("tg://socks") || string.startsWith("tg:socks")) {
                    type2 = Type.SOCKS5;
                } else if (string.startsWith("tg://proxy") || string.startsWith("tg:proxy")) {
                    type2 = Type.MTPROTO;
                } else {
                    if (!string.startsWith("tg://webproxy") && !string.startsWith("tg:webproxy")) {
                        return null;
                    }
                    type2 = Type.WEB;
                }
                int iIndexOf = string.indexOf(63);
                if (iIndexOf < 0) {
                    return null;
                }
                uri = Uri.parse("tg://telegram.org/".concat(string.substring(iIndexOf)));
            }
            String queryParameter = uri.getQueryParameter("server");
            if (queryParameter == null) {
                queryParameter = uri.getQueryParameter("host");
            }
            if (type2 != Type.WEB && AndroidUtilities.checkHostForPunycode(queryParameter)) {
                queryParameter = IDN.toASCII(queryParameter, 1);
            }
            String queryParameter2 = uri.getQueryParameter("port");
            if (TextUtils.isEmpty(queryParameter2)) {
                i = 0;
            } else {
                try {
                    i = Integer.parseInt(queryParameter2);
                } catch (NumberFormatException unused) {
                    i = 0;
                }
            }
            String queryParameter3 = uri.getQueryParameter("secret");
            Type type3 = Type.WEB;
            if (type2 == type3) {
                if (hasWebProxyPath(queryParameter)) {
                    queryParameter3 = decodeMarkedWebProxySecret(queryParameter3);
                    if (queryParameter3 == null) {
                        return null;
                    }
                } else if (!isValidWebProxySecret(queryParameter3)) {
                    return null;
                }
            }
            ProxySettings proxySettingsBuild = builder().setType(type2).setAddress(queryParameter).setPort(i).setUser(uri.getQueryParameter("user")).setPassword(uri.getQueryParameter("pass")).setSecret(queryParameter3).build();
            if (type2 == type3) {
                if (!proxySettingsBuild.isValid()) {
                    return null;
                }
            }
            return proxySettingsBuild;
        } catch (Exception unused2) {
            return null;
        }
    }

    public static final class Builder {
        private String address;
        private String password;
        private int port;
        private String secret;
        private Type type;
        private String user;

        private Builder() {
            this.type = Type.SOCKS5;
            this.address = _UrlKt.FRAGMENT_ENCODE_SET;
            this.user = _UrlKt.FRAGMENT_ENCODE_SET;
            this.password = _UrlKt.FRAGMENT_ENCODE_SET;
            this.secret = _UrlKt.FRAGMENT_ENCODE_SET;
        }

        public Builder setType(Type type) {
            if (type == null) {
                type = Type.SOCKS5;
            }
            this.type = type;
            return this;
        }

        public Builder setAddress(String str) {
            if (str == null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            this.address = str;
            return this;
        }

        public Builder setPort(int i) {
            this.port = i;
            return this;
        }

        public Builder setUser(String str) {
            if (str == null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            this.user = str;
            return this;
        }

        public Builder setPassword(String str) {
            if (str == null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            this.password = str;
            return this;
        }

        public Builder setSecret(String str) {
            if (str == null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            this.secret = str;
            return this;
        }

        public ProxySettings build() {
            if (this.type == Type.WEB) {
                String strNormalizeWebAddress = ProxySettings.normalizeWebAddress(this.address);
                this.address = strNormalizeWebAddress;
                boolean zHasWebProxyPath = ProxySettings.hasWebProxyPath(strNormalizeWebAddress);
                String str = this.secret;
                if (zHasWebProxyPath) {
                    String strDecodeMarkedWebProxySecret = ProxySettings.decodeMarkedWebProxySecret(str);
                    if (strDecodeMarkedWebProxySecret == null) {
                        strDecodeMarkedWebProxySecret = this.secret.toLowerCase(Locale.US);
                    }
                    this.secret = strDecodeMarkedWebProxySecret;
                } else {
                    this.secret = str.toLowerCase(Locale.US);
                }
            }
            return new ProxySettings(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String normalizeWebAddress(String str) {
        if (TextUtils.isEmpty(str)) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        int iIndexOf = str.indexOf(47);
        String strSubstring = iIndexOf >= 0 ? str.substring(0, iIndexOf) : str;
        String strSubstring2 = iIndexOf >= 0 ? str.substring(iIndexOf + 1) : null;
        if (TextUtils.isEmpty(strSubstring) || strSubstring.indexOf(58) >= 0 || strSubstring.indexOf(63) >= 0 || strSubstring.indexOf(35) >= 0) {
            return str;
        }
        if (strSubstring2 != null && !isValidWebProxyPath(strSubstring2)) {
            return str;
        }
        try {
            String lowerCase = IDN.toASCII(strSubstring, 3).toLowerCase(Locale.US);
            if (strSubstring2 == null) {
                return lowerCase;
            }
            return lowerCase + '/' + strSubstring2;
        } catch (IllegalArgumentException unused) {
            return str;
        }
    }

    private static boolean isValidWebAddress(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        int iIndexOf = str.indexOf(47);
        String strSubstring = iIndexOf >= 0 ? str.substring(0, iIndexOf) : str;
        String strSubstring2 = iIndexOf >= 0 ? str.substring(iIndexOf + 1) : null;
        if (!TextUtils.isEmpty(strSubstring) && strSubstring.indexOf(58) < 0 && strSubstring.indexOf(63) < 0 && strSubstring.indexOf(35) < 0 && (strSubstring2 == null || isValidWebProxyPath(strSubstring2))) {
            try {
                return strSubstring.equals(IDN.toASCII(strSubstring, 3).toLowerCase(Locale.US));
            } catch (IllegalArgumentException unused) {
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean hasWebProxyPath(String str) {
        return str != null && str.indexOf(47) >= 0;
    }

    private static boolean isValidWebProxyPath(String str) {
        return str.length() <= 128 && WEB_PROXY_PATH_PATTERN.matcher(str).matches();
    }

    private static boolean isValidWebProxySecret(String str) {
        if (str == null) {
            return false;
        }
        if (str.length() == 32) {
            return isHex(str, 0);
        }
        return str.length() == 34 && str.regionMatches(true, 0, "dd", 0, 2) && isHex(str, 2);
    }

    private static boolean isHex(String str, int i) {
        while (i < str.length()) {
            if (Character.digit(str.charAt(i), 16) < 0) {
                return false;
            }
            i++;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String decodeMarkedWebProxySecret(String str) {
        if (!TextUtils.isEmpty(str) && WEB_PROXY_MARKED_SECRET_PATTERN.matcher(str).matches()) {
            try {
                byte[] bArrDecode = Base64.decode(str, 11);
                if (bArrDecode.length >= 17 && (bArrDecode[0] & UByte.MAX_VALUE) == 112) {
                    String strBytesToHex = bytesToHex(bArrDecode, 1);
                    if (!isValidWebProxySecret(strBytesToHex)) {
                        return null;
                    }
                    if (Base64.encodeToString(bArrDecode, 11).equals(str)) {
                        return strBytesToHex;
                    }
                }
            } catch (IllegalArgumentException unused) {
            }
        }
        return null;
    }

    private static String encodeMarkedWebProxySecret(String str) {
        if (!isValidWebProxySecret(str)) {
            return str;
        }
        byte[] bArrHexToBytes = hexToBytes(str);
        byte[] bArr = new byte[bArrHexToBytes.length + 1];
        bArr[0] = 112;
        System.arraycopy(bArrHexToBytes, 0, bArr, 1, bArrHexToBytes.length);
        return Base64.encodeToString(bArr, 11);
    }

    private static byte[] hexToBytes(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) (Character.digit(str.charAt(i2 + 1), 16) | (Character.digit(str.charAt(i2), 16) << 4));
        }
        return bArr;
    }

    private static String bytesToHex(byte[] bArr, int i) {
        char[] cArr = new char[(bArr.length - i) * 2];
        char[] charArray = "0123456789abcdef".toCharArray();
        for (int i2 = i; i2 < bArr.length; i2++) {
            byte b2 = bArr[i2];
            int i3 = (i2 - i) * 2;
            cArr[i3] = charArray[(b2 & UByte.MAX_VALUE) >>> 4];
            cArr[i3 + 1] = charArray[b2 & 15];
        }
        return new String(cArr);
    }

    public static int typeToInt(Type type) {
        int i = C67381.$SwitchMap$org$telegram$utils$proxy$ProxySettings$Type[type.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                return 0;
            }
        }
        return i2;
    }

    public static Type intToType(int i) {
        if (i == 0) {
            return Type.SOCKS5;
        }
        if (i == 1) {
            return Type.MTPROTO;
        }
        if (i == 2) {
            return Type.WEB;
        }
        return Type.SOCKS5;
    }
}
