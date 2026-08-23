package com.google.firebase.remoteconfig.internal;

import android.content.SharedPreferences;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigInfo;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigSettings;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ConfigSharedPrefsClient {
    static final Date LAST_FETCH_TIME_NO_FETCH_YET = new Date(-1);
    static final Date NO_BACKOFF_TIME = new Date(-1);
    private final SharedPreferences frcSharedPrefs;
    private final Object frcInfoLock = new Object();
    private final Object backoffMetadataLock = new Object();
    private final Object realtimeBackoffMetadataLock = new Object();
    private final Object customSignalsLock = new Object();

    public ConfigSharedPrefsClient(SharedPreferences sharedPreferences) {
        this.frcSharedPrefs = sharedPreferences;
    }

    public long getFetchTimeoutInSeconds() {
        return this.frcSharedPrefs.getLong("fetch_timeout_in_seconds", 60L);
    }

    public Date getLastSuccessfulFetchTime() {
        return new Date(this.frcSharedPrefs.getLong("last_fetch_time_in_millis", -1L));
    }

    public String getLastFetchETag() {
        return this.frcSharedPrefs.getString("last_fetch_etag", null);
    }

    public long getLastTemplateVersion() {
        return this.frcSharedPrefs.getLong("last_template_version", 0L);
    }

    public FirebaseRemoteConfigInfo getInfo() {
        FirebaseRemoteConfigInfoImpl firebaseRemoteConfigInfoImplBuild;
        synchronized (this.frcInfoLock) {
            long j = this.frcSharedPrefs.getLong("last_fetch_time_in_millis", -1L);
            int i = this.frcSharedPrefs.getInt("last_fetch_status", 0);
            firebaseRemoteConfigInfoImplBuild = FirebaseRemoteConfigInfoImpl.newBuilder().withLastFetchStatus(i).withLastSuccessfulFetchTimeInMillis(j).withConfigSettings(new FirebaseRemoteConfigSettings.Builder().setFetchTimeoutInSeconds(this.frcSharedPrefs.getLong("fetch_timeout_in_seconds", 60L)).setMinimumFetchIntervalInSeconds(this.frcSharedPrefs.getLong("minimum_fetch_interval_in_seconds", ConfigFetchHandler.DEFAULT_MINIMUM_FETCH_INTERVAL_IN_SECONDS)).build()).build();
        }
        return firebaseRemoteConfigInfoImplBuild;
    }

    public void updateLastFetchAsSuccessfulAt(Date date) {
        synchronized (this.frcInfoLock) {
            this.frcSharedPrefs.edit().putInt("last_fetch_status", -1).putLong("last_fetch_time_in_millis", date.getTime()).apply();
        }
    }

    public void updateLastFetchAsFailed() {
        synchronized (this.frcInfoLock) {
            this.frcSharedPrefs.edit().putInt("last_fetch_status", 1).apply();
        }
    }

    public void updateLastFetchAsThrottled() {
        synchronized (this.frcInfoLock) {
            this.frcSharedPrefs.edit().putInt("last_fetch_status", 2).apply();
        }
    }

    public void setLastFetchETag(String str) {
        synchronized (this.frcInfoLock) {
            this.frcSharedPrefs.edit().putString("last_fetch_etag", str).apply();
        }
    }

    public void setLastTemplateVersion(long j) {
        synchronized (this.frcInfoLock) {
            this.frcSharedPrefs.edit().putLong("last_template_version", j).apply();
        }
    }

    public BackoffMetadata getBackoffMetadata() {
        BackoffMetadata backoffMetadata;
        synchronized (this.backoffMetadataLock) {
            backoffMetadata = new BackoffMetadata(this.frcSharedPrefs.getInt("num_failed_fetches", 0), new Date(this.frcSharedPrefs.getLong("backoff_end_time_in_millis", -1L)));
        }
        return backoffMetadata;
    }

    public void setBackoffMetadata(int i, Date date) {
        synchronized (this.backoffMetadataLock) {
            this.frcSharedPrefs.edit().putInt("num_failed_fetches", i).putLong("backoff_end_time_in_millis", date.getTime()).apply();
        }
    }

    public Map<String, String> getCustomSignals() {
        try {
            JSONObject jSONObject = new JSONObject(this.frcSharedPrefs.getString("customSignals", "{}"));
            HashMap map = new HashMap();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.optString(next));
            }
            return map;
        } catch (JSONException unused) {
            return new HashMap();
        }
    }

    public void resetBackoff() {
        setBackoffMetadata(0, NO_BACKOFF_TIME);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class BackoffMetadata {
        private Date backoffEndTime;
        private int numFailedFetches;

        public BackoffMetadata(int i, Date date) {
            this.numFailedFetches = i;
            this.backoffEndTime = date;
        }

        public int getNumFailedFetches() {
            return this.numFailedFetches;
        }

        public Date getBackoffEndTime() {
            return this.backoffEndTime;
        }
    }

    public RealtimeBackoffMetadata getRealtimeBackoffMetadata() {
        RealtimeBackoffMetadata realtimeBackoffMetadata;
        synchronized (this.realtimeBackoffMetadataLock) {
            realtimeBackoffMetadata = new RealtimeBackoffMetadata(this.frcSharedPrefs.getInt("num_failed_realtime_streams", 0), new Date(this.frcSharedPrefs.getLong("realtime_backoff_end_time_in_millis", -1L)));
        }
        return realtimeBackoffMetadata;
    }

    public void setRealtimeBackoffMetadata(int i, Date date) {
        synchronized (this.realtimeBackoffMetadataLock) {
            this.frcSharedPrefs.edit().putInt("num_failed_realtime_streams", i).putLong("realtime_backoff_end_time_in_millis", date.getTime()).apply();
        }
    }

    public void setRealtimeBackoffEndTime(Date date) {
        synchronized (this.realtimeBackoffMetadataLock) {
            this.frcSharedPrefs.edit().putLong("realtime_backoff_end_time_in_millis", date.getTime()).apply();
        }
    }

    public void resetRealtimeBackoff() {
        setRealtimeBackoffMetadata(0, NO_BACKOFF_TIME);
    }

    public static class RealtimeBackoffMetadata {
        private Date backoffEndTime;
        private int numFailedStreams;

        public RealtimeBackoffMetadata(int i, Date date) {
            this.numFailedStreams = i;
            this.backoffEndTime = date;
        }

        public int getNumFailedStreams() {
            return this.numFailedStreams;
        }

        public Date getBackoffEndTime() {
            return this.backoffEndTime;
        }
    }
}
