package com.exteragram.messenger.inline;

import com.exteragram.messenger.AngleUnit;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.MeasureSystem;
import com.exteragram.messenger.inline.math.MathOptions;
import com.exteragram.messenger.inline.time.TimeZoneOptions;
import j$.time.ZoneId;
import java.util.Locale;
import java.util.Set;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.LocaleController;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\f\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\bJ \u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\bR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/exteragram/messenger/inline/InlineResults;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "imperialRegions", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "isImperial", _UrlKt.FRAGMENT_ENCODE_SET, "isEnabled", "options", "Lcom/exteragram/messenger/inline/math/MathOptions;", "rates", "Lcom/exteragram/messenger/inline/InlineRates;", "decimalSeparator", _UrlKt.FRAGMENT_ENCODE_SET, "allFeatures", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class InlineResults {
    public static final InlineResults INSTANCE = new InlineResults();
    private static final Set<String> imperialRegions = SetsKt.setOf((Object[]) new String[]{"US", "LR", "MM"});

    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MeasureSystem.values().length];
            try {
                iArr[MeasureSystem.AUTO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MeasureSystem.METRIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MeasureSystem.IMPERIAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private InlineResults() {
    }

    public final boolean isImperial() {
        int i = WhenMappings.$EnumSwitchMapping$0[ExteraConfig.getInlineMeasureSystem().ordinal()];
        if (i == 1) {
            Set<String> set = imperialRegions;
            Locale systemDefaultLocale = LocaleController.getInstance().getSystemDefaultLocale();
            return CollectionsKt.contains(set, systemDefaultLocale != null ? systemDefaultLocale.getCountry() : null);
        }
        if (i != 2) {
            if (i == 3) {
                return true;
            }
            LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
        }
        return false;
    }

    public final boolean isEnabled() {
        if (ExteraConfig.getInlineResults()) {
            return ExteraConfig.getInlineMathResult() || ExteraConfig.getInlineCurrencyRates() || ExteraConfig.getInlineUnitConversion() || ExteraConfig.getInlineTimeZones();
        }
        return false;
    }

    public static /* synthetic */ MathOptions options$default(InlineResults inlineResults, InlineRates inlineRates, char c2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return inlineResults.options(inlineRates, c2, z);
    }

    public final MathOptions options(InlineRates rates, char decimalSeparator, boolean allFeatures) {
        boolean z = allFeatures || ExteraConfig.getInlineCurrencyRates();
        return new MathOptions(decimalSeparator, z ? rates : null, z ? rates.localCurrency() : null, allFeatures || ExteraConfig.getInlineMathResult(), allFeatures || ExteraConfig.getInlineUnitConversion(), ExteraConfig.getInlineAngleUnit() == AngleUnit.DEGREES, ExteraConfig.getInlineDigitGrouping(), (allFeatures || ExteraConfig.getInlineTimeZones()) ? new TimeZoneOptions(ZoneId.systemDefault(), null, 2, null) : null, isImperial());
    }
}
