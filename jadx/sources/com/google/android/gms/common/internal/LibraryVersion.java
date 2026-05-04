package com.google.android.gms.common.internal;

import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import okhttp3.internal.url._UrlKt;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class LibraryVersion {
    private static final GmsLogger zza = new GmsLogger("LibraryVersion", _UrlKt.FRAGMENT_ENCODE_SET);
    private static final LibraryVersion zzb = new LibraryVersion();
    private final ConcurrentHashMap zzc = new ConcurrentHashMap();

    protected LibraryVersion() {
    }

    public static LibraryVersion getInstance() {
        return zzb;
    }

    public String getVersion(String str) throws Throwable {
        String str2;
        InputStream resourceAsStream;
        Preconditions.checkNotEmpty(str, "Please provide a valid libraryName");
        if (this.zzc.containsKey(str)) {
            return (String) this.zzc.get(str);
        }
        Properties properties = new Properties();
        InputStream inputStream = null;
        property = null;
        String property = null;
        inputStream = null;
        try {
            try {
                resourceAsStream = LibraryVersion.class.getResourceAsStream(String.format("/%s.properties", str));
            } catch (IOException e) {
                e = e;
                str2 = null;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (resourceAsStream != null) {
                properties.load(resourceAsStream);
                property = properties.getProperty("version", null);
                zza.m346v("LibraryVersion", str + " version is " + property);
            } else {
                zza.m347w("LibraryVersion", "Failed to get app version for libraryName: " + str);
            }
        } catch (IOException e2) {
            e = e2;
            str2 = property;
            inputStream = resourceAsStream;
            zza.m345e("LibraryVersion", "Failed to get app version for libraryName: " + str, e);
            String str3 = str2;
            resourceAsStream = inputStream;
            property = str3;
        } catch (Throwable th2) {
            th = th2;
            inputStream = resourceAsStream;
            if (inputStream != null) {
                IOUtils.closeQuietly(inputStream);
            }
            throw th;
        }
        if (resourceAsStream != null) {
            IOUtils.closeQuietly(resourceAsStream);
        }
        if (property == null) {
            zza.m343d("LibraryVersion", ".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used");
            property = "UNKNOWN";
        }
        this.zzc.put(str, property);
        return property;
    }
}
