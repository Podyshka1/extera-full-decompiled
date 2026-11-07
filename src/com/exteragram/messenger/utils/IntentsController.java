package com.exteragram.messenger.utils;

import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import androidx.arch.core.util.Function;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.backup.PreferencesUtils;
import com.exteragram.messenger.components.SupporterBottomSheet;
import com.exteragram.messenger.feed.ui.FeedActivity;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.preferences.MainPreferencesActivity;
import com.exteragram.messenger.preferences.OtherPreferencesActivity;
import com.exteragram.messenger.preferences.utils.SettingsRegistry;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.exteragram.messenger.utils.chats.ExteraFileHandler;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.EmojiPacksAlert;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.ProfileActivity;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R,\u0010\u0018\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00170\u00160\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R,\u0010\u001a\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00170\u00160\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u0019R,\u0010\u001b\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000f0\u00160\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019¨\u0006\u001c"}, d2 = {"Lcom/exteragram/messenger/utils/IntentsController;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroid/net/Uri;", "uri", _UrlKt.FRAGMENT_ENCODE_SET, "getViewFileExtension", "(Landroid/net/Uri;)Ljava/lang/String;", "extension", "Ljava/io/File;", "getTempFileFromIntent", "(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;", "Landroid/content/Intent;", "intent", _UrlKt.FRAGMENT_ENCODE_SET, "handleIntent", "(Landroid/content/Intent;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "VIEW_FILE_EXTENSIONS", "Ljava/util/Set;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, "deeplinkCallbacks", "Ljava/util/Map;", "callbacks", "actionCallbacks", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nIntentsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntentsController.kt\ncom/exteragram/messenger/utils/IntentsController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,293:1\n1#2:294\n*E\n"})
public final class IntentsController {
    public static final IntentsController INSTANCE = new IntentsController();
    private static final Set<String> VIEW_FILE_EXTENSIONS = SetsKt.setOf((Object[]) new String[]{"plugin", "extera", "icons"});
    private static final Map<String, Function1<Uri, Unit>> deeplinkCallbacks = MapsKt.mapOf(TuplesKt.to("extera", new Function1() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return IntentsController.m3332$r8$lambda$9XjeTv5CAxJc0C67EC8OKii4c0((Uri) obj);
        }
    }), TuplesKt.to("export", new Function1() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda3
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return IntentsController.$r8$lambda$It8J4Jzm7OhL1Vqi8KopB5SXXqg((Uri) obj);
        }
    }), TuplesKt.to("feed", new Function1() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda4
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return IntentsController.$r8$lambda$4nHeLUQ09Gyn3NZM8J_qAzCpDyA((Uri) obj);
        }
    }), TuplesKt.to("support", new Function1() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda5
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return IntentsController.$r8$lambda$IW9cVW1_Ls85TWGd_6MsusR_AB8((Uri) obj);
        }
    }), TuplesKt.to("donate", new Function1() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda6
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return IntentsController.m3334$r8$lambda$VdkigUCsWUZfsci0HeE9X8aPlM((Uri) obj);
        }
    }), TuplesKt.to("emoji", new Function1() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda7
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return IntentsController.$r8$lambda$tBSmwYVaiZjDaRBsFtTPoqLZWTM((Uri) obj);
        }
    }), TuplesKt.to("user", new Function1() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda8
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return IntentsController.$r8$lambda$hO4cczZ8354J7QKLjTpaMAfXDGo((Uri) obj);
        }
    }), TuplesKt.to("chat", new Function1() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda9
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return IntentsController.$r8$lambda$61dMYQ9T4xe_5cGqXKi4rijA67Q((Uri) obj);
        }
    }));
    private static final Map<String, Function1<Uri, Unit>> callbacks = MapsKt.mapOf(TuplesKt.to("exteraSettings", new Function1() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda10
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return IntentsController.$r8$lambda$1uuFNPrfg21B6xFQ7L3LToGjAvI((Uri) obj);
        }
    }), TuplesKt.to("exteraPluginRepo", new Function1() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda11
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return IntentsController.m3333$r8$lambda$ULSdpPkSGjRIbTWuXKbIeu0z7g((Uri) obj);
        }
    }));
    private static final Map<String, Function1<Intent, Boolean>> actionCallbacks = MapsKt.mapOf(TuplesKt.to("com.exteragram.plugins.safemode", new Function1() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return Boolean.valueOf(IntentsController.$r8$lambda$densDz5Z8r4lyG0Z3D371GfcJ2c((Intent) obj));
        }
    }), TuplesKt.to("android.intent.action.VIEW", new Function1() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return Boolean.valueOf(IntentsController.$r8$lambda$1ONmsIxRT_4UO65EV5fXkbHJol0((Intent) obj));
        }
    }));

    private IntentsController() {
    }

    /* JADX INFO: renamed from: $r8$lambda$9XjeTv5CAxJc0C67EC8-OKii4c0, reason: not valid java name */
    public static Unit m3332$r8$lambda$9XjeTv5CAxJc0C67EC8OKii4c0(Uri uri) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                LaunchActivity.instance.lambda$runLinkRequest$108(new MainPreferencesActivity());
            }
        });
        return Unit.INSTANCE;
    }

    public static Unit $r8$lambda$It8J4Jzm7OhL1Vqi8KopB5SXXqg(Uri uri) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            PreferencesUtils.getInstance().exportSettings(safeLastFragment);
        }
        return Unit.INSTANCE;
    }

    public static Unit $r8$lambda$4nHeLUQ09Gyn3NZM8J_qAzCpDyA(Uri uri) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                FeedActivity.presentFeed(LaunchActivity.getSafeLastFragment());
            }
        });
        return Unit.INSTANCE;
    }

    public static Unit $r8$lambda$IW9cVW1_Ls85TWGd_6MsusR_AB8(Uri uri) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            safeLastFragment.showDialog(new SupporterBottomSheet(safeLastFragment, null, safeLastFragment.getResourceProvider()));
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: $r8$lambda$VdkigUCsWUZfsc-i0HeE9X8aPlM, reason: not valid java name */
    public static Unit m3334$r8$lambda$VdkigUCsWUZfsci0HeE9X8aPlM(Uri uri) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                LaunchActivity.instance.lambda$runLinkRequest$108(new OtherPreferencesActivity());
            }
        });
        return Unit.INSTANCE;
    }

    public static Unit $r8$lambda$tBSmwYVaiZjDaRBsFtTPoqLZWTM(Uri uri) {
        Long longOrNull;
        TLRPC.Document documentFindDocument;
        TLRPC.InputStickerSet inputStickerSet;
        String queryParameter = uri.getQueryParameter("id");
        if (queryParameter != null && (longOrNull = StringsKt.toLongOrNull(queryParameter)) != null) {
            long jLongValue = longOrNull.longValue();
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment != null && (documentFindDocument = AnimatedEmojiDrawable.findDocument(UserConfig.selectedAccount, jLongValue)) != null && (inputStickerSet = MessageObject.getInputStickerSet(documentFindDocument)) != null) {
                EmojiPacksAlert emojiPacksAlert = new EmojiPacksAlert(safeLastFragment, safeLastFragment.getParentActivity(), safeLastFragment.getResourceProvider(), new ArrayList(Collections.singletonList(inputStickerSet)));
                emojiPacksAlert.setPreviewEmoji(documentFindDocument);
                safeLastFragment.showDialog(emojiPacksAlert);
            }
        }
        return Unit.INSTANCE;
    }

    public static Unit $r8$lambda$hO4cczZ8354J7QKLjTpaMAfXDGo(Uri uri) {
        Long longOrNull;
        String queryParameter = uri.getQueryParameter("id");
        if (queryParameter != null && (longOrNull = StringsKt.toLongOrNull(queryParameter)) != null) {
            long jLongValue = longOrNull.longValue();
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment != null) {
                Bundle bundle = new Bundle();
                bundle.putLong("user_id", jLongValue);
                final ProfileActivity profileActivity = new ProfileActivity(bundle);
                final AlertDialog alertDialog = new AlertDialog(safeLastFragment.getParentActivity(), 3);
                alertDialog.setCanCancel(false);
                alertDialog.show();
                ChatUtils.getInstance().searchUserById(Long.valueOf(jLongValue), new Utilities.Callback() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda16
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        IntentsController.$r8$lambda$fMSENhVoH4_aOqMBacbw6n0YDio(alertDialog, profileActivity, (TLRPC.User) obj);
                    }
                });
            }
        }
        return Unit.INSTANCE;
    }

    public static void $r8$lambda$fMSENhVoH4_aOqMBacbw6n0YDio(AlertDialog alertDialog, final ProfileActivity profileActivity, TLRPC.User user) {
        alertDialog.dismiss();
        if (user != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    LaunchActivity.instance.presentFragment(profileActivity, false, false);
                }
            });
            if (AndroidUtilities.isTablet()) {
                LaunchActivity.instance.actionBarLayout.showLastFragment();
                LaunchActivity.instance.rightActionBarLayout.showLastFragment();
                return;
            }
            return;
        }
        LaunchActivity.instance.showBulletin(new Function() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda18
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return ((BulletinFactory) obj).createErrorBulletin(LocaleController.getString(C2807R.string.UserNotFound));
            }
        });
    }

    public static Unit $r8$lambda$61dMYQ9T4xe_5cGqXKi4rijA67Q(Uri uri) {
        Long longOrNull;
        String queryParameter = uri.getQueryParameter("id");
        if (queryParameter != null && (longOrNull = StringsKt.toLongOrNull(queryParameter)) != null) {
            long jLongValue = longOrNull.longValue();
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment != null) {
                Bundle bundle = new Bundle();
                bundle.putLong("chat_id", jLongValue);
                final ChatActivity chatActivity = new ChatActivity(bundle);
                final AlertDialog alertDialog = new AlertDialog(safeLastFragment.getParentActivity(), 3);
                alertDialog.setCanCancel(false);
                alertDialog.show();
                ChatUtils.getInstance().searchChatById(jLongValue, new Utilities.Callback() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda13
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        IntentsController.$r8$lambda$lhotcLqZBvtmStQ6Sg5mx092EVM(alertDialog, chatActivity, (TLRPC.Chat) obj);
                    }
                });
            }
        }
        return Unit.INSTANCE;
    }

    public static void $r8$lambda$lhotcLqZBvtmStQ6Sg5mx092EVM(AlertDialog alertDialog, final ChatActivity chatActivity, TLRPC.Chat chat) {
        alertDialog.dismiss();
        if (chat != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    LaunchActivity.instance.presentFragment(chatActivity, false, false);
                }
            });
            if (AndroidUtilities.isTablet()) {
                LaunchActivity.instance.actionBarLayout.showLastFragment();
                LaunchActivity.instance.rightActionBarLayout.showLastFragment();
                return;
            }
            return;
        }
        LaunchActivity.instance.showBulletin(new Function() { // from class: com.exteragram.messenger.utils.IntentsController$$ExternalSyntheticLambda20
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return ((BulletinFactory) obj).createErrorBulletin(LocaleController.getString(C2807R.string.ChatNotFound));
            }
        });
    }

    public static Unit $r8$lambda$1uuFNPrfg21B6xFQ7L3LToGjAvI(Uri uri) {
        SettingsRegistry.getInstance().handleLink(uri.getQueryParameter("s"), uri.getQueryParameter("p"));
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: $r8$lambda$ULSdpPkSGjRIbT-WuXKbIeu0z7g, reason: not valid java name */
    public static Unit m3333$r8$lambda$ULSdpPkSGjRIbTWuXKbIeu0z7g(Uri uri) {
        String queryParameter = uri.getQueryParameter("c");
        String queryParameter2 = uri.getQueryParameter("git");
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            if (queryParameter != null && queryParameter.length() != 0) {
                PluginsController.INSTANCE.getInstance().openRepositoryLink(safeLastFragment, queryParameter);
            } else if (queryParameter2 != null && queryParameter2.length() != 0) {
                PluginsController.INSTANCE.getInstance().openGitRepositoryLink(safeLastFragment, queryParameter2);
            }
        }
        return Unit.INSTANCE;
    }

    public static boolean $r8$lambda$densDz5Z8r4lyG0Z3D371GfcJ2c(Intent intent) {
        ExteraConfig.setPluginsSafeMode(true);
        if (ExteraConfig.getPluginsEngine()) {
            PluginsController.Companion companion = PluginsController.INSTANCE;
            if (companion.getInstance().getInitialized()) {
                companion.getInstance().restart(true);
            }
        }
        return true;
    }

    public static boolean $r8$lambda$1ONmsIxRT_4UO65EV5fXkbHJol0(Intent intent) {
        File tempFileFromIntent;
        Uri data = intent.getData();
        String viewFileExtension = data != null ? INSTANCE.getViewFileExtension(data) : null;
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (data == null || viewFileExtension == null || safeLastFragment == null || !VIEW_FILE_EXTENSIONS.contains(viewFileExtension) || AndroidUtilities.isInternalUri(data)) {
            return false;
        }
        try {
            tempFileFromIntent = INSTANCE.getTempFileFromIntent(data, viewFileExtension);
        } catch (Exception e) {
            FileLog.m1040e(e);
            tempFileFromIntent = null;
        }
        if (tempFileFromIntent == null) {
            BulletinFactory.of(safeLastFragment).createErrorBulletin(LocaleController.getString(C2807R.string.ErrorOccurred)).show();
            return true;
        }
        return ExteraFileHandler.open(safeLastFragment, tempFileFromIntent, tempFileFromIntent.getName(), null);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final String getViewFileExtension(Uri uri) {
        Uri uri2;
        String string;
        String strSubstringAfterLast;
        if (Intrinsics.areEqual("content", uri.getScheme())) {
            try {
                uri2 = uri;
            } catch (Exception e) {
                e = e;
                uri2 = uri;
            }
            try {
                Cursor cursorQuery = ApplicationLoader.applicationContext.getContentResolver().query(uri2, new String[]{"_display_name"}, null, null, null);
                if (cursorQuery != null) {
                    try {
                        string = cursorQuery.moveToFirst() ? cursorQuery.getString(0) : null;
                        CloseableKt.closeFinally(cursorQuery, null);
                    } finally {
                    }
                }
            } catch (Exception e2) {
                e = e2;
                FileLog.m1040e(e);
            }
            if (string == null) {
                string = uri2.getPath();
            }
            if (string == null && (strSubstringAfterLast = StringsKt.substringAfterLast(string, '.', _UrlKt.FRAGMENT_ENCODE_SET)) != null) {
                return strSubstringAfterLast.toLowerCase(Locale.ROOT);
            }
        }
        uri2 = uri;
        string = null;
        if (string == null) {
        }
        return string == null ? null : null;
    }

    public final File getTempFileFromIntent(Uri uri, String extension) throws FileNotFoundException {
        File file = new File(ApplicationLoader.getFilesDirFixed(), "temp");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, "temp_file_" + System.currentTimeMillis() + "." + extension);
        InputStream inputStreamOpenInputStream = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
        if (inputStreamOpenInputStream != null) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    ByteStreamsKt.copyTo$default(inputStreamOpenInputStream, fileOutputStream, 0, 2, null);
                    CloseableKt.closeFinally(fileOutputStream, null);
                    CloseableKt.closeFinally(inputStreamOpenInputStream, null);
                } finally {
                }
            } finally {
            }
        }
        file2.deleteOnExit();
        return file2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:34:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean handleIntent(Intent intent) {
        String scheme;
        String host;
        String action = intent.getAction();
        if (action != null) {
            Map<String, Function1<Intent, Boolean>> map = actionCallbacks;
            if (map.containsKey(action) && map.get(action).invoke(intent).booleanValue()) {
                return true;
            }
        }
        Uri data = intent.getData();
        if ((intent.getFlags() & 1048576) == 0 && data != null && data.getScheme() != null && Intrinsics.areEqual(intent.getAction(), "android.intent.action.VIEW") && (scheme = data.getScheme()) != null) {
            int iHashCode = scheme.hashCode();
            if (iHashCode != 3699) {
                if (iHashCode != 3213448) {
                    host = data.getHost();
                    if (host != null) {
                        switch (host.hashCode()) {
                            case -831459633:
                                if (host.equals("telegram.dog")) {
                                    if (!data.getPathSegments().isEmpty()) {
                                        String str = data.getPathSegments().get(0);
                                        Map<String, Function1<Uri, Unit>> map2 = callbacks;
                                        if (map2.containsKey(str)) {
                                            map2.get(str).invoke(data);
                                        }
                                    }
                                }
                                break;
                            case -831448969:
                                if (host.equals("telegram.org")) {
                                }
                                break;
                            case 3503442:
                                if (host.equals("t.me")) {
                                }
                                break;
                            case 1912841637:
                                if (host.equals("telegram.me")) {
                                }
                                break;
                        }
                        return true;
                    }
                } else {
                    host = data.getHost();
                    if (host != null) {
                    }
                }
            } else if (scheme.equals("tg")) {
                String host2 = data.getHost();
                Map<String, Function1<Uri, Unit>> map3 = deeplinkCallbacks;
                if (map3.containsKey(host2)) {
                    map3.get(data.getHost()).invoke(data);
                    return true;
                }
            }
        }
        return false;
    }
}
