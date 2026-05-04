package com.exteragram.messenger.ai.network;

import android.text.TextUtils;
import android.util.Base64;
import com.android.dx.io.Opcodes;
import com.exteragram.messenger.ai.AiConfig;
import com.exteragram.messenger.ai.AiController;
import com.exteragram.messenger.ai.data.Message;
import com.exteragram.messenger.ai.data.Role;
import com.exteragram.messenger.ai.data.Service;
import com.exteragram.messenger.utils.network.ExteraHttpClient;
import com.exteragram.messenger.utils.text.TranslatorUtils;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.SharedConfig;

/* JADX INFO: loaded from: classes.dex */
public class Client {
    private static final int STREAM_SYMBOLS_LIMIT;
    private final ConcurrentHashMap activeRequests;
    private final ArrayList conversationHistory;
    private final OkHttpClient httpClient;
    private final AtomicBoolean isGenerating;
    private final Role roleOverride;
    private final Service serviceOverride;

    static {
        STREAM_SYMBOLS_LIMIT = SharedConfig.getDevicePerformanceClass() >= 1 ? 10 : 20;
    }

    private Client(Builder builder) {
        this.conversationHistory = new ArrayList();
        this.isGenerating = new AtomicBoolean(false);
        this.activeRequests = new ConcurrentHashMap();
        this.serviceOverride = builder.serviceOverride;
        this.roleOverride = builder.roleOverride;
        OkHttpClient.Builder builderDns = ExteraHttpClient.INSTANCE.getClient().newBuilder().dns(ProxyDns.INSTANCE);
        TimeUnit timeUnit = TimeUnit.MINUTES;
        this.httpClient = builderDns.connectTimeout(1L, timeUnit).readTimeout(5L, timeUnit).build();
    }

    public static String getMimeType(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String lowerCase = str.toLowerCase();
        if (lowerCase.endsWith(".png")) {
            return "image/png";
        }
        if (lowerCase.endsWith(".webp")) {
            return "image/webp";
        }
        if (lowerCase.endsWith(".heic") || lowerCase.endsWith(".heif")) {
            return "image/heic";
        }
        return "image/jpeg";
    }

