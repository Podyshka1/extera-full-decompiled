package com.exteragram.messenger.ai.network;

import android.content.SharedPreferences;
import com.exteragram.messenger.utils.network.ExteraHttpClient;
import com.exteragram.messenger.utils.network.RemoteUtils;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.UByte;
import okhttp3.Dns;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

/* JADX INFO: loaded from: classes4.dex */
public class ProxyDns implements Dns {
    public static final Dns INSTANCE = new ProxyDns();
    private volatile String cachedUrl;
    private SharedPreferences.OnSharedPreferenceChangeListener changeListener;
    private final OkHttpClient client;
    private volatile boolean listenerInitialized = false;

    private ProxyDns() {
        OkHttpClient.Builder builderNewBuilder = ExteraHttpClient.INSTANCE.getClient().newBuilder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.client = builderNewBuilder.connectTimeout(5L, timeUnit).readTimeout(5L, timeUnit).build();
    }

    private void initializeListener() {
        if (this.listenerInitialized) {
            return;
        }
        RemoteUtils.initCached();
        if (RemoteUtils.sharedPreferences != null) {
            SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.exteragram.messenger.ai.network.ProxyDns$$ExternalSyntheticLambda0
                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                    this.f$0.lambda$initializeListener$0(sharedPreferences, str);
                }
            };
            this.changeListener = onSharedPreferenceChangeListener;
            RemoteUtils.sharedPreferences.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
            this.listenerInitialized = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initializeListener$0(SharedPreferences sharedPreferences, String str) {
        if ("dns_url".equals(str)) {
            this.cachedUrl = null;
        }
    }

    private String getUrl() {
        if (!this.listenerInitialized) {
            initializeListener();
        }
        String str = this.cachedUrl;
        if (str != null) {
            return str;
        }
        String stringConfigValue = RemoteUtils.getStringConfigValue("dns_url", "https://dns.comss.one/dns-query");
        this.cachedUrl = stringConfigValue;
        return stringConfigValue;
    }

    @Override // okhttp3.Dns
    public List<InetAddress> lookup(String str) {
        try {
            List<String> listResolveDns = resolveDns(str);
            if (listResolveDns != null && !listResolveDns.isEmpty()) {
                ArrayList arrayList = new ArrayList(listResolveDns.size());
                Iterator<String> it = listResolveDns.iterator();
                while (it.hasNext()) {
                    arrayList.add(InetAddress.getByName(it.next()));
                }
                return arrayList;
            }
            return Dns.SYSTEM.lookup(str);
        } catch (Exception unused) {
            return Dns.SYSTEM.lookup(str);
        }
    }

    private List<String> resolveDns(String str) {
        try {
            Response responseExecute = this.client.newCall(new Request.Builder().url(getUrl()).post(RequestBody.create(buildDnsQuery(str), MediaType.parse("application/dns-message"))).addHeader("Accept", "application/dns-message").build()).execute();
            try {
                if (!responseExecute.getIsSuccessful() || responseExecute.body() == null) {
                    responseExecute.close();
                    return null;
                }
                List<String> dnsResponse = parseDnsResponse(responseExecute.body().bytes());
                responseExecute.close();
                return dnsResponse;
            } finally {
            }
        } catch (IOException unused) {
            return null;
        }
        return null;
    }

    private byte[] buildDnsQuery(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        try {
            dataOutputStream.writeShort(4660);
            dataOutputStream.writeShort(256);
            dataOutputStream.writeShort(1);
            dataOutputStream.writeShort(0);
            dataOutputStream.writeShort(0);
            dataOutputStream.writeShort(0);
            for (String str2 : str.split("\\.")) {
                dataOutputStream.writeByte(str2.length());
                dataOutputStream.writeBytes(str2);
            }
            dataOutputStream.writeByte(0);
            dataOutputStream.writeShort(1);
            dataOutputStream.writeShort(1);
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }

    private List<String> parseDnsResponse(byte[] bArr) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.getShort();
        byteBufferWrap.getShort();
        short s = byteBufferWrap.getShort();
        short s2 = byteBufferWrap.getShort();
        byteBufferWrap.getShort();
        byteBufferWrap.getShort();
        for (int i = 0; i < s; i++) {
            skipDomainName(byteBufferWrap);
            byteBufferWrap.getShort();
            byteBufferWrap.getShort();
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < s2; i2++) {
            skipDomainName(byteBufferWrap);
            short s3 = byteBufferWrap.getShort();
            byteBufferWrap.getShort();
            byteBufferWrap.getInt();
            short s4 = byteBufferWrap.getShort();
            if (s3 == 1) {
                StringBuilder sb = new StringBuilder();
                for (int i3 = 0; i3 < 4; i3++) {
                    sb.append(byteBufferWrap.get() & UByte.MAX_VALUE);
                    if (i3 < 3) {
                        sb.append(".");
                    }
                }
                arrayList.add(sb.toString());
            } else {
                byteBufferWrap.position(byteBufferWrap.position() + s4);
            }
        }
        return arrayList;
    }

    private void skipDomainName(ByteBuffer byteBuffer) {
        while (true) {
            byte b2 = byteBuffer.get();
            int i = b2 & UByte.MAX_VALUE;
            if ((b2 & 192) == 192) {
                byteBuffer.get();
                return;
            } else if (i == 0) {
                return;
            } else {
                byteBuffer.position(byteBuffer.position() + i);
            }
        }
    }
}
