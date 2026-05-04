package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.installations.InstallationTokenResult;
import com.google.firebase.remoteconfig.ConfigUpdate;
import com.google.firebase.remoteconfig.ConfigUpdateListener;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ConfigRealtimeHttpClient {
    static final int[] BACKOFF_TIME_DURATIONS_IN_MINUTES = {2, 4, 8, 16, 32, 64, 128, 256};
    private static final Pattern GMP_APP_ID_PATTERN = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");
    ConfigCacheClient activatedCache;
    private ConfigAutoFetch configAutoFetch;
    private final ConfigFetchHandler configFetchHandler;
    private final Context context;
    private final FirebaseApp firebaseApp;
    private final FirebaseInstallationsApi firebaseInstallations;
    private int httpRetriesRemaining;
    private HttpURLConnection httpURLConnection;
    private final Set listeners;
    private final String namespace;
    private final ScheduledExecutorService scheduledExecutorService;
    private final ConfigSharedPrefsClient sharedPrefsClient;
    private final int ORIGINAL_RETRIES = 8;
    private boolean isHttpConnectionRunning = false;
    private final Random random = new Random();
    private final Clock clock = DefaultClock.getInstance();
    private boolean isRealtimeDisabled = false;
    private boolean isInBackground = false;
    private final Object backgroundLock = new Object();

    private boolean isStatusCodeRetryable(int i) {
        return i == 408 || i == 429 || i == 502 || i == 503 || i == 504;
    }

    public ConfigRealtimeHttpClient(FirebaseApp firebaseApp, FirebaseInstallationsApi firebaseInstallationsApi, ConfigFetchHandler configFetchHandler, ConfigCacheClient configCacheClient, Context context, String str, Set set, ConfigSharedPrefsClient configSharedPrefsClient, ScheduledExecutorService scheduledExecutorService) {
        this.listeners = set;
        this.scheduledExecutorService = scheduledExecutorService;
        this.httpRetriesRemaining = Math.max(8 - configSharedPrefsClient.getRealtimeBackoffMetadata().getNumFailedStreams(), 1);
        this.firebaseApp = firebaseApp;
        this.configFetchHandler = configFetchHandler;
        this.firebaseInstallations = firebaseInstallationsApi;
        this.activatedCache = configCacheClient;
        this.context = context;
        this.namespace = str;
        this.sharedPrefsClient = configSharedPrefsClient;
    }

    private static String extractProjectNumberFromAppId(String str) {
        Matcher matcher = GMP_APP_ID_PATTERN.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        return null;
    }

    private String getFingerprintHashForPackage() {
        try {
            Context context = this.context;
            byte[] packageCertificateHashBytes = AndroidUtilsLight.getPackageCertificateHashBytes(context, context.getPackageName());
            if (packageCertificateHashBytes == null) {
                Log.e("FirebaseRemoteConfig", "Could not get fingerprint hash for package: " + this.context.getPackageName());
                return null;
            }
            return Hex.bytesToStringUppercase(packageCertificateHashBytes, false);
        } catch (PackageManager.NameNotFoundException unused) {
            Log.i("FirebaseRemoteConfig", "No such package: " + this.context.getPackageName());
            return null;
        }
    }

    private void setCommonRequestHeaders(HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setRequestProperty("X-Goog-Firebase-Installations-Auth", str);
        httpURLConnection.setRequestProperty("X-Goog-Api-Key", this.firebaseApp.getOptions().getApiKey());
        httpURLConnection.setRequestProperty("X-Android-Package", this.context.getPackageName());
        httpURLConnection.setRequestProperty("X-Android-Cert", getFingerprintHashForPackage());
        httpURLConnection.setRequestProperty("X-Google-GFE-Can-Retry", "yes");
        httpURLConnection.setRequestProperty("X-Accept-Response-Streaming", "true");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept", "application/json");
    }

    private JSONObject createRequestBody(String str) {
        HashMap map = new HashMap();
        map.put("project", extractProjectNumberFromAppId(this.firebaseApp.getOptions().getApplicationId()));
        map.put("namespace", this.namespace);
        map.put("lastKnownVersionNumber", Long.toString(this.configFetchHandler.getTemplateVersionNumber()));
        map.put("appId", this.firebaseApp.getOptions().getApplicationId());
        map.put("sdkVersion", "23.0.1");
        map.put("appInstanceId", str);
        return new JSONObject(map);
    }

    public void setRequestParams(HttpURLConnection httpURLConnection, String str, String str2) throws IOException {
        httpURLConnection.setRequestMethod("POST");
        setCommonRequestHeaders(httpURLConnection, str2);
        byte[] bytes = createRequestBody(str).toString().getBytes("utf-8");
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        bufferedOutputStream.write(bytes);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void propagateErrors(FirebaseRemoteConfigException firebaseRemoteConfigException) {
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            ((ConfigUpdateListener) it.next()).onError(firebaseRemoteConfigException);
        }
    }

    private void updateBackoffMetadataWithLastFailedStreamConnectionTime(Date date) {
        int numFailedStreams = this.sharedPrefsClient.getRealtimeBackoffMetadata().getNumFailedStreams() + 1;
        this.sharedPrefsClient.setRealtimeBackoffMetadata(numFailedStreams, new Date(date.getTime() + getRandomizedBackoffDurationInMillis(numFailedStreams)));
    }

    private long getRandomizedBackoffDurationInMillis(int i) {
        int length = BACKOFF_TIME_DURATIONS_IN_MINUTES.length;
        if (i >= length) {
            i = length;
        }
        long millis = TimeUnit.MINUTES.toMillis(r0[i - 1]);
        return (millis / 2) + ((long) this.random.nextInt((int) millis));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void enableBackoff() {
        this.isRealtimeDisabled = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private synchronized boolean canMakeHttpStreamConnection() {
        boolean z;
        if (this.listeners.isEmpty() || this.isHttpConnectionRunning || this.isRealtimeDisabled) {
            z = false;
        } else if (!this.isInBackground) {
            z = true;
        }
        return z;
    }

    private String getRealtimeURL(String str) {
        return String.format("https://firebaseremoteconfigrealtime.googleapis.com/v1/projects/%s/namespaces/%s:streamFetchInvalidations", extractProjectNumberFromAppId(this.firebaseApp.getOptions().getApplicationId()), str);
    }

    private URL getUrl() {
        try {
            return new URL(getRealtimeURL(this.namespace));
        } catch (MalformedURLException unused) {
            Log.e("FirebaseRemoteConfig", "URL is malformed");
            return null;
        }
    }

    public Task createRealtimeConnection() {
        final Task token = this.firebaseInstallations.getToken(false);
        final Task id = this.firebaseInstallations.getId();
        return Tasks.whenAllComplete((Task<?>[]) new Task[]{token, id}).continueWithTask(this.scheduledExecutorService, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.ConfigRealtimeHttpClient$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return ConfigRealtimeHttpClient.$r8$lambda$IjdOYUXD83twZvh8ZERrOwFUcw8(this.f$0, token, id, task);
            }
        });
    }

    public static /* synthetic */ Task $r8$lambda$IjdOYUXD83twZvh8ZERrOwFUcw8(ConfigRealtimeHttpClient configRealtimeHttpClient, Task task, Task task2, Task task3) {
        configRealtimeHttpClient.getClass();
        if (!task.isSuccessful()) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation auth token for config update listener connection.", task.getException()));
        }
        if (!task2.isSuccessful()) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation ID for config update listener connection.", task2.getException()));
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) configRealtimeHttpClient.getUrl().openConnection();
            configRealtimeHttpClient.setRequestParams(httpURLConnection, (String) task2.getResult(), ((InstallationTokenResult) task.getResult()).getToken());
            return Tasks.forResult(httpURLConnection);
        } catch (IOException e) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Failed to open HTTP stream connection", e));
        }
    }

    public void startHttpConnection() {
        makeRealtimeHttpConnection(0L);
    }

    public synchronized void retryHttpConnectionWhenBackoffEnds() {
        makeRealtimeHttpConnection(Math.max(0L, this.sharedPrefsClient.getRealtimeBackoffMetadata().getBackoffEndTime().getTime() - new Date(this.clock.currentTimeMillis()).getTime()));
    }

    private synchronized void makeRealtimeHttpConnection(long j) {
        try {
            if (canMakeHttpStreamConnection()) {
                int i = this.httpRetriesRemaining;
                if (i > 0) {
                    this.httpRetriesRemaining = i - 1;
                    this.scheduledExecutorService.schedule(new Runnable() { // from class: com.google.firebase.remoteconfig.internal.ConfigRealtimeHttpClient.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ConfigRealtimeHttpClient.this.beginRealtimeHttpStream();
                        }
                    }, j, TimeUnit.MILLISECONDS);
                } else if (!this.isInBackground) {
                    propagateErrors(new FirebaseRemoteConfigClientException("Unable to connect to the server. Check your connection and try again.", FirebaseRemoteConfigException.Code.CONFIG_UPDATE_STREAM_ERROR));
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setIsInBackground(boolean z) {
        HttpURLConnection httpURLConnection;
        synchronized (this.backgroundLock) {
            try {
                this.isInBackground = z;
                ConfigAutoFetch configAutoFetch = this.configAutoFetch;
                if (configAutoFetch != null) {
                    configAutoFetch.setIsInBackground(z);
                }
                if (Build.VERSION.SDK_INT >= 26 && z && (httpURLConnection = this.httpURLConnection) != null) {
                    httpURLConnection.disconnect();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private synchronized void resetRetryCount() {
        this.httpRetriesRemaining = 8;
    }

    private synchronized boolean checkAndSetHttpConnectionFlagIfNotRunning() {
        boolean zCanMakeHttpStreamConnection;
        zCanMakeHttpStreamConnection = canMakeHttpStreamConnection();
        if (zCanMakeHttpStreamConnection) {
            setIsHttpConnectionRunning(true);
        }
        return zCanMakeHttpStreamConnection;
    }

    private synchronized void setIsHttpConnectionRunning(boolean z) {
        this.isHttpConnectionRunning = z;
    }

    public synchronized ConfigAutoFetch startAutoFetch(HttpURLConnection httpURLConnection) {
        return new ConfigAutoFetch(httpURLConnection, this.configFetchHandler, this.activatedCache, this.listeners, new ConfigUpdateListener() { // from class: com.google.firebase.remoteconfig.internal.ConfigRealtimeHttpClient.2
            @Override // com.google.firebase.remoteconfig.ConfigUpdateListener
            public void onUpdate(ConfigUpdate configUpdate) {
            }

            @Override // com.google.firebase.remoteconfig.ConfigUpdateListener
            public void onError(FirebaseRemoteConfigException firebaseRemoteConfigException) {
                ConfigRealtimeHttpClient.this.enableBackoff();
                ConfigRealtimeHttpClient.this.propagateErrors(firebaseRemoteConfigException);
            }
        }, this.scheduledExecutorService, this.sharedPrefsClient);
    }

    private String parseForbiddenErrorResponseMessage(InputStream inputStream) {
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
            }
        } catch (IOException unused) {
            if (sb.length() == 0) {
                return "Unable to connect to the server, access is forbidden. HTTP status code: 403";
            }
        }
        return sb.toString();
    }

    public void beginRealtimeHttpStream() {
        if (checkAndSetHttpConnectionFlagIfNotRunning()) {
            if (new Date(this.clock.currentTimeMillis()).before(this.sharedPrefsClient.getRealtimeBackoffMetadata().getBackoffEndTime())) {
                retryHttpConnectionWhenBackoffEnds();
            } else {
                final Task taskCreateRealtimeConnection = createRealtimeConnection();
                Tasks.whenAllComplete((Task<?>[]) new Task[]{taskCreateRealtimeConnection}).continueWith(this.scheduledExecutorService, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.ConfigRealtimeHttpClient$$ExternalSyntheticLambda0
                    @Override // com.google.android.gms.tasks.Continuation
                    public final Object then(Task task) {
                        return ConfigRealtimeHttpClient.$r8$lambda$5ldnYuFP0_42QqI3IUPNf7Ezrnw(this.f$0, taskCreateRealtimeConnection, task);
                    }
                });
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c2 A[Catch: all -> 0x0044, TryCatch #1 {all -> 0x0044, blocks: (B:9:0x0030, B:47:0x00be, B:49:0x00c2, B:50:0x00c6), top: B:88:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00c6 A[Catch: all -> 0x0044, TRY_LEAVE, TryCatch #1 {all -> 0x0044, blocks: (B:9:0x0030, B:47:0x00be, B:49:0x00c2, B:50:0x00c6), top: B:88:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x010d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ Task $r8$lambda$5ldnYuFP0_42QqI3IUPNf7Ezrnw(ConfigRealtimeHttpClient configRealtimeHttpClient, Task task, Task task2) throws Throwable {
        InputStream errorStream;
        Integer numValueOf;
        Throwable th;
        InputStream inputStream;
        boolean z;
        FirebaseRemoteConfigServerException firebaseRemoteConfigServerException;
        int responseCode;
        boolean z2;
        configRealtimeHttpClient.getClass();
        try {
        } catch (IOException e) {
            e = e;
            inputStream = null;
            errorStream = null;
        } catch (Throwable th2) {
            errorStream = null;
            numValueOf = 0;
            th = th2;
            inputStream = null;
        }
        if (!task.isSuccessful()) {
            throw new IOException(task.getException());
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) task.getResult();
        configRealtimeHttpClient.httpURLConnection = httpURLConnection;
        inputStream = httpURLConnection.getInputStream();
        try {
            errorStream = configRealtimeHttpClient.httpURLConnection.getErrorStream();
            try {
                responseCode = configRealtimeHttpClient.httpURLConnection.getResponseCode();
                numValueOf = Integer.valueOf(responseCode);
                if (responseCode == 200) {
                    try {
                        try {
                            configRealtimeHttpClient.resetRetryCount();
                            configRealtimeHttpClient.sharedPrefsClient.resetRealtimeBackoff();
                            ConfigAutoFetch configAutoFetchStartAutoFetch = configRealtimeHttpClient.startAutoFetch(configRealtimeHttpClient.httpURLConnection);
                            configRealtimeHttpClient.configAutoFetch = configAutoFetchStartAutoFetch;
                            configAutoFetchStartAutoFetch.listenForNotifications();
                        } catch (IOException e2) {
                            e = e2;
                            if (configRealtimeHttpClient.isInBackground) {
                                Log.d("FirebaseRemoteConfig", "Exception connecting to real-time RC backend. Retrying the connection...", e);
                            } else {
                                configRealtimeHttpClient.resetRetryCount();
                            }
                            configRealtimeHttpClient.closeRealtimeHttpConnection(inputStream, errorStream);
                            configRealtimeHttpClient.setIsHttpConnectionRunning(false);
                            z = configRealtimeHttpClient.isInBackground && (numValueOf == 0 || configRealtimeHttpClient.isStatusCodeRetryable(numValueOf.intValue()));
                            if (z) {
                                configRealtimeHttpClient.updateBackoffMetadataWithLastFailedStreamConnectionTime(new Date(configRealtimeHttpClient.clock.currentTimeMillis()));
                            }
                            if (!z && numValueOf.intValue() != 200) {
                                String forbiddenErrorResponseMessage = String.format("Unable to connect to the server. Try again in a few minutes. HTTP status code: %d", numValueOf);
                                if (numValueOf.intValue() == 403) {
                                    forbiddenErrorResponseMessage = configRealtimeHttpClient.parseForbiddenErrorResponseMessage(configRealtimeHttpClient.httpURLConnection.getErrorStream());
                                }
                                firebaseRemoteConfigServerException = new FirebaseRemoteConfigServerException(numValueOf.intValue(), forbiddenErrorResponseMessage, FirebaseRemoteConfigException.Code.CONFIG_UPDATE_STREAM_ERROR);
                            }
                            configRealtimeHttpClient.retryHttpConnectionWhenBackoffEnds();
                            configRealtimeHttpClient.httpURLConnection = null;
                            configRealtimeHttpClient.configAutoFetch = null;
                            return Tasks.forResult(null);
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        configRealtimeHttpClient.closeRealtimeHttpConnection(inputStream, errorStream);
                        configRealtimeHttpClient.setIsHttpConnectionRunning(false);
                        boolean z3 = !configRealtimeHttpClient.isInBackground && (numValueOf == 0 || configRealtimeHttpClient.isStatusCodeRetryable(numValueOf.intValue()));
                        if (z3) {
                            configRealtimeHttpClient.updateBackoffMetadataWithLastFailedStreamConnectionTime(new Date(configRealtimeHttpClient.clock.currentTimeMillis()));
                        }
                        if (z3 || numValueOf.intValue() == 200) {
                            configRealtimeHttpClient.retryHttpConnectionWhenBackoffEnds();
                        } else {
                            String forbiddenErrorResponseMessage2 = String.format("Unable to connect to the server. Try again in a few minutes. HTTP status code: %d", numValueOf);
                            if (numValueOf.intValue() == 403) {
                                forbiddenErrorResponseMessage2 = configRealtimeHttpClient.parseForbiddenErrorResponseMessage(configRealtimeHttpClient.httpURLConnection.getErrorStream());
                            }
                            configRealtimeHttpClient.propagateErrors(new FirebaseRemoteConfigServerException(numValueOf.intValue(), forbiddenErrorResponseMessage2, FirebaseRemoteConfigException.Code.CONFIG_UPDATE_STREAM_ERROR));
                        }
                        throw th;
                    }
                }
                configRealtimeHttpClient.closeRealtimeHttpConnection(inputStream, errorStream);
                configRealtimeHttpClient.setIsHttpConnectionRunning(false);
                z2 = !configRealtimeHttpClient.isInBackground && configRealtimeHttpClient.isStatusCodeRetryable(responseCode);
                if (z2) {
                    configRealtimeHttpClient.updateBackoffMetadataWithLastFailedStreamConnectionTime(new Date(configRealtimeHttpClient.clock.currentTimeMillis()));
                }
            } catch (IOException e3) {
                e = e3;
                numValueOf = 0;
            } catch (Throwable th4) {
                numValueOf = 0;
                th = th4;
            }
        } catch (IOException e4) {
            e = e4;
            errorStream = null;
            numValueOf = errorStream;
            if (configRealtimeHttpClient.isInBackground) {
            }
            configRealtimeHttpClient.closeRealtimeHttpConnection(inputStream, errorStream);
            configRealtimeHttpClient.setIsHttpConnectionRunning(false);
            if (configRealtimeHttpClient.isInBackground) {
                if (z) {
                }
                if (!z) {
                    String forbiddenErrorResponseMessage3 = String.format("Unable to connect to the server. Try again in a few minutes. HTTP status code: %d", numValueOf);
                    if (numValueOf.intValue() == 403) {
                    }
                    firebaseRemoteConfigServerException = new FirebaseRemoteConfigServerException(numValueOf.intValue(), forbiddenErrorResponseMessage3, FirebaseRemoteConfigException.Code.CONFIG_UPDATE_STREAM_ERROR);
                    configRealtimeHttpClient.propagateErrors(firebaseRemoteConfigServerException);
                }
                configRealtimeHttpClient.retryHttpConnectionWhenBackoffEnds();
            }
            configRealtimeHttpClient.httpURLConnection = null;
            configRealtimeHttpClient.configAutoFetch = null;
            return Tasks.forResult(null);
        } catch (Throwable th5) {
            numValueOf = 0;
            th = th5;
            errorStream = null;
        }
        if (!z2 && responseCode != 200) {
            String forbiddenErrorResponseMessage4 = String.format("Unable to connect to the server. Try again in a few minutes. HTTP status code: %d", numValueOf);
            if (responseCode == 403) {
                forbiddenErrorResponseMessage4 = configRealtimeHttpClient.parseForbiddenErrorResponseMessage(configRealtimeHttpClient.httpURLConnection.getErrorStream());
            }
            firebaseRemoteConfigServerException = new FirebaseRemoteConfigServerException(responseCode, forbiddenErrorResponseMessage4, FirebaseRemoteConfigException.Code.CONFIG_UPDATE_STREAM_ERROR);
            configRealtimeHttpClient.propagateErrors(firebaseRemoteConfigServerException);
            configRealtimeHttpClient.httpURLConnection = null;
            configRealtimeHttpClient.configAutoFetch = null;
            return Tasks.forResult(null);
        }
        configRealtimeHttpClient.retryHttpConnectionWhenBackoffEnds();
        configRealtimeHttpClient.httpURLConnection = null;
        configRealtimeHttpClient.configAutoFetch = null;
        return Tasks.forResult(null);
    }

    private void closeHttpConnectionInputStream(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                Log.d("FirebaseRemoteConfig", "Error closing connection stream.", e);
            }
        }
    }

    public void closeRealtimeHttpConnection(InputStream inputStream, InputStream inputStream2) {
        HttpURLConnection httpURLConnection = this.httpURLConnection;
        if (httpURLConnection != null && !this.isInBackground) {
            httpURLConnection.disconnect();
        }
        closeHttpConnectionInputStream(inputStream);
        closeHttpConnectionInputStream(inputStream2);
    }
}
