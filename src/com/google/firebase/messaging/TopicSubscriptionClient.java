package com.google.firebase.messaging;

import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.installations.InstallationTokenResult;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import okio.internal.ZipFilesKt$$ExternalSyntheticBUOutline2;
import org.vosk.Model$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
class TopicSubscriptionClient {
    private final FirebaseApp firebaseApp;
    private final FirebaseInstallationsApi firebaseInstallationsApi;
    private final FirebaseMessaging firebaseMessaging;

    public TopicSubscriptionClient(FirebaseApp firebaseApp, FirebaseMessaging firebaseMessaging, FirebaseInstallationsApi firebaseInstallationsApi) {
        this.firebaseInstallationsApi = firebaseInstallationsApi;
        this.firebaseApp = firebaseApp;
        this.firebaseMessaging = firebaseMessaging;
    }

    public void subscribe(String str) throws IOException {
        String token = ((InstallationTokenResult) awaitTask(this.firebaseInstallationsApi.getToken(false))).getToken();
        this.firebaseMessaging.blockingRegister(false);
        performTopicOperation(str, token, (String) awaitTask(this.firebaseInstallationsApi.getId()), "subscribe");
    }

    public void unsubscribe(String str) throws IOException {
        String token = ((InstallationTokenResult) awaitTask(this.firebaseInstallationsApi.getToken(false))).getToken();
        this.firebaseMessaging.blockingRegister(false);
        performTopicOperation(str, token, (String) awaitTask(this.firebaseInstallationsApi.getId()), "unsubscribe");
    }

    private void performTopicOperation(String str, String str2, String str3, String str4) throws IOException {
        if (str2 == null || str3 == null) {
            Model$$ExternalSyntheticBUOutline0.m1054m("FIS auth token or FIS ID is empty");
            return;
        }
        String projectId = this.firebaseApp.getOptions().getProjectId();
        String apiKey = this.firebaseApp.getOptions().getApiKey();
        if (projectId == null) {
            Model$$ExternalSyntheticBUOutline0.m1054m("Project ID or API Key is missing");
            return;
        }
        URL url = new URL("https://fcmregistrations.googleapis.com/v1/projects/" + projectId + "/registrations/" + str3 + "/topicSubscriptions/" + str + ":" + str4);
        if (isDebugLogEnabled()) {
            Log.d("FirebaseMessaging", "Topic " + str4 + " for: " + str + " with url: " + url);
        }
        HttpURLConnection httpURLConnectionCreateConnection = createConnection(url);
        httpURLConnectionCreateConnection.setRequestMethod("POST");
        httpURLConnectionCreateConnection.setRequestProperty("x-goog-api-key", apiKey);
        httpURLConnectionCreateConnection.setRequestProperty("x-goog-firebase-installations-auth", str2);
        httpURLConnectionCreateConnection.setDoOutput(false);
        try {
            try {
                int responseCode = httpURLConnectionCreateConnection.getResponseCode();
                httpURLConnectionCreateConnection.disconnect();
                if (responseCode >= 200 && responseCode < 300) {
                    if (isDebugLogEnabled()) {
                        Log.d("FirebaseMessaging", "Topic " + str4 + " for: " + str + " succeeded.");
                        return;
                    }
                    return;
                }
                if (responseCode == 404 || responseCode == 403) {
                    if (isDebugLogEnabled()) {
                        Log.d("FirebaseMessaging", "Topic " + str4 + " failed: " + httpURLConnectionCreateConnection.getResponseMessage());
                    }
                    ZipFilesKt$$ExternalSyntheticBUOutline2.m933m("Topic ", str4, " failed: ", httpURLConnectionCreateConnection.getResponseMessage());
                    return;
                }
                if (responseCode >= 500) {
                    Model$$ExternalSyntheticBUOutline0.m1054m("INTERNAL_SERVER_ERROR");
                    return;
                }
                throw new IOException("Topic " + str4 + " failed with status: " + responseCode);
            } catch (IOException e) {
                throw new IOException("SERVICE_NOT_AVAILABLE", e);
            }
        } catch (Throwable th) {
            httpURLConnectionCreateConnection.disconnect();
            throw th;
        }
    }

    public HttpURLConnection createConnection(URL url) {
        return (HttpURLConnection) url.openConnection();
    }

    private static <T> T awaitTask(Task<T> task) throws IOException {
        try {
            return (T) Tasks.await(task, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException | TimeoutException e) {
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new IOException(e2);
        }
    }

    public static boolean isDebugLogEnabled() {
        return Log.isLoggable("FirebaseMessaging", 3);
    }
}
