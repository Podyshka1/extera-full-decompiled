package com.exteragram.messenger;

import android.content.SharedPreferences;
import android.util.Pair;
import com.chaquo.python.internal.Common;
import com.exteragram.messenger.adblock.backend.AdBlockManager;
import com.exteragram.messenger.api.ApiController;
import com.exteragram.messenger.backup.PreferencesUtils;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.exteragram.messenger.utils.chats.DoubleTapUtils;
import com.exteragram.messenger.utils.network.RemoteUtils;
import com.exteragram.messenger.utils.text.TranslatorUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Set;
import java.util.function.Predicate;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.SharedConfig;
import org.telegram.p029ui.web.SearchEngine;
import p022j$.util.Collection;
import p022j$.util.function.Predicate$CC;

/* JADX INFO: loaded from: classes.dex */
public abstract class ExteraConfig {
    public static boolean addCommaAfterMention;
    public static boolean alwaysSendInHD;
    public static boolean archiveOnPull;
    public static float avatarCorners;
    public static int bottomButton;
    public static boolean cameraMirrorMode;
    public static boolean cameraStabilization;
    public static int cameraType;
    public static boolean centerTitle;
    public static boolean checkUpdatesOnLaunch;
    private static boolean configLoaded;
    private static volatile Pair currentApiBot;
    public static boolean customThemes;
    public static boolean disableDividers;
    public static boolean disableGreetingSticker;
    public static boolean disableNumberRounding;
    public static boolean disableUnarchiveSwipe;
    public static ArrayList doNotMarkAsNew;
    public static boolean doNotUseProxyWithVpn;
    public static int doubleTapAction;
    public static int doubleTapActionOutOwner;
    public static int doubleTapSeekDuration;
    public static int downloadSpeedBoost;
    public static String editingIconPackId;
    public static SharedPreferences.Editor editor;
    public static boolean enableAdBlock;
    public static int eventType;
    public static boolean extendedFramesPerSecond;
    public static boolean filterZalgo;
    public static float flashIntensity;
    public static float flashWarmth;
    public static boolean forceBlur;
    public static boolean forceSnow;
    public static boolean formatTimeWithSeconds;
    public static boolean glareOnElements;
    public static boolean gooeyAvatarAnimation;
    public static boolean groupMessageMenu;
    public static boolean hideActionBarStatus;
    public static boolean hideAllChats;
    public static boolean hideArchiveFolder;
    public static boolean hideCameraTile;
    public static boolean hideFloatingButton;
    public static boolean hideKeyboardOnScroll;
    public static boolean hidePhoneNumber;
    public static boolean hidePhotoCounter;
    public static boolean hideReactionsInChannels;
    public static boolean hideReactionsInGroups;
    public static boolean hideReactionsInPrivateChats;
    public static boolean hideSendAsPeer;
    public static boolean hideShareButton;
    public static boolean hideStickerTime;
    public static boolean hideStories;
    public static int iconPack;
    public static boolean immersiveDrawerAnimation;
    public static boolean inAppVibration;
    public static boolean navigationDrawer;
    public static HashMap newFeaturesShowedAt;
    public static boolean newLoadingStyle;
    public static boolean newSliderStyle;
    public static boolean newSwitchStyle;
    public static boolean pauseOnMinimizeRound;
    public static boolean pauseOnMinimizeVideo;
    public static boolean pauseOnMinimizeVoice;
    public static Set pinnedPlugins;
    public static boolean pluginsCompactView;
    public static boolean pluginsDevMode;
    public static boolean pluginsDisableArtOpts;
    public static boolean pluginsEngine;
    public static boolean pluginsPySdkAutoUpdate;
    public static boolean pluginsPySdkBetaVersions;
    public static boolean pluginsSafeMode;
    public static boolean postprocessingWithAi;
    public static boolean predictiveBackAnimation;
    public static boolean preferOriginalQuality;
    public static SharedPreferences preferences;
    public static boolean quickAdminShortcuts;
    public static boolean quickTransitionForChannels;
    public static boolean quickTransitionForTopics;
    public static String recognitionLanguage;
    public static boolean relativeLastSeen;
    public static boolean rememberLastUsedCamera;
    public static boolean removeMessageTail;
    public static boolean replaceEditedWithIcon;
    public static boolean replyBackground;
    public static boolean replyColors;
    public static boolean replyEmoji;
    public static long sdkUpdateScheduleTimestamp;
    public static boolean sectionsSeparatedHeaders;
    public static boolean senderMiniAvatars;
    public static boolean showClearButton;
    public static boolean showCopyPhotoButton;
    public static boolean showDetailsButton;
    public static boolean showGenerateButton;
    public static boolean showHistoryButton;
    public static int showIdAndDc;
    public static boolean showOnlineStatus;
    public static boolean showRepeatMessageButton;
    public static boolean showReportButton;
    public static boolean showResultsBeforeVoting;
    public static boolean showSaveMessageButton;
    public static boolean singleCornerRadius;
    public static boolean springAnimations;
    public static boolean squareFab;
    public static boolean staticZoom;
    public static int stickerShape;
    public static float stickerSize;
    public static boolean swipeToPip;
    public static boolean tabCounter;
    public static int tabIcons;
    public static int tabletMode;
    public static String targetLang;
    public static int titleText;
    public static int translationFormality;
    public static int translationProvider;
    public static boolean unlimitedRecentStickers;
    public static boolean unmuteWithVolumeButtons;
    public static long updateScheduleTimestamp;
    public static boolean uploadSpeedBoost;
    public static boolean useGoogleAnalytics;
    public static boolean useGoogleCrashlytics;
    public static boolean useSystemFonts;
    public static boolean useSystemIconShape;
    public static boolean useYandexMaps;
    public static int videoMessagesCamera;
    public static int voiceHintShowcases;
    public static final Gson GSON = new Gson();
    private static final Object sync = new Object();
    public static ArrayList mainMenuLayout = new ArrayList();
    public static ArrayList mainMenuHiddenItems = new ArrayList();
    public static ArrayList iconPacksLayout = new ArrayList();
    public static ArrayList iconPacksHidden = new ArrayList();
    public static SearchEngine YANDEX_SEARCH_ENGINE = new SearchEngine("Yandex", "https://mini.ya.ru/", "https://ya.ru/search/?text=", "https://suggestqueries.google.com/complete/search?client=chrome&q=", "https://yandex.ru/legal/confidential");

