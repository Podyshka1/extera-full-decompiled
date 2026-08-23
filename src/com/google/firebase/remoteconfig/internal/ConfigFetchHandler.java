package com.google.firebase.remoteconfig.internal;

import android.text.format.DateUtils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.installations.InstallationTokenResult;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigFetchThrottledException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException;
import com.google.firebase.remoteconfig.internal.ConfigSharedPrefsClient;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class ConfigFetchHandler {
    private final Provider<AnalyticsConnector> analyticsConnector;
    private final Clock clock;
    private final Map<String, String> customHttpHeaders;
    private final Executor executor;
    private final ConfigCacheClient fetchedConfigsCache;
    private final FirebaseInstallationsApi firebaseInstallations;
    private final ConfigFetchHttpClient frcBackendApiClient;
    private final ConfigSharedPrefsClient frcSharedPrefs;
    private final Random randomGenerator;
    public static final long DEFAULT_MINIMUM_FETCH_INTERVAL_IN_SECONDS = 43200;
    static final int[] BACKOFF_TIME_DURATIONS_IN_MINUTES = {2, 4, 8, 16, 32, 64, 128, 256};

    private boolean isThrottleableServerError(int i) {
        return i == 429 || i == 502 || i == 503 || i == 504;
    }

    public ConfigFetchHandler(FirebaseInstallationsApi firebaseInstallationsApi, Provider<AnalyticsConnector> provider, Executor executor, Clock clock, Random random, ConfigCacheClient configCacheClient, ConfigFetchHttpClient configFetchHttpClient, ConfigSharedPrefsClient configSharedPrefsClient, Map<String, String> map) {
        this.firebaseInstallations = firebaseInstallationsApi;
        this.analyticsConnector = provider;
        this.executor = executor;
        this.clock = clock;
        this.randomGenerator = random;
        this.fetchedConfigsCache = configCacheClient;
        this.frcBackendApiClient = configFetchHttpClient;
        this.frcSharedPrefs = configSharedPrefsClient;
        this.customHttpHeaders = map;
    }

    public Task<FetchResponse> fetch(final long j) {
        final HashMap map = new HashMap(this.customHttpHeaders);
        map.put("X-Firebase-RC-Fetch-Type", FetchType.BASE.getValue() + "/1");
        return this.fetchedConfigsCache.get().continueWithTask(this.executor, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.ConfigFetchHandler$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.f$0.fetchIfCacheExpiredAndNotThrottled(task, j, map);
            }
        });
    }

    public Task<FetchResponse> fetchNowWithTypeAndAttemptNumber(FetchType fetchType, int i) {
        final HashMap map = new HashMap(this.customHttpHeaders);
        map.put("X-Firebase-RC-Fetch-Type", fetchType.getValue() + "/" + i);
        return this.fetchedConfigsCache.get().continueWithTask(this.executor, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.ConfigFetchHandler$$ExternalSyntheticLambda3
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.f$0.fetchIfCacheExpiredAndNotThrottled(task, 0L, map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Task<FetchResponse> fetchIfCacheExpiredAndNotThrottled(Task<ConfigContainer> task, long j, final Map<String, String> map) {
        final ConfigFetchHandler configFetchHandler;
        Task taskContinueWithTask;
        final Date date = new Date(this.clock.currentTimeMillis());
        if (task.isSuccessful() && areCachedFetchConfigsValid(j, date)) {
            return Tasks.forResult(FetchResponse.forLocalStorageUsed(date));
        }
        Date backoffEndTimeInMillis = getBackoffEndTimeInMillis(date);
        if (backoffEndTimeInMillis != null) {
            taskContinueWithTask = Tasks.forException(new FirebaseRemoteConfigFetchThrottledException(createThrottledMessage(backoffEndTimeInMillis.getTime() - date.getTime()), backoffEndTimeInMillis.getTime()));
            configFetchHandler = this;
        } else {
            final Task<String> id = this.firebaseInstallations.getId();
            final Task<InstallationTokenResult> token = this.firebaseInstallations.getToken(false);
            configFetchHandler = this;
            taskContinueWithTask = Tasks.whenAllComplete((Task<?>[]) new Task[]{id, token}).continueWithTask(this.executor, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.ConfigFetchHandler$$ExternalSyntheticLambda1
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task2) {
                    return ConfigFetchHandler.m3249$r8$lambda$2M_YxNX84RHSO_CvrLRaJfBcIg(this.f$0, id, token, date, map, task2);
                }
            });
        }
        return taskContinueWithTask.continueWithTask(configFetchHandler.executor, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.ConfigFetchHandler$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                return ConfigFetchHandler.m3250$r8$lambda$IXMfN8uxtaDcbXYjI5JectKUFY(this.f$0, date, task2);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$2M_YxNX84RHSO_CvrLRaJfB-cIg, reason: not valid java name */
    public static /* synthetic */ Task m3249$r8$lambda$2M_YxNX84RHSO_CvrLRaJfBcIg(ConfigFetchHandler configFetchHandler, Task task, Task task2, Date date, Map map, Task task3) {
        configFetchHandler.getClass();
        if (!task.isSuccessful()) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation ID for fetch.", task.getException()));
        }
        if (!task2.isSuccessful()) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation auth token for fetch.", task2.getException()));
        }
        return configFetchHandler.fetchFromBackendAndCacheResponse((String) task.getResult(), ((InstallationTokenResult) task2.getResult()).getToken(), date, map);
    }

    /* JADX INFO: renamed from: $r8$lambda$IXMfN8uxtaDcb-XYjI5JectKUFY, reason: not valid java name */
    public static /* synthetic */ Task m3250$r8$lambda$IXMfN8uxtaDcbXYjI5JectKUFY(ConfigFetchHandler configFetchHandler, Date date, Task task) {
        configFetchHandler.updateLastFetchStatusAndTime(task, date);
        return task;
    }

    private boolean areCachedFetchConfigsValid(long j, Date date) {
        Date lastSuccessfulFetchTime = this.frcSharedPrefs.getLastSuccessfulFetchTime();
        if (lastSuccessfulFetchTime.equals(ConfigSharedPrefsClient.LAST_FETCH_TIME_NO_FETCH_YET)) {
            return false;
        }
        return date.before(new Date(lastSuccessfulFetchTime.getTime() + TimeUnit.SECONDS.toMillis(j)));
    }

    private Date getBackoffEndTimeInMillis(Date date) {
        Date backoffEndTime = this.frcSharedPrefs.getBackoffMetadata().getBackoffEndTime();
        if (date.before(backoffEndTime)) {
            return backoffEndTime;
        }
        return null;
    }

    private String createThrottledMessage(long j) {
        return String.format("Fetch is throttled. Please wait before calling fetch again: %s", DateUtils.formatElapsedTime(j / 1000));
    }

    private Task<FetchResponse> fetchFromBackendAndCacheResponse(String str, String str2, Date date, Map<String, String> map) {
        try {
            final FetchResponse fetchResponseFetchFromBackend = fetchFromBackend(str, str2, date, map);
            if (fetchResponseFetchFromBackend.getStatus() != 0) {
                return Tasks.forResult(fetchResponseFetchFromBackend);
            }
            return this.fetchedConfigsCache.put(fetchResponseFetchFromBackend.getFetchedConfigs()).onSuccessTask(this.executor, new SuccessContinuation() { // from class: com.google.firebase.remoteconfig.internal.ConfigFetchHandler$$ExternalSyntheticLambda4
                @Override // com.google.android.gms.tasks.SuccessContinuation
                public final Task then(Object obj) {
                    return Tasks.forResult(fetchResponseFetchFromBackend);
                }
            });
        } catch (FirebaseRemoteConfigException e) {
            return Tasks.forException(e);
        }
    }

    private FetchResponse fetchFromBackend(String str, String str2, Date date, Map<String, String> map) throws FirebaseRemoteConfigFetchThrottledException, FirebaseRemoteConfigServerException {
        Date date2;
        try {
            date2 = date;
            try {
                FetchResponse fetchResponseFetch = this.frcBackendApiClient.fetch(this.frcBackendApiClient.createHttpURLConnection(), str, str2, getUserProperties(), this.frcSharedPrefs.getLastFetchETag(), map, getFirstOpenTime(), date2, this.frcSharedPrefs.getCustomSignals());
                if (fetchResponseFetch.getFetchedConfigs() != null) {
                    this.frcSharedPrefs.setLastTemplateVersion(fetchResponseFetch.getFetchedConfigs().getTemplateVersionNumber());
                }
                if (fetchResponseFetch.getLastFetchETag() != null) {
                    this.frcSharedPrefs.setLastFetchETag(fetchResponseFetch.getLastFetchETag());
                }
                this.frcSharedPrefs.resetBackoff();
                return fetchResponseFetch;
            } catch (FirebaseRemoteConfigServerException e) {
                e = e;
                FirebaseRemoteConfigServerException firebaseRemoteConfigServerException = e;
                ConfigSharedPrefsClient.BackoffMetadata backoffMetadataUpdateAndReturnBackoffMetadata = updateAndReturnBackoffMetadata(firebaseRemoteConfigServerException.getHttpStatusCode(), date2);
                if (shouldThrottle(backoffMetadataUpdateAndReturnBackoffMetadata, firebaseRemoteConfigServerException.getHttpStatusCode())) {
                    throw new FirebaseRemoteConfigFetchThrottledException(backoffMetadataUpdateAndReturnBackoffMetadata.getBackoffEndTime().getTime());
                }
                throw createExceptionWithGenericMessage(firebaseRemoteConfigServerException);
            }
        } catch (FirebaseRemoteConfigServerException e2) {
            e = e2;
            date2 = date;
        }
    }

    private FirebaseRemoteConfigServerException createExceptionWithGenericMessage(FirebaseRemoteConfigServerException firebaseRemoteConfigServerException) throws FirebaseRemoteConfigClientException {
        String str;
        int httpStatusCode = firebaseRemoteConfigServerException.getHttpStatusCode();
        if (httpStatusCode == 401) {
            str = "The request did not have the required credentials. Please make sure your google-services.json is valid.";
        } else if (httpStatusCode == 403) {
            str = "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project.";
        } else {
            if (httpStatusCode == 429) {
                throw new FirebaseRemoteConfigClientException("The throttled response from the server was not handled correctly by the FRC SDK.");
            }
            if (httpStatusCode == 500) {
                str = "There was an internal server error.";
            } else {
                switch (httpStatusCode) {
                    case 502:
                    case 503:
                    case 504:
                        str = "The server is unavailable. Please try again later.";
                        break;
                    default:
                        str = "The server returned an unexpected error.";
                        break;
                }
            }
        }
        return new FirebaseRemoteConfigServerException(firebaseRemoteConfigServerException.getHttpStatusCode(), "Fetch failed: ".concat(str), firebaseRemoteConfigServerException);
    }

    private ConfigSharedPrefsClient.BackoffMetadata updateAndReturnBackoffMetadata(int i, Date date) {
        if (isThrottleableServerError(i)) {
            updateBackoffMetadataWithLastFailedFetchTime(date);
        }
        return this.frcSharedPrefs.getBackoffMetadata();
    }

    private void updateBackoffMetadataWithLastFailedFetchTime(Date date) {
        int numFailedFetches = this.frcSharedPrefs.getBackoffMetadata().getNumFailedFetches() + 1;
        this.frcSharedPrefs.setBackoffMetadata(numFailedFetches, new Date(date.getTime() + getRandomizedBackoffDurationInMillis(numFailedFetches)));
    }

    private long getRandomizedBackoffDurationInMillis(int i) {
        int[] iArr = BACKOFF_TIME_DURATIONS_IN_MINUTES;
        long millis = TimeUnit.MINUTES.toMillis(iArr[Math.min(i, iArr.length) - 1]);
        return (millis / 2) + ((long) this.randomGenerator.nextInt((int) millis));
    }

    private boolean shouldThrottle(ConfigSharedPrefsClient.BackoffMetadata backoffMetadata, int i) {
        return backoffMetadata.getNumFailedFetches() > 1 || i == 429;
    }

    private void updateLastFetchStatusAndTime(Task<FetchResponse> task, Date date) {
        if (task.isSuccessful()) {
            this.frcSharedPrefs.updateLastFetchAsSuccessfulAt(date);
            return;
        }
        Exception exception = task.getException();
        if (exception == null) {
            return;
        }
        boolean z = exception instanceof FirebaseRemoteConfigFetchThrottledException;
        ConfigSharedPrefsClient configSharedPrefsClient = this.frcSharedPrefs;
        if (z) {
            configSharedPrefsClient.updateLastFetchAsThrottled();
        } else {
            configSharedPrefsClient.updateLastFetchAsFailed();
        }
    }

    private Map<String, String> getUserProperties() {
        HashMap map = new HashMap();
        AnalyticsConnector analyticsConnector = this.analyticsConnector.get();
        if (analyticsConnector != null) {
            for (Map.Entry<String, Object> entry : analyticsConnector.getUserProperties(false).entrySet()) {
                map.put(entry.getKey(), entry.getValue().toString());
            }
        }
        return map;
    }

    private Long getFirstOpenTime() {
        AnalyticsConnector analyticsConnector = this.analyticsConnector.get();
        if (analyticsConnector == null) {
            return null;
        }
        return (Long) analyticsConnector.getUserProperties(true).get("_fot");
    }

    public long getTemplateVersionNumber() {
        return this.frcSharedPrefs.getLastTemplateVersion();
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class FetchResponse {
        private final Date fetchTime;
        private final ConfigContainer fetchedConfigs;
        private final String lastFetchETag;
        private final int status;

        private FetchResponse(Date date, int i, ConfigContainer configContainer, String str) {
            this.fetchTime = date;
            this.status = i;
            this.fetchedConfigs = configContainer;
            this.lastFetchETag = str;
        }

        public static FetchResponse forBackendUpdatesFetched(ConfigContainer configContainer, String str) {
            return new FetchResponse(configContainer.getFetchTime(), 0, configContainer, str);
        }

        public static FetchResponse forBackendHasNoUpdates(Date date, ConfigContainer configContainer) {
            return new FetchResponse(date, 1, configContainer, null);
        }

        public static FetchResponse forLocalStorageUsed(Date date) {
            return new FetchResponse(date, 2, null, null);
        }

        public String getLastFetchETag() {
            return this.lastFetchETag;
        }

        public int getStatus() {
            return this.status;
        }

        public ConfigContainer getFetchedConfigs() {
            return this.fetchedConfigs;
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public enum FetchType {
        BASE("BASE"),
        REALTIME("REALTIME");

        private final String value;

        FetchType(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }
}
