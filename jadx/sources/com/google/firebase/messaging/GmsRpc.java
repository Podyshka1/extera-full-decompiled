package com.google.firebase.messaging;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.credentials.CredentialManager$$ExternalSyntheticLambda0;
import com.google.android.gms.cloudmessaging.Rpc;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.installations.InstallationTokenResult;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
class GmsRpc {
    private final FirebaseApp app;
    private final FirebaseInstallationsApi firebaseInstallations;
    private final Provider heartbeatInfo;
    private final Metadata metadata;
    private final Rpc rpc;
    private final Provider userAgentPublisher;

    GmsRpc(FirebaseApp firebaseApp, Metadata metadata, Provider provider, Provider provider2, FirebaseInstallationsApi firebaseInstallationsApi) {
        this(firebaseApp, metadata, new Rpc(firebaseApp.getApplicationContext()), provider, provider2, firebaseInstallationsApi);
    }

    GmsRpc(FirebaseApp firebaseApp, Metadata metadata, Rpc rpc, Provider provider, Provider provider2, FirebaseInstallationsApi firebaseInstallationsApi) {
        this.app = firebaseApp;
        this.metadata = metadata;
        this.rpc = rpc;
        this.userAgentPublisher = provider;
        this.heartbeatInfo = provider2;
        this.firebaseInstallations = firebaseInstallationsApi;
    }

    Task getToken() {
        return extractResponseWhenComplete(startRpc(Metadata.getDefaultSenderId(this.app), "*", new Bundle()));
    }

    Task subscribeToTopic(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str2);
        return extractResponseWhenComplete(startRpc(str, "/topics/" + str2, bundle));
    }

    Task unsubscribeFromTopic(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str2);
        bundle.putString("delete", "1");
        return extractResponseWhenComplete(startRpc(str, "/topics/" + str2, bundle));
    }

    Task setRetainProxiedNotifications(boolean z) {
        return this.rpc.setRetainProxiedNotifications(z);
    }

    Task getProxyNotificationData() {
        return this.rpc.getProxiedNotificationData();
    }

    private Task startRpc(String str, String str2, Bundle bundle) {
        try {
            setDefaultAttributesToBundle(str, str2, bundle);
            return this.rpc.send(bundle);
        } catch (InterruptedException | ExecutionException e) {
            return Tasks.forException(e);
        }
    }

    private static String base64UrlSafe(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    private String getHashedFirebaseAppName() {
        try {
            return base64UrlSafe(MessageDigest.getInstance("SHA-1").digest(this.app.getName().getBytes()));
        } catch (NoSuchAlgorithmException unused) {
            return "[HASH-ERROR]";
        }
    }

    private void setDefaultAttributesToBundle(String str, String str2, Bundle bundle) {
        HeartBeatInfo.HeartBeat heartBeatCode;
        bundle.putString("scope", str2);
        bundle.putString("sender", str);
        bundle.putString("subtype", str);
        bundle.putString("gmp_app_id", this.app.getOptions().getApplicationId());
        bundle.putString("gmsv", Integer.toString(this.metadata.getGmsVersionCode()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.metadata.getAppVersionCode());
        bundle.putString("app_ver_name", this.metadata.getAppVersionName());
        bundle.putString("firebase-app-name-hash", getHashedFirebaseAppName());
        try {
            String token = ((InstallationTokenResult) Tasks.await(this.firebaseInstallations.getToken(false))).getToken();
            if (TextUtils.isEmpty(token)) {
                Log.w("FirebaseMessaging", "FIS auth token is empty");
            } else {
                bundle.putString("Goog-Firebase-Installations-Auth", token);
            }
        } catch (InterruptedException e) {
            e = e;
            Log.e("FirebaseMessaging", "Failed to get FIS auth token", e);
        } catch (ExecutionException e2) {
            e = e2;
            Log.e("FirebaseMessaging", "Failed to get FIS auth token", e);
        }
        bundle.putString("appid", (String) Tasks.await(this.firebaseInstallations.getId()));
        bundle.putString("cliv", "fcm-25.0.1");
        HeartBeatInfo heartBeatInfo = (HeartBeatInfo) this.heartbeatInfo.get();
        UserAgentPublisher userAgentPublisher = (UserAgentPublisher) this.userAgentPublisher.get();
        if (heartBeatInfo == null || userAgentPublisher == null || (heartBeatCode = heartBeatInfo.getHeartBeatCode("fire-iid")) == HeartBeatInfo.HeartBeat.NONE) {
            return;
        }
        bundle.putString("Firebase-Client-Log-Type", Integer.toString(heartBeatCode.getCode()));
        bundle.putString("Firebase-Client", userAgentPublisher.getUserAgent());
    }

    private String handleResponse(Bundle bundle) throws IOException {
        if (bundle == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String string = bundle.getString("registration_id");
        if (string != null) {
            return string;
        }
        String string2 = bundle.getString("unregistered");
        if (string2 != null) {
            return string2;
        }
        String string3 = bundle.getString("error");
        if ("RST".equals(string3)) {
            throw new IOException("INSTANCE_ID_RESET");
        }
        if (string3 != null) {
            throw new IOException(string3);
        }
        Log.w("FirebaseMessaging", "Unexpected response: " + bundle, new Throwable());
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    private Task extractResponseWhenComplete(Task task) {
        return task.continueWith(new CredentialManager$$ExternalSyntheticLambda0(), new Continuation() { // from class: com.google.firebase.messaging.GmsRpc$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                return GmsRpc.m3548$r8$lambda$2BiID9R3pQgoZ0D5C67gHAjWVU(this.f$0, task2);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$2BiID9R3pQ-goZ0D5C67gHAjWVU, reason: not valid java name */
    public static /* synthetic */ String m3548$r8$lambda$2BiID9R3pQgoZ0D5C67gHAjWVU(GmsRpc gmsRpc, Task task) {
        gmsRpc.getClass();
        return gmsRpc.handleResponse((Bundle) task.getResult(IOException.class));
    }

    static boolean isErrorMessageForRetryableError(String str) {
        return "SERVICE_NOT_AVAILABLE".equals(str) || "INTERNAL_SERVER_ERROR".equals(str) || "InternalServerError".equals(str);
    }
}
