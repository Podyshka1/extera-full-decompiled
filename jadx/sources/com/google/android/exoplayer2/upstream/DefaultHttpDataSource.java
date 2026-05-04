package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSource;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Predicate;
import com.google.common.collect.ForwardingMap;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Sets;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes4.dex */
public class DefaultHttpDataSource extends BaseDataSource implements HttpDataSource {
    private final boolean allowCrossProtocolRedirects;
    private long bytesRead;
    private long bytesToRead;
    private final int connectTimeoutMillis;
    private HttpURLConnection connection;
    private Predicate contentTypePredicate;
    private DataSpec dataSpec;
    private final HttpDataSource.RequestProperties defaultRequestProperties;
    private InputStream inputStream;
    private final boolean keepPostFor302Redirects;
    private boolean opened;
    private final int readTimeoutMillis;
    private final HttpDataSource.RequestProperties requestProperties;
    private int responseCode;
    private final String userAgent;

    public static final class Factory implements DataSource.Factory {
        private boolean allowCrossProtocolRedirects;
        private Predicate contentTypePredicate;
        private boolean keepPostFor302Redirects;
        private TransferListener transferListener;
        private String userAgent;
        private final HttpDataSource.RequestProperties defaultRequestProperties = new HttpDataSource.RequestProperties();
        private int connectTimeoutMs = 8000;
        private int readTimeoutMs = 8000;

        public Factory setUserAgent(String str) {
            this.userAgent = str;
            return this;
        }

        @Override // com.google.android.exoplayer2.upstream.DataSource.Factory
        public DefaultHttpDataSource createDataSource() {
            DefaultHttpDataSource defaultHttpDataSource = new DefaultHttpDataSource(this.userAgent, this.connectTimeoutMs, this.readTimeoutMs, this.allowCrossProtocolRedirects, this.defaultRequestProperties, this.contentTypePredicate, this.keepPostFor302Redirects);
            TransferListener transferListener = this.transferListener;
            if (transferListener != null) {
                defaultHttpDataSource.addTransferListener(transferListener);
            }
            return defaultHttpDataSource;
        }
    }

    public DefaultHttpDataSource(String str, int i, int i2, boolean z, HttpDataSource.RequestProperties requestProperties) {
        this(str, i, i2, z, requestProperties, null, false);
    }

