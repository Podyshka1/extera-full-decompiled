package com.exteragram.messenger.backup;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.collection.LongSparseArray;
import com.chaquo.python.internal.Common;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.p008ai.AiConfig;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Map;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.INavigationLayout;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.ShareAlert;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes.dex */
public class PreferencesUtils {
    private static final String[] configs = {"exteraconfig", "gptconfig", "mainconfig", "pillstackconfig"};
    private static PreferencesUtils instance;
    private final Gson gson = new GsonBuilder().setPrettyPrinting().create();
    private final BackupItem[] backup = {new BackupItem("addCommaAfterMention"), new BackupItem("alwaysSendInHD"), new BackupItem("archiveOnPull"), new BackupItem("avatarCorners", Float.class), new BackupItem("bottomButton"), new BackupItem("bottomNavigationBarMode"), new BackupItem("cameraMirrorMode"), new BackupItem("cameraStabilization"), new BackupItem("cameraType"), new BackupItem("centerTitle"), new BackupItem("channelToSave", Long.class), new BackupItem("checkUpdatesOnLaunch"), new BackupItem("customThemes"), new BackupItem("disableDividers"), new BackupItem("disableGreetingSticker"), new BackupItem("disableNumberRounding"), new BackupItem("disableUnarchiveSwipe"), new BackupItem("doubleTapAction"), new BackupItem("doubleTapActionOutOwner"), new BackupItem("doubleTapSeekDuration"), new BackupItem("downloadSpeedBoost"), new BackupItem("eventType"), new BackupItem("extendedFramesPerSecond"), new BackupItem("filterZalgo"), new BackupItem("flashIntensity"), new BackupItem("flashWarmth"), new BackupItem("forceBlur"), new BackupItem("forceSnow"), new BackupItem("formatTimeWithSeconds"), new BackupItem("glareOnElements"), new BackupItem("gooeyAvatarAnimation"), new BackupItem("groupMessageMenu"), new BackupItem("hideActionBarStatus"), new BackupItem("hideAllChats"), new BackupItem("hideArchiveFolder"), new BackupItem("hideCameraTile"), new BackupItem("hideFloatingButton"), new BackupItem("hideKeyboardOnScroll"), new BackupItem("hidePhoneNumber"), new BackupItem("hidePhotoCounter"), new BackupItem("hideReactionsInChannels"), new BackupItem("hideReactionsInGroups"), new BackupItem("hideReactionsInPrivateChats"), new BackupItem("hideSendAsPeer"), new BackupItem("hideShareButton"), new BackupItem("hideStickerTime"), new BackupItem("hideStories"), new BackupItem("iconPack"), new BackupItem("immersiveDrawerAnimation"), new BackupItem("inAppVibration"), new BackupItem("mainMenuHiddenItems", String.class), new BackupItem("mainMenuLayout", String.class), new BackupItem("navigationDrawer"), new BackupItem("newLoadingStyle"), new BackupItem("newSliderStyle"), new BackupItem("newSwitchStyle"), new BackupItem("pauseOnMinimizeRound"), new BackupItem("pauseOnMinimizeVideo"), new BackupItem("pauseOnMinimizeVoice"), new BackupItem("pinnedPlugins"), new BackupItem("pluginsCompactView"), new BackupItem("pluginsDevMode"), new BackupItem("pluginsDisableArtOpts"), new BackupItem("pluginsEngine"), new BackupItem("pluginsPySdkAutoUpdate"), new BackupItem("pluginsPySdkBetaVersions"), new BackupItem("postprocessingWithAi"), new BackupItem("predictiveBackAnimation"), new BackupItem("preferOriginalQuality"), new BackupItem("quickAdminShortcuts"), new BackupItem("quickTransitionForChannels"), new BackupItem("quickTransitionForTopics"), new BackupItem("rememberLastUsedCamera"), new BackupItem("removeMessageTail"), new BackupItem("replaceEditedWithIcon"), new BackupItem("replyBackground"), new BackupItem("replyColors"), new BackupItem("replyEmoji"), new BackupItem("sectionsSeparatedHeaders"), new BackupItem("senderMiniAvatars"), new BackupItem("showClearButton"), new BackupItem("showCopyPhotoButton"), new BackupItem("showDetailsButton"), new BackupItem("showGenerateButton"), new BackupItem("showHistoryButton"), new BackupItem("showIdAndDc"), new BackupItem("showOnlineStatus"), new BackupItem("showRepeatMessageButton"), new BackupItem("showReportButton"), new BackupItem("showResultsBeforeVoting"), new BackupItem("showSaveMessageButton"), new BackupItem("singleCornerRadius"), new BackupItem("springAnimations"), new BackupItem("squareFab"), new BackupItem("staticZoom"), new BackupItem("stickerShape"), new BackupItem("stickerSize", Float.class), new BackupItem("swipeToPip"), new BackupItem("tabCounter"), new BackupItem("tabIcons"), new BackupItem("tabletMode"), new BackupItem("targetLang", String.class), new BackupItem("titleText"), new BackupItem("translationFormality"), new BackupItem("translationProvider"), new BackupItem("unlimitedRecentStickers"), new BackupItem("unmuteWithVolumeButtons"), new BackupItem("uploadSpeedBoost"), new BackupItem("useGoogleAnalytics"), new BackupItem("useGoogleCrashlytics"), new BackupItem("useSystemFonts"), new BackupItem("useSystemIconShape"), new BackupItem("useYandexMaps"), new BackupItem("videoMessagesCamera"), new BackupItem("voiceHintShowcases"), new BackupItem("btcTargetCurrency"), new BackupItem("infiniteScrolling"), new BackupItem("tonTargetCurrency"), new BackupItem("usdTargetCurrency"), new BackupItem("useCurrentLocation"), new BackupItem("insertAsQuote"), new BackupItem("responseStreaming"), new BackupItem("roles", String.class), new BackupItem("saveHistory"), new BackupItem("selectedRole", String.class), new BackupItem("showResponseOnly"), new BackupItem("ChatSwipeAction"), new BackupItem("allowBigEmoji"), new BackupItem("archiveHidden"), new BackupItem("bubbleRadius"), new BackupItem("font_size"), new BackupItem("mediaColumnsCount"), new BackupItem("next_media_on_tap"), new BackupItem("pauseMusicOnMedia"), new BackupItem("pauseMusicOnRecord"), new BackupItem("raise_to_listen"), new BackupItem("raise_to_speak"), new BackupItem("record_via_sco"), new BackupItem("rounddual_available"), new BackupItem("suggestAnimatedEmoji"), new BackupItem("suggestStickers"), new BackupItem("useSystemEmoji"), new BackupItem("useThreeLinesLayout")};