    public static byte[] loadImageToByteArray(String str) {
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] bArr;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        if (!file.exists() || !file.isFile() || file.length() == 0) {
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    bArr = new byte[1024];
                } finally {
                }
            } finally {
            }
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i != -1) {
                    byteArrayOutputStream.write(bArr, 0, i);
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    fileInputStream.close();
                    return byteArray;
                }
            }
        } catch (IOException e) {
            FileLog.m954e("Error loading image: " + str, e);
            return null;
        }
    }

    private Service getSelectedService() {
        Service service = this.serviceOverride;
        return service != null ? service : AiController.getInstance().getSelected();
    }

    public String getResponse(String str, GenerationCallback generationCallback) {
        return getResponse(str, false, false, null, generationCallback);
    }

    public String getResponse(final String str, final boolean z, final boolean z2, final String str2, final GenerationCallback generationCallback) {
        final String string = UUID.randomUUID().toString();
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        this.activeRequests.put(string, executorServiceNewSingleThreadExecutor);
        executorServiceNewSingleThreadExecutor.execute(new Runnable() { // from class: com.exteragram.messenger.ai.network.Client$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getResponse$6(str2, str, z2, z, string, generationCallback);
            }
        });
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getResponse$6(String str, String str2, boolean z, boolean z2, final String str3, final GenerationCallback generationCallback) {
        final Exception exc;
        String mimeType;
        byte[] bArr;
        Request requestCreateRequest;
        this.isGenerating.set(true);
        try {
            if (AiController.canSendImage(str)) {
                try {
                    byte[] bArrLoadImageToByteArray = loadImageToByteArray(str);
                    mimeType = getMimeType(str);
                    bArr = bArrLoadImageToByteArray;
                } catch (Exception e) {
                    exc = e;
                }
            } else {
                bArr = null;
                mimeType = null;
            }
            try {
                requestCreateRequest = createRequest(getSelectedService(), str2, z, z2, bArr, mimeType);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            e = e3;
        }
        if (requestCreateRequest == null) {
            stopRequest(str3);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.ai.network.Client$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    generationCallback.onError(500, "Failed to create request body");
                }
            });
            return;
        }
        final Response responseExecute = this.httpClient.newCall(requestCreateRequest).execute();
        try {
            if (!responseExecute.isSuccessful()) {
                if (responseExecute.body() != null) {
                    try {
                        FileLog.m953e("AI_ERROR_RESPONSE_BODY (" + responseExecute.code() + "): " + responseExecute.body().string());
                    } catch (IOException e4) {
                        FileLog.m954e("AI_ERROR_READING_RESPONSE_BODY: ", e4);
                    }
                }
                stopRequest(str3);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.ai.network.Client$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        GenerationCallback generationCallback2 = generationCallback;
                        Response response = responseExecute;
                        generationCallback2.onError(response.code(), response.message().toLowerCase(Locale.ROOT));
                    }
                });
                responseExecute.close();
                return;
            }
            ResponseBody responseBodyBody = responseExecute.body();
            if (responseBodyBody == null) {
                stopRequest(str3);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.ai.network.Client$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        generationCallback.onError(Opcodes.SUB_DOUBLE_2ADDR, "Response body is null");
                    }
                });
            } else if (z) {
                handleStreamResponse(responseBodyBody, str3, z2, generationCallback);
            } else {
                final String responseContent = parseResponseContent(responseBodyBody.string(), false);
                if (responseContent == null) {
                    stopRequest(str3);
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.ai.network.Client$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            generationCallback.onError(500, "Failed to parse response");
                        }
                    });
                } else {
                    if (z2) {
                        this.conversationHistory.add(new Message("assistant", responseContent));
                        AiConfig.saveConversationHistory(this.conversationHistory);
                    }
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.ai.network.Client$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$getResponse$4(generationCallback, responseContent, str3);
                        }
                    });
                }
            }
            responseExecute.close();
            return;
        } finally {
        }
        e = e2;
        exc = e;
        FileLog.m954e("AI Error: ", exc);
        stopRequest(str3);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.ai.network.Client$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                GenerationCallback generationCallback2 = generationCallback;
                Exception exc2 = exc;
                generationCallback2.onError(500, exc2.getMessage() != null ? exc2.getMessage() : "Unknown error");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getResponse$4(GenerationCallback generationCallback, String str, String str2) {
        if (generationCallback != null) {
            generationCallback.onResponse(str);
            stopRequest(str2);
        }
    }

    private Request createRequest(Service service, String str, boolean z, boolean z2, byte[] bArr, String str2) {
        StringBuilder sb;
        String str3;
        String url = service.getUrl();
        if (TextUtils.isEmpty(url)) {
            return null;
        }
        if (url.contains("generativelanguage.googleapis")) {
            url = "https://generativelanguage.googleapis.com/v1beta/openai/";
        }
        if (url.endsWith("/")) {
            sb = new StringBuilder();
            sb.append(url);
            str3 = "chat/completions";
        } else {
            sb = new StringBuilder();
            sb.append(url);
            str3 = "/chat/completions";
        }
        sb.append(str3);
        String string = sb.toString();
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            Role selectedRole = this.roleOverride;
            if (selectedRole == null) {
                selectedRole = this.serviceOverride == null ? AiController.getInstance().getSelectedRole() : null;
            }
            if (selectedRole != null && !TextUtils.isEmpty(selectedRole.getPrompt())) {
                jSONArray.put(new JSONObject().put("role", "system").put("content", selectedRole.getPrompt()));
            }
            if (z2) {
                this.conversationHistory.clear();
                this.conversationHistory.addAll(AiConfig.getConversationHistory());
                ArrayList arrayList = this.conversationHistory;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    jSONArray.put(createMessageObject((Message) obj));
                }
                Message message = new Message("user", str, bArr, str2);
                this.conversationHistory.add(message);
                jSONArray.put(createMessageObject(message));
            } else {
                jSONArray.put(createMessageObject(new Message("user", str, bArr, str2)));
            }
            jSONObject.put("model", service.getModel());
            jSONObject.put("messages", jSONArray);
            jSONObject.put("stream", z);
            jSONObject.put("temperature", 1.0d);
            jSONObject.put("max_tokens", 4096);
            FileLog.m952d("AI_REQUEST_URL: " + string);
            FileLog.m952d("AI_REQUEST_MODEL: " + service.getModel());
            FileLog.m952d("AI_REQUEST_JSON: " + jSONObject.toString(2));
            return new Request.Builder().url(string).addHeader("Content-Type", "application/json").addHeader("Authorization", "Bearer " + service.getKey()).addHeader("User-Agent", TranslatorUtils.formatUserAgent()).addHeader("HTTP-Referer", "exteragram.app").addHeader("X-Title", "exteraGram").post(RequestBody.create(jSONObject.toString(), MediaType.parse("application/json"))).build();
        } catch (Exception e) {
            FileLog.m955e(e);
            return null;
        }
    }

    private JSONObject createMessageObject(Message message) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("role", message.role());
        if (message.getImageData() != null && !TextUtils.isEmpty(message.getMimeType())) {
            JSONArray jSONArray = new JSONArray();
            if (!TextUtils.isEmpty(message.content())) {
                jSONArray.put(new JSONObject().put("type", "text").put("text", message.content()));
            }
            jSONArray.put(new JSONObject().put("type", "image_url").put("image_url", new JSONObject().put("url", "data:" + message.getMimeType() + ";base64," + Base64.encodeToString(message.getImageData(), 2))));
            jSONObject.put("content", jSONArray);
            return jSONObject;
        }
        jSONObject.put("content", message.content());
        return jSONObject;
    }

    private void sendStreamChunk(final String str, final GenerationCallback generationCallback) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.ai.network.Client$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                Client.m1906$r8$lambda$JlF_AmYce5S235INYFhSLFbrY(generationCallback, str);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$JlF_A-mYce5S2-35INYFhSLFbrY, reason: not valid java name */
    public static /* synthetic */ void m1906$r8$lambda$JlF_AmYce5S235INYFhSLFbrY(GenerationCallback generationCallback, String str) {
        if (generationCallback != null) {
            generationCallback.onChunk(str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0044, code lost:
    
        if (r2 <= 0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
    
        sendStreamChunk(r0.toString(), r9);
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void handleStreamResponse(ResponseBody responseBody, final String str, boolean z, final GenerationCallback generationCallback) {
        final String strM172m;
        BufferedReader bufferedReader;
        StringBuilder sb = new StringBuilder();
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(responseBody.byteStream()));
        } catch (Exception e) {
            FileLog.m955e(e);
        }
        loop0: while (true) {
            int length = 0;
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null || !this.activeRequests.containsKey(str)) {
                        break loop0;
                    }
                    if (!TextUtils.isEmpty(line) && line.startsWith("data: ")) {
                        String strTrim = line.substring(6).trim();
                        if (strTrim.equals("[DONE]")) {
                            break loop0;
                        }
                        String responseContent = parseResponseContent(strTrim, true);
                        if (TextUtils.isEmpty(responseContent)) {
                            continue;
                        } else {
                            sb.append(responseContent);
                            length += responseContent.length();
                            if (length >= STREAM_SYMBOLS_LIMIT) {
                                break;
                            }
                        }
                        FileLog.m955e(e);
                        strM172m = Client$$ExternalSyntheticBackport0.m172m(sb.toString());
                        if (TextUtils.isEmpty(strM172m)) {
                            if (z) {
                                this.conversationHistory.add(new Message("assistant", strM172m));
                                AiConfig.saveConversationHistory(this.conversationHistory);
                            }
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.ai.network.Client$$ExternalSyntheticLambda8
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$handleStreamResponse$8(generationCallback, strM172m, str);
                                }
                            });
                            return;
                        }
                        stopRequest(str);
                        return;
                    }
                } finally {
                }
            }
            sendStreamChunk(sb.toString(), generationCallback);
        }
        bufferedReader.close();
        strM172m = Client$$ExternalSyntheticBackport0.m172m(sb.toString());
        if (TextUtils.isEmpty(strM172m)) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleStreamResponse$8(GenerationCallback generationCallback, String str, String str2) {
        if (generationCallback != null) {
            generationCallback.onResponse(str);
            stopRequest(str2);
        }
    }

    private String parseResponseContent(String str, boolean z) {
        try {
            JSONArray jSONArrayOptJSONArray = new JSONObject(str).optJSONArray("choices");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.getJSONObject(0).optJSONObject(z ? "delta" : "message");
                if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.has("content")) {
                    return jSONObjectOptJSONObject.optString("content", null);
                }
                return null;
            }
        } catch (Exception e) {
            FileLog.m955e(e);
        }
        return null;
    }

    public boolean isGenerating() {
        return this.isGenerating.get();
    }

    public void stopRequest(String str) {
        ExecutorService executorService = (ExecutorService) this.activeRequests.remove(str);
        if (executorService != null) {
            executorService.shutdownNow();
            try {
                executorService.awaitTermination(500L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        if (this.activeRequests.isEmpty()) {
            this.isGenerating.set(false);
        }
    }

    public static class Builder {
        private Role roleOverride;
        private Service serviceOverride;

        public Builder serviceOverride(Service service) {
            this.serviceOverride = service;
            return this;
        }

        public Builder roleOverride(Role role) {
            this.roleOverride = role;
            return this;
        }

        public Client build() {
            return new Client(this);
        }
    }
}
