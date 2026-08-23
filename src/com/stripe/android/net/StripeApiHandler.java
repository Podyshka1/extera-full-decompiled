package com.stripe.android.net;

import com.stripe.android.exception.APIConnectionException;
import com.stripe.android.exception.APIException;
import com.stripe.android.exception.AuthenticationException;
import com.stripe.android.exception.CardException;
import com.stripe.android.exception.InvalidRequestException;
import com.stripe.android.exception.PermissionException;
import com.stripe.android.exception.RateLimitException;
import com.stripe.android.model.Token;
import com.stripe.android.net.ErrorParser;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;
import java.security.Security;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.internal.url._UrlKt;
import org.json.JSONException;
import org.json.JSONObject;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes5.dex */
public abstract class StripeApiHandler {
    private static final SSLSocketFactory SSL_SOCKET_FACTORY = new StripeSSLSocketFactory();

    public static Token createToken(Map map, RequestOptions requestOptions) {
        return requestToken("POST", getApiUrl(), map, requestOptions);
    }

    static String createQuery(Map map) {
        StringBuilder sb = new StringBuilder();
        for (Parameter parameter : flattenParams(map)) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(urlEncodePair(parameter.key, parameter.value));
        }
        return sb.toString();
    }

    static Map getHeaders(RequestOptions requestOptions) {
        HashMap map = new HashMap();
        String apiVersion = requestOptions.getApiVersion();
        map.put("Accept-Charset", "UTF-8");
        map.put("Accept", "application/json");
        map.put("User-Agent", String.format("Stripe/v1 JavaBindings/%s", "3.5.0"));
        map.put("Authorization", String.format("Bearer %s", requestOptions.getPublishableApiKey()));
        String[] strArr = {"os.name", "os.version", "os.arch", "java.version", "java.vendor", "java.vm.version", "java.vm.vendor"};
        HashMap map2 = new HashMap();
        for (int i = 0; i < 7; i++) {
            String str = strArr[i];
            map2.put(str, System.getProperty(str));
        }
        map2.put("bindings.version", "3.5.0");
        map2.put("lang", "Java");
        map2.put("publisher", "Stripe");
        map.put("X-Stripe-Client-User-Agent", new JSONObject(map2).toString());
        if (apiVersion != null) {
            map.put("Stripe-Version", apiVersion);
        }
        if (requestOptions.getIdempotencyKey() != null) {
            map.put("Idempotency-Key", requestOptions.getIdempotencyKey());
        }
        return map;
    }

    static String getApiUrl() {
        return String.format("%s/v1/%s", "https://api.stripe.com", "tokens");
    }

    private static String formatURL(String str, String str2) {
        if (str2 == null || str2.isEmpty()) {
            return str;
        }
        return String.format("%s%s%s", str, str.contains("?") ? "&" : "?", str2);
    }

    private static HttpURLConnection createGetConnection(String str, String str2, RequestOptions requestOptions) throws ProtocolException {
        HttpURLConnection httpURLConnectionCreateStripeConnection = createStripeConnection(formatURL(str, str2), requestOptions);
        httpURLConnectionCreateStripeConnection.setRequestMethod("GET");
        return httpURLConnectionCreateStripeConnection;
    }

    private static HttpURLConnection createPostConnection(String str, String str2, RequestOptions requestOptions) throws Throwable {
        OutputStream outputStream;
        HttpURLConnection httpURLConnectionCreateStripeConnection = createStripeConnection(str, requestOptions);
        httpURLConnectionCreateStripeConnection.setDoOutput(true);
        httpURLConnectionCreateStripeConnection.setRequestMethod("POST");
        httpURLConnectionCreateStripeConnection.setRequestProperty("Content-Type", String.format("application/x-www-form-urlencoded;charset=%s", "UTF-8"));
        try {
            outputStream = httpURLConnectionCreateStripeConnection.getOutputStream();
        } catch (Throwable th) {
            th = th;
            outputStream = null;
        }
        try {
            outputStream.write(str2.getBytes("UTF-8"));
            outputStream.close();
            return httpURLConnectionCreateStripeConnection;
        } catch (Throwable th2) {
            th = th2;
            if (outputStream != null) {
                outputStream.close();
            }
            throw th;
        }
    }

    private static HttpURLConnection createStripeConnection(String str, RequestOptions requestOptions) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(80000);
        httpURLConnection.setUseCaches(false);
        for (Map.Entry entry : getHeaders(requestOptions).entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        if (httpURLConnection instanceof HttpsURLConnection) {
            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(SSL_SOCKET_FACTORY);
        }
        return httpURLConnection;
    }

    private static Token requestToken(String str, String str2, Map map, RequestOptions requestOptions) throws AuthenticationException {
        String property;
        if (requestOptions == null) {
            return null;
        }
        Boolean bool = Boolean.TRUE;
        try {
            property = Security.getProperty("networkaddress.cache.ttl");
        } catch (SecurityException unused) {
            property = null;
        }
        try {
            Security.setProperty("networkaddress.cache.ttl", MVEL.VERSION_SUB);
        } catch (SecurityException unused2) {
            bool = Boolean.FALSE;
        }
        if (requestOptions.getPublishableApiKey().trim().isEmpty()) {
            throw new AuthenticationException("No API key provided. (HINT: set your API key using 'Stripe.apiKey = <API-KEY>'. You can generate API keys from the Stripe web interface. See https://stripe.com/api for details or email support@stripe.com if you have questions.", null, 0);
        }
        try {
            StripeResponse stripeResponse = getStripeResponse(str, str2, map, requestOptions);
            int responseCode = stripeResponse.getResponseCode();
            String responseBody = stripeResponse.getResponseBody();
            Map responseHeaders = stripeResponse.getResponseHeaders();
            List list = responseHeaders == null ? null : (List) responseHeaders.get("Request-Id");
            String str3 = (list == null || list.size() <= 0) ? null : (String) list.get(0);
            if (responseCode < 200 || responseCode >= 300) {
                handleAPIError(responseBody, responseCode, str3);
            }
            Token token = TokenParser.parseToken(responseBody);
            if (bool.booleanValue()) {
                if (property == null) {
                    Security.setProperty("networkaddress.cache.ttl", "-1");
                } else {
                    Security.setProperty("networkaddress.cache.ttl", property);
                }
            }
            return token;
        } catch (JSONException unused3) {
            if (bool.booleanValue()) {
                if (property == null) {
                    Security.setProperty("networkaddress.cache.ttl", "-1");
                } else {
                    Security.setProperty("networkaddress.cache.ttl", property);
                }
            }
            return null;
        } catch (Throwable th) {
            if (bool.booleanValue()) {
                if (property == null) {
                    Security.setProperty("networkaddress.cache.ttl", "-1");
                } else {
                    Security.setProperty("networkaddress.cache.ttl", property);
                }
            }
            throw th;
        }
    }

    private static StripeResponse getStripeResponse(String str, String str2, Map map, RequestOptions requestOptions) throws InvalidRequestException {
        try {
            return makeURLConnectionRequest(str, str2, createQuery(map), requestOptions);
        } catch (UnsupportedEncodingException e) {
            throw new InvalidRequestException("Unable to encode parameters to UTF-8. Please contact support@stripe.com for assistance.", null, null, 0, e);
        }
    }

    private static List flattenParams(Map map) {
        return flattenParamsMap(map, null);
    }

    private static List flattenParamsList(List list, String str) {
        LinkedList linkedList = new LinkedList();
        Iterator it = list.iterator();
        String str2 = String.format("%s[]", str);
        if (list.isEmpty()) {
            linkedList.add(new Parameter(str, _UrlKt.FRAGMENT_ENCODE_SET));
            return linkedList;
        }
        while (it.hasNext()) {
            linkedList.addAll(flattenParamsValue(it.next(), str2));
        }
        return linkedList;
    }

    private static List flattenParamsMap(Map map, String str) {
        LinkedList linkedList = new LinkedList();
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                String str2 = (String) entry.getKey();
                Object value = entry.getValue();
                if (str != null) {
                    str2 = String.format("%s[%s]", str, str2);
                }
                linkedList.addAll(flattenParamsValue(value, str2));
            }
        }
        return linkedList;
    }

    private static List flattenParamsValue(Object obj, String str) throws InvalidRequestException {
        if (obj instanceof Map) {
            return flattenParamsMap((Map) obj, str);
        }
        if (obj instanceof List) {
            return flattenParamsList((List) obj, str);
        }
        if (_UrlKt.FRAGMENT_ENCODE_SET.equals(obj)) {
            throw new InvalidRequestException("You cannot set '" + str + "' to an empty string. We interpret empty strings as null in requests. You may set '" + str + "' to null to delete the property.", str, null, 0, null);
        }
        if (obj == null) {
            LinkedList linkedList = new LinkedList();
            linkedList.add(new Parameter(str, _UrlKt.FRAGMENT_ENCODE_SET));
            return linkedList;
        }
        LinkedList linkedList2 = new LinkedList();
        linkedList2.add(new Parameter(str, obj.toString()));
        return linkedList2;
    }

    private static void handleAPIError(String str, int i, String str2) throws CardException, AuthenticationException, InvalidRequestException, APIException {
        ErrorParser.StripeError error = ErrorParser.parseError(str);
        if (i != 429) {
            switch (i) {
                case 400:
                    throw new InvalidRequestException(error.message, error.param, str2, Integer.valueOf(i), null);
                case 401:
                    throw new AuthenticationException(error.message, str2, Integer.valueOf(i));
                case 402:
                    throw new CardException(error.message, str2, error.code, error.param, error.decline_code, error.charge, Integer.valueOf(i), null);
                case 403:
                    throw new PermissionException(error.message, str2, Integer.valueOf(i));
                case 404:
                    throw new InvalidRequestException(error.message, error.param, str2, Integer.valueOf(i), null);
                default:
                    throw new APIException(error.message, str2, Integer.valueOf(i), null);
            }
        }
        throw new RateLimitException(error.message, error.param, str2, Integer.valueOf(i), null);
    }

    private static String urlEncodePair(String str, String str2) {
        return String.format("%s=%s", urlEncode(str), urlEncode(str2));
    }

    private static String urlEncode(String str) {
        if (str == null) {
            return null;
        }
        return URLEncoder.encode(str, "UTF-8");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0045 A[Catch: all -> 0x001f, IOException -> 0x0021, TryCatch #0 {IOException -> 0x0021, blocks: (B:3:0x0003, B:7:0x0011, B:9:0x0019, B:18:0x0030, B:22:0x003c, B:24:0x004d, B:23:0x0045, B:27:0x005a, B:28:0x0069, B:15:0x0023, B:17:0x002b), top: B:34:0x0003, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static StripeResponse makeURLConnectionRequest(String str, String str2, String str3, RequestOptions requestOptions) {
        HttpURLConnection httpURLConnectionCreateGetConnection;
        HttpURLConnection httpURLConnection;
        int responseCode;
        String responseBody;
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                int iHashCode = str.hashCode();
                if (iHashCode == 70454) {
                    if (str.equals("GET")) {
                        httpURLConnectionCreateGetConnection = createGetConnection(str2, str3, requestOptions);
                        httpURLConnection = httpURLConnectionCreateGetConnection;
                        responseCode = httpURLConnection.getResponseCode();
                        if (responseCode < 200) {
                            responseBody = getResponseBody(httpURLConnection.getErrorStream());
                        }
                        StripeResponse stripeResponse = new StripeResponse(responseCode, responseBody, httpURLConnection.getHeaderFields());
                        httpURLConnection.disconnect();
                        return stripeResponse;
                    }
                    throw new APIConnectionException(String.format("Unrecognized HTTP method %s. This indicates a bug in the Stripe bindings. Please contact support@stripe.com for assistance.", str));
                }
                if (iHashCode == 2461856 && str.equals("POST")) {
                    httpURLConnectionCreateGetConnection = createPostConnection(str2, str3, requestOptions);
                    httpURLConnection = httpURLConnectionCreateGetConnection;
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode < 200 && responseCode < 300) {
                        responseBody = getResponseBody(httpURLConnection.getInputStream());
                    } else {
                        responseBody = getResponseBody(httpURLConnection.getErrorStream());
                    }
                    StripeResponse stripeResponse2 = new StripeResponse(responseCode, responseBody, httpURLConnection.getHeaderFields());
                    httpURLConnection.disconnect();
                    return stripeResponse2;
                }
                throw new APIConnectionException(String.format("Unrecognized HTTP method %s. This indicates a bug in the Stripe bindings. Please contact support@stripe.com for assistance.", str));
            } catch (IOException e) {
                throw new APIConnectionException(String.format("IOException during API request to Stripe (%s): %s Please check your internet connection and try again. If this problem persists, you should check Stripe's service status at https://twitter.com/stripestatus, or let us know at support@stripe.com.", getApiUrl(), e.getMessage()), e);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
    }

    private static String getResponseBody(InputStream inputStream) throws IOException {
        String next = new Scanner(inputStream, "UTF-8").useDelimiter("\\A").next();
        inputStream.close();
        return next;
    }

    private static final class Parameter {
        public final String key;
        public final String value;

        public Parameter(String str, String str2) {
            this.key = str;
            this.value = str2;
        }
    }
}
