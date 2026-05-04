package com.yandex.mapkit;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import com.yandex.runtime.bindings.StringHandler;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class RawTile implements Serializable {
    private String etag;
    private boolean etag__is_initialized;
    private Map<String, String> features;
    private boolean features__is_initialized;
    private NativeObject nativeObject;
    private byte[] rawData;
    private boolean rawData__is_initialized;
    private State state;
    private boolean state__is_initialized;
    private UseCache useCache;
    private boolean useCache__is_initialized;
    private Version version;
    private boolean version__is_initialized;

    public enum State {
        OK,
        NOT_MODIFIED,
        ERROR
    }

    public enum UseCache {
        YES,
        NO
    }

    private native String getEtag__Native();

    private native Map<String, String> getFeatures__Native();

    private native byte[] getRawData__Native();

    private native State getState__Native();

    private native UseCache getUseCache__Native();

    private native Version getVersion__Native();

    private native NativeObject init(Version version, Map<String, String> map, String str, UseCache useCache, State state, byte[] bArr);

    public RawTile() {
        this.version__is_initialized = false;
        this.features__is_initialized = false;
        this.etag__is_initialized = false;
        this.useCache__is_initialized = false;
        this.state__is_initialized = false;
        this.rawData__is_initialized = false;
    }

    public RawTile(Version version, Map<String, String> map, String str, UseCache useCache, State state, byte[] bArr) {
        this.version__is_initialized = false;
        this.features__is_initialized = false;
        this.etag__is_initialized = false;
        this.useCache__is_initialized = false;
        this.state__is_initialized = false;
        this.rawData__is_initialized = false;
        if (version == null) {
            throw new IllegalArgumentException("Required field \"version\" cannot be null");
        }
        if (map == null) {
            throw new IllegalArgumentException("Required field \"features\" cannot be null");
        }
        if (str == null) {
            throw new IllegalArgumentException("Required field \"etag\" cannot be null");
        }
        if (useCache == null) {
            throw new IllegalArgumentException("Required field \"useCache\" cannot be null");
        }
        if (state == null) {
            throw new IllegalArgumentException("Required field \"state\" cannot be null");
        }
        if (bArr == null) {
            throw new IllegalArgumentException("Required field \"rawData\" cannot be null");
        }
        this.nativeObject = init(version, map, str, useCache, state, bArr);
        this.version = version;
        this.version__is_initialized = true;
        this.features = map;
        this.features__is_initialized = true;
        this.etag = str;
        this.etag__is_initialized = true;
        this.useCache = useCache;
        this.useCache__is_initialized = true;
        this.state = state;
        this.state__is_initialized = true;
        this.rawData = bArr;
        this.rawData__is_initialized = true;
    }

    private RawTile(NativeObject nativeObject) {
        this.version__is_initialized = false;
        this.features__is_initialized = false;
        this.etag__is_initialized = false;
        this.useCache__is_initialized = false;
        this.state__is_initialized = false;
        this.rawData__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Version getVersion() {
        try {
            if (!this.version__is_initialized) {
                this.version = getVersion__Native();
                this.version__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.version;
    }

    public synchronized Map<String, String> getFeatures() {
        try {
            if (!this.features__is_initialized) {
                this.features = getFeatures__Native();
                this.features__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.features;
    }

    public synchronized String getEtag() {
        try {
            if (!this.etag__is_initialized) {
                this.etag = getEtag__Native();
                this.etag__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.etag;
    }

    public synchronized UseCache getUseCache() {
        try {
            if (!this.useCache__is_initialized) {
                this.useCache = getUseCache__Native();
                this.useCache__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.useCache;
    }

    public synchronized State getState() {
        try {
            if (!this.state__is_initialized) {
                this.state = getState__Native();
                this.state__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.state;
    }

    public synchronized byte[] getRawData() {
        try {
            if (!this.rawData__is_initialized) {
                this.rawData = getRawData__Native();
                this.rawData__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.rawData;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.version = (Version) archive.add(this.version, false, (Class<Version>) Version.class);
            this.version__is_initialized = true;
            this.features = archive.add(this.features, false, new StringHandler(), new StringHandler());
            this.features__is_initialized = true;
            this.etag = archive.add(this.etag, false);
            this.etag__is_initialized = true;
            this.useCache = (UseCache) archive.add(this.useCache, false, (Class<UseCache>) UseCache.class);
            this.useCache__is_initialized = true;
            this.state = (State) archive.add(this.state, false, (Class<State>) State.class);
            this.state__is_initialized = true;
            byte[] bArrAdd = archive.add(this.rawData, false);
            this.rawData = bArrAdd;
            this.rawData__is_initialized = true;
            this.nativeObject = init(this.version, this.features, this.etag, this.useCache, this.state, bArrAdd);
            return;
        }
        archive.add(getVersion(), false, (Class<Version>) Version.class);
        archive.add(getFeatures(), false, new StringHandler(), new StringHandler());
        archive.add(getEtag(), false);
        archive.add(getUseCache(), false, (Class<UseCache>) UseCache.class);
        archive.add(getState(), false, (Class<State>) State.class);
        archive.add(getRawData(), false);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::RawTile";
    }
}
