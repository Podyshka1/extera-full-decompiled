package com.exteragram.messenger.preferences.chats;

import android.view.View;
import androidx.core.util.Consumer;
import com.exteragram.messenger.AngleUnit;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.MeasureSystem;
import com.exteragram.messenger.inline.InlineRates;
import com.exteragram.messenger.inline.InlineResults;
import com.exteragram.messenger.inline.docs.InlineExampleGroup;
import com.exteragram.messenger.inline.docs.InlineExamples;
import com.exteragram.messenger.inline.math.MathExpression;
import com.exteragram.messenger.inline.math.MathOptions;
import com.exteragram.messenger.inline.math.MathSuggestion;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.preferences.chats.components.InlineDocBlock;
import com.exteragram.messenger.preferences.chats.components.InlineDocExample;
import com.exteragram.messenger.preferences.chats.components.InlineFeature;
import com.exteragram.messenger.preferences.chats.components.InlineFeatureCell;
import com.exteragram.messenger.utils.ExtensionsKt;
import com.exteragram.messenger.utils.network.ExchangeRates;
import com.exteragram.messenger.utils.ui.PopupUtils;
import com.google.android.gms.cast.MediaTrack;
import java.text.Collator;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Currency;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.CharsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Cells.TextCheckCell;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\f\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u000278B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0017\u001a\u00020\u0006H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0014J\u001e\u0010\u001a\u001a\u00020\u00192\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020\u001fH\u0014J0\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020'H\u0014J\b\u0010)\u001a\u00020\u0006H\u0002J\n\u0010*\u001a\u0004\u0018\u00010\u0006H\u0002J\b\u0010+\u001a\u00020,H\u0002J\u001e\u0010-\u001a\b\u0012\u0004\u0012\u00020.0\u00152\u0006\u0010/\u001a\u00020\n2\u0006\u00100\u001a\u000201H\u0002J\u0010\u00102\u001a\u00020.2\u0006\u00103\u001a\u00020%H\u0002J\u0018\u00104\u001a\u00020.2\u0006\u00105\u001a\u0002062\u0006\u00100\u001a\u000201H\u0002R*\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u0011X\u0082.¢\u0006\u0004\n\u0002\u0010\u0012R\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u0011X\u0082.¢\u0006\u0004\n\u0002\u0010\u0012R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00060\u0015X\u0082.¢\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00060\u0011X\u0082.¢\u0006\u0004\n\u0002\u0010\u0012¨\u00069"}, d2 = {"Lcom/exteragram/messenger/preferences/chats/InlineResultsPreferencesActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "<init>", "()V", "cryptoNames", "Ljava/util/LinkedHashMap;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/collections/LinkedHashMap;", "expanded", "Ljava/util/HashSet;", "Lcom/exteragram/messenger/preferences/chats/InlineResultsPreferencesActivity$Section;", "Lkotlin/collections/HashSet;", "rates", "Lcom/exteragram/messenger/inline/InlineRates;", "featureClick", "Landroid/view/View$OnClickListener;", "angleOptions", _UrlKt.FRAGMENT_ENCODE_SET, "[Ljava/lang/String;", "measureOptions", "currencyCodes", _UrlKt.FRAGMENT_ENCODE_SET, "currencyOptions", "getTitle", "initializeOptionStrings", _UrlKt.FRAGMENT_ENCODE_SET, "fillItems", PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "Landroid/view/View;", "position", _UrlKt.FRAGMENT_ENCODE_SET, "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "defaultCurrencyValue", "settingsInfo", "decimalSeparator", _UrlKt.FRAGMENT_ENCODE_SET, "blocks", "Lcom/exteragram/messenger/preferences/chats/components/InlineDocBlock;", "section", "options", "Lcom/exteragram/messenger/inline/math/MathOptions;", "text", "res", "examples", "group", "Lcom/exteragram/messenger/inline/docs/InlineExampleGroup;", "InlineItem", "Section", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nInlineResultsPreferencesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InlineResultsPreferencesActivity.kt\ncom/exteragram/messenger/preferences/chats/InlineResultsPreferencesActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,296:1\n1586#2:297\n1661#2,3:298\n777#2:302\n873#2,2:303\n1586#2:305\n1661#2,3:306\n1586#2:309\n1661#2,3:310\n1586#2:313\n1661#2,3:314\n1586#2:319\n1661#2,3:320\n296#2,2:323\n1#3:301\n37#4,2:317\n*S KotlinDebug\n*F\n+ 1 InlineResultsPreferencesActivity.kt\ncom/exteragram/messenger/preferences/chats/InlineResultsPreferencesActivity\n*L\n142#1:297\n142#1:298,3\n157#1:302\n157#1:303,2\n157#1:305\n157#1:306,3\n159#1:309\n159#1:310,3\n160#1:313\n160#1:314,3\n291#1:319\n291#1:320,3\n122#1:323,2\n160#1:317,2\n*E\n"})
public final class InlineResultsPreferencesActivity extends BasePreferencesActivity {
    private String[] angleOptions;
    private List<String> currencyCodes;
    private String[] currencyOptions;
    private String[] measureOptions;
    private final LinkedHashMap<String, String> cryptoNames = MapsKt.linkedMapOf(TuplesKt.to("GRAM", "Gram"), TuplesKt.to("BTC", "Bitcoin"), TuplesKt.to("ETH", "Ethereum"), TuplesKt.to("SOL", "Solana"), TuplesKt.to("USDT", "Tether"));
    private final HashSet<Section> expanded = new HashSet<>();
    private final InlineRates rates = new InlineRates(new Runnable() { // from class: com.exteragram.messenger.preferences.chats.InlineResultsPreferencesActivity$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            InlineResultsPreferencesActivity.m3232$r8$lambda$D5l5K7MmBnkjuVDZxGdE4M8bgY(this.f$0);
        }
    });
    private final View.OnClickListener featureClick = new View.OnClickListener() { // from class: com.exteragram.messenger.preferences.chats.InlineResultsPreferencesActivity$$ExternalSyntheticLambda1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            InlineResultsPreferencesActivity.$r8$lambda$0EEoUtBu0kVjX4eh5ZbJk4Y26pU(this.f$0, view);
        }
    };

    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[InlineItem.values().length];
            try {
                iArr[InlineItem.SHOW_RESULTS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[InlineItem.CALCULATOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[InlineItem.CURRENCIES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[InlineItem.UNITS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[InlineItem.TIME_ZONES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[InlineItem.DEFAULT_CURRENCY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[InlineItem.ANGLE_UNIT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[InlineItem.MEASURE_SYSTEM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[InlineItem.DIGIT_GROUPING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[Section.values().length];
            try {
                iArr2[Section.ARITHMETIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[Section.PERCENTAGES.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[Section.CURRENCIES.ordinal()] = 3;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr2[Section.UNITS.ordinal()] = 4;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr2[Section.TIME.ordinal()] = 5;
            } catch (NoSuchFieldError unused14) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0016"}, d2 = {"Lcom/exteragram/messenger/preferences/chats/InlineResultsPreferencesActivity$InlineItem;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "SHOW_RESULTS", "CALCULATOR", "CURRENCIES", "UNITS", "TIME_ZONES", "DEFAULT_CURRENCY", "MEASURE_SYSTEM", "ANGLE_UNIT", "DIGIT_GROUPING", "ARITHMETIC", "PERCENTAGES", "CURRENCY_CONVERSION", "UNIT_CONVERSION", "TIME_CONVERSION", "id", _UrlKt.FRAGMENT_ENCODE_SET, "getId", "()I", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class InlineItem {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ InlineItem[] $VALUES;
        private final int id = ordinal() + 1;
        public static final InlineItem SHOW_RESULTS = new InlineItem("SHOW_RESULTS", 0);
        public static final InlineItem CALCULATOR = new InlineItem("CALCULATOR", 1);
        public static final InlineItem CURRENCIES = new InlineItem("CURRENCIES", 2);
        public static final InlineItem UNITS = new InlineItem("UNITS", 3);
        public static final InlineItem TIME_ZONES = new InlineItem("TIME_ZONES", 4);
        public static final InlineItem DEFAULT_CURRENCY = new InlineItem("DEFAULT_CURRENCY", 5);
        public static final InlineItem MEASURE_SYSTEM = new InlineItem("MEASURE_SYSTEM", 6);
        public static final InlineItem ANGLE_UNIT = new InlineItem("ANGLE_UNIT", 7);
        public static final InlineItem DIGIT_GROUPING = new InlineItem("DIGIT_GROUPING", 8);
        public static final InlineItem ARITHMETIC = new InlineItem("ARITHMETIC", 9);
        public static final InlineItem PERCENTAGES = new InlineItem("PERCENTAGES", 10);
        public static final InlineItem CURRENCY_CONVERSION = new InlineItem("CURRENCY_CONVERSION", 11);
        public static final InlineItem UNIT_CONVERSION = new InlineItem("UNIT_CONVERSION", 12);
        public static final InlineItem TIME_CONVERSION = new InlineItem("TIME_CONVERSION", 13);

        private static final /* synthetic */ InlineItem[] $values() {
            return new InlineItem[]{SHOW_RESULTS, CALCULATOR, CURRENCIES, UNITS, TIME_ZONES, DEFAULT_CURRENCY, MEASURE_SYSTEM, ANGLE_UNIT, DIGIT_GROUPING, ARITHMETIC, PERCENTAGES, CURRENCY_CONVERSION, UNIT_CONVERSION, TIME_CONVERSION};
        }

        public static EnumEntries<InlineItem> getEntries() {
            return $ENTRIES;
        }

        public static InlineItem valueOf(String str) {
            return (InlineItem) Enum.valueOf(InlineItem.class, str);
        }

        public static InlineItem[] values() {
            return (InlineItem[]) $VALUES.clone();
        }

        private InlineItem(String str, int i) {
        }

        static {
            InlineItem[] inlineItemArr$values = $values();
            $VALUES = inlineItemArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(inlineItemArr$values);
        }

        public final int getId() {
            return this.id;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B7\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lcom/exteragram/messenger/preferences/chats/InlineResultsPreferencesActivity$Section;", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.ITEM, "Lcom/exteragram/messenger/preferences/chats/InlineResultsPreferencesActivity$InlineItem;", "icon", _UrlKt.FRAGMENT_ENCODE_SET, "title", MediaTrack.ROLE_SUBTITLE, "enabled", "Lkotlin/Function0;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;ILcom/exteragram/messenger/preferences/chats/InlineResultsPreferencesActivity$InlineItem;IIILkotlin/jvm/functions/Function0;)V", "getItem", "()Lcom/exteragram/messenger/preferences/chats/InlineResultsPreferencesActivity$InlineItem;", "getIcon", "()I", "getTitle", "getSubtitle", "getEnabled", "()Lkotlin/jvm/functions/Function0;", "ARITHMETIC", "PERCENTAGES", "CURRENCIES", "UNITS", "TIME", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Section {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Section[] $VALUES;
        private final Function0<Boolean> enabled;
        private final int icon;
        private final InlineItem item;
        private final int subtitle;
        private final int title;
        public static final Section ARITHMETIC = new Section("ARITHMETIC", 0, InlineItem.ARITHMETIC, C2807R.drawable.msg_calculator, C2807R.string.InlineDocArithmetic, C2807R.string.InlineDocArithmeticInfo, new Function0() { // from class: com.exteragram.messenger.preferences.chats.InlineResultsPreferencesActivity$Section$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(ExteraConfig.getInlineMathResult());
            }
        });
        public static final Section PERCENTAGES = new Section("PERCENTAGES", 1, InlineItem.PERCENTAGES, C2807R.drawable.msg_percent, C2807R.string.InlineDocPercent, C2807R.string.InlineDocPercentInfo, new Function0() { // from class: com.exteragram.messenger.preferences.chats.InlineResultsPreferencesActivity$Section$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(ExteraConfig.getInlineMathResult());
            }
        });
        public static final Section CURRENCIES = new Section("CURRENCIES", 2, InlineItem.CURRENCY_CONVERSION, C2807R.drawable.menu_feature_paid, C2807R.string.InlineCurrencies, C2807R.string.InlineDocCurrenciesInfo, new Function0() { // from class: com.exteragram.messenger.preferences.chats.InlineResultsPreferencesActivity$Section$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(ExteraConfig.getInlineCurrencyRates());
            }
        });
        public static final Section UNITS = new Section("UNITS", 3, InlineItem.UNIT_CONVERSION, C2807R.drawable.msg_ruler, C2807R.string.InlineUnits, C2807R.string.InlineDocUnitsInfo, new Function0() { // from class: com.exteragram.messenger.preferences.chats.InlineResultsPreferencesActivity$Section$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(ExteraConfig.getInlineUnitConversion());
            }
        });
        public static final Section TIME = new Section("TIME", 4, InlineItem.TIME_CONVERSION, C2807R.drawable.msg_language, C2807R.string.InlineTimeZones, C2807R.string.InlineDocTimeInfo, new Function0() { // from class: com.exteragram.messenger.preferences.chats.InlineResultsPreferencesActivity$Section$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(ExteraConfig.getInlineTimeZones());
            }
        });

        private static final /* synthetic */ Section[] $values() {
            return new Section[]{ARITHMETIC, PERCENTAGES, CURRENCIES, UNITS, TIME};
        }

        public static EnumEntries<Section> getEntries() {
            return $ENTRIES;
        }

        public static Section valueOf(String str) {
            return (Section) Enum.valueOf(Section.class, str);
        }

        public static Section[] values() {
            return (Section[]) $VALUES.clone();
        }

        private Section(String str, int i, InlineItem inlineItem, int i2, int i3, int i4, Function0 function0) {
            this.item = inlineItem;
            this.icon = i2;
            this.title = i3;
            this.subtitle = i4;
            this.enabled = function0;
        }

        public final InlineItem getItem() {
            return this.item;
        }

        public final int getIcon() {
            return this.icon;
        }

        public final int getTitle() {
            return this.title;
        }

        public final int getSubtitle() {
            return this.subtitle;
        }

        public final Function0<Boolean> getEnabled() {
            return this.enabled;
        }

        static {
            Section[] sectionArr$values = $values();
            $VALUES = sectionArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(sectionArr$values);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$D5l5K7MmB-nkjuVDZxGdE4M8bgY, reason: not valid java name */
    public static void m3232$r8$lambda$D5l5K7MmBnkjuVDZxGdE4M8bgY(InlineResultsPreferencesActivity inlineResultsPreferencesActivity) {
        UniversalAdapter universalAdapter;
        if (inlineResultsPreferencesActivity.fragmentView == null || (universalAdapter = inlineResultsPreferencesActivity.getListView$TMessagesProj().adapter) == null) {
            return;
        }
        universalAdapter.update(true);
    }

    public static void $r8$lambda$0EEoUtBu0kVjX4eh5ZbJk4Y26pU(InlineResultsPreferencesActivity inlineResultsPreferencesActivity, View view) {
        Section next;
        Object tag = view.getTag();
        if (tag instanceof String) {
            if (AndroidUtilities.addToClipboard((CharSequence) tag)) {
                BulletinFactory.of(inlineResultsPreferencesActivity).createCopyBulletin(LocaleController.getString(C2807R.string.TextCopied)).show();
                return;
            }
            return;
        }
        if (tag instanceof Integer) {
            Iterator<Section> it = Section.getEntries().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it.next();
                    if (next.getItem().getId() == ((Number) tag).intValue()) {
                        break;
                    }
                }
            }
            Section section = next;
            if (section != null) {
                if (!inlineResultsPreferencesActivity.expanded.remove(section)) {
                    inlineResultsPreferencesActivity.expanded.add(section);
                }
                UniversalAdapter universalAdapter = inlineResultsPreferencesActivity.getListView$TMessagesProj().adapter;
                if (universalAdapter != null) {
                    universalAdapter.update(true);
                }
            }
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2807R.string.InlineMathResult);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void initializeOptionStrings() {
        String displayName;
        this.angleOptions = new String[]{LocaleController.getString(C2807R.string.InlineAngleDegrees), LocaleController.getString(C2807R.string.InlineAngleRadians)};
        this.measureOptions = new String[]{LocaleController.getString(C2807R.string.QualityAuto), LocaleController.getString(C2807R.string.InlineMeasureMetric), LocaleController.getString(C2807R.string.InlineMeasureImperial)};
        Locale currentLocale = LocaleController.getInstance().getCurrentLocale();
        if (currentLocale == null) {
            currentLocale = Locale.getDefault();
        }
        List<String> supportedCurrencies = ExchangeRates.getSupportedCurrencies();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(supportedCurrencies, 10));
        Iterator<T> it = supportedCurrencies.iterator();
        while (it.hasNext()) {
            arrayList.add(InlineRates.INSTANCE.normalize((String) it.next()));
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            String str = (String) obj;
            if (!this.cryptoNames.containsKey(str)) {
                try {
                    displayName = Currency.getInstance(str).getDisplayName(currentLocale);
                    if (displayName.length() > 0) {
                        displayName = ((Object) CharsKt.titlecase(displayName.charAt(0), currentLocale)) + displayName.substring(1);
                    }
                } catch (IllegalArgumentException unused) {
                    displayName = str;
                }
                arrayList2.add(TuplesKt.to(str, displayName));
            }
        }
        final Collator collator = Collator.getInstance(currentLocale);
        final Function2 function2 = new Function2() { // from class: com.exteragram.messenger.preferences.chats.InlineResultsPreferencesActivity$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj2, Object obj3) {
                return Integer.valueOf(collator.compare((String) ((Pair) obj2).getSecond(), (String) ((Pair) obj3).getSecond()));
            }
        };
        CollectionsKt.sortWith(arrayList2, new Comparator() { // from class: com.exteragram.messenger.preferences.chats.InlineResultsPreferencesActivity$$ExternalSyntheticLambda3
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                return ((Number) function2.invoke(obj2, obj3)).intValue();
            }
        });
        Set<Map.Entry<String, String>> setEntrySet = this.cryptoNames.entrySet();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : setEntrySet) {
            if (arrayList.contains(((Map.Entry) obj2).getKey())) {
                arrayList3.add(obj2);
            }
        }
        ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList3, 10));
        int size2 = arrayList3.size();
        int i2 = 0;
        while (i2 < size2) {
            Object obj3 = arrayList3.get(i2);
            i2++;
            Map.Entry entry = (Map.Entry) obj3;
            arrayList4.add(TuplesKt.to(entry.getKey(), entry.getValue()));
        }
        List listPlus = CollectionsKt.plus((Collection) arrayList2, (Iterable) arrayList4);
        List listListOf = CollectionsKt.listOf(_UrlKt.FRAGMENT_ENCODE_SET);
        List<Pair> list = listPlus;
        ArrayList arrayList5 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList5.add((String) ((Pair) it2.next()).getFirst());
        }
        this.currencyCodes = CollectionsKt.plus((Collection) listListOf, (Iterable) arrayList5);
        List listListOf2 = CollectionsKt.listOf(LocaleController.getString(C2807R.string.QualityAuto));
        ArrayList arrayList6 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (Pair pair : list) {
            arrayList6.add(pair.getSecond() + " — " + pair.getFirst());
        }
        this.currencyOptions = (String[]) CollectionsKt.plus((Collection) listListOf2, (Iterable) arrayList6).toArray(new String[0]);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        InlineResultsPreferencesActivity inlineResultsPreferencesActivity = this;
        items.add(UItem.asRippleCheck(InlineItem.SHOW_RESULTS.getId(), LocaleController.getString(C2807R.string.InlineShowResults)).setChecked(ExteraConfig.getInlineResults()).setSearchable(inlineResultsPreferencesActivity));
        items.add(UItem.asShadow(LocaleController.getString(C2807R.string.InlineMathResultHint)));
        if (ExteraConfig.getInlineResults()) {
            items.add(UItem.asHeader(LocaleController.getString(C2807R.string.InlineFeatures)));
            items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) inlineResultsPreferencesActivity, (Enum) InlineItem.CALCULATOR, (CharSequence) LocaleController.getString(C2807R.string.InlineCalculator), ExteraConfig.getInlineMathResult(), (CharSequence) null, 0, false, "inlineCalculator", false, C2807R.drawable.msg_calculator, 184, (Object) null));
            items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) InlineItem.CURRENCIES, (CharSequence) LocaleController.getString(C2807R.string.InlineCurrencies), ExteraConfig.getInlineCurrencyRates(), (CharSequence) null, 0, false, "inlineCurrencyRates", false, C2807R.drawable.menu_feature_paid, 184, (Object) null));
            items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) InlineItem.UNITS, (CharSequence) LocaleController.getString(C2807R.string.InlineUnits), ExteraConfig.getInlineUnitConversion(), (CharSequence) null, 0, false, "inlineUnitConversion", false, C2807R.drawable.msg_ruler, 184, (Object) null));
            items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) InlineItem.TIME_ZONES, (CharSequence) LocaleController.getString(C2807R.string.InlineTimeZones), ExteraConfig.getInlineTimeZones(), (CharSequence) null, 0, false, "inlineTimeZones", false, C2807R.drawable.msg_language, 184, (Object) null));
            items.add(UItem.asShadow());
            items.add(UItem.asHeader(LocaleController.getString(C2807R.string.Settings)));
            items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) InlineItem.DIGIT_GROUPING, (CharSequence) LocaleController.getString(C2807R.string.InlineDigitGrouping), ExteraConfig.getInlineDigitGrouping(), (CharSequence) null, 0, false, "inlineDigitGrouping", false, 0, 440, (Object) null));
            boolean inlineMathResult = ExteraConfig.getInlineMathResult();
            InlineItem inlineItem = InlineItem.ANGLE_UNIT;
            String string = LocaleController.getString(C2807R.string.InlineAngleUnit);
            String[] strArr = this.angleOptions;
            if (strArr == null) {
                strArr = null;
            }
            ExtensionsKt.addIf(items, inlineMathResult, BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) inlineItem, (CharSequence) string, 0, (CharSequence) strArr[ExteraConfig.getInlineAngleUnit().ordinal()], (CharSequence) null, (Boolean) null, false, "inlineAngleUnit", false, false, (Boolean) null, 1908, (Object) null));
            inlineResultsPreferencesActivity = this;
            ExtensionsKt.addIf(items, ExteraConfig.getInlineCurrencyRates(), BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) inlineResultsPreferencesActivity, (Enum) InlineItem.DEFAULT_CURRENCY, (CharSequence) LocaleController.getString(C2807R.string.InlineDefaultCurrency), 0, (CharSequence) defaultCurrencyValue(), (CharSequence) null, (Boolean) null, false, "inlineTargetCurrency", false, false, (Boolean) null, 1908, (Object) null));
            boolean inlineUnitConversion = ExteraConfig.getInlineUnitConversion();
            InlineItem inlineItem2 = InlineItem.MEASURE_SYSTEM;
            String string2 = LocaleController.getString(C2807R.string.InlineMeasureSystem);
            String[] strArr2 = inlineResultsPreferencesActivity.measureOptions;
            if (strArr2 == null) {
                strArr2 = null;
            }
            ExtensionsKt.addIf(items, inlineUnitConversion, BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) inlineResultsPreferencesActivity, (Enum) inlineItem2, (CharSequence) string2, 0, (CharSequence) strArr2[ExteraConfig.getInlineMeasureSystem().ordinal()], (CharSequence) null, (Boolean) null, false, "inlineMeasureSystem", false, false, (Boolean) null, 1908, (Object) null));
            items.add(UItem.asShadow(inlineResultsPreferencesActivity.settingsInfo()));
        }
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.InlineCapabilities)));
        MathOptions mathOptionsOptions = inlineResultsPreferencesActivity.expanded.isEmpty() ? null : InlineResults.INSTANCE.options(inlineResultsPreferencesActivity.rates, inlineResultsPreferencesActivity.decimalSeparator(), true);
        for (Section section : Section.getEntries()) {
            items.add(InlineFeatureCell.Factory.INSTANCE.of(section.getItem().getId(), new InlineFeature(section.getIcon(), LocaleController.getString(section.getTitle()), LocaleController.getString(section.getSubtitle()), (!ExteraConfig.getInlineResults() || section.getEnabled().invoke().booleanValue()) ? null : LocaleController.getString(C2807R.string.InlineFeatureOff), (mathOptionsOptions == null || !inlineResultsPreferencesActivity.expanded.contains(section)) ? null : inlineResultsPreferencesActivity.blocks(section, mathOptionsOptions)), inlineResultsPreferencesActivity.featureClick));
        }
        items.add(UItem.asShadow(LocaleController.getString(C2807R.string.InlineTapToCopy)));
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(final UItem item, View view, int position, float x, float y) {
        InlineItem inlineItem = (InlineItem) CollectionsKt.getOrNull(InlineItem.getEntries(), item.id - 1);
        switch (inlineItem == null ? -1 : WhenMappings.$EnumSwitchMapping$0[inlineItem.ordinal()]) {
            case 1:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.InlineResultsPreferencesActivity$$ExternalSyntheticLambda4
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setInlineResults(((Boolean) obj).booleanValue());
                    }
                });
                TextCheckCell textCheckCell = view instanceof TextCheckCell ? (TextCheckCell) view : null;
                if (textCheckCell != null) {
                    textCheckCell.setBackgroundColorAnimated(ExteraConfig.getInlineResults(), getThemedColor(ExteraConfig.getInlineResults() ? Theme.key_windowBackgroundChecked : Theme.key_windowBackgroundUnchecked));
                }
                break;
            case 2:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.InlineResultsPreferencesActivity$$ExternalSyntheticLambda5
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setInlineMathResult(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 3:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.InlineResultsPreferencesActivity$$ExternalSyntheticLambda6
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setInlineCurrencyRates(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 4:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.InlineResultsPreferencesActivity$$ExternalSyntheticLambda7
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setInlineUnitConversion(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 5:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.InlineResultsPreferencesActivity$$ExternalSyntheticLambda8
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setInlineTimeZones(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 6:
                List<String> list = this.currencyCodes;
                if (list == null) {
                    list = null;
                }
                final int iCoerceAtLeast = RangesKt.coerceAtLeast(list.indexOf(InlineRates.INSTANCE.normalize(ExteraConfig.getInlineTargetCurrency())), 0);
                String[] strArr = this.currencyOptions;
                PopupUtils.showDialog(strArr != null ? strArr : null, null, LocaleController.getString(C2807R.string.InlineDefaultCurrency), iCoerceAtLeast, getContext(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.InlineResultsPreferencesActivity$$ExternalSyntheticLambda9
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i) {
                        InlineResultsPreferencesActivity.$r8$lambda$lPxkytReZq7OdTAzfWVLVTeYrXY(iCoerceAtLeast, this, item, i);
                    }
                }, this.resourceProvider);
                break;
            case 7:
                String[] strArr2 = this.angleOptions;
                showListDialog(item, strArr2 != null ? strArr2 : null, LocaleController.getString(C2807R.string.InlineAngleUnit), ExteraConfig.getInlineAngleUnit().ordinal(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.InlineResultsPreferencesActivity$$ExternalSyntheticLambda10
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i) {
                        ExteraConfig.setInlineAngleUnit(AngleUnit.getEntries().get(i));
                    }
                });
                break;
            case 8:
                String[] strArr3 = this.measureOptions;
                showListDialog(item, strArr3 != null ? strArr3 : null, LocaleController.getString(C2807R.string.InlineMeasureSystem), ExteraConfig.getInlineMeasureSystem().ordinal(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.InlineResultsPreferencesActivity$$ExternalSyntheticLambda11
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i) {
                        ExteraConfig.setInlineMeasureSystem(MeasureSystem.getEntries().get(i));
                    }
                });
                break;
            case 9:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.InlineResultsPreferencesActivity$$ExternalSyntheticLambda12
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setInlineDigitGrouping(((Boolean) obj).booleanValue());
                    }
                });
                break;
        }
    }

    public static void $r8$lambda$lPxkytReZq7OdTAzfWVLVTeYrXY(int i, InlineResultsPreferencesActivity inlineResultsPreferencesActivity, UItem uItem, int i2) {
        if (i2 == i) {
            return;
        }
        List<String> list = inlineResultsPreferencesActivity.currencyCodes;
        if (list == null) {
            list = null;
        }
        ExteraConfig.setInlineTargetCurrency(list.get(i2));
        View viewFindViewByItemId = inlineResultsPreferencesActivity.getListView$TMessagesProj().findViewByItemId(uItem.id);
        TextCell textCell = viewFindViewByItemId instanceof TextCell ? (TextCell) viewFindViewByItemId : null;
        if (textCell != null) {
            textCell.setValue(inlineResultsPreferencesActivity.defaultCurrencyValue(), true);
        }
        UniversalAdapter universalAdapter = inlineResultsPreferencesActivity.getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    private final String defaultCurrencyValue() {
        String strNormalize = InlineRates.INSTANCE.normalize(ExteraConfig.getInlineTargetCurrency());
        return this.rates.supports(strNormalize) ? strNormalize : LocaleController.getString(C2807R.string.QualityAuto);
    }

    private final String settingsInfo() {
        if (!ExteraConfig.getInlineCurrencyRates()) {
            return null;
        }
        String string = LocaleController.getString(C2807R.string.InlineAutoCurrencyInfo);
        ExchangeRates.State statePeekCached = ExchangeRates.peekCached();
        if (statePeekCached == null) {
            return string;
        }
        return string + " " + LocaleController.formatString(C2807R.string.InlineRatesUpdated, LocaleController.formatDateAudio(statePeekCached.time() / 1000, true));
    }

    private final char decimalSeparator() {
        Locale currentLocale = LocaleController.getInstance().getCurrentLocale();
        if (currentLocale == null) {
            currentLocale = Locale.US;
        }
        return DecimalFormatSymbols.getInstance(currentLocale).getDecimalSeparator();
    }

    private final List<InlineDocBlock> blocks(Section section, MathOptions options) {
        int i = WhenMappings.$EnumSwitchMapping$1[section.ordinal()];
        if (i == 1) {
            InlineExamples inlineExamples = InlineExamples.INSTANCE;
            return CollectionsKt.listOf((Object[]) new InlineDocBlock[]{examples(inlineExamples.getArithmetic(), options), text(C2807R.string.InlineDocFunctionsText), new InlineDocBlock.Codes(inlineExamples.getFunctions()), examples(inlineExamples.getArithmeticFunctions(), options), text(C2807R.string.InlineDocBasesText), examples(inlineExamples.getBases(), options)});
        }
        if (i == 2) {
            InlineDocBlock inlineDocBlockText = text(C2807R.string.InlineDocPercentText);
            InlineExamples inlineExamples2 = InlineExamples.INSTANCE;
            return CollectionsKt.listOf((Object[]) new InlineDocBlock[]{inlineDocBlockText, examples(inlineExamples2.getPercentages(), options), text(C2807R.string.InlineDocShorthandsText), examples(inlineExamples2.getShorthands(), options)});
        }
        if (i == 3) {
            InlineDocBlock inlineDocBlockText2 = text(C2807R.string.InlineDocCurrencyText);
            InlineExamples inlineExamples3 = InlineExamples.INSTANCE;
            return CollectionsKt.listOf((Object[]) new InlineDocBlock[]{inlineDocBlockText2, examples(inlineExamples3.getCurrencyDefault(), options), examples(inlineExamples3.getCurrencyTarget(), options)});
        }
        if (i == 4) {
            InlineDocBlock inlineDocBlockText3 = text(C2807R.string.InlineDocUnitsText);
            InlineExamples inlineExamples4 = InlineExamples.INSTANCE;
            return CollectionsKt.listOf((Object[]) new InlineDocBlock[]{inlineDocBlockText3, examples(inlineExamples4.getUnitsDefault(), options), examples(inlineExamples4.getUnitsTarget(), options), text(C2807R.string.InlineDocDurationsText), examples(inlineExamples4.getDurations(), options)});
        }
        if (i != 5) {
            LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
            return null;
        }
        InlineDocBlock inlineDocBlockText4 = text(C2807R.string.InlineDocTimeText);
        InlineExamples inlineExamples5 = InlineExamples.INSTANCE;
        return CollectionsKt.listOf((Object[]) new InlineDocBlock[]{inlineDocBlockText4, examples(inlineExamples5.getTimeZones(), options), text(C2807R.string.InlineDocCurrentTimeText), examples(inlineExamples5.getCurrentTime(), options)});
    }

    private final InlineDocBlock text(int res) {
        return new InlineDocBlock.Text(LocaleController.getString(res));
    }

    private final InlineDocBlock examples(InlineExampleGroup group, MathOptions options) {
        Locale currentLocale = LocaleController.getInstance().getCurrentLocale();
        String language = currentLocale != null ? currentLocale.getLanguage() : null;
        List<String> listExamples = group.examples(Intrinsics.areEqual(language, "ru") || Intrinsics.areEqual(language, "be"));
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listExamples, 10));
        for (String str : listExamples) {
            MathSuggestion mathSuggestionSuggestionAt = MathExpression.INSTANCE.suggestionAt(str, str.length(), options);
            arrayList.add(new InlineDocExample(str, mathSuggestionSuggestionAt != null ? mathSuggestionSuggestionAt.getValue() : null));
        }
        return new InlineDocBlock.Examples(arrayList);
    }
}
