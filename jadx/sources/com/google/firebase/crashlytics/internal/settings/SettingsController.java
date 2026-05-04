package com.google.firebase.crashlytics.internal.settings;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.common.CurrentTimeProvider;
import com.google.firebase.crashlytics.internal.common.DataCollectionArbiter;
import com.google.firebase.crashlytics.internal.common.DeliveryMechanism;
import com.google.firebase.crashlytics.internal.common.IdManager;
import com.google.firebase.crashlytics.internal.common.SystemCurrentTimeProvider;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.crashlytics.internal.network.HttpRequestFactory;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import com.google.firebase.crashlytics.internal.settings.SettingsController;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.internal.url._UrlKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class SettingsController implements SettingsProvider {
    private final CachedSettingsIo cachedSettingsIo;
    private final Context context;
    private final CurrentTimeProvider currentTimeProvider;
    private final DataCollectionArbiter dataCollectionArbiter;
    private final AtomicReference settings;
    private final SettingsJsonParser settingsJsonParser;
    private final SettingsRequest settingsRequest;
    private final SettingsSpiCall settingsSpiCall;
    private final AtomicReference settingsTask;

    SettingsController(Context context, SettingsRequest settingsRequest, CurrentTimeProvider currentTimeProvider, SettingsJsonParser settingsJsonParser, CachedSettingsIo cachedSettingsIo, SettingsSpiCall settingsSpiCall, DataCollectionArbiter dataCollectionArbiter) {
        AtomicReference atomicReference = new AtomicReference();
        this.settings = atomicReference;
        this.settingsTask = new AtomicReference(new TaskCompletionSource());
        this.context = context;
        this.settingsRequest = settingsRequest;
        this.currentTimeProvider = currentTimeProvider;
        this.settingsJsonParser = settingsJsonParser;
        this.cachedSettingsIo = cachedSettingsIo;
        this.settingsSpiCall = settingsSpiCall;
        this.dataCollectionArbiter = dataCollectionArbiter;
        atomicReference.set(DefaultSettingsJsonTransform.defaultSettings(currentTimeProvider));
    }

    public static SettingsController create(Context context, String str, IdManager idManager, HttpRequestFactory httpRequestFactory, String str2, String str3, FileStore fileStore, DataCollectionArbiter dataCollectionArbiter) {
        String installerPackageName = idManager.getInstallerPackageName();
        SystemCurrentTimeProvider systemCurrentTimeProvider = new SystemCurrentTimeProvider();
        return new SettingsController(context, new SettingsRequest(str, idManager.getModelName(), idManager.getOsBuildVersionString(), idManager.getOsDisplayVersionString(), idManager, CommonUtils.createInstanceIdFrom(CommonUtils.getMappingFileId(context), str, str3, str2), str3, str2, DeliveryMechanism.determineFrom(installerPackageName).getId()), systemCurrentTimeProvider, new SettingsJsonParser(systemCurrentTimeProvider), new CachedSettingsIo(fileStore), new DefaultSettingsSpiCall(String.format(Locale.US, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings", str), httpRequestFactory), dataCollectionArbiter);
    }

    @Override // com.google.firebase.crashlytics.internal.settings.SettingsProvider
    public Task getSettingsAsync() {
        return ((TaskCompletionSource) this.settingsTask.get()).getTask();
    }

    @Override // com.google.firebase.crashlytics.internal.settings.SettingsProvider
    public Settings getSettingsSync() {
        return (Settings) this.settings.get();
    }

    public Task loadSettingsData(CrashlyticsWorkers crashlyticsWorkers) {
        return loadSettingsData(SettingsCacheBehavior.USE_CACHE, crashlyticsWorkers);
    }

    public Task loadSettingsData(SettingsCacheBehavior settingsCacheBehavior, CrashlyticsWorkers crashlyticsWorkers) throws Throwable {
        Settings cachedSettingsData;
        if (!buildInstanceIdentifierChanged() && (cachedSettingsData = getCachedSettingsData(settingsCacheBehavior)) != null) {
            this.settings.set(cachedSettingsData);
            ((TaskCompletionSource) this.settingsTask.get()).trySetResult(cachedSettingsData);
            return Tasks.forResult(null);
        }
        Settings cachedSettingsData2 = getCachedSettingsData(SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION);
        if (cachedSettingsData2 != null) {
            this.settings.set(cachedSettingsData2);
            ((TaskCompletionSource) this.settingsTask.get()).trySetResult(cachedSettingsData2);
        }
        return this.dataCollectionArbiter.waitForDataCollectionPermission().onSuccessTask(crashlyticsWorkers.common, new C18701(crashlyticsWorkers));
    }

    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.settings.SettingsController$1 */
    /* JADX INFO: loaded from: classes5.dex */
    class C18701 implements SuccessContinuation {
        final /* synthetic */ CrashlyticsWorkers val$crashlyticsWorkers;

        C18701(CrashlyticsWorkers crashlyticsWorkers) {
            this.val$crashlyticsWorkers = crashlyticsWorkers;
        }

        @Override // com.google.android.gms.tasks.SuccessContinuation
        public Task then(Void r5) throws Throwable {
            JSONObject jSONObject = (JSONObject) this.val$crashlyticsWorkers.network.getExecutor().submit(new Callable() { // from class: com.google.firebase.crashlytics.internal.settings.SettingsController$1$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    SettingsController.C18701 c18701 = this.f$0;
                    return SettingsController.this.settingsSpiCall.invoke(SettingsController.this.settingsRequest, true);
                }
            }).get();
            if (jSONObject != null) {
                Settings settingsJson = SettingsController.this.settingsJsonParser.parseSettingsJson(jSONObject);
                SettingsController.this.cachedSettingsIo.writeCachedSettings(settingsJson.expiresAtMillis, jSONObject);
                SettingsController.this.logSettings(jSONObject, "Loaded settings: ");
                SettingsController settingsController = SettingsController.this;
                settingsController.setStoredBuildInstanceIdentifier(settingsController.settingsRequest.instanceId);
                SettingsController.this.settings.set(settingsJson);
                ((TaskCompletionSource) SettingsController.this.settingsTask.get()).trySetResult(settingsJson);
            }
            return Tasks.forResult(null);
        }
    }

    private Settings getCachedSettingsData(SettingsCacheBehavior settingsCacheBehavior) throws Throwable {
        Settings settings = null;
        try {
            if (!SettingsCacheBehavior.SKIP_CACHE_LOOKUP.equals(settingsCacheBehavior)) {
                JSONObject cachedSettings = this.cachedSettingsIo.readCachedSettings();
                if (cachedSettings != null) {
                    Settings settingsJson = this.settingsJsonParser.parseSettingsJson(cachedSettings);
                    if (settingsJson != null) {
                        logSettings(cachedSettings, "Loaded cached settings: ");
                        long currentTimeMillis = this.currentTimeProvider.getCurrentTimeMillis();
                        if (!SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION.equals(settingsCacheBehavior) && settingsJson.isExpired(currentTimeMillis)) {
                            Logger.getLogger().m507v("Cached settings have expired.");
                            return null;
                        }
                        try {
                            Logger.getLogger().m507v("Returning cached settings.");
                            return settingsJson;
                        } catch (Exception e) {
                            e = e;
                            settings = settingsJson;
                            Logger.getLogger().m504e("Failed to get cached settings", e);
                            return settings;
                        }
                    }
                    Logger.getLogger().m504e("Failed to parse cached settings data.", null);
                    return null;
                }
                Logger.getLogger().m501d("No cached settings data found.");
            }
            return null;
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logSettings(JSONObject jSONObject, String str) {
        Logger.getLogger().m501d(str + jSONObject.toString());
    }

    private String getStoredBuildInstanceIdentifier() {
        return CommonUtils.getSharedPrefs(this.context).getString("existing_instance_identifier", _UrlKt.FRAGMENT_ENCODE_SET);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean setStoredBuildInstanceIdentifier(String str) {
        SharedPreferences.Editor editorEdit = CommonUtils.getSharedPrefs(this.context).edit();
        editorEdit.putString("existing_instance_identifier", str);
        editorEdit.apply();
        return true;
    }

    boolean buildInstanceIdentifierChanged() {
        return !getStoredBuildInstanceIdentifier().equals(this.settingsRequest.instanceId);
    }
}
