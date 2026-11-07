package com.exteragram.messenger.ai.network.backend;

import android.text.TextUtils;
import android.util.Base64;
import com.android.dx.io.Opcodes;
import com.android.tools.r8.RecordTag;
import com.exteragram.messenger.ai.data.Message;
import com.exteragram.messenger.ai.data.Role;
import com.exteragram.messenger.ai.data.Service;
import com.exteragram.messenger.ai.network.Client$ImagePayload$$ExternalSyntheticRecord1;
import com.exteragram.messenger.ai.network.ProxyDns;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.translator.TranslatorUtils;
import com.exteragram.messenger.utils.network.ExteraHttpClient;
import com.google.android.gms.cast.MediaError;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.SharedConfig;

/* JADX INFO: loaded from: classes4.dex */
public class RestBackend implements Backend {
    private static final String[] ERROR_MESSAGE_KEYS;
    private static final String[] REASONING_ERROR_KEYWORDS;
    private static final int STREAM_SYMBOLS_LIMIT;
    private static final Map<String, RequestOptions> requestOptionsFallbacks;
    private final OkHttpClient httpClient;

    @Override // com.exteragram.messenger.ai.network.backend.Backend
    public int getHistoryCharsLimit() {
        return 24000;
    }

    @Override // com.exteragram.messenger.ai.network.backend.Backend
    public int getHistoryMessagesLimit() {
        return 32;
    }

    @Override // com.exteragram.messenger.ai.network.backend.Backend
    public int getMaxOutputTokens() {
        return 4096;
    }

    @Override // com.exteragram.messenger.ai.network.backend.Backend
    public float getMaxTemperature() {
        return 2.0f;
    }

    @Override // com.exteragram.messenger.ai.network.backend.Backend
    public boolean supportsImages() {
        return true;
    }

    static {
        STREAM_SYMBOLS_LIMIT = SharedConfig.getDevicePerformanceClass() >= 1 ? 10 : 20;
        REASONING_ERROR_KEYWORDS = new String[]{"reasoning", "thinking", "effort"};
        ERROR_MESSAGE_KEYS = new String[]{"error", "message", "detail"};
        requestOptionsFallbacks = new ConcurrentHashMap();
    }

    public RestBackend() {
        OkHttpClient.Builder builderDns = ExteraHttpClient.INSTANCE.getClient().newBuilder().dns(ProxyDns.INSTANCE);
        TimeUnit timeUnit = TimeUnit.MINUTES;
        this.httpClient = builderDns.connectTimeout(1L, timeUnit).readTimeout(5L, timeUnit).build();
    }

