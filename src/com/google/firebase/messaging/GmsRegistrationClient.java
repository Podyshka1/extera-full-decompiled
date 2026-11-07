package com.google.firebase.messaging;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.cloudmessaging.CloudMessaging;
import com.google.android.gms.cloudmessaging.CloudMessagingClient;
import com.google.android.gms.cloudmessaging.RegisterRequest;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.installations.InstallationTokenResult;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes5.dex */
class GmsRegistrationClient {
    private final FirebaseApp app;
    private final CloudMessagingClient client;
    private final FirebaseInstallationsApi firebaseInstallations;
    private final GmsRpc gmsRpc;
    private final Metadata metadata;

    public GmsRegistrationClient(Context context, FirebaseApp firebaseApp, FirebaseInstallationsApi firebaseInstallationsApi, GmsRpc gmsRpc, Metadata metadata) {
        this(firebaseApp, firebaseInstallationsApi, gmsRpc, CloudMessaging.getClient(context), metadata);
    }

    public GmsRegistrationClient(FirebaseApp firebaseApp, FirebaseInstallationsApi firebaseInstallationsApi, GmsRpc gmsRpc, CloudMessagingClient cloudMessagingClient, Metadata metadata) {
        this.client = cloudMessagingClient;
        this.app = firebaseApp;
        this.firebaseInstallations = firebaseInstallationsApi;
        this.gmsRpc = gmsRpc;
        this.metadata = metadata;
    }

    private boolean haveV1RegistrationSupport() {
        return this.metadata.getGmsVersionCode() >= 261200000;
    }

    public boolean isV1RegistrationEnabled() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        Context applicationContext = this.app.getApplicationContext();
        try {
            PackageManager packageManager = applicationContext.getPackageManager();
            if (packageManager == null || (bundle = (applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128)).metaData) == null || !bundle.containsKey("firebase_messaging_installation_id_enabled")) {
                return false;
            }
            return applicationInfo.metaData.getBoolean("firebase_messaging_installation_id_enabled");
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    private static boolean isFidAlreadyUsedException(Exception exc) {
        return (exc == null || TextUtils.isEmpty(exc.getMessage()) || !exc.getMessage().contains("FID_ALREADY_USED:")) ? false : true;
    }

    private Exception getOrCreateException(Task<?> task) {
        if (task.getException() != null) {
            return task.getException();
        }
        return new ExecutionException(new RuntimeException("Unexpected Error"));
    }

