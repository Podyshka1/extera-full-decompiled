package com.exteragram.messenger.plugins.analyzer;

import com.exteragram.messenger.plugins.analyzer.AnalyzerReport;
import com.google.android.gms.cast.MediaTrack;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001:\u0003\u001f !B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u00062\u0006\u0010\f\u001a\u00020\rJ\u001c\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\f\u001a\u00020\rJ\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00060\u00132\u0006\u0010\f\u001a\u00020\rJ\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0017\u0010\u0019\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001a\u001a\u00020\u0006H\u0000¢\u0006\u0002\b\u001bJ\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00062\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00060\u0013H\u0002J\u0010\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0006H\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/AnalysisCatalog;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "SYMBOL_VALUES", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "entries", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/analyzer/AnalysisCatalog$Entry;", "category", "Lcom/exteragram/messenger/plugins/analyzer/AnalysisCatalog$Category;", "statement", "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Statement;", "icon", _UrlKt.FRAGMENT_ENCODE_SET, "name", MediaTrack.ROLE_DESCRIPTION, "values", _UrlKt.FRAGMENT_ENCODE_SET, "report", "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport;", "notes", "limits", "Lcom/exteragram/messenger/plugins/analyzer/AnalysisCatalog$Limit;", "symbolName", "value", "symbolName$TMessagesProj", "tlMethod", "parts", "hostOf", "Category", "Entry", "Limit", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAnalysisCatalog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnalysisCatalog.kt\ncom/exteragram/messenger/plugins/analyzer/AnalysisCatalog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,188:1\n1#2:189\n1#2:214\n1391#3:190\n1480#3,2:191\n777#3:193\n873#3,2:194\n1586#3:196\n1661#3,3:197\n1807#3,3:200\n1642#3,10:203\n1915#3:213\n1916#3:215\n1652#3:216\n1482#3,3:217\n777#3:220\n873#3,2:221\n1807#3,3:223\n1807#3,3:226\n*S KotlinDebug\n*F\n+ 1 AnalysisCatalog.kt\ncom/exteragram/messenger/plugins/analyzer/AnalysisCatalog\n*L\n114#1:214\n105#1:190\n105#1:191,2\n106#1:193\n106#1:194,2\n109#1:196\n109#1:197,3\n114#1:200,3\n114#1:203,10\n114#1:213\n114#1:215\n114#1:216\n105#1:217,3\n118#1:220\n118#1:221,2\n132#1:223,3\n133#1:226,3\n*E\n"})
public final class AnalysisCatalog {
    public static final AnalysisCatalog INSTANCE = new AnalysisCatalog();
    private static final Set<String> SYMBOL_VALUES = SetsKt.setOf((Object[]) new String[]{"telegram_api", "sensitive_requests", "intercepts_requests", "session_data", "java_hooks", "ui_hooks", "host_tampering", "traffic_interception"});
    private static final Map<String, Entry> entries;

