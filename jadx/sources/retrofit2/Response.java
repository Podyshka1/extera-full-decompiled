package retrofit2;

import okhttp3.ResponseBody;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Response<T> {
    private final Object body;
    private final ResponseBody errorBody;
    private final okhttp3.Response rawResponse;

    public static Response success(Object obj, okhttp3.Response response) {
        Objects.requireNonNull(response, "rawResponse == null");
        if (!response.isSuccessful()) {
            throw new IllegalArgumentException("rawResponse must be successful response");
        }
        return new Response(response, obj, null);
    }

    public static Response error(ResponseBody responseBody, okhttp3.Response response) {
        Objects.requireNonNull(responseBody, "body == null");
        Objects.requireNonNull(response, "rawResponse == null");
        if (response.isSuccessful()) {
            throw new IllegalArgumentException("rawResponse should not be successful response");
        }
        return new Response(response, null, responseBody);
    }

    private Response(okhttp3.Response response, Object obj, ResponseBody responseBody) {
        this.rawResponse = response;
        this.body = obj;
        this.errorBody = responseBody;
    }

    public int code() {
        return this.rawResponse.code();
    }

    public String message() {
        return this.rawResponse.message();
    }

    public boolean isSuccessful() {
        return this.rawResponse.isSuccessful();
    }

    public Object body() {
        return this.body;
    }

    public String toString() {
        return this.rawResponse.toString();
    }
}