    private Task<Pair<String, String>> fetchFidCredentials(final ExecutorService executorService) {
        return this.firebaseInstallations.getToken(false).continueWithTask(executorService, new Continuation() { // from class: com.google.firebase.messaging.GmsRegistrationClient$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return GmsRegistrationClient.$r8$lambda$TQsaqh1pHhsdXIGyEUKAEw9pN1s(this.f$0, executorService, task);
            }
        });
    }

    public static /* synthetic */ Task $r8$lambda$TQsaqh1pHhsdXIGyEUKAEw9pN1s(final GmsRegistrationClient gmsRegistrationClient, ExecutorService executorService, Task task) {
        gmsRegistrationClient.getClass();
        if (!task.isSuccessful()) {
            return Tasks.forException(gmsRegistrationClient.getOrCreateException(task));
        }
        final String token = ((InstallationTokenResult) task.getResult()).getToken();
        return gmsRegistrationClient.firebaseInstallations.getId().continueWithTask(executorService, new Continuation() { // from class: com.google.firebase.messaging.GmsRegistrationClient$$ExternalSyntheticLambda4
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                return GmsRegistrationClient.$r8$lambda$dcA7IYHfufmIHy3QuCUwV4XCcgI(this.f$0, token, task2);
            }
        });
    }

    public static /* synthetic */ Task $r8$lambda$dcA7IYHfufmIHy3QuCUwV4XCcgI(GmsRegistrationClient gmsRegistrationClient, String str, Task task) {
        gmsRegistrationClient.getClass();
        if (!task.isSuccessful()) {
            return Tasks.forException(gmsRegistrationClient.getOrCreateException(task));
        }
        return Tasks.forResult(new Pair((String) task.getResult(), str));
    }

    public Task<String> register() {
        return registerInternal().continueWithTask(FcmExecutors.newTaskExecutor(), new Continuation() { // from class: com.google.firebase.messaging.GmsRegistrationClient$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return GmsRegistrationClient.$r8$lambda$OUM1JmnF2iBVOuCeLVZtNrCCf24(this.f$0, task);
            }
        });
    }

    public static /* synthetic */ Task $r8$lambda$OUM1JmnF2iBVOuCeLVZtNrCCf24(GmsRegistrationClient gmsRegistrationClient, Task task) {
        gmsRegistrationClient.getClass();
        if (task.isSuccessful() || !isFidAlreadyUsedException(task.getException())) {
            return task;
        }
        Log.w("FirebaseMessaging", "FID_ALREADY_USED Detected. Retrying with FID cache clearing!");
        gmsRegistrationClient.firebaseInstallations.clearFidCache();
        return gmsRegistrationClient.registerInternal();
    }

    private Task<String> registerInternal() {
        boolean zIsV1RegistrationEnabled = isV1RegistrationEnabled();
        if (!zIsV1RegistrationEnabled || !haveV1RegistrationSupport()) {
            return this.gmsRpc.getToken(zIsV1RegistrationEnabled);
        }
        final ExecutorService executorServiceNewNetworkIOExecutor = FcmExecutors.newNetworkIOExecutor();
        return fetchFidCredentials(executorServiceNewNetworkIOExecutor).continueWithTask(executorServiceNewNetworkIOExecutor, new Continuation() { // from class: com.google.firebase.messaging.GmsRegistrationClient$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return GmsRegistrationClient.m3554$r8$lambda$VrPDTirHwHxD1EQWet49g8Xzrc(this.f$0, executorServiceNewNetworkIOExecutor, task);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$VrPDTirHwHxD1EQWet49-g8Xzrc, reason: not valid java name */
    public static /* synthetic */ Task m3554$r8$lambda$VrPDTirHwHxD1EQWet49g8Xzrc(GmsRegistrationClient gmsRegistrationClient, ExecutorService executorService, Task task) {
        gmsRegistrationClient.getClass();
        if (!task.isSuccessful()) {
            return Tasks.forException(gmsRegistrationClient.getOrCreateException(task));
        }
        final String str = (String) ((Pair) task.getResult()).first;
        return gmsRegistrationClient.registerOverV1(str, (String) ((Pair) task.getResult()).second).continueWith(executorService, new Continuation() { // from class: com.google.firebase.messaging.GmsRegistrationClient$$ExternalSyntheticLambda3
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                return GmsRegistrationClient.m3555$r8$lambda$yKrHtNI8gEULM23BN53WFltEU(str, task2);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$yKr-HtNI8gEULM23BN5-3WFltEU, reason: not valid java name */
    public static /* synthetic */ String m3555$r8$lambda$yKrHtNI8gEULM23BN53WFltEU(String str, Task task) throws ExecutionException {
        if (!task.isSuccessful()) {
            throw new ExecutionException(task.getException());
        }
        String str2 = (String) task.getResult();
        if (TextUtils.isEmpty(str2) || !str2.endsWith(str)) {
            throw new ExecutionException(new IllegalArgumentException("Unexpected Error: FID NOT matching!"));
        }
        return str;
    }

    private Task<String> registerOverV1(String str, String str2) {
        String apiKey = this.app.getOptions().getApiKey();
        return this.client.register(new RegisterRequest(Metadata.getDefaultSenderId(this.app), this.app.getOptions().getApplicationId(), apiKey, str, str2, "fcm-25.1.2"));
    }
}
