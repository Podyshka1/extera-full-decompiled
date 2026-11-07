package com.exteragram.messenger.inline;

import android.os.SystemClock;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.inline.rates.CurrencyRates;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.utils.network.ExchangeRates;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.math.BigDecimal;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.DurationKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u001f\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\rH\u0016¢\u0006\u0002\u0010\u0014J\u0017\u0010\u0015\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000f\u001a\u00020\rH\u0002¢\u0006\u0002\u0010\u0016J\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/exteragram/messenger/inline/InlineRates;", "Lcom/exteragram/messenger/inline/rates/CurrencyRates;", "onUpdated", "Ljava/lang/Runnable;", "<init>", "(Ljava/lang/Runnable;)V", "requesting", _UrlKt.FRAGMENT_ENCODE_SET, "requestedAt", _UrlKt.FRAGMENT_ENCODE_SET, "localAccount", _UrlKt.FRAGMENT_ENCODE_SET, "localCurrency", _UrlKt.FRAGMENT_ENCODE_SET, "supports", "code", "rate", _UrlKt.FRAGMENT_ENCODE_SET, "from", "to", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;", "usdRate", "(Ljava/lang/String;)Ljava/lang/Double;", PluginsConstants.REQUEST, _UrlKt.FRAGMENT_ENCODE_SET, "interval", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class InlineRates implements CurrencyRates {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private int localAccount = -1;
    private String localCurrency;
    private final Runnable onUpdated;
    private long requestedAt;
    private boolean requesting;

    public InlineRates(Runnable runnable) {
        this.onUpdated = runnable;
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bJ\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/exteragram/messenger/inline/InlineRates$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "RETRY_INTERVAL", _UrlKt.FRAGMENT_ENCODE_SET, "REFRESH_INTERVAL", "MAX_AGE", "STARS_RATE_SCALE", _UrlKt.FRAGMENT_ENCODE_SET, "normalize", _UrlKt.FRAGMENT_ENCODE_SET, "code", "rateCode", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String normalize(String code) {
            return Intrinsics.areEqual(code, "TON") ? "GRAM" : code;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String rateCode(String code) {
            return Intrinsics.areEqual(code, "GRAM") ? "TON" : code;
        }
    }

    @Override // com.exteragram.messenger.inline.rates.CurrencyRates
    public boolean supports(String code) {
        return Intrinsics.areEqual(code, "XTR") || ExchangeRates.isSupportedCurrency(INSTANCE.rateCode(code));
    }

    @Override // com.exteragram.messenger.inline.rates.CurrencyRates
    public Double rate(String from, String to) {
        Double dUsdRate = usdRate(from);
        if (dUsdRate != null) {
            double dDoubleValue = dUsdRate.doubleValue();
            Double dUsdRate2 = usdRate(to);
            if (dUsdRate2 != null) {
                double dDoubleValue2 = dUsdRate2.doubleValue();
                if (dDoubleValue2 == 0.0d) {
                    return null;
                }
                return Double.valueOf(dDoubleValue / dDoubleValue2);
            }
        }
        return null;
    }

    private final Double usdRate(String code) {
        if (Intrinsics.areEqual(code, "XTR")) {
            float f = MessagesController.getInstance(UserConfig.selectedAccount).starsUsdSellRate1000;
            if (f > 0.0f) {
                return Double.valueOf(((double) f) / 100000.0d);
            }
            return null;
        }
        ExchangeRates.State statePeekCached = ExchangeRates.peekCached();
        if (statePeekCached != null && System.currentTimeMillis() - statePeekCached.time() <= DurationKt.MILLIS_IN_DAY) {
            BigDecimal usdRate = statePeekCached.getUsdRate(INSTANCE.rateCode(code));
            if (usdRate == null) {
                request(NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
                return null;
            }
            request(300000L);
            return Double.valueOf(usdRate.doubleValue());
        }
        request(NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
        return null;
    }

    public final String localCurrency() {
        String strNormalize = INSTANCE.normalize(ExteraConfig.getInlineTargetCurrency());
        if (supports(strNormalize)) {
            return strNormalize;
        }
        int i = UserConfig.selectedAccount;
        if (i != this.localAccount) {
            this.localAccount = i;
            this.localCurrency = ExchangeRates.getLocalCurrency(i);
        }
        return this.localCurrency;
    }

    private final void request(long interval) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.requesting) {
            return;
        }
        long j = this.requestedAt;
        if (j == 0 || jElapsedRealtime - j >= interval) {
            this.requesting = true;
            this.requestedAt = jElapsedRealtime;
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.inline.InlineRates$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    InlineRates.$r8$lambda$yWUFhWyDLzDwP9o8ODAyGTM3ggw(this.f$0);
                }
            });
        }
    }

    public static void $r8$lambda$yWUFhWyDLzDwP9o8ODAyGTM3ggw(final InlineRates inlineRates) {
        ExchangeRates.getCached();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.inline.InlineRates$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ExchangeRates.fetch(new Utilities.Callback() { // from class: com.exteragram.messenger.inline.InlineRates$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        InlineRates.$r8$lambda$dU6anpoGdv6MDeTOASjEEliZ4JE(inlineRates, (ExchangeRates.State) obj);
                    }
                });
            }
        });
    }

    public static void $r8$lambda$dU6anpoGdv6MDeTOASjEEliZ4JE(InlineRates inlineRates, ExchangeRates.State state) {
        inlineRates.requesting = false;
        inlineRates.onUpdated.run();
    }
}