    public static PreferencesUtils getInstance() {
        if (instance == null) {
            instance = new PreferencesUtils();
        }
        return instance;
    }

    public static void clearPreferences() {
        AiConfig.editor.clear().apply();
        ExteraConfig.editor.clear().apply();
        ExteraConfig.reloadConfig();
    }

    private static Context getContext() {
        if (ApplicationLoader.applicationContext != null) {
            return ApplicationLoader.applicationContext;
        }
        return AndroidUtilities.getActivity();
    }

    public static SharedPreferences getPreferences(String str) {
        return getContext().getSharedPreferences(str, 0);
    }

    public static String generateBackupName(String str) {
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            str = "backup";
        }
        sb.append(str);
        sb.append("-");
        sb.append(Utilities.generateRandomString(4));
        sb.append(".extera");
        return sb.toString();
    }

    private boolean isExceptedValue(String str, Object obj) {
        if (str != null) {
            for (BackupItem backupItem : this.backup) {
                if (backupItem.key.equals(str)) {
                    if (obj instanceof JsonPrimitive) {
                        JsonPrimitive jsonPrimitive = (JsonPrimitive) obj;
                        if (jsonPrimitive.isNumber()) {
                            if (backupItem.clazz.equals(Float.class)) {
                                return isExceptedFloat(str, jsonPrimitive.getAsFloat());
                            }
                            if (backupItem.clazz.equals(Long.class)) {
                                long asLong = jsonPrimitive.getAsLong();
                                if (str.equals("channelToSave" + UserConfig.selectedAccount)) {
                                    return asLong > 0;
                                }
                            } else {
                                return isExceptedInteger(str, jsonPrimitive.getAsInt());
                            }
                        } else {
                            if (jsonPrimitive.isBoolean()) {
                                return true;
                            }
                            if (jsonPrimitive.isString() && backupItem.clazz.equals(String.class)) {
                                String asString = jsonPrimitive.getAsString();
                                if (str.equals("targetLang")) {
                                    return asString.equalsIgnoreCase(Common.ASSET_APP) || asString.matches("^[a-zA-Z]{1,3}(-[a-zA-Z]{1,3})?$");
                                }
                                return !TextUtils.isEmpty(asString);
                            }
                        }
                    } else {
                        if (obj instanceof Float) {
                            return isExceptedFloat(str, ((Float) obj).floatValue());
                        }
                        if (obj instanceof Long) {
                            Long l = (Long) obj;
                            if (str.equals("channelToSave" + UserConfig.selectedAccount)) {
                                return l.longValue() > 0;
                            }
                        } else {
                            if (obj instanceof Integer) {
                                return isExceptedInteger(str, ((Integer) obj).intValue());
                            }
                            if (obj instanceof String) {
                                String str2 = (String) obj;
                                if (str.equals("targetLang")) {
                                    return str2.equalsIgnoreCase(Common.ASSET_APP) || str2.matches("^[a-zA-Z]{1,3}(-[a-zA-Z]{1,3})?$");
                                }
                                return !TextUtils.isEmpty(str2);
                            }
                            if (obj instanceof Boolean) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    private boolean isExceptedFloat(String str, float f) {
        str.getClass();
        switch (str) {
            case "avatarCorners":
                return f >= 0.0f && f <= 28.0f;
            case "flashIntensity":
            case "flashWarmth":
                return f >= 0.0f && f <= 1.0f;
            case "stickerSize":
                return f >= 4.0f && f <= 20.0f;
            default:
                return false;
        }
    }

    private boolean isExceptedInteger(String str, int i) {
        str.getClass();
        switch (str) {
            case "titleText":
            case "doubleTapSeekDuration":
            case "translationProvider":
                return i >= 0 && i <= 3;
            case "stickerShape":
            case "cameraType":
            case "downloadSpeedBoost":
            case "tabletMode":
            case "videoMessagesCamera":
            case "tabIcons":
            case "iconPack":
            case "bottomNavigationBarMode":
            case "translationFormality":
            case "bottomButton":
            case "showIdAndDc":
                return i >= 0 && i <= 2;
            case "bubbleRadius":
                return i >= 0 && i <= 17;
            case "ChatSwipeAction":
                return i >= 0 && i <= 5;
            case "mediaColumnsCount":
                return i >= 2 && i <= 9;
            case "font_size":
                return i >= 12 && i <= 30;
            case "doubleTapAction":
            case "doubleTapActionOutOwner":
                return i >= 0 && i <= 8;
            case "voiceHintShowcases":
                return true;
            case "eventType":
                return i >= 0 && i <= 4;
            default:
                return false;
        }
    }

    public void exportSettings(BaseFragment baseFragment) {
        File file = new File(FileLoader.getDirectory(4), generateBackupName(null));
        if (file.exists()) {
            file.delete();
        }
        try {
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), StandardCharsets.UTF_8);
            outputStreamWriter.write(getBackup(true));
            outputStreamWriter.flush();
            outputStreamWriter.close();
            baseFragment.showDialog(new DialogC10541(baseFragment.getParentActivity(), null, null, file.getAbsolutePath(), null, null, false, null, null, false, false, false, null, null, baseFragment));
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.backup.PreferencesUtils$1 */
    /* JADX INFO: loaded from: classes4.dex */
    class DialogC10541 extends ShareAlert {
        final /* synthetic */ BaseFragment val$fragment;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        DialogC10541(Context context, ChatActivity chatActivity, ArrayList arrayList, String str, String str2, String str3, boolean z, String str4, String str5, boolean z2, boolean z3, boolean z4, Integer num, Theme.ResourcesProvider resourcesProvider, BaseFragment baseFragment) {
            super(context, chatActivity, arrayList, str, str2, str3, z, str4, str5, z2, z3, z4, num, resourcesProvider);
            this.val$fragment = baseFragment;
        }

        @Override // org.telegram.p029ui.Components.ShareAlert
        protected void onSend(LongSparseArray longSparseArray, int i, TLRPC.TL_forumTopic tL_forumTopic, boolean z) {
            if (z) {
                final BaseFragment baseFragment = this.val$fragment;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.backup.PreferencesUtils$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        BulletinFactory.m1246of(baseFragment).createSimpleBulletin(C2888R.raw.contact_check, LocaleController.getString(C2888R.string.SettingsSaved)).show();
                    }
                }, 250L);
            }
        }
    }

    public String getBackup(boolean z) {
        JsonObject jsonObject = new JsonObject();
        for (String str : configs) {
            if (str.equals("mainconfig") && UserConfig.selectedAccount != 0) {
                str = str + UserConfig.selectedAccount;
            }
            JsonObject jsonObject2 = toJsonObject(getPreferences(str).getAll());
            if (!jsonObject2.isEmpty()) {
                jsonObject.add(str, jsonObject2);
            }
        }
        String json = this.gson.toJson((JsonElement) jsonObject);
        return z ? InvisibleEncryptor.encode(json) : json;
    }

    private JsonObject toJsonObject(Map map) {
        JsonObject jsonObject = new JsonObject();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if (isExceptedValue(str, value)) {
                jsonObject.add(str, this.gson.toJsonTree(value));
            }
        }
        return jsonObject;
    }

    public void importSettings(MessageObject messageObject, Activity activity, INavigationLayout iNavigationLayout) {
        if (isBackup(messageObject)) {
            JsonObject jsonObject = getJsonObject(new File(ChatUtils.getInstance().getPathToMessage(messageObject)));
            for (String str : configs) {
                importConfig(jsonObject, str);
            }
            ExteraConfig.reloadConfig();
            SharedConfig.reloadConfig();
            PluginsController.getInstance().restart();
            LocaleController.getInstance().recreateFormatters();
            Theme.reloadAllResources(activity);
            iNavigationLayout.rebuildAllFragmentViews(false, false);
            NotificationCenter notificationCenter = AccountInstance.getInstance(UserConfig.selectedAccount).getNotificationCenter();
            notificationCenter.lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadInterface, new Object[0]);
            notificationCenter.lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_CHAT));
            notificationCenter.lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
            notificationCenter.lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogFiltersUpdated, new Object[0]);
        }
    }

    private void importConfig(JsonObject jsonObject, String str) {
        if (jsonObject.has(str)) {
            JsonObject asJsonObject = jsonObject.getAsJsonObject(str);
            SharedPreferences.Editor editorEdit = getPreferences(str).edit();
            for (String str2 : asJsonObject.keySet()) {
                JsonElement jsonElement = asJsonObject.get(str2);
                if (isExceptedValue(str2, jsonElement)) {
                    for (BackupItem backupItem : this.backup) {
                        if (backupItem.key.equals(str2) && (jsonElement instanceof JsonPrimitive)) {
                            JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElement;
                            if (jsonPrimitive.isNumber()) {
                                if (backupItem.clazz.equals(Float.class)) {
                                    editorEdit.putFloat(str2, jsonPrimitive.getAsFloat());
                                } else if (backupItem.clazz.equals(Long.class)) {
                                    editorEdit.putLong(str2, jsonPrimitive.getAsLong());
                                } else {
                                    editorEdit.putInt(str2, jsonPrimitive.getAsInt());
                                }
                            } else if (jsonPrimitive.isBoolean()) {
                                editorEdit.putBoolean(str2, jsonPrimitive.getAsBoolean());
                            } else if (jsonPrimitive.isString()) {
                                editorEdit.putString(str2, jsonPrimitive.getAsString());
                            }
                        }
                    }
                }
            }
            editorEdit.apply();
        }
    }

    public JsonObject getJsonObject(File file) {
        try {
            String andDecryptFile = readAndDecryptFile(file);
            if (andDecryptFile != null) {
                return (JsonObject) this.gson.fromJson(andDecryptFile, JsonObject.class);
            }
            return null;
        } catch (Exception e) {
            FileLog.m1136e(e);
            return null;
        }
    }

    private String readAndDecryptFile(File file) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
        try {
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
            }
            String string = sb.toString();
            if (InvisibleEncryptor.isEncrypted(string)) {
                string = InvisibleEncryptor.decode(string);
            }
            bufferedReader.close();
            return string;
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private boolean checkKeys(JsonObject jsonObject) {
        for (String str : configs) {
            if (jsonObject.has(str)) {
                JsonObject asJsonObject = jsonObject.getAsJsonObject(str);
                for (String str2 : asJsonObject.keySet()) {
                    JsonElement jsonElement = asJsonObject.get(str2);
                    if (isExceptedValue(str2, jsonElement)) {
                        return true;
                    }
                    FileLog.m1134e("Unexpected value: " + str2 + " " + jsonElement);
                }
            }
        }
        return false;
    }

    public boolean isBackup(MessageObject messageObject) {
        String pathToMessage = ChatUtils.getInstance().getPathToMessage(messageObject);
        return (messageObject == null || messageObject.getDocumentName() == null || TextUtils.isEmpty(pathToMessage) || !isBackup(new File(pathToMessage))) ? false : true;
    }

    public boolean isBackup(File file) {
        JsonObject jsonObject;
        return file != null && file.getName().toLowerCase().endsWith(".extera") && (jsonObject = getJsonObject(file)) != null && checkKeys(jsonObject);
    }

    public int getDiff(MessageObject messageObject) {
        return getDiff(getJsonObject(new File(ChatUtils.getInstance().getPathToMessage(messageObject))));
    }

    public int getDiff(JsonObject jsonObject) {
        int size = 0;
        JsonObject jsonObject2 = (JsonObject) this.gson.fromJson(getBackup(false), JsonObject.class);
        for (String str : jsonObject.keySet()) {
            if (jsonObject2.has(str)) {
                JsonObject asJsonObject = jsonObject.getAsJsonObject(str);
                JsonObject asJsonObject2 = jsonObject2.getAsJsonObject(str);
                for (String str2 : asJsonObject.keySet()) {
                    JsonElement jsonElement = asJsonObject.get(str2);
                    JsonElement jsonElement2 = asJsonObject2.get(str2);
                    if (!asJsonObject2.has(str2) || !jsonElement.equals(jsonElement2)) {
                        if (isExceptedValue(str2, jsonElement)) {
                            size++;
                        }
                    }
                }
            } else {
                size += jsonObject.getAsJsonObject(str).size();
            }
        }
        return size;
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static class BackupItem implements Serializable {
        public Class clazz;
        public String key;

        public BackupItem(String str) {
            this(str, Boolean.class);
        }

        public BackupItem(String str, Class cls) {
            this.key = str;
            this.clazz = cls;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return this.key.equals(((BackupItem) obj).key);
        }
    }
}