    static {
        loadConfig();
    }

    public static Pair getApiBotInfo() {
        if (currentApiBot != null) {
            return currentApiBot;
        }
        synchronized (ExteraConfig.class) {
            try {
                if (currentApiBot != null) {
                    return currentApiBot;
                }
                String stringConfigValue = RemoteUtils.getStringConfigValue("extera_api_bot", "8083294286:exteraAuthBot");
                if (stringConfigValue != null) {
                    try {
                        String[] strArrSplit = stringConfigValue.split(":", 2);
                        if (strArrSplit.length == 2) {
                            Pair pair = new Pair(Long.valueOf(Long.parseLong(strArrSplit[0])), strArrSplit[1]);
                            currentApiBot = pair;
                            return pair;
                        }
                    } catch (Exception e) {
                        FileLog.m1136e(e);
                    }
                }
                Pair pair2 = new Pair(8083294286L, "exteraAuthBot");
                currentApiBot = pair2;
                return pair2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public enum MainMenuItem {
        DIVIDER(-1),
        PROFILE(18),
        ARCHIVE(14),
        BOTS(105),
        NEW_GROUP(2),
        CONTACTS(6),
        NEW_CHANNEL(3),
        CALLS(10),
        SAVED(11),
        SETTINGS(8),
        PLUGINS(102),
        BROWSER(101),
        QR(17);


        /* JADX INFO: renamed from: id */
        public final int f201id;

        MainMenuItem(int i) {
            this.f201id = i;
        }

        public static MainMenuItem getById(int i) {
            for (MainMenuItem mainMenuItem : values()) {
                if (mainMenuItem.f201id == i) {
                    return mainMenuItem;
                }
            }
            return null;
        }
    }

    public static final class BottomNavigationBar {
        private static int mode;

        public static int getMode() {
            int i = mode;
            if (i < 0 || i > 2) {
                mode = 0;
            }
            return mode;
        }

        public static void setMode(int i) {
            mode = i;
            getMode();
        }

        public static boolean hidden() {
            return getMode() == 1;
        }

        public static boolean visible() {
            return getMode() != 1;
        }

        public static boolean floating() {
            return getMode() == 2;
        }
    }

    public static void ensureSettingsVisibility() {
        if (BottomNavigationBar.hidden()) {
            Integer numValueOf = Integer.valueOf(MainMenuItem.SETTINGS.f201id);
            if (mainMenuLayout.contains(numValueOf)) {
                return;
            }
            mainMenuHiddenItems.remove(numValueOf);
            mainMenuLayout.add(numValueOf);
            saveMainMenuLayout();
        }
    }

    public static /* synthetic */ boolean $r8$lambda$643pELgA7zqe0U7JlqyTgQXrh0Y(Integer num) {
        return num.intValue() != MainMenuItem.DIVIDER.f201id && MainMenuItem.getById(num.intValue()) == null;
    }

    public static void sanitizeMenu() {
        boolean zRemoveIf = Collection.EL.removeIf(mainMenuLayout, new Predicate() { // from class: com.exteragram.messenger.ExteraConfig$$ExternalSyntheticLambda0
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m218or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ExteraConfig.$r8$lambda$643pELgA7zqe0U7JlqyTgQXrh0Y((Integer) obj);
            }
        }) | Collection.EL.removeIf(mainMenuHiddenItems, new Predicate() { // from class: com.exteragram.messenger.ExteraConfig$$ExternalSyntheticLambda1
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m219or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ExteraConfig.$r8$lambda$yancDyn822JxHSRJYrTDqJWKvqY((Integer) obj);
            }
        });
        for (MainMenuItem mainMenuItem : MainMenuItem.values()) {
            if (mainMenuItem != MainMenuItem.DIVIDER && ((mainMenuItem != MainMenuItem.PLUGINS || PluginsController.isPluginEngineSupported()) && !mainMenuLayout.contains(Integer.valueOf(mainMenuItem.f201id)) && !mainMenuHiddenItems.contains(Integer.valueOf(mainMenuItem.f201id)))) {
                mainMenuHiddenItems.add(Integer.valueOf(mainMenuItem.f201id));
                zRemoveIf = true;
            }
        }
        if (zRemoveIf) {
            saveMainMenuLayout();
        }
    }

    public static /* synthetic */ boolean $r8$lambda$yancDyn822JxHSRJYrTDqJWKvqY(Integer num) {
        return num.intValue() != MainMenuItem.DIVIDER.f201id && MainMenuItem.getById(num.intValue()) == null;
    }

    public static ArrayList getDefaultMainMenuLayout() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(MainMenuItem.ARCHIVE.f201id));
        if (BottomNavigationBar.hidden()) {
            arrayList.add(Integer.valueOf(MainMenuItem.PROFILE.f201id));
        }
        arrayList.add(Integer.valueOf(MainMenuItem.NEW_GROUP.f201id));
        if (BottomNavigationBar.hidden()) {
            arrayList.add(Integer.valueOf(MainMenuItem.CONTACTS.f201id));
        }
        arrayList.add(Integer.valueOf(MainMenuItem.SAVED.f201id));
        arrayList.add(Integer.valueOf(MainMenuItem.BOTS.f201id));
        if (BottomNavigationBar.hidden()) {
            arrayList.add(Integer.valueOf(MainMenuItem.SETTINGS.f201id));
        }
        return arrayList;
    }

    public static void loadConfig() {
        synchronized (sync) {
            try {
                if (configLoaded) {
                    return;
                }
                SharedPreferences preferences2 = PreferencesUtils.getPreferences("exteraconfig");
                preferences = preferences2;
                editor = preferences2.edit();
                cameraType = preferences.getInt("cameraType", SharedConfig.getDevicePerformanceClass() == 2 ? 2 : 0);
                translationProvider = preferences.getInt("translationProvider", 0);
                translationFormality = preferences.getInt("translationFormality", 0);
                disableNumberRounding = preferences.getBoolean("disableNumberRounding", false);
                formatTimeWithSeconds = preferences.getBoolean("formatTimeWithSeconds", false);
                relativeLastSeen = preferences.getBoolean("relativeLastSeen", false);
                inAppVibration = preferences.getBoolean("inAppVibration", true);
                filterZalgo = preferences.getBoolean("filterZalgo", true);
                tabletMode = preferences.getInt("tabletMode", 0);
                downloadSpeedBoost = preferences.getInt("downloadSpeedBoost", 0);
                uploadSpeedBoost = preferences.getBoolean("uploadSpeedBoost", false);
                hidePhoneNumber = preferences.getBoolean("hidePhoneNumber", false);
                showIdAndDc = preferences.getInt("showIdAndDc", 1);
                hideArchiveFolder = preferences.getBoolean("hideArchiveFolder", false);
                archiveOnPull = preferences.getBoolean("archiveOnPull", false);
                disableUnarchiveSwipe = preferences.getBoolean("disableUnarchiveSwipe", true);
                useYandexMaps = preferences.getBoolean("useYandexMaps", false);
                enableAdBlock = preferences.getBoolean("enableAdBlock", true);
                doNotUseProxyWithVpn = preferences.getBoolean("doNotUseProxyWithVpn", false);
                avatarCorners = preferences.getFloat("avatarCorners", 28.0f);
                singleCornerRadius = preferences.getBoolean("singleCornerRadius", false);
                hideActionBarStatus = preferences.getBoolean("hideActionBarStatus", false);
                hideStories = preferences.getBoolean("hideStories", false);
                centerTitle = preferences.getBoolean("centerTitle", false);
                hideFloatingButton = preferences.getBoolean("hideFloatingButton", false);
                BottomNavigationBar.setMode(preferences.getInt("bottomNavigationBarMode", 0));
                senderMiniAvatars = preferences.getBoolean("senderMiniAvatars", true);
                titleText = preferences.getInt("titleText", 0);
                tabCounter = preferences.getBoolean("tabCounter", true);
                tabIcons = preferences.getInt("tabIcons", 1);
                hideAllChats = preferences.getBoolean("hideAllChats", false);
                iconPack = preferences.getInt("iconPack", 0);
                editingIconPackId = preferences.getString("editingIconPackId", null);
                squareFab = preferences.getBoolean("squareFab", true);
                sectionsSeparatedHeaders = preferences.getBoolean("sectionsSeparatedHeaders", true);
                disableDividers = preferences.getBoolean("disableDividers", false);
                newLoadingStyle = preferences.getBoolean("newLoadingStyle", true);
                newSliderStyle = preferences.getBoolean("newSliderStyle", true);
                forceSnow = preferences.getBoolean("forceSnow", false);
                useSystemFonts = preferences.getBoolean("useSystemFonts", true);
                newSwitchStyle = preferences.getBoolean("newSwitchStyle", true);
                removeMessageTail = preferences.getBoolean("removeMessageTail", true);
                gooeyAvatarAnimation = preferences.getBoolean("gooeyAvatarAnimation", true);
                predictiveBackAnimation = preferences.getBoolean("predictiveBackAnimation", true);
                springAnimations = preferences.getBoolean("springAnimations", true);
                glareOnElements = preferences.getBoolean("glareOnElements", true);
                forceBlur = preferences.getBoolean("forceBlur", false);
                eventType = preferences.getInt("eventType", 0);
                navigationDrawer = preferences.getBoolean("navigationDrawer", false);
                immersiveDrawerAnimation = preferences.getBoolean("immersiveDrawerAnimation", false);
                String string = preferences.getString("iconPacksLayout", null);
                String string2 = preferences.getString("iconPacksHidden", null);
                if (string != null) {
                    Gson gson = GSON;
                    iconPacksLayout = (ArrayList) gson.fromJson(string, new TypeToken<ArrayList<String>>() { // from class: com.exteragram.messenger.ExteraConfig.1
                    }.getType());
                    if (string2 != null) {
                        iconPacksHidden = (ArrayList) gson.fromJson(string2, new TypeToken<ArrayList<String>>() { // from class: com.exteragram.messenger.ExteraConfig.2
                        }.getType());
                    } else {
                        iconPacksHidden = new ArrayList();
                    }
                } else {
                    iconPacksLayout = new ArrayList();
                    iconPacksHidden = new ArrayList();
                    String[] strArr = {"base.default", "base.solar", "base.remix"};
                    for (int i = 0; i < 3; i++) {
                        if (i == iconPack) {
                            iconPacksLayout.add(strArr[i]);
                        } else {
                            iconPacksHidden.add(strArr[i]);
                        }
                    }
                    saveIconPacksLayout();
                }
                String string3 = preferences.getString("doNotMarkAsNew", null);
                if (string3 != null) {
                    doNotMarkAsNew = (ArrayList) GSON.fromJson(string3, new TypeToken<ArrayList<String>>() { // from class: com.exteragram.messenger.ExteraConfig.3
                    }.getType());
                } else {
                    doNotMarkAsNew = new ArrayList();
                }
                String string4 = preferences.getString("newFeaturesShowedAt", null);
                if (string4 != null) {
                    HashMap map = (HashMap) GSON.fromJson(string4, new TypeToken<HashMap<String, Long>>() { // from class: com.exteragram.messenger.ExteraConfig.4
                    }.getType());
                    newFeaturesShowedAt = map;
                    if (map == null) {
                        newFeaturesShowedAt = new HashMap();
                    }
                } else {
                    newFeaturesShowedAt = new HashMap();
                }
                String[] strArr2 = {"base.default", "base.solar", "base.remix"};
                boolean z = false;
                for (int i2 = 0; i2 < 3; i2++) {
                    String str = strArr2[i2];
                    if (!iconPacksLayout.contains(str) && !iconPacksHidden.contains(str)) {
                        iconPacksHidden.add(str);
                        z = true;
                    }
                }
                if (z) {
                    saveIconPacksLayout();
                }
                String string5 = preferences.getString("mainMenuLayout", null);
                String string6 = preferences.getString("mainMenuHiddenItems", null);
                if (string5 != null) {
                    Gson gson2 = GSON;
                    mainMenuLayout = (ArrayList) gson2.fromJson(string5, new TypeToken<ArrayList<Integer>>() { // from class: com.exteragram.messenger.ExteraConfig.5
                    }.getType());
                    if (string6 != null) {
                        mainMenuHiddenItems = (ArrayList) gson2.fromJson(string6, new TypeToken<ArrayList<Integer>>() { // from class: com.exteragram.messenger.ExteraConfig.6
                        }.getType());
                    } else {
                        mainMenuHiddenItems = new ArrayList();
                    }
                } else {
                    mainMenuLayout = new ArrayList();
                    mainMenuHiddenItems = new ArrayList();
                    mainMenuLayout.addAll(getDefaultMainMenuLayout());
                    for (MainMenuItem mainMenuItem : MainMenuItem.values()) {
                        if (mainMenuItem != MainMenuItem.DIVIDER && !mainMenuLayout.contains(Integer.valueOf(mainMenuItem.f201id)) && (mainMenuItem != MainMenuItem.PLUGINS || PluginsController.isPluginEngineSupported())) {
                            mainMenuHiddenItems.add(Integer.valueOf(mainMenuItem.f201id));
                        }
                    }
                    saveMainMenuLayout();
                }
                if (!PluginsController.isPluginEngineSupported()) {
                    pluginsEngine = false;
                    if (preferences.getBoolean("pluginsEngine", false)) {
                        editor.putBoolean("pluginsEngine", false).apply();
                    }
                    Integer numValueOf = Integer.valueOf(MainMenuItem.PLUGINS.f201id);
                    mainMenuLayout.remove(numValueOf);
                    mainMenuHiddenItems.remove(numValueOf);
                } else {
                    pluginsEngine = preferences.getBoolean("pluginsEngine", false);
                    Integer numValueOf2 = Integer.valueOf(MainMenuItem.PLUGINS.f201id);
                    if (!mainMenuLayout.contains(numValueOf2) && !mainMenuHiddenItems.contains(numValueOf2)) {
                        mainMenuHiddenItems.add(numValueOf2);
                    }
                }
                mainMenuLayout.removeAll(mainMenuHiddenItems);
                ensureSettingsVisibility();
                sanitizeMenu();
                stickerSize = preferences.getFloat("stickerSize", 12.0f);
                stickerShape = preferences.getInt("stickerShape", 1);
                replyColors = preferences.getBoolean("replyColors", true);
                replyEmoji = preferences.getBoolean("replyEmoji", true);
                replyBackground = preferences.getBoolean("replyBackground", true);
                hideStickerTime = preferences.getBoolean("hideStickerTime", false);
                unlimitedRecentStickers = preferences.getBoolean("unlimitedRecentStickers", false);
                hideSendAsPeer = preferences.getBoolean("hideSendAsPeer", false);
                hideReactionsInPrivateChats = preferences.getBoolean("hideReactionsInPrivateChats", false);
                hideReactionsInGroups = preferences.getBoolean("hideReactionsInGroups", false);
                hideReactionsInChannels = preferences.getBoolean("hideReactionsInChannels", false);
                doubleTapAction = DoubleTapUtils.sanitizeSetting(preferences.getInt("doubleTapAction", 1));
                doubleTapActionOutOwner = DoubleTapUtils.sanitizeSetting(preferences.getInt("doubleTapActionOutOwner", 1));
                bottomButton = preferences.getInt("bottomButton", 2);
                hideKeyboardOnScroll = preferences.getBoolean("hideKeyboardOnScroll", true);
                quickAdminShortcuts = preferences.getBoolean("quickAdminShortcuts", true);
                quickTransitionForChannels = preferences.getBoolean("quickTransitionForChannels", true);
                quickTransitionForTopics = preferences.getBoolean("quickTransitionForTopics", true);
                disableGreetingSticker = preferences.getBoolean("disableGreetingSticker", false);
                hideShareButton = preferences.getBoolean("hideShareButton", true);
                showResultsBeforeVoting = preferences.getBoolean("showResultsBeforeVoting", false);
                showOnlineStatus = preferences.getBoolean("showOnlineStatus", false);
                replaceEditedWithIcon = preferences.getBoolean("replaceEditedWithIcon", true);
                showDetailsButton = preferences.getBoolean("showDetailsButton", false);
                showGenerateButton = preferences.getBoolean("showGenerateButton", true);
                showSaveMessageButton = preferences.getBoolean("showSaveMessageButton", false);
                showRepeatMessageButton = preferences.getBoolean("showRepeatMessageButton", false);
                showCopyPhotoButton = preferences.getBoolean("showCopyPhotoButton", true);
                showClearButton = preferences.getBoolean("showClearButton", true);
                showReportButton = preferences.getBoolean("showReportButton", true);
                showHistoryButton = preferences.getBoolean("showHistoryButton", false);
                groupMessageMenu = preferences.getBoolean("groupMessageMenu", true);
                customThemes = preferences.getBoolean("customThemes", true);
                addCommaAfterMention = preferences.getBoolean("addCommaAfterMention", true);
                hidePhotoCounter = preferences.getBoolean("hidePhotoCounter", false);
                alwaysSendInHD = preferences.getBoolean("alwaysSendInHD", true);
                hideCameraTile = preferences.getBoolean("hideCameraTile", false);
                recognitionLanguage = preferences.getString("recognitionLanguage", "none");
                postprocessingWithAi = preferences.getBoolean("postprocessingWithAi", false);
                extendedFramesPerSecond = preferences.getBoolean("extendedFramesPerSecond", false);
                cameraStabilization = preferences.getBoolean("cameraStabilization", false);
                cameraMirrorMode = preferences.getBoolean("cameraMirrorMode", true);
                staticZoom = preferences.getBoolean("staticZoom", false);
                videoMessagesCamera = preferences.getInt("videoMessagesCamera", 0);
                rememberLastUsedCamera = preferences.getBoolean("rememberLastUsedCamera", false);
                pauseOnMinimizeVideo = preferences.getBoolean("pauseOnMinimizeVideo", true);
                pauseOnMinimizeVoice = preferences.getBoolean("pauseOnMinimizeVoice", false);
                pauseOnMinimizeRound = preferences.getBoolean("pauseOnMinimizeRound", false);
                doubleTapSeekDuration = preferences.getInt("doubleTapSeekDuration", 1);
                preferOriginalQuality = preferences.getBoolean("preferOriginalQuality", false);
                swipeToPip = preferences.getBoolean("swipeToPip", false);
                unmuteWithVolumeButtons = preferences.getBoolean("unmuteWithVolumeButtons", false);
                updateScheduleTimestamp = preferences.getLong("updateScheduleTimestamp", 0L);
                sdkUpdateScheduleTimestamp = preferences.getLong("sdkUpdateScheduleTimestamp", 0L);
                checkUpdatesOnLaunch = preferences.getBoolean("checkUpdatesOnLaunch", true);
                targetLang = preferences.getString("targetLang", Common.ASSET_APP);
                TranslatorUtils.ensureTargetLanguageCompatibleWithProvider();
                voiceHintShowcases = preferences.getInt("voiceHintShowcases", 0);
                useGoogleCrashlytics = preferences.getBoolean("useGoogleCrashlytics", BuildVars.isBetaApp());
                useGoogleAnalytics = preferences.getBoolean("useGoogleAnalytics", false);
                flashWarmth = preferences.getFloat("flashWarmth", 0.5f);
                flashIntensity = preferences.getFloat("flashIntensity", 1.0f);
                pluginsDevMode = preferences.getBoolean("pluginsDevMode", false);
                pluginsSafeMode = preferences.getBoolean("pluginsSafeMode", false);
                pluginsCompactView = preferences.getBoolean("pluginsCompactView", false);
                pluginsPySdkAutoUpdate = preferences.getBoolean("pluginsPySdkAutoUpdate", true);
                pluginsPySdkBetaVersions = preferences.getBoolean("pluginsPySdkBetaVersions", false);
                pluginsDisableArtOpts = preferences.getBoolean("pluginsDisableArtOpts", false);
                pinnedPlugins = preferences.getStringSet("pinnedPlugins", Collections.EMPTY_SET);
                useSystemIconShape = preferences.getBoolean("useSystemIconShape", true);
                configLoaded = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static int getAvatarCorners(float f) {
        return getAvatarCorners(f, false, false, false);
    }

    public static int getAvatarCorners(float f, boolean z) {
        return getAvatarCorners(f, z, false, false);
    }

    public static int getAvatarCorners(float f, boolean z, boolean z2) {
        return getAvatarCorners(f, z, z2, false);
    }

    public static int getAvatarCorners(float f, boolean z, boolean z2, boolean z3) {
        float f2 = avatarCorners;
        if (f2 == 0.0f) {
            return 0;
        }
        float fM1124dp = (f2 * f) / 56.0f;
        if (z3) {
            fM1124dp -= 2.5f;
        }
        if (!z) {
            fM1124dp = AndroidUtilities.m1124dp(fM1124dp);
        }
        if (z2 && !singleCornerRadius) {
            fM1124dp = (((int) fM1124dp) * 42) >> 6;
        }
        return (int) Math.ceil(fM1124dp);
    }

    public static float getAvatarSquareness() {
        float f = 1.0f - (avatarCorners / 28.0f);
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > 1.0f) {
            return 1.0f;
        }
        return f;
    }

    public static int getOnlineDotOuterRadius() {
        return AndroidUtilities.m1124dp((getAvatarSquareness() * 2.0f) + 7.0f);
    }

    public static int getOnlineDotInnerRadius() {
        return AndroidUtilities.m1124dp(getAvatarSquareness() + 5.0f);
    }

    public static float getOnlineDotOffset(float f, float f2) {
        return f + ((((float) (((double) f2) / Math.sqrt(2.0d))) - f) * getAvatarSquareness());
    }

    public static void toggleLogging() {
        SharedPreferences.Editor editorEdit = ApplicationLoader.applicationContext.getSharedPreferences("systemConfig", 0).edit();
        boolean z = !BuildVars.LOGS_ENABLED;
        BuildVars.LOGS_ENABLED = z;
        editorEdit.putBoolean("logsEnabled", z).apply();
        if (BuildVars.LOGS_ENABLED) {
            return;
        }
        FileLog.cleanupLogs();
    }

    public static boolean getLogging() {
        return ApplicationLoader.applicationContext.getSharedPreferences("systemConfig", 0).getBoolean("logsEnabled", false);
    }

    public static void setLogging(boolean z) {
        SharedPreferences.Editor editorEdit = ApplicationLoader.applicationContext.getSharedPreferences("systemConfig", 0).edit();
        BuildVars.LOGS_ENABLED = z;
        editorEdit.putBoolean("logsEnabled", z).apply();
        if (BuildVars.LOGS_ENABLED) {
            return;
        }
        FileLog.cleanupLogs();
    }

    public static String getCurrentLangName() {
        return TranslatorUtils.getTargetLanguageTitle();
    }

    public static int getDoubleTapSeekDuration() {
        int i = doubleTapSeekDuration;
        if (i == 0 || i == 1 || i == 2) {
            return (i + 1) * 5000;
        }
        return 30000;
    }

    public static void reloadConfig() {
        synchronized (sync) {
            configLoaded = false;
            loadConfig();
        }
    }

    public static void init(boolean z) {
        ApiController.init();
        RemoteUtils.init();
        PluginsController.getInstance().init(z, new Runnable() { // from class: com.exteragram.messenger.ExteraConfig$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                PluginsController.getInstance().executeOnAppEvent("app_start");
            }
        });
        ChatUtils.utilsQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.ExteraConfig$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                AdBlockManager.initialize();
            }
        });
    }

    public static void saveMainMenuLayout() {
        SharedPreferences.Editor editor2 = editor;
        Gson gson = GSON;
        editor2.putString("mainMenuLayout", gson.toJson(mainMenuLayout));
        editor.putString("mainMenuHiddenItems", gson.toJson(mainMenuHiddenItems));
        editor.apply();
    }

    public static void saveIconPacksLayout() {
        SharedPreferences.Editor editor2 = editor;
        Gson gson = GSON;
        editor2.putString("iconPacksLayout", gson.toJson(iconPacksLayout));
        editor.putString("iconPacksHidden", gson.toJson(iconPacksHidden));
        editor.apply();
    }

    public static boolean canUseYandexMaps() {
        return useYandexMaps && ApplicationLoader.applicationLoaderInstance.allowToUseYandexMaps();
    }
}