    private AnalysisCatalog() {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/AnalysisCatalog$Category;", _UrlKt.FRAGMENT_ENCODE_SET, "iconRes", _UrlKt.FRAGMENT_ENCODE_SET, "titleRes", "<init>", "(Ljava/lang/String;III)V", "getIconRes", "()I", "getTitleRes", "CODE", "STEALTH", "ACCOUNT", "MESSAGES", "NETWORK", "FILES", "DEVICE", "APP", "PACKAGES", "OTHER", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Category {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Category[] $VALUES;
        private final int iconRes;
        private final int titleRes;
        public static final Category CODE = new Category("CODE", 0, C2807R.drawable.plugin_analysis_code, C2807R.string.PluginAnalysisCategoryCode);
        public static final Category STEALTH = new Category("STEALTH", 1, C2807R.drawable.plugin_analysis_stealth, C2807R.string.PluginAnalysisCategoryStealth);
        public static final Category ACCOUNT = new Category("ACCOUNT", 2, C2807R.drawable.plugin_analysis_account, C2807R.string.PluginAnalysisCategoryAccount);
        public static final Category MESSAGES = new Category("MESSAGES", 3, C2807R.drawable.plugin_analysis_messages, C2807R.string.PluginAnalysisCategoryMessages);
        public static final Category NETWORK = new Category("NETWORK", 4, C2807R.drawable.plugin_analysis_network, C2807R.string.PluginAnalysisCategoryNetwork);
        public static final Category FILES = new Category("FILES", 5, C2807R.drawable.plugin_analysis_files, C2807R.string.PluginAnalysisCategoryFiles);
        public static final Category DEVICE = new Category("DEVICE", 6, C2807R.drawable.plugin_analysis_device, C2807R.string.PluginAnalysisCategoryDevice);
        public static final Category APP = new Category("APP", 7, C2807R.drawable.plugin_analysis_app, C2807R.string.PluginAnalysisCategoryApp);
        public static final Category PACKAGES = new Category("PACKAGES", 8, C2807R.drawable.plugin_analysis_packages, C2807R.string.PluginAnalysisCategoryPackages);
        public static final Category OTHER = new Category("OTHER", 9, C2807R.drawable.plugin_analysis_info, C2807R.string.PluginAnalysisCategoryOther);

        private static final /* synthetic */ Category[] $values() {
            return new Category[]{CODE, STEALTH, ACCOUNT, MESSAGES, NETWORK, FILES, DEVICE, APP, PACKAGES, OTHER};
        }

        public static EnumEntries<Category> getEntries() {
            return $ENTRIES;
        }

        public static Category valueOf(String str) {
            return (Category) Enum.valueOf(Category.class, str);
        }

        public static Category[] values() {
            return (Category[]) $VALUES.clone();
        }

        private Category(String str, int i, int i2, int i3) {
            this.iconRes = i2;
            this.titleRes = i3;
        }

        public final int getIconRes() {
            return this.iconRes;
        }

        public final int getTitleRes() {
            return this.titleRes;
        }

        static {
            Category[] categoryArr$values = $values();
            $VALUES = categoryArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(categoryArr$values);
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0002\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/AnalysisCatalog$Entry;", _UrlKt.FRAGMENT_ENCODE_SET, "category", "Lcom/exteragram/messenger/plugins/analyzer/AnalysisCatalog$Category;", "nameRes", _UrlKt.FRAGMENT_ENCODE_SET, "descriptionRes", "iconRes", "<init>", "(Lcom/exteragram/messenger/plugins/analyzer/AnalysisCatalog$Category;III)V", "getCategory", "()Lcom/exteragram/messenger/plugins/analyzer/AnalysisCatalog$Category;", "getNameRes", "()I", "getDescriptionRes", "getIconRes", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Entry {
        private final Category category;
        private final int descriptionRes;
        private final int iconRes;
        private final int nameRes;

        public Entry(Category category, int i, int i2, int i3) {
            this.category = category;
            this.nameRes = i;
            this.descriptionRes = i2;
            this.iconRes = i3;
        }

        public /* synthetic */ Entry(Category category, int i, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(category, i, i2, (i4 & 8) != 0 ? category.getIconRes() : i3);
        }

        public final Category getCategory() {
            return this.category;
        }

        public final int getDescriptionRes() {
            return this.descriptionRes;
        }

        public final int getIconRes() {
            return this.iconRes;
        }

        public final int getNameRes() {
            return this.nameRes;
        }
    }

    static {
        Category category = Category.CODE;
        Pair pair = TuplesKt.to("dynamic_code", new Entry(category, C2807R.string.PluginAnalysisNameDynamicCode, C2807R.string.PluginAnalysisStatementDynamicCode, 0, 8, null));
        int i = 8;
        DefaultConstructorMarker defaultConstructorMarker = null;
        int i2 = 0;
        Pair pair2 = TuplesKt.to("embedded_code", new Entry(category, C2807R.string.PluginAnalysisNameEmbeddedCode, C2807R.string.PluginAnalysisStatementEmbeddedCode, i2, i, defaultConstructorMarker));
        Pair pair3 = TuplesKt.to("mvel_code", new Entry(category, C2807R.string.PluginAnalysisNameMvelCode, C2807R.string.PluginAnalysisStatementMvelCode, i2, i, defaultConstructorMarker));
        Pair pair4 = TuplesKt.to("loads_code", new Entry(category, C2807R.string.PluginAnalysisCompiledCode, C2807R.string.PluginAnalysisStatementLoadsCode, i2, i, defaultConstructorMarker));
        Category category2 = Category.STEALTH;
        Pair pair5 = TuplesKt.to("reflection_dynamic", new Entry(category2, C2807R.string.PluginAnalysisNameReflectionDynamic, C2807R.string.PluginAnalysisStatementReflectionDynamic, 0, 8, null));
        Pair pair6 = TuplesKt.to("native_code", new Entry(category, C2807R.string.PluginAnalysisNameNativeCode, C2807R.string.PluginAnalysisStatementNativeCode, i2, i, defaultConstructorMarker));
        int i3 = 8;
        DefaultConstructorMarker defaultConstructorMarker2 = null;
        int i4 = 0;
        Pair pair7 = TuplesKt.to("anti_analysis", new Entry(category2, C2807R.string.PluginAnalysisNameAntiAnalysis, C2807R.string.PluginAnalysisStatementAntiAnalysis, i4, i3, defaultConstructorMarker2));
        Pair pair8 = TuplesKt.to("hidden_parts", new Entry(category2, C2807R.string.PluginAnalysisNameHiddenParts, C2807R.string.PluginAnalysisStatementHiddenParts, i4, i3, defaultConstructorMarker2));
        Pair pair9 = TuplesKt.to("remote_code", new Entry(category, C2807R.string.PluginAnalysisNameRemoteCode, C2807R.string.PluginAnalysisStatementRemoteCode, C2807R.drawable.plugin_analysis_remote_code));
        Pair pair10 = TuplesKt.to("remote_control", new Entry(category, C2807R.string.PluginAnalysisNameRemoteControl, C2807R.string.PluginAnalysisStatementRemoteControl, C2807R.drawable.plugin_analysis_remote_control));
        Pair pair11 = TuplesKt.to("hides_behavior", new Entry(category2, C2807R.string.PluginAnalysisNameHidesBehavior, C2807R.string.PluginAnalysisStatementHidesBehavior, i4, i3, defaultConstructorMarker2));
        Category category3 = Category.NETWORK;
        Pair pair12 = TuplesKt.to("network", new Entry(category3, C2807R.string.PluginAnalysisNameNetwork, C2807R.string.PluginAnalysisStatementNetwork, 0, 8, null));
        Pair pair13 = TuplesKt.to("exfiltrate_messages", new Entry(category3, C2807R.string.PluginAnalysisNameExfiltrateMessages, C2807R.string.PluginAnalysisStatementExfiltrateMessages, C2807R.drawable.plugin_analysis_exfiltrate_messages));
        int i5 = 8;
        DefaultConstructorMarker defaultConstructorMarker3 = null;
        int i6 = 0;
        Pair pair14 = TuplesKt.to("device_id_upload", new Entry(category3, C2807R.string.PluginAnalysisNameDeviceIdUpload, C2807R.string.PluginAnalysisStatementDeviceIdUpload, i6, i5, defaultConstructorMarker3));
        Category category4 = Category.FILES;
        Pair pair15 = TuplesKt.to("files", new Entry(category4, C2807R.string.PluginAnalysisNameFiles, C2807R.string.PluginAnalysisStatementFiles, 0, 8, null));
        Pair pair16 = TuplesKt.to("telegram_files", new Entry(category4, C2807R.string.PluginAnalysisNameTelegramFiles, C2807R.string.PluginAnalysisStatementTelegramFiles, 0, 8, null));
        Category category5 = Category.DEVICE;
        Pair pair17 = TuplesKt.to("processes", new Entry(category5, C2807R.string.PluginAnalysisNameProcesses, C2807R.string.PluginAnalysisStatementProcesses, 0, 8, null));
        Category category6 = Category.APP;
        Pair pair18 = TuplesKt.to("app_exit", new Entry(category6, C2807R.string.PluginAnalysisNameAppExit, C2807R.string.PluginAnalysisStatementAppExit, 0, 8, null));
        int i7 = 8;
        DefaultConstructorMarker defaultConstructorMarker4 = null;
        int i8 = 0;
        Pair pair19 = TuplesKt.to("host_tampering", new Entry(category6, C2807R.string.PluginAnalysisNameHostTampering, C2807R.string.PluginAnalysisStatementHostTampering, i8, i7, defaultConstructorMarker4));
        Pair pair20 = TuplesKt.to("java_hooks", new Entry(category6, C2807R.string.PluginAnalysisNameJavaHooks, C2807R.string.PluginAnalysisStatementJavaHooks, i8, i7, defaultConstructorMarker4));
        Pair pair21 = TuplesKt.to("ui_hooks", new Entry(category6, C2807R.string.PluginAnalysisNameUiHooks, C2807R.string.PluginAnalysisStatementUiHooks, i8, i7, defaultConstructorMarker4));
        Pair pair22 = TuplesKt.to("persistence", new Entry(category6, C2807R.string.PluginAnalysisNamePersistence, C2807R.string.PluginAnalysisStatementPersistence, i8, i7, defaultConstructorMarker4));
        Pair pair23 = TuplesKt.to("app_settings", new Entry(category6, C2807R.string.PluginAnalysisNameAppSettings, C2807R.string.PluginAnalysisStatementAppSettings, i8, i7, defaultConstructorMarker4));
        int i9 = 8;
        DefaultConstructorMarker defaultConstructorMarker5 = null;
        int i10 = 0;
        Pair pair24 = TuplesKt.to("privacy", new Entry(category5, C2807R.string.PluginAnalysisNamePrivacy, C2807R.string.PluginAnalysisStatementPrivacy, i10, i9, defaultConstructorMarker5));
        Pair pair25 = TuplesKt.to("system_overlay", new Entry(category5, C2807R.string.PluginAnalysisNameSystemOverlay, C2807R.string.PluginAnalysisStatementSystemOverlay, i10, i9, defaultConstructorMarker5));
        Pair pair26 = TuplesKt.to("exfiltrate_files", new Entry(category3, C2807R.string.PluginAnalysisNameExfiltrateFiles, C2807R.string.PluginAnalysisStatementExfiltrateFiles, i6, i5, defaultConstructorMarker3));
        Category category7 = Category.MESSAGES;
        Pair pair27 = TuplesKt.to("telegram_leak", new Entry(category7, C2807R.string.PluginAnalysisNameTelegramLeak, C2807R.string.PluginAnalysisStatementTelegramLeak, 0, 8, null));
        Category category8 = Category.ACCOUNT;
        Pair pair28 = TuplesKt.to("session_via_telegram", new Entry(category8, C2807R.string.PluginAnalysisNameSessionViaTelegram, C2807R.string.PluginAnalysisStatementSessionViaTelegram, 0, 8, null));
        Pair pair29 = TuplesKt.to("sms", new Entry(category5, C2807R.string.PluginAnalysisNameSms, C2807R.string.PluginAnalysisStatementSms, i10, i9, defaultConstructorMarker5));
        Pair pair30 = TuplesKt.to("screen_capture", new Entry(category5, C2807R.string.PluginAnalysisNameScreenCapture, C2807R.string.PluginAnalysisStatementScreenCapture, i10, i9, defaultConstructorMarker5));
        Pair pair31 = TuplesKt.to("installs_apps", new Entry(category5, C2807R.string.PluginAnalysisNameInstallsApps, C2807R.string.PluginAnalysisStatementInstallsApps, i10, i9, defaultConstructorMarker5));
        Pair pair32 = TuplesKt.to("media_library", new Entry(category5, C2807R.string.PluginAnalysisNameMediaLibrary, C2807R.string.PluginAnalysisStatementMediaLibrary, i10, i9, defaultConstructorMarker5));
        Pair pair33 = TuplesKt.to("webview_bridge", new Entry(category3, C2807R.string.PluginAnalysisNameWebviewBridge, C2807R.string.PluginAnalysisStatementWebviewBridge, i6, i5, defaultConstructorMarker3));
        Pair pair34 = TuplesKt.to("background", new Entry(category5, C2807R.string.PluginAnalysisNameBackground, C2807R.string.PluginAnalysisStatementBackground, i10, i9, defaultConstructorMarker5));
        Pair pair35 = TuplesKt.to("intents", new Entry(category5, C2807R.string.PluginAnalysisNameIntents, C2807R.string.PluginAnalysisStatementIntents, i10, i9, defaultConstructorMarker5));
        Pair pair36 = TuplesKt.to("notifications", new Entry(category7, C2807R.string.Notifications, C2807R.string.PluginAnalysisStatementNotifications, 0, 8, null));
        Category category9 = Category.PACKAGES;
        Pair pair37 = TuplesKt.to("third_party_code", new Entry(category9, C2807R.string.PluginAnalysisNameThirdPartyCode, C2807R.string.PluginAnalysisStatementThirdPartyCode, 0, 8, null));
        int i11 = 8;
        DefaultConstructorMarker defaultConstructorMarker6 = null;
        int i12 = 0;
        Pair pair38 = TuplesKt.to("verified_packages", new Entry(category9, C2807R.string.PluginAnalysisNameVerifiedPackages, C2807R.string.PluginAnalysisStatementVerifiedPackages, i12, i11, defaultConstructorMarker6));
        Pair pair39 = TuplesKt.to("unused_files", new Entry(category9, C2807R.string.PluginAnalysisNameUnusedFiles, C2807R.string.PluginAnalysisStatementUnusedFiles, i12, i11, defaultConstructorMarker6));
        Pair pair40 = TuplesKt.to("traffic_interception", new Entry(category3, C2807R.string.PluginAnalysisNameTrafficInterception, C2807R.string.PluginAnalysisStatementTrafficInterception, i6, i5, defaultConstructorMarker3));
        int i13 = 8;
        DefaultConstructorMarker defaultConstructorMarker7 = null;
        int i14 = 0;
        Pair pair41 = TuplesKt.to("telegram_api", new Entry(category8, C2807R.string.PluginAnalysisNameTelegramApi, C2807R.string.PluginAnalysisStatementTelegramApi, i14, i13, defaultConstructorMarker7));
        Pair pair42 = TuplesKt.to("sensitive_requests", new Entry(category8, C2807R.string.PluginAnalysisNameSensitiveRequests, C2807R.string.PluginAnalysisStatementSensitiveRequests, i14, i13, defaultConstructorMarker7));
        Pair pair43 = TuplesKt.to("intercepts_requests", new Entry(category8, C2807R.string.PluginAnalysisNameInterceptsRequests, C2807R.string.PluginAnalysisStatementInterceptsRequests, i14, i13, defaultConstructorMarker7));
        Pair pair44 = TuplesKt.to("session_data", new Entry(category8, C2807R.string.PluginAnalysisNameSessionData, C2807R.string.PluginAnalysisStatementSessionData, i14, i13, defaultConstructorMarker7));
        Pair pair45 = TuplesKt.to("hidden_account_actions", new Entry(category8, C2807R.string.PluginAnalysisNameHiddenAccountActions, C2807R.string.PluginAnalysisStatementHiddenAccountActions, i14, i13, defaultConstructorMarker7));
        Pair pair46 = TuplesKt.to("account_takeover", new Entry(category8, C2807R.string.PluginAnalysisNameAccountTakeover, C2807R.string.PluginAnalysisStatementAccountTakeover, C2807R.drawable.plugin_analysis_account_takeover));
        Pair pair47 = TuplesKt.to("wallet_access", new Entry(category8, C2807R.string.PluginAnalysisNameWalletAccess, C2807R.string.PluginAnalysisStatementWalletAccess, C2807R.drawable.plugin_analysis_wallet_access));
        int i15 = 8;
        DefaultConstructorMarker defaultConstructorMarker8 = null;
        int i16 = 0;
        entries = MapsKt.mapOf(pair, pair2, pair3, pair4, pair5, pair6, pair7, pair8, pair9, pair10, pair11, pair12, pair13, pair14, pair15, pair16, pair17, pair18, pair19, pair20, pair21, pair22, pair23, pair24, pair25, pair26, pair27, pair28, pair29, pair30, pair31, pair32, pair33, pair34, pair35, pair36, pair37, pair38, pair39, pair40, pair41, pair42, pair43, pair44, pair45, pair46, pair47, TuplesKt.to("messages_read", new Entry(category7, C2807R.string.PluginAnalysisNameMessagesRead, C2807R.string.PluginAnalysisStatementMessagesRead, i16, i15, defaultConstructorMarker8)), TuplesKt.to("typed_text", new Entry(category7, C2807R.string.PluginAnalysisNameTypedText, C2807R.string.PluginAnalysisStatementTypedText, i16, i15, defaultConstructorMarker8)), TuplesKt.to("messages_send", new Entry(category7, C2807R.string.PluginAnalysisNameMessagesSend, C2807R.string.PluginAnalysisStatementMessagesSend, i16, i15, defaultConstructorMarker8)), TuplesKt.to("messages_delete", new Entry(category7, C2807R.string.PluginAnalysisNameMessagesDelete, C2807R.string.PluginAnalysisStatementMessagesDelete, i16, i15, defaultConstructorMarker8)), TuplesKt.to("contacts", new Entry(category7, C2807R.string.PluginAnalysisNameContacts, C2807R.string.PluginAnalysisStatementContacts, i16, i15, defaultConstructorMarker8)), TuplesKt.to("forward_messages", new Entry(category7, C2807R.string.PluginAnalysisNameForwardMessages, C2807R.string.PluginAnalysisStatementForwardMessages, i16, i15, defaultConstructorMarker8)));
    }

    public final Category category(AnalyzerReport.Statement statement) {
        Category category;
        Entry entry = entries.get(statement.getId());
        return (entry == null || (category = entry.getCategory()) == null) ? Category.OTHER : category;
    }

    public final int icon(AnalyzerReport.Statement statement) {
        Entry entry = entries.get(statement.getId());
        return entry != null ? entry.getIconRes() : Category.OTHER.getIconRes();
    }

    public final String name(AnalyzerReport.Statement statement) {
        String string;
        Entry entry = entries.get(statement.getId());
        return (entry == null || (string = LocaleController.getString(entry.getNameRes())) == null) ? statement.getTitle() : string;
    }

    public final String description(AnalyzerReport.Statement statement) {
        Entry entry = entries.get(statement.getId());
        if (entry != null) {
            return LocaleController.getString(entry.getDescriptionRes());
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0110  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List<String> values(AnalyzerReport report, AnalyzerReport.Statement statement) {
        int i;
        List<String> values;
        List<AnalyzerReport.Finding> listFindingsOf = report.findingsOf(statement);
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listFindingsOf.iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            AnalyzerReport.Finding finding = (AnalyzerReport.Finding) it.next();
            List<String> capabilities = finding.getCapabilities();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : capabilities) {
                if (statement.getCapabilities().contains((String) obj)) {
                    arrayList2.add(obj);
                }
            }
            if (arrayList2.contains("network")) {
                if (StringsKt.startsWith$default(finding.getRule(), "net.", false, 2, (Object) null) && (StringsKt.contains$default((CharSequence) finding.getRule(), (CharSequence) "endpoints", false, 2, (Object) null) || Intrinsics.areEqual(finding.getRule(), "net.raw_ip"))) {
                    List<String> values2 = finding.getValues();
                    AnalysisCatalog analysisCatalog = INSTANCE;
                    values = new ArrayList<>(CollectionsKt.collectionSizeOrDefault(values2, 10));
                    Iterator<T> it2 = values2.iterator();
                    while (it2.hasNext()) {
                        values.add(analysisCatalog.hostOf((String) it2.next()));
                    }
                } else {
                    values = CollectionsKt.emptyList();
                }
            } else if (arrayList2.isEmpty()) {
                values = (!arrayList2.contains("third_party_code") || arrayList2.contains("verified_packages") || arrayList2.contains("mvel_code") || arrayList2.contains("unused_files")) ? finding.getValues() : CollectionsKt.emptyList();
            } else {
                int size = arrayList2.size();
                while (i < size) {
                    Object obj2 = arrayList2.get(i);
                    i++;
                    if (SYMBOL_VALUES.contains((String) obj2)) {
                        List<String> values3 = finding.getValues();
                        AnalysisCatalog analysisCatalog2 = INSTANCE;
                        values = new ArrayList<>();
                        Iterator<T> it3 = values3.iterator();
                        while (it3.hasNext()) {
                            String strSymbolName$TMessagesProj = analysisCatalog2.symbolName$TMessagesProj((String) it3.next());
                            if (strSymbolName$TMessagesProj != null) {
                                values.add(strSymbolName$TMessagesProj);
                            }
                        }
                    }
                }
                if (arrayList2.contains("third_party_code")) {
                }
            }
            CollectionsKt.addAll(arrayList, values);
        }
        ArrayList arrayList3 = new ArrayList();
        int size2 = arrayList.size();
        while (i < size2) {
            Object obj3 = arrayList.get(i);
            i++;
            if (((String) obj3).length() > 0) {
                arrayList3.add(obj3);
            }
        }
        return CollectionsKt.distinct(arrayList3);
    }

    public final List<String> notes(AnalyzerReport.Statement statement) {
        String string = null;
        String string2 = statement.getRules().contains("tl.unresolved_request") ? LocaleController.getString(C2807R.string.PluginAnalysisUnresolvedRequests) : null;
        if (Intrinsics.areEqual(statement.getId(), "java_hooks") && (statement.getRules().contains("hooks.unresolved") || statement.getRules().contains("hooks.external"))) {
            string = LocaleController.getString(C2807R.string.PluginAnalysisUnresolvedHooks);
        }
        return CollectionsKt.listOfNotNull((Object[]) new String[]{string2, string});
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/AnalysisCatalog$Limit;", _UrlKt.FRAGMENT_ENCODE_SET, "iconRes", _UrlKt.FRAGMENT_ENCODE_SET, "title", _UrlKt.FRAGMENT_ENCODE_SET, MediaTrack.ROLE_SUBTITLE, "<init>", "(ILjava/lang/String;Ljava/lang/String;)V", "getIconRes", "()I", "getTitle", "()Ljava/lang/String;", "getSubtitle", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Limit {
        private final int iconRes;
        private final String subtitle;
        private final String title;

        public Limit(int i, String str, String str2) {
            this.iconRes = i;
            this.title = str;
            this.subtitle = str2;
        }

        public final int getIconRes() {
            return this.iconRes;
        }

        public final String getSubtitle() {
            return this.subtitle;
        }

        public final String getTitle() {
            return this.title;
        }
    }

    public final List<Limit> limits(AnalyzerReport report) {
        boolean z;
        List<String> limits = report.getLimits();
        boolean z2 = true;
        if ((limits instanceof Collection) && limits.isEmpty()) {
            z = false;
        } else {
            for (String str : limits) {
                if (StringsKt.startsWith$default(str, "timeout", false, 2, (Object) null) || StringsKt.startsWith$default(str, "unanalyzed", false, 2, (Object) null)) {
                    z = true;
                    break;
                }
            }
            z = false;
        }
        List<String> limits2 = report.getLimits();
        if ((limits2 instanceof Collection) && limits2.isEmpty()) {
            z2 = false;
        } else {
            for (String str2 : limits2) {
                if (!StringsKt.startsWith$default(str2, "timeout", false, 2, (Object) null) && !StringsKt.startsWith$default(str2, "unanalyzed", false, 2, (Object) null)) {
                    break;
                }
            }
            z2 = false;
        }
        return CollectionsKt.listOfNotNull((Object[]) new Limit[]{z ? new Limit(C2807R.drawable.plugin_analysis_timer, LocaleController.getString(C2807R.string.PluginAnalysisLimitTime), LocaleController.getString(C2807R.string.PluginAnalysisLimitTimeInfo)) : null, z2 ? new Limit(C2807R.drawable.plugin_analysis_question, LocaleController.getString(C2807R.string.PluginAnalysisLimitIncomplete), LocaleController.getString(C2807R.string.PluginAnalysisLimitIncompleteInfo)) : null});
    }

    public final String symbolName$TMessagesProj(String value) {
        String string = StringsKt.trim((CharSequence) StringsKt.substringAfter$default(StringsKt.substringBefore$default(value, " (", (String) null, 2, (Object) null), ':', (String) null, 2, (Object) null)).toString();
        if (string.length() == 0 || StringsKt.startsWith$default(string, "<", false, 2, (Object) null) || Intrinsics.areEqual(string, "?")) {
            return null;
        }
        String strSubstringBefore$default = StringsKt.substringBefore$default(string, '#', (String) null, 2, (Object) null);
        String strSubstringAfter = StringsKt.substringAfter(string, '#', _UrlKt.FRAGMENT_ENCODE_SET);
        List<String> listSplit$default = StringsKt.split$default((CharSequence) StringsKt.substringAfterLast$default(strSubstringBefore$default, '.', (String) null, 2, (Object) null), new char[]{Typography.dollar}, false, 0, 6, (Object) null);
        String strTlMethod = tlMethod(listSplit$default);
        if (strTlMethod != null) {
            if (strSubstringAfter.length() == 0 || Intrinsics.areEqual(strSubstringAfter, "<init>")) {
                return strTlMethod;
            }
            return strTlMethod + "." + strSubstringAfter;
        }
        String strJoinToString$default = CollectionsKt.joinToString$default(listSplit$default, ".", null, null, 0, null, null, 62, null);
        if (strSubstringAfter.length() == 0 || Intrinsics.areEqual(strSubstringAfter, "<init>")) {
            return strJoinToString$default;
        }
        return strJoinToString$default + "." + strSubstringAfter;
    }

    private final String tlMethod(List<String> parts) {
        String strRemovePrefix;
        String str = (String) CollectionsKt.last((List) parts);
        if (StringsKt.startsWith$default(str, "TL_", false, 2, (Object) null)) {
            strRemovePrefix = StringsKt.removePrefix(str, (CharSequence) "TL_");
        } else {
            if (parts.size() < 2 || !StringsKt.startsWith$default(parts.get(parts.size() - 2), "TL_", false, 2, (Object) null)) {
                return null;
            }
            strRemovePrefix = StringsKt.removePrefix(parts.get(parts.size() - 2), (CharSequence) "TL_") + "_" + str;
        }
        String str2 = strRemovePrefix;
        int iIndexOf$default = StringsKt.indexOf$default((CharSequence) str2, '_', 0, false, 6, (Object) null);
        if (iIndexOf$default <= 0 || iIndexOf$default >= str2.length() - 1) {
            return str2;
        }
        return str2.substring(0, iIndexOf$default) + "." + str2.substring(iIndexOf$default + 1);
    }

    private final String hostOf(String value) {
        return StringsKt.trim((CharSequence) StringsKt.substringBefore$default(StringsKt.substringBefore$default(StringsKt.substringBefore$default(StringsKt.substringAfter$default(value, "://", (String) null, 2, (Object) null), '/', (String) null, 2, (Object) null), '?', (String) null, 2, (Object) null), ':', (String) null, 2, (Object) null)).toString();
    }
}