    private DefaultHttpDataSource(String str, int i, int i2, boolean z, HttpDataSource.RequestProperties requestProperties, Predicate predicate, boolean z2) {
        super(true);
        this.userAgent = str;
        this.connectTimeoutMillis = i;
        this.readTimeoutMillis = i2;
        this.allowCrossProtocolRedirects = z;
        this.defaultRequestProperties = requestProperties;
        this.contentTypePredicate = predicate;
        this.requestProperties = new HttpDataSource.RequestProperties();
        this.keepPostFor302Redirects = z2;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Uri getUri() {
        HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.exoplayer2.upstream.BaseDataSource, com.google.android.exoplayer2.upstream.DataSource
    public Map getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection == null) {
            return ImmutableMap.m489of();
        }
        return new NullFilteringHeadersMap(httpURLConnection.getHeaderFields());
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        byte[] byteArray;
        this.dataSpec = dataSpec;
        long j = 0;
        this.bytesRead = 0L;
        this.bytesToRead = 0L;
        transferInitializing(dataSpec);
        try {
            HttpURLConnection httpURLConnectionMakeConnection = makeConnection(dataSpec);
            this.connection = httpURLConnectionMakeConnection;
            this.responseCode = httpURLConnectionMakeConnection.getResponseCode();
            String responseMessage = httpURLConnectionMakeConnection.getResponseMessage();
            int i = this.responseCode;
            if (i < 200 || i > 299) {
                Map<String, List<String>> headerFields = httpURLConnectionMakeConnection.getHeaderFields();
                if (this.responseCode == 416) {
                    if (dataSpec.position == HttpUtil.getDocumentSize(httpURLConnectionMakeConnection.getHeaderField("Content-Range"))) {
                        this.opened = true;
                        transferStarted(dataSpec);
                        long j2 = dataSpec.length;
                        if (j2 != -1) {
                            return j2;
                        }
                        return 0L;
                    }
                }
                InputStream errorStream = httpURLConnectionMakeConnection.getErrorStream();
                try {
                    byteArray = errorStream != null ? Util.toByteArray(errorStream) : Util.EMPTY_BYTE_ARRAY;
                } catch (IOException unused) {
                    byteArray = Util.EMPTY_BYTE_ARRAY;
                }
                byte[] bArr = byteArray;
                closeConnectionQuietly();
                throw new HttpDataSource.InvalidResponseCodeException(this.responseCode, responseMessage, this.responseCode == 416 ? new DataSourceException(2008) : null, headerFields, dataSpec, bArr);
            }
            String contentType = httpURLConnectionMakeConnection.getContentType();
            Predicate predicate = this.contentTypePredicate;
            if (predicate != null && !predicate.apply(contentType)) {
                closeConnectionQuietly();
                throw new HttpDataSource.InvalidContentTypeException(contentType, dataSpec);
            }
            if (this.responseCode == 200) {
                long j3 = dataSpec.position;
                if (j3 != 0) {
                    j = j3;
                }
            }
            boolean zIsCompressed = isCompressed(httpURLConnectionMakeConnection);
            if (!zIsCompressed) {
                long j4 = dataSpec.length;
                if (j4 != -1) {
                    this.bytesToRead = j4;
                } else {
                    long contentLength = HttpUtil.getContentLength(httpURLConnectionMakeConnection.getHeaderField("Content-Length"), httpURLConnectionMakeConnection.getHeaderField("Content-Range"));
                    this.bytesToRead = contentLength != -1 ? contentLength - j : -1L;
                }
            } else {
                this.bytesToRead = dataSpec.length;
            }
            try {
                this.inputStream = httpURLConnectionMakeConnection.getInputStream();
                if (zIsCompressed) {
                    this.inputStream = new GZIPInputStream(this.inputStream);
                }
                this.opened = true;
                transferStarted(dataSpec);
                try {
                    skipFully(j, dataSpec);
                    return this.bytesToRead;
                } catch (IOException e) {
                    closeConnectionQuietly();
                    if (e instanceof HttpDataSource.HttpDataSourceException) {
                        throw ((HttpDataSource.HttpDataSourceException) e);
                    }
                    throw new HttpDataSource.HttpDataSourceException(e, dataSpec, 2000, 1);
                }
            } catch (IOException e2) {
                closeConnectionQuietly();
                throw new HttpDataSource.HttpDataSourceException(e2, dataSpec, 2000, 1);
            }
        } catch (IOException e3) {
            closeConnectionQuietly();
            throw HttpDataSource.HttpDataSourceException.createForIOException(e3, dataSpec, 1);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws HttpDataSource.HttpDataSourceException {
        try {
            return readInternal(bArr, i, i2);
        } catch (IOException e) {
            throw HttpDataSource.HttpDataSourceException.createForIOException(e, (DataSpec) Util.castNonNull(this.dataSpec), 2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        try {
            InputStream inputStream = this.inputStream;
            if (inputStream != null) {
                long j = this.bytesToRead;
                long j2 = -1;
                if (j != -1) {
                    j2 = j - this.bytesRead;
                }
                maybeTerminateInputStream(this.connection, j2);
                try {
                    inputStream.close();
                } catch (IOException e) {
                    throw new HttpDataSource.HttpDataSourceException(e, (DataSpec) Util.castNonNull(this.dataSpec), 2000, 3);
                }
            }
        } finally {
            this.inputStream = null;
            closeConnectionQuietly();
            if (this.opened) {
                this.opened = false;
                transferEnded();
            }
        }
    }

    private HttpURLConnection makeConnection(DataSpec dataSpec) throws IOException {
        HttpURLConnection httpURLConnectionMakeConnection;
        URL url = new URL(dataSpec.uri.toString());
        int i = dataSpec.httpMethod;
        byte[] bArr = dataSpec.httpBody;
        long j = dataSpec.position;
        long j2 = dataSpec.length;
        int i2 = 1;
        boolean zIsFlagSet = dataSpec.isFlagSet(1);
        if (!this.allowCrossProtocolRedirects && !this.keepPostFor302Redirects) {
            return makeConnection(url, i, bArr, j, j2, zIsFlagSet, true, dataSpec.httpRequestHeaders);
        }
        int i3 = 0;
        while (true) {
            int i4 = i3 + 1;
            if (i3 <= 20) {
                httpURLConnectionMakeConnection = makeConnection(url, i, bArr, j, j2, zIsFlagSet, false, dataSpec.httpRequestHeaders);
                int responseCode = httpURLConnectionMakeConnection.getResponseCode();
                String headerField = httpURLConnectionMakeConnection.getHeaderField("Location");
                if ((i == i2 || i == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                    httpURLConnectionMakeConnection.disconnect();
                    url = handleRedirect(url, headerField, dataSpec);
                } else {
                    if (i != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                        break;
                    }
                    httpURLConnectionMakeConnection.disconnect();
                    if (!this.keepPostFor302Redirects || responseCode != 302) {
                        bArr = null;
                        i = 1;
                    }
                    url = handleRedirect(url, headerField, dataSpec);
                }
                i3 = i4;
                i2 = 1;
            } else {
                throw new HttpDataSource.HttpDataSourceException(new NoRouteToHostException("Too many redirects: " + i4), dataSpec, 2001, 1);
            }
        }
        return httpURLConnectionMakeConnection;
    }

    private HttpURLConnection makeConnection(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, Map map) throws IOException {
        HttpURLConnection httpURLConnectionOpenConnection = openConnection(url);
        httpURLConnectionOpenConnection.setConnectTimeout(this.connectTimeoutMillis);
        httpURLConnectionOpenConnection.setReadTimeout(this.readTimeoutMillis);
        HashMap map2 = new HashMap();
        HttpDataSource.RequestProperties requestProperties = this.defaultRequestProperties;
        if (requestProperties != null) {
            map2.putAll(requestProperties.getSnapshot());
        }
        map2.putAll(this.requestProperties.getSnapshot());
        map2.putAll(map);
        for (Map.Entry entry : map2.entrySet()) {
            httpURLConnectionOpenConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String strBuildRangeRequestHeader = HttpUtil.buildRangeRequestHeader(j, j2);
        if (strBuildRangeRequestHeader != null) {
            httpURLConnectionOpenConnection.setRequestProperty("Range", strBuildRangeRequestHeader);
        }
        String str = this.userAgent;
        if (str != null) {
            httpURLConnectionOpenConnection.setRequestProperty("User-Agent", str);
        }
        httpURLConnectionOpenConnection.setRequestProperty("Accept-Encoding", z ? "gzip" : "identity");
        httpURLConnectionOpenConnection.setInstanceFollowRedirects(z2);
        httpURLConnectionOpenConnection.setDoOutput(bArr != null);
        httpURLConnectionOpenConnection.setRequestMethod(DataSpec.getStringForHttpMethod(i));
        if (bArr != null) {
            httpURLConnectionOpenConnection.setFixedLengthStreamingMode(bArr.length);
            httpURLConnectionOpenConnection.connect();
            OutputStream outputStream = httpURLConnectionOpenConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
            return httpURLConnectionOpenConnection;
        }
        httpURLConnectionOpenConnection.connect();
        return httpURLConnectionOpenConnection;
    }

    HttpURLConnection openConnection(URL url) {
        return (HttpURLConnection) url.openConnection();
    }

    private URL handleRedirect(URL url, String str, DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        if (str == null) {
            throw new HttpDataSource.HttpDataSourceException("Null location redirect", dataSpec, 2001, 1);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !"http".equals(protocol)) {
                throw new HttpDataSource.HttpDataSourceException("Unsupported protocol redirect: " + protocol, dataSpec, 2001, 1);
            }
            if (this.allowCrossProtocolRedirects || protocol.equals(url.getProtocol())) {
                return url2;
            }
            throw new HttpDataSource.HttpDataSourceException("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", dataSpec, 2001, 1);
        } catch (MalformedURLException e) {
            throw new HttpDataSource.HttpDataSourceException(e, dataSpec, 2001, 1);
        }
    }

    private void skipFully(long j, DataSpec dataSpec) throws IOException {
        if (j == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j > 0) {
            int i = ((InputStream) Util.castNonNull(this.inputStream)).read(bArr, 0, (int) Math.min(j, 4096));
            if (Thread.currentThread().isInterrupted()) {
                throw new HttpDataSource.HttpDataSourceException(new InterruptedIOException(), dataSpec, 2000, 1);
            }
            if (i == -1) {
                throw new HttpDataSource.HttpDataSourceException(dataSpec, 2008, 1);
            }
            j -= (long) i;
            bytesTransferred(i);
        }
    }

    private int readInternal(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.bytesToRead;
        if (j != -1) {
            long j2 = j - this.bytesRead;
            if (j2 == 0) {
                return -1;
            }
            i2 = (int) Math.min(i2, j2);
        }
        int i3 = ((InputStream) Util.castNonNull(this.inputStream)).read(bArr, i, i2);
        if (i3 == -1) {
            return -1;
        }
        this.bytesRead += (long) i3;
        bytesTransferred(i3);
        return i3;
    }

    private static void maybeTerminateInputStream(HttpURLConnection httpURLConnection, long j) {
        int i;
        if (httpURLConnection == null || (i = Util.SDK_INT) < 19 || i > 20) {
            return;
        }
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            if (j == -1) {
                if (inputStream.read() == -1) {
                    return;
                }
            } else if (j <= 2048) {
                return;
            }
            String name = inputStream.getClass().getName();
            if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                Method declaredMethod = ((Class) Assertions.checkNotNull(inputStream.getClass().getSuperclass())).getDeclaredMethod("unexpectedEndOfInput", null);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(inputStream, null);
            }
        } catch (Exception unused) {
        }
    }

    private void closeConnectionQuietly() {
        HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                Log.m326e("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.connection = null;
        }
    }

    private static boolean isCompressed(HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField("Content-Encoding"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class NullFilteringHeadersMap extends ForwardingMap {
        private final Map headers;

        public NullFilteringHeadersMap(Map map) {
            this.headers = map;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingObject
        public Map delegate() {
            return this.headers;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public boolean containsKey(Object obj) {
            return obj != null && super.containsKey(obj);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public List get(Object obj) {
            if (obj == null) {
                return null;
            }
            return (List) super.get(obj);
        }

        public static /* synthetic */ boolean $r8$lambda$I7XgKgZNhZQeoxBA3IERa70tPcA(String str) {
            return str != null;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public Set keySet() {
            return Sets.filter(super.keySet(), new Predicate() { // from class: com.google.android.exoplayer2.upstream.DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    return DefaultHttpDataSource.NullFilteringHeadersMap.$r8$lambda$I7XgKgZNhZQeoxBA3IERa70tPcA((String) obj);
                }
            });
        }

        public static /* synthetic */ boolean $r8$lambda$TAiAjrah6b1khuI1Ns_F5kZ9ayY(Map.Entry entry) {
            return entry.getKey() != null;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public Set entrySet() {
            return Sets.filter(super.entrySet(), new Predicate() { // from class: com.google.android.exoplayer2.upstream.DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda1
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    return DefaultHttpDataSource.NullFilteringHeadersMap.$r8$lambda$TAiAjrah6b1khuI1Ns_F5kZ9ayY((Map.Entry) obj);
                }
            });
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public int size() {
            return super.size() - (super.containsKey(null) ? 1 : 0);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public boolean isEmpty() {
            return super.isEmpty() || (super.size() == 1 && super.containsKey(null));
        }

        @Override // java.util.Map
        public boolean containsValue(Object obj) {
            return super.standardContainsValue(obj);
        }

        @Override // java.util.Map
        public boolean equals(Object obj) {
            return obj != null && super.standardEquals(obj);
        }

        @Override // java.util.Map
        public int hashCode() {
            return super.standardHashCode();
        }
    }
}
