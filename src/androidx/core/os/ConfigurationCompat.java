package androidx.core.os;

import android.content.res.Configuration;
import android.os.LocaleList;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ConfigurationCompat {
    public static LocaleListCompat getLocales(Configuration configuration) {
        return LocaleListCompat.wrap(Api24Impl.getLocales(configuration));
    }

    public static class Api24Impl {
        public static LocaleList getLocales(Configuration configuration) {
            return configuration.getLocales();
        }
    }
}
