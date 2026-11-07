package androidx.media3.datasource;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class HttpDataSource$RequestProperties {
    private final Map<String, String> requestProperties = new HashMap();
    private Map<String, String> requestPropertiesSnapshot;

    public synchronized Map<String, String> getSnapshot() {
        try {
            if (this.requestPropertiesSnapshot == null) {
                this.requestPropertiesSnapshot = Collections.unmodifiableMap(new HashMap(this.requestProperties));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.requestPropertiesSnapshot;
    }
}
