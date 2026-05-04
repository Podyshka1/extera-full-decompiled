package org.telegram.messenger.chromecast;

import android.content.Context;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.OptionsProvider;
import com.google.android.gms.cast.framework.SessionProvider;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ChromecastOptionsProvider implements OptionsProvider {
    private static final CastOptions castOptions = new CastOptions.Builder().setReceiverApplicationId("CC1AD845").build();

    @Override // com.google.android.gms.cast.framework.OptionsProvider
    public List<SessionProvider> getAdditionalSessionProviders(Context context) {
        return null;
    }

    @Override // com.google.android.gms.cast.framework.OptionsProvider
    public CastOptions getCastOptions(Context context) {
        return castOptions;
    }
}
