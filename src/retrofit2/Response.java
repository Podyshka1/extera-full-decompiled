package retrofit2;

import java.util.Objects;
import okhttp3.Headers;
import okhttp3.ResponseBody;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public final class Response<T> {
    private final T body;
    private final ResponseBody errorBody;
    private final okhttp3.Response rawResponse;

    public static <T> Response<T> success(T t, okhttp3.Response response) {
        Objects.requireNonNull(response, "rawResponse == null");
        if (!response.getIsSuccessful()) {
            f$$ExternalSyntheticBUOutline1.m215m("rawResponse must be successful response");
            return null;
        }
        return new Response<>(response, t, null);
    }

    public static <T> Response<T> error(ResponseBody responseBody, okhttp3.Response response) {
        Objects.requireNonNull(responseBody, "body == null");
        Objects.requireNonNull(response, "rawResponse == null");
        if (response.getIsSuccessful()) {
            f$$ExternalSyntheticBUOutline1.m215m("rawResponse should not be successful response");
            return null;
        }
        return new Response<>(response, null, responseBody);
    }

    private Response(okhttp3.Response response, T t, ResponseBody responseBody) {
        this.rawResponse = response;
        this.body = t;
        this.errorBody = responseBody;
    }

    public int code() {
        return this.rawResponse.code();
    }

    public String message() {
        return this.rawResponse.message();
    }

    public Headers headers() {
        return this.rawResponse.headers();
    }

    public boolean isSuccessful() {
        return this.rawResponse.getIsSuccessful();
    }

    public T body() {
        return this.body;
    }

    public String toString() {
        return this.rawResponse.toString();
    }
}