    @Override // com.exteragram.messenger.ai.network.backend.Backend
    public void execute(BackendRequest backendRequest, BackendSink backendSink) {
        String strString;
        Endpoint endpointResolveEndpoint = resolveEndpoint(backendRequest.service().getUrl());
        if (endpointResolveEndpoint == null) {
            backendSink.onError(MediaError.DetailedErrorCode.SEGMENT_UNKNOWN, "Failed to create request body");
            return;
        }
        Service service = backendRequest.service();
        String str = endpointResolveEndpoint.url() + '\n' + service.getModel() + '\n' + service.isReasoningEnabled();
        RequestOptions requestOptions = new RequestOptions(getDisabledReasoningEffort(service), !endpointResolveEndpoint.responsesApi() && isOpenAiService(endpointResolveEndpoint.url().toLowerCase(Locale.ROOT)), false);
        RequestOptions orDefault = requestOptionsFallbacks.getOrDefault(str, requestOptions);
        while (true) {
            Request requestCreateRequest = createRequest(backendRequest, endpointResolveEndpoint, orDefault);
            if (requestCreateRequest == null) {
                backendSink.onError(MediaError.DetailedErrorCode.SEGMENT_UNKNOWN, "Failed to create request body");
                return;
            }
            if (!backendSink.isActive()) {
                return;
            }
            Call callNewCall = this.httpClient.newCall(requestCreateRequest);
            Objects.requireNonNull(callNewCall);
            backendSink.onCancellable(new RestBackend$$ExternalSyntheticLambda0(callNewCall));
            Response responseExecute = callNewCall.execute();
            try {
                if (!responseExecute.getIsSuccessful()) {
                    try {
                        strString = responseExecute.body().string();
                    } catch (IOException e) {
                        e = e;
                        strString = null;
                    }
                    try {
                        FileLog.m1038e("AI_ERROR_RESPONSE_BODY (" + responseExecute.code() + "): " + strString);
                    } catch (IOException e2) {
                        e = e2;
                        FileLog.m1039e("AI_ERROR_READING_RESPONSE_BODY: ", e);
                    }
                    String errorMessage = parseErrorMessage(strString, responseExecute.message());
                    RequestOptions fallbackOptions = getFallbackOptions(orDefault, responseExecute.code(), errorMessage);
                    if (fallbackOptions != null) {
                        FileLog.m1037d("AI_REQUEST_FALLBACK: " + orDefault + " -> " + fallbackOptions);
                        responseExecute.close();
                        orDefault = fallbackOptions;
                    } else {
                        backendSink.onError(responseExecute.code(), errorMessage);
                        responseExecute.close();
                        return;
                    }
                } else {
                    if (!orDefault.equals(requestOptions)) {
                        requestOptionsFallbacks.put(str, orDefault);
                    }
                    handleResponse(responseExecute, backendRequest, endpointResolveEndpoint, backendSink);
                    responseExecute.close();
                    return;
                }
            } catch (Throwable th) {
                if (responseExecute != null) {
                    try {
                        responseExecute.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
    }

    private void handleResponse(Response response, BackendRequest backendRequest, Endpoint endpoint, BackendSink backendSink) {
        ResponseBody responseBodyBody = response.body();
        if (backendRequest.stream()) {
            handleStreamResponse(responseBodyBody, backendSink, endpoint.responsesApi());
            return;
        }
        String strString = responseBodyBody.string();
        String responseContent = parseResponseContent(strString, endpoint.responsesApi());
        if (TextUtils.isEmpty(responseContent)) {
            String strExtractErrorMessage = extractErrorMessage(strString);
            if (!TextUtils.isEmpty(strExtractErrorMessage)) {
                backendSink.onError(MediaError.DetailedErrorCode.SEGMENT_UNKNOWN, strExtractErrorMessage);
                return;
            }
        }
        if (responseContent == null) {
            backendSink.onError(MediaError.DetailedErrorCode.SEGMENT_UNKNOWN, "Failed to parse response");
        } else {
            backendSink.onComplete(responseContent);
        }
    }

    private Endpoint resolveEndpoint(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Locale locale = Locale.ROOT;
        String lowerCase = str.toLowerCase(locale);
        boolean z = false;
        if (isGeminiService(lowerCase)) {
            return new Endpoint("https://generativelanguage.googleapis.com/v1beta/openai/chat/completions", z);
        }
        boolean z2 = true;
        if (isPerplexityService(lowerCase) && !lowerCase.contains("/router")) {
            return new Endpoint("https://api.perplexity.ai/v1/agent", z2);
        }
        if (str.endsWith("/")) {
            str = str.substring(0, str.length() - 1);
        }
        String lowerCase2 = str.toLowerCase(locale);
        if (lowerCase2.endsWith("/responses") || lowerCase2.endsWith("/agent")) {
            return new Endpoint(str, z2);
        }
        if (!lowerCase2.endsWith("/chat/completions")) {
            str = str.concat("/chat/completions");
        }
        return new Endpoint(str, z);
    }

    private Request createRequest(BackendRequest backendRequest, Endpoint endpoint, RequestOptions requestOptions) {
        Service service = backendRequest.service();
        boolean zResponsesApi = endpoint.responsesApi();
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            Role role = backendRequest.role();
            if (role != null && !TextUtils.isEmpty(role.getPrompt())) {
                if (zResponsesApi) {
                    jSONObject.put("instructions", role.getPrompt());
                } else {
                    jSONArray.put(new JSONObject().put("role", "system").put("content", role.getPrompt()));
                }
            }
            Iterator<Message> it = backendRequest.history().iterator();
            while (it.hasNext()) {
                jSONArray.put(createMessageObject(it.next(), zResponsesApi));
            }
            jSONArray.put(createMessageObject(backendRequest.currentMessage(), zResponsesApi));
            jSONObject.put("model", service.getModel());
            jSONObject.put(zResponsesApi ? PluginsConstants.Settings.TYPE_INPUT : "messages", jSONArray);
            jSONObject.put("stream", backendRequest.stream());
            if (!requestOptions.defaultTemperature()) {
                jSONObject.put("temperature", backendRequest.temperature());
            }
            boolean z = true;
            applyReasoningEffort(jSONObject, requestOptions.reasoningEffort(), zResponsesApi || isOpenRouterService(service.getUrl().toLowerCase(Locale.ROOT)));
            if (zResponsesApi) {
                jSONObject.put("max_output_tokens", backendRequest.maxOutputTokens());
            } else {
                jSONObject.put(requestOptions.maxCompletionTokens() ? "max_completion_tokens" : "max_tokens", backendRequest.maxOutputTokens());
            }
            if (zResponsesApi) {
                jSONObject.put("store", false);
            }
            FileLog.m1037d("AI_REQUEST_URL: " + endpoint.url());
            FileLog.m1037d("AI_REQUEST_MODEL: " + service.getModel());
            StringBuilder sb = new StringBuilder();
            sb.append("AI_REQUEST_MESSAGES: ");
            sb.append(jSONArray.length());
            sb.append(", stream=");
            sb.append(backendRequest.stream());
            sb.append(", image=");
            if (backendRequest.currentMessage().getImageData() == null) {
                z = false;
            }
            sb.append(z);
            FileLog.m1037d(sb.toString());
            return new Request.Builder().url(endpoint.url()).addHeader("Content-Type", "application/json").addHeader("Authorization", "Bearer " + service.getKey()).addHeader("User-Agent", TranslatorUtils.formatUserAgent()).addHeader("HTTP-Referer", "exteragram.app").addHeader("X-Title", "exteraGram").post(RequestBody.create(jSONObject.toString(), MediaType.parse("application/json"))).build();
        } catch (Exception e) {
            FileLog.m1040e(e);
            return null;
        }
    }

    private String getDisabledReasoningEffort(Service service) {
        if (service.isReasoningEnabled()) {
            return null;
        }
        String url = service.getUrl();
        String model = service.getModel();
        String lowerCase = _UrlKt.FRAGMENT_ENCODE_SET;
        String lowerCase2 = url == null ? _UrlKt.FRAGMENT_ENCODE_SET : url.toLowerCase(Locale.ROOT);
        if (model != null) {
            lowerCase = model.toLowerCase(Locale.ROOT);
        }
        if (isOpenRouterService(lowerCase2)) {
            return "none";
        }
        if (isGeminiService(lowerCase2) && isGeminiReasoningModel(lowerCase)) {
            return getGeminiReasoningEffort(lowerCase);
        }
        if (isOpenAiService(lowerCase2) && isOpenAiReasoningModel(lowerCase)) {
            return getOpenAiReasoningEffort(lowerCase);
        }
        if (isPerplexityService(lowerCase2) && (isGeminiReasoningModel(lowerCase) || isOpenAiReasoningModel(lowerCase))) {
            return "minimal";
        }
        return null;
    }

    private void applyReasoningEffort(JSONObject jSONObject, String str, boolean z) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (z) {
            jSONObject.put("reasoning", new JSONObject().put("effort", str));
        } else {
            jSONObject.put("reasoning_effort", str);
        }
    }

    private RequestOptions getFallbackOptions(RequestOptions requestOptions, int i, String str) {
        if ((i != 400 && i != 422) || TextUtils.isEmpty(str)) {
            return null;
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        boolean z = true;
        if (!requestOptions.maxCompletionTokens() && lowerCase.contains("max_tokens") && lowerCase.contains("max_completion_tokens")) {
            return new RequestOptions(requestOptions.reasoningEffort(), z, requestOptions.defaultTemperature());
        }
        if (!requestOptions.defaultTemperature() && lowerCase.contains("temperature")) {
            return new RequestOptions(requestOptions.reasoningEffort(), requestOptions.maxCompletionTokens(), z);
        }
        if (TextUtils.isEmpty(requestOptions.reasoningEffort()) || !containsReasoningKeyword(lowerCase)) {
            return null;
        }
        return new RequestOptions(getNextReasoningEffort(requestOptions.reasoningEffort()), requestOptions.maxCompletionTokens(), requestOptions.defaultTemperature());
    }

    private boolean containsReasoningKeyword(String str) {
        for (String str2 : REASONING_ERROR_KEYWORDS) {
            if (str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    private String getNextReasoningEffort(String str) {
        str.getClass();
        if (str.equals("none")) {
            return "minimal";
        }
        if (str.equals("minimal")) {
            return "low";
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    private boolean isOpenRouterService(String str) {
        return str.contains("openrouter.ai");
    }

    private boolean isGeminiService(String str) {
        return str.contains("generativelanguage.googleapis");
    }

    private boolean isGeminiReasoningModel(String str) {
        String strStripProviderPrefix = stripProviderPrefix(str);
        return strStripProviderPrefix.startsWith("gemini-2.5") || strStripProviderPrefix.startsWith("gemini-3") || strStripProviderPrefix.contains("thinking");
    }

    private boolean isOpenAiService(String str) {
        return str.contains("api.openai.com");
    }

    private boolean isPerplexityService(String str) {
        return str.contains("api.perplexity.ai");
    }

    private String getGeminiReasoningEffort(String str) {
        if (str.contains("gemini-2.5") && !str.contains("pro")) {
            return "none";
        }
        if (str.contains("gemini-3") && str.contains("pro")) {
            return "low";
        }
        return "minimal";
    }

    private boolean isOpenAiReasoningModel(String str) {
        String strStripProviderPrefix = stripProviderPrefix(str);
        if (strStripProviderPrefix.contains("gpt-5-chat")) {
            return false;
        }
        return strStripProviderPrefix.startsWith("gpt-5") || strStripProviderPrefix.startsWith("o1") || strStripProviderPrefix.startsWith("o3") || strStripProviderPrefix.startsWith("o4");
    }

    private String getOpenAiReasoningEffort(String str) {
        String strStripProviderPrefix = stripProviderPrefix(str);
        if (strStripProviderPrefix.startsWith("o")) {
            return "low";
        }
        return supportsOpenAiNoReasoning(strStripProviderPrefix) ? "none" : "minimal";
    }

    private boolean supportsOpenAiNoReasoning(String str) {
        return str.startsWith("gpt-5.1") || str.startsWith("gpt-5.2") || str.startsWith("gpt-5.3") || str.startsWith("gpt-5.4") || str.startsWith("gpt-5.5");
    }

    private String stripProviderPrefix(String str) {
        int iIndexOf = str.indexOf(47);
        return iIndexOf >= 0 ? str.substring(iIndexOf + 1) : str;
    }

    private JSONObject createMessageObject(Message message, boolean z) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (z) {
            jSONObject.put("type", "message");
        }
        jSONObject.put("role", message.role());
        if (message.getImageData() != null && !TextUtils.isEmpty(message.getMimeType())) {
            JSONArray jSONArray = new JSONArray();
            if (!TextUtils.isEmpty(message.content())) {
                jSONArray.put(new JSONObject().put("type", z ? "input_text" : "text").put("text", message.content()));
            }
            String str = "data:" + message.getMimeType() + ";base64," + Base64.encodeToString(message.getImageData(), 2);
            if (z) {
                jSONArray.put(new JSONObject().put("type", "input_image").put("image_url", str));
            } else {
                jSONArray.put(new JSONObject().put("type", "image_url").put("image_url", new JSONObject().put("url", str)));
            }
            jSONObject.put("content", jSONArray);
            return jSONObject;
        }
        jSONObject.put("content", message.content());
        return jSONObject;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.exteragram.messenger.ai.network.backend.RestBackend-IA] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v9 */
    private void handleStreamResponse(ResponseBody responseBody, BackendSink backendSink, boolean z) {
        StreamResponsePart streamResponsePart;
        StringBuilder sb = new StringBuilder();
        String message = 0;
        strError = null;
        strError = null;
        strError = null;
        String strError = null;
        ReasoningContentFilter reasoningContentFilter = new ReasoningContentFilter();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(responseBody.byteStream()));
            int length = 0;
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null || !backendSink.isActive()) {
                        break;
                    }
                    if (!TextUtils.isEmpty(line) && line.startsWith("data:")) {
                        String strTrim = line.substring(5).trim();
                        if (strTrim.equals("[DONE]")) {
                            streamResponsePart = StreamResponsePart.DONE;
                        } else if (z) {
                            streamResponsePart = parseResponsesStreamPart(strTrim);
                        } else {
                            streamResponsePart = parseStreamResponsePart(strTrim);
                        }
                        if (streamResponsePart.error() != null) {
                            strError = streamResponsePart.error();
                            break;
                        }
                        if (streamResponsePart.hasReasoning()) {
                            backendSink.onThinking();
                        }
                        String strFilter = reasoningContentFilter.filter(streamResponsePart.content());
                        if (reasoningContentFilter.consumeReasoningSignal()) {
                            backendSink.onThinking();
                        }
                        if (!TextUtils.isEmpty(strFilter)) {
                            sb.append(strFilter);
                            length += strFilter.length();
                            if (length >= STREAM_SYMBOLS_LIMIT) {
                                backendSink.onChunk(sb.toString());
                                length = 0;
                            }
                        }
                        if (streamResponsePart.done()) {
                            if (length > 0) {
                                backendSink.onChunk(sb.toString());
                            }
                        }
                    }
                } finally {
                }
            }
            bufferedReader.close();
            message = strError;
        } catch (Exception e) {
            if (backendSink.isActive()) {
                FileLog.m1040e(e);
                message = e.getMessage() != null ? e.getMessage() : "Unknown error";
            }
        }
        if (backendSink.isActive()) {
            if (message != 0) {
                backendSink.onError(MediaError.DetailedErrorCode.SEGMENT_UNKNOWN, message);
                return;
            }
            String strFlush = reasoningContentFilter.flush();
            if (!TextUtils.isEmpty(strFlush)) {
                sb.append(strFlush);
                backendSink.onChunk(sb.toString());
            }
            String strTrimTrailing = trimTrailing(sb.toString());
            if (!TextUtils.isEmpty(strTrimTrailing)) {
                backendSink.onComplete(strTrimTrailing);
            } else {
                backendSink.onError(Opcodes.SUB_DOUBLE_2ADDR, "Response body is empty");
            }
        }
    }

    private String parseResponseContent(String str, boolean z) {
        JSONObject jSONObjectOptJSONObject;
        Object objOpt;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (z) {
                String responsesOutput = parseResponsesOutput(jSONObject);
                if (responsesOutput != null) {
                    return stripReasoningMarkup(responsesOutput);
                }
                return null;
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("choices");
            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0 || (jSONObjectOptJSONObject = jSONArrayOptJSONArray.getJSONObject(0).optJSONObject("message")) == null || !jSONObjectOptJSONObject.has("content") || jSONObjectOptJSONObject.isNull("content") || (objOpt = jSONObjectOptJSONObject.opt("content")) == null) {
                return null;
            }
            return stripReasoningMarkup(objOpt.toString());
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
        return null;
    }

    private String parseResponsesOutput(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("output");
        if (jSONArrayOptJSONArray == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
            JSONArray jSONArrayOptJSONArray2 = (jSONObjectOptJSONObject == null || !"message".equals(jSONObjectOptJSONObject.optString("type"))) ? null : jSONObjectOptJSONObject.optJSONArray("content");
            if (jSONArrayOptJSONArray2 != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray2.optJSONObject(i2);
                    if (jSONObjectOptJSONObject2 != null && "output_text".equals(jSONObjectOptJSONObject2.optString("type"))) {
                        sb.append(jSONObjectOptJSONObject2.optString("text"));
                    }
                }
            }
        }
        return sb.toString();
    }

    private StreamResponsePart parseStreamResponsePart(String str) {
        try {
            JSONArray jSONArrayOptJSONArray = new JSONObject(str).optJSONArray("choices");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.getJSONObject(0).optJSONObject("delta");
                if (jSONObjectOptJSONObject == null) {
                    return new StreamResponsePart(_UrlKt.FRAGMENT_ENCODE_SET, false);
                }
                Object objOpt = jSONObjectOptJSONObject.opt("content");
                return new StreamResponsePart((objOpt == null || objOpt == JSONObject.NULL) ? _UrlKt.FRAGMENT_ENCODE_SET : objOpt.toString(), hasReasoning(jSONObjectOptJSONObject));
            }
        } catch (Exception unused) {
        }
        return new StreamResponsePart(_UrlKt.FRAGMENT_ENCODE_SET, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0068, code lost:
    
        if (r11.equals("response.failed") != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007f, code lost:
    
        if (r11.equals("response.incomplete") != false) goto L32;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private StreamResponsePart parseResponsesStreamPart(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("type");
            switch (strOptString.hashCode()) {
                case -975974101:
                    break;
                case -183760246:
                    break;
                case 96784904:
                    if (strOptString.equals("error")) {
                        return new StreamResponsePart(_UrlKt.FRAGMENT_ENCODE_SET, false, true, getResponsesStreamError(jSONObject));
                    }
                    return new StreamResponsePart(_UrlKt.FRAGMENT_ENCODE_SET, strOptString.startsWith("response.reasoning"));
                case 814923998:
                    if (strOptString.equals("response.completed")) {
                        return StreamResponsePart.DONE;
                    }
                    return new StreamResponsePart(_UrlKt.FRAGMENT_ENCODE_SET, strOptString.startsWith("response.reasoning"));
                case 1836015944:
                    if (strOptString.equals("response.output_text.delta")) {
                        return new StreamResponsePart(jSONObject.optString("delta"), false);
                    }
                    return new StreamResponsePart(_UrlKt.FRAGMENT_ENCODE_SET, strOptString.startsWith("response.reasoning"));
                case 1981626358:
                    if (strOptString.equals("response.output_item.added")) {
                        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(PluginsConstants.Settings.ITEM);
                        return new StreamResponsePart(_UrlKt.FRAGMENT_ENCODE_SET, jSONObjectOptJSONObject != null && "reasoning".equals(jSONObjectOptJSONObject.optString("type")));
                    }
                    return new StreamResponsePart(_UrlKt.FRAGMENT_ENCODE_SET, strOptString.startsWith("response.reasoning"));
                default:
                    return new StreamResponsePart(_UrlKt.FRAGMENT_ENCODE_SET, strOptString.startsWith("response.reasoning"));
            }
        } catch (Exception unused) {
            return new StreamResponsePart(_UrlKt.FRAGMENT_ENCODE_SET, false);
        }
    }

    private String getResponsesStreamError(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("error");
        if (jSONObjectOptJSONObject == null) {
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(PluginsConstants.RESPONSE);
            jSONObjectOptJSONObject = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optJSONObject("error") : null;
        }
        String strOptString = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString("message") : jSONObject.optString("message");
        return TextUtils.isEmpty(strOptString) ? "Unknown error" : strOptString;
    }

    private boolean hasReasoning(JSONObject jSONObject) {
        return hasValue(jSONObject, "reasoning") || hasValue(jSONObject, "reasoning_content") || hasValue(jSONObject, "reasoning_details");
    }

    private boolean hasValue(JSONObject jSONObject, String str) {
        if (jSONObject != null && jSONObject.has(str) && !jSONObject.isNull(str)) {
            Object objOpt = jSONObject.opt(str);
            if (objOpt instanceof String) {
                return !TextUtils.isEmpty((String) objOpt);
            }
            if (objOpt instanceof JSONArray) {
                return ((JSONArray) objOpt).length() > 0;
            }
            if (objOpt != null && objOpt != JSONObject.NULL) {
                return true;
            }
        }
        return false;
    }

    private String stripReasoningMarkup(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        String lowerCase = str.toLowerCase(Locale.ROOT);
        int i = 0;
        while (true) {
            if (i >= str.length()) {
                break;
            }
            int iIndexOf = lowerCase.indexOf("<think>", i);
            if (iIndexOf < 0) {
                sb.append((CharSequence) str, i, str.length());
                break;
            }
            sb.append((CharSequence) str, i, iIndexOf);
            int iIndexOf2 = lowerCase.indexOf("</think>", iIndexOf + 7);
            if (iIndexOf2 < 0) {
                break;
            }
            i = iIndexOf2 + 8;
        }
        return trimLeading(sb.toString());
    }

    private String trimLeading(String str) {
        int i = 0;
        while (i < str.length() && Character.isWhitespace(str.charAt(i))) {
            i++;
        }
        return str.substring(i);
    }

    private String trimTrailing(String str) {
        int length = str.length();
        while (length > 0 && Character.isWhitespace(str.charAt(length - 1))) {
            length--;
        }
        return str.substring(0, length);
    }

    private String parseErrorMessage(String str, String str2) {
        String strExtractErrorMessage = extractErrorMessage(str);
        return !TextUtils.isEmpty(strExtractErrorMessage) ? strExtractErrorMessage : !TextUtils.isEmpty(str2) ? str2.toLowerCase(Locale.ROOT) : _UrlKt.FRAGMENT_ENCODE_SET;
    }

    private String extractErrorMessage(String str) {
        int i;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String strTrim = str.trim();
        try {
            i = 0;
        } catch (Exception unused) {
        }
        if (strTrim.startsWith("[")) {
            JSONArray jSONArray = new JSONArray(strTrim);
            while (i < jSONArray.length()) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject == null ? null : jSONObjectOptJSONObject.optJSONObject("error");
                String strOptString = jSONObjectOptJSONObject2 == null ? null : jSONObjectOptJSONObject2.optString("message", null);
                if (!TextUtils.isEmpty(strOptString)) {
                    return strOptString;
                }
                i++;
            }
            return null;
        }
        if (strTrim.startsWith("{")) {
            JSONObject jSONObject = new JSONObject(strTrim);
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("error");
            if (jSONObjectOptJSONObject3 != null) {
                return jSONObjectOptJSONObject3.optString("message", null);
            }
            String[] strArr = ERROR_MESSAGE_KEYS;
            int length = strArr.length;
            while (i < length) {
                Object objOpt = jSONObject.opt(strArr[i]);
                if (objOpt instanceof String) {
                    String str2 = (String) objOpt;
                    if (!str2.isEmpty()) {
                        return str2;
                    }
                }
                i++;
            }
            return null;
        }
        if (strTrim.startsWith("<") || strTrim.length() > 200 || strTrim.indexOf(10) >= 0) {
            return null;
        }
        return strTrim;
    }

    public static class ReasoningContentFilter {
        private boolean inReasoning;
        private String pending;
        private boolean reasoningSignal;

        private ReasoningContentFilter() {
            this.pending = _UrlKt.FRAGMENT_ENCODE_SET;
        }

        public String filter(String str) {
            int i;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String str2 = this.pending + str;
            this.pending = _UrlKt.FRAGMENT_ENCODE_SET;
            StringBuilder sb = new StringBuilder(str2.length());
            int i2 = 0;
            while (i2 < str2.length()) {
                String lowerCase = str2.toLowerCase(Locale.ROOT);
                if (this.inReasoning) {
                    this.reasoningSignal = true;
                    int iIndexOf = lowerCase.indexOf("</think>", i2);
                    if (iIndexOf < 0) {
                        this.pending = getCloseTagPrefixSuffix(str2, i2);
                        return sb.toString();
                    }
                    i = iIndexOf + 8;
                    this.inReasoning = false;
                } else {
                    int iIndexOf2 = lowerCase.indexOf("<think>", i2);
                    if (iIndexOf2 < 0) {
                        this.pending = getOpenTagPrefixSuffix(str2, i2);
                        this.reasoningSignal = !r1.isEmpty();
                        int length = str2.length() - this.pending.length();
                        if (length > i2) {
                            sb.append((CharSequence) str2, i2, length);
                        }
                        return sb.toString();
                    }
                    sb.append((CharSequence) str2, i2, iIndexOf2);
                    i = iIndexOf2 + 7;
                    this.inReasoning = true;
                    this.reasoningSignal = true;
                }
                i2 = i;
            }
            return sb.toString();
        }

        public boolean consumeReasoningSignal() {
            boolean z = this.reasoningSignal;
            this.reasoningSignal = false;
            return z;
        }

        public String flush() {
            String str = this.inReasoning ? _UrlKt.FRAGMENT_ENCODE_SET : this.pending;
            this.pending = _UrlKt.FRAGMENT_ENCODE_SET;
            return str;
        }

        private String getOpenTagPrefixSuffix(String str, int i) {
            String lowerCase = str.toLowerCase(Locale.ROOT);
            for (int iMin = Math.min(6, str.length() - i); iMin > 0; iMin--) {
                if ("<think>".startsWith(lowerCase.substring(str.length() - iMin))) {
                    return str.substring(str.length() - iMin);
                }
            }
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }

        private String getCloseTagPrefixSuffix(String str, int i) {
            String lowerCase = str.toLowerCase(Locale.ROOT);
            for (int iMin = Math.min(7, str.length() - i); iMin > 0; iMin--) {
                if ("</think>".startsWith(lowerCase.substring(str.length() - iMin))) {
                    return str.substring(str.length() - iMin);
                }
            }
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }

    public static final class Endpoint extends RecordTag {
        private final boolean responsesApi;
        private final String url;

        private /* synthetic */ boolean $record$equals(Object obj) {
            if (!(obj instanceof Endpoint)) {
                return false;
            }
            Endpoint endpoint = (Endpoint) obj;
            return this.responsesApi == endpoint.responsesApi && Objects.equals(this.url, endpoint.url);
        }

        private /* synthetic */ Object[] $record$getFieldsAsObjects() {
            return new Object[]{this.url, Boolean.valueOf(this.responsesApi)};
        }

        private Endpoint(String str, boolean z) {
            this.url = str;
            this.responsesApi = z;
        }

        public final boolean equals(Object obj) {
            return $record$equals(obj);
        }

        public final int hashCode() {
            return RestBackend$Endpoint$$ExternalSyntheticRecord0.m240m(this.responsesApi, this.url);
        }

        public boolean responsesApi() {
            return this.responsesApi;
        }

        public final String toString() {
            return Client$ImagePayload$$ExternalSyntheticRecord1.m238m($record$getFieldsAsObjects(), Endpoint.class, "url;responsesApi");
        }

        public String url() {
            return this.url;
        }
    }

    public static final class RequestOptions extends RecordTag {
        private final boolean defaultTemperature;
        private final boolean maxCompletionTokens;
        private final String reasoningEffort;

        private /* synthetic */ boolean $record$equals(Object obj) {
            if (!(obj instanceof RequestOptions)) {
                return false;
            }
            RequestOptions requestOptions = (RequestOptions) obj;
            return this.maxCompletionTokens == requestOptions.maxCompletionTokens && this.defaultTemperature == requestOptions.defaultTemperature && Objects.equals(this.reasoningEffort, requestOptions.reasoningEffort);
        }

        private /* synthetic */ Object[] $record$getFieldsAsObjects() {
            return new Object[]{this.reasoningEffort, Boolean.valueOf(this.maxCompletionTokens), Boolean.valueOf(this.defaultTemperature)};
        }

        private RequestOptions(String str, boolean z, boolean z2) {
            this.reasoningEffort = str;
            this.maxCompletionTokens = z;
            this.defaultTemperature = z2;
        }

        public boolean defaultTemperature() {
            return this.defaultTemperature;
        }

        public final boolean equals(Object obj) {
            return $record$equals(obj);
        }

        public final int hashCode() {
            return RestBackend$RequestOptions$$ExternalSyntheticRecord0.m241m(this.maxCompletionTokens, this.defaultTemperature, this.reasoningEffort);
        }

        public boolean maxCompletionTokens() {
            return this.maxCompletionTokens;
        }

        public String reasoningEffort() {
            return this.reasoningEffort;
        }

        public final String toString() {
            return Client$ImagePayload$$ExternalSyntheticRecord1.m238m($record$getFieldsAsObjects(), RequestOptions.class, "reasoningEffort;maxCompletionTokens;defaultTemperature");
        }
    }

    public static final class StreamResponsePart extends RecordTag {
        static final StreamResponsePart DONE = new StreamResponsePart(_UrlKt.FRAGMENT_ENCODE_SET, false, true, null);
        private final String content;
        private final boolean done;
        private final String error;
        private final boolean hasReasoning;

        private /* synthetic */ boolean $record$equals(Object obj) {
            if (!(obj instanceof StreamResponsePart)) {
                return false;
            }
            StreamResponsePart streamResponsePart = (StreamResponsePart) obj;
            return this.hasReasoning == streamResponsePart.hasReasoning && this.done == streamResponsePart.done && Objects.equals(this.content, streamResponsePart.content) && Objects.equals(this.error, streamResponsePart.error);
        }

        private /* synthetic */ Object[] $record$getFieldsAsObjects() {
            return new Object[]{this.content, Boolean.valueOf(this.hasReasoning), Boolean.valueOf(this.done), this.error};
        }

        private StreamResponsePart(String str, boolean z, boolean z2, String str2) {
            this.content = str;
            this.hasReasoning = z;
            this.done = z2;
            this.error = str2;
        }

        public String content() {
            return this.content;
        }

        public boolean done() {
            return this.done;
        }

        public final boolean equals(Object obj) {
            return $record$equals(obj);
        }

        public String error() {
            return this.error;
        }

        public boolean hasReasoning() {
            return this.hasReasoning;
        }

        public final int hashCode() {
            return RestBackend$StreamResponsePart$$ExternalSyntheticRecord0.m242m(this.hasReasoning, this.done, this.content, this.error);
        }

        public final String toString() {
            return Client$ImagePayload$$ExternalSyntheticRecord1.m238m($record$getFieldsAsObjects(), StreamResponsePart.class, "content;hasReasoning;done;error");
        }

        public StreamResponsePart(String str, boolean z) {
            this(str, z, false, null);
        }
    }
}
