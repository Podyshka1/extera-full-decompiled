package retrofit2;

/* JADX INFO: loaded from: classes3.dex */
public interface Callback {
    void onFailure(Call call, Throwable th);

    void onResponse(Call call, Response response);
}
