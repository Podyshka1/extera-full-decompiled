package okhttp3;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public interface Callback {
    void onFailure(Call call, IOException iOException);

    void onResponse(Call call, Response response);
}
