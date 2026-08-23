package androidx.work;

import android.content.Context;
import androidx.startup.Initializer;
import androidx.work.Configuration;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class WorkManagerInitializer implements Initializer {
    private static final String TAG = Logger.tagWithPrefix("WrkMgrInitializer");

    @Override // androidx.startup.Initializer
    public WorkManager create(Context context) {
        Logger.get().debug(TAG, "Initializing WorkManager with default configuration.");
        WorkManager.initialize(context, new Configuration.Builder().build());
        return WorkManager.getInstance(context);
    }

    @Override // androidx.startup.Initializer
    public List dependencies() {
        return Collections.EMPTY_LIST;
    }
}
