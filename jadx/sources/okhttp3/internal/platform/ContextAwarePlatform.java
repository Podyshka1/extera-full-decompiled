package okhttp3.internal.platform;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public interface ContextAwarePlatform {
    Context getApplicationContext();

    void setApplicationContext(Context context);
}
