package org.telegram.ui;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.android.dx.rop.code.RegisterSpec;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.math.BigDecimal;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.url._UrlKt;
import org.json.JSONObject;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BirthdayController;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.tgnet.tl.TL_aicompose;
import org.telegram.tgnet.tl.TL_phone;
import org.telegram.tgnet.tl.TL_update;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.Components.AIEditorAlert;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CreateBotAlert;
import org.telegram.ui.Components.Premium.boosts.UserSelectorBottomSheet;
import org.telegram.ui.Components.SharedMediaLayout;
import org.telegram.ui.Components.voip.VoIPHelper;
import org.telegram.ui.Gifts.GiftSheet;
import org.telegram.ui.PaymentFormActivity;
import org.telegram.ui.QrShare.QrShareActivity;
import org.telegram.ui.Stars.BotStarsActivity;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.Stories.recorder.StoryRecorder;
import org.telegram.ui.TON.TONIntroActivity;
import org.telegram.ui.Wallet.GramWallet;
import org.telegram.ui.Wallet.GramWalletTonConnect;
import org.telegram.ui.Wallet.WalletActivity;
import org.telegram.ui.Wallet.WalletEngine2;
import org.telegram.ui.Wallet.WalletSendEnterAmount;
import org.telegram.ui.bots.ChannelAffiliateProgramsFragment;
import org.telegram.ui.web.WebBrowserSettings;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes6.dex */
public class LinkManager {
    private static final Pattern GET_PREMIUM_REF_PATTERN = Pattern.compile("^[a-z0-9_]{1,32}$");
    private final LaunchActivity activity;
    private final int currentAccount;
    private int currentRequestId = -1;
    private boolean done;
    private boolean inited;
    private final boolean isExternalIntent;
    private final Browser.Progress progress;
    private AlertDialog progressDialog;
    private boolean tonConnectCancelled;
    private Runnable tonConnectRetry;

    public LinkManager(LaunchActivity launchActivity, int i, Browser.Progress progress, boolean z) {
        this.activity = launchActivity;
        this.currentAccount = i;
        this.progress = progress;
        this.isExternalIntent = z;
    }

    public boolean handle(Uri uri) {
        if (uri == null) {
            return false;
        }
        FileLog.m1037d("link manager handle " + uri);
        String scheme = uri.getScheme();
        if ("tonsite".equalsIgnoreCase(scheme)) {
            return handleTonsite(uri);
        }
        if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
            return handleHttp(uri);
        }
        if ("tg".equalsIgnoreCase(scheme)) {
            return handleTg(uri);
        }
        if ("ton".equalsIgnoreCase(scheme)) {
            return handleTon(uri);
        }
        if ("tc".equalsIgnoreCase(scheme)) {
            return handleTc(uri);
        }
        return false;
    }

    private boolean handleTonsite(Uri uri) {
        Browser.openUrl(this.activity, uri);
        return true;
    }

    private boolean handleHttp(Uri uri) {
        String host = uri.getHost();
        if (host == null) {
            return false;
        }
        Matcher matcher = LaunchActivity.PREFIX_T_ME_PATTERN.matcher(host.toLowerCase());
        boolean zFind = matcher.find();
        if (!"telegram.me".equalsIgnoreCase(host) && !"t.me".equalsIgnoreCase(host) && !"telegram.dog".equalsIgnoreCase(host) && !zFind) {
            return false;
        }
        if (zFind) {
            StringBuilder sb = new StringBuilder("https://t.me/");
            sb.append(matcher.group(1));
            boolean zIsEmpty = TextUtils.isEmpty(uri.getPath());
            String str = _UrlKt.FRAGMENT_ENCODE_SET;
            sb.append(zIsEmpty ? _UrlKt.FRAGMENT_ENCODE_SET : uri.getPath());
            if (!TextUtils.isEmpty(uri.getQuery())) {
                str = "?" + uri.getQuery();
            }
            sb.append(str);
            uri = Uri.parse(sb.toString());
        }
        String path = uri.getPath();
        if (path != null && path.length() > 1) {
            String strSubstring = path.substring(1);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments != null && !pathSegments.isEmpty()) {
                String str2 = pathSegments.get(0);
                String str3 = pathSegments.size() > 1 ? pathSegments.get(1) : null;
                if ("sendgrams".equalsIgnoreCase(str2)) {
                    return handleSendGrams(uri);
                }
                if ("getpremium".equalsIgnoreCase(str2)) {
                    return handleGetPremium(uri.getQueryParameter("ref"));
                }
                if ("$".equalsIgnoreCase(str2)) {
                    return handleInvoiceSlug(strSubstring.substring(1));
                }
                if ("invoice".equalsIgnoreCase(str2)) {
                    return handleInvoiceSlug(str3);
                }
                if ("addstyle".equalsIgnoreCase(str2)) {
                    return handleAiStyle(str3);
                }
                if ("oauth".equalsIgnoreCase(str2)) {
                    return handleOAuth(uri, uri.getQueryParameter("startapp"));
                }
                if ("newbot".equalsIgnoreCase(str2)) {
                    if (pathSegments.size() < 2) {
                        return true;
                    }
                    return handleNewBot(str3, pathSegments.size() >= 3 ? pathSegments.get(2) : null, uri.getQueryParameter("name"));
                }
            }
        }
        return false;
    }

    private Uri normalizeTgUri(Uri uri) {
        String scheme;
        String schemeSpecificPart;
        if (uri == null || !uri.isOpaque() || (scheme = uri.getScheme()) == null || uri.getAuthority() != null || (schemeSpecificPart = uri.getSchemeSpecificPart()) == null) {
            return uri;
        }
        return Uri.parse(scheme + "://" + schemeSpecificPart);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v15, types: [int] */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v32 */
    /* JADX WARN: Type inference failed for: r9v4, types: [org.telegram.ui.Stories.recorder.StoryRecorder] */
    private boolean handleTg(Uri uri) {
        Uri uriNormalizeTgUri = normalizeTgUri(Uri.parse(uri.toString().replaceFirst("(?i)^tg:(//)?sendgrams&", "tg://sendgrams?")));
        List<String> pathSegments = uriNormalizeTgUri.getPathSegments();
        if (pathSegments == null) {
            return false;
        }
        ArrayList arrayList = new ArrayList(pathSegments);
        String authority = uriNormalizeTgUri.getAuthority();
        if (!TextUtils.isEmpty(authority)) {
            arrayList.add(0, authority);
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        String str = (String) arrayList.get(0);
        String str2 = arrayList.size() > 1 ? (String) arrayList.get(1) : null;
        if ("sendgrams".equalsIgnoreCase(str)) {
            return handleSendGrams(uriNormalizeTgUri);
        }
        if ("newbot".equalsIgnoreCase(str)) {
            return handleNewBot(uriNormalizeTgUri.getQueryParameter("manager"), uriNormalizeTgUri.getQueryParameter("username"), uriNormalizeTgUri.getQueryParameter("name"));
        }
        if ("resolve".equalsIgnoreCase(str)) {
            return handleTgResolve(uriNormalizeTgUri);
        }
        if ("invoice".equalsIgnoreCase(str)) {
            return handleInvoiceSlug(uriNormalizeTgUri.getQueryParameter("slug"));
        }
        if ("oauth".equalsIgnoreCase(str)) {
            return handleOAuth(uriNormalizeTgUri, uriNormalizeTgUri.getQueryParameter("token"));
        }
        if ("settings".equalsIgnoreCase(str)) {
            return handleSettings(arrayList.subList(1, arrayList.size()));
        }
        if ("chats".equalsIgnoreCase(str)) {
            "search".equalsIgnoreCase(str2);
            "edit".equalsIgnoreCase(str2);
            "emoji-status".equalsIgnoreCase(str2);
        }
        if ("new".equalsIgnoreCase(str)) {
            if ("group".equalsIgnoreCase(str2)) {
                presentFragment(new GroupCreateActivity(new Bundle()), false);
                return true;
            }
            if ("contact".equalsIgnoreCase(str2)) {
                new NewContactBottomSheet(getLastFragment(), this.activity).show();
                return true;
            }
            if ("channel".equalsIgnoreCase(str2)) {
                SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
                if (!BuildVars.DEBUG_VERSION && globalMainSettings.getBoolean("channel_intro", false)) {
                    Bundle bundle = new Bundle();
                    bundle.putInt("step", 0);
                    presentFragment(new ChannelCreateActivity(bundle));
                } else {
                    presentFragment(new ActionIntroActivity(0));
                    globalMainSettings.edit().putBoolean("channel_intro", true).commit();
                }
                return true;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("destroyAfterSelect", true);
            presentFragment(new ContactsActivity(bundle2));
            return true;
        }
        if ("post".equalsIgnoreCase(str)) {
            ?? EqualsIgnoreCase = MediaStreamTrack.VIDEO_TRACK_KIND.equalsIgnoreCase(str2);
            if ("live".equalsIgnoreCase(str2)) {
                EqualsIgnoreCase = -1;
            }
            StoryRecorder.getInstance(this.activity, this.currentAccount).setMode(EqualsIgnoreCase).open(null);
            return true;
        }
        if ("contacts".equalsIgnoreCase(str)) {
            if ("new".equalsIgnoreCase(str2)) {
                new NewContactBottomSheet(getLastFragment(), this.activity).show();
                return true;
            }
            Bundle bundle3 = new Bundle();
            bundle3.putBoolean("needPhonebook", true);
            bundle3.putBoolean("needFinishFragment", true);
            presentFragment(new ContactsActivity(bundle3));
            "search".equalsIgnoreCase(str2);
            "sort".equalsIgnoreCase(str2);
            if ("invite".equalsIgnoreCase(str2)) {
                scrollTo("phonebookRow");
            }
            return true;
        }
        if ("addstyle".equalsIgnoreCase(str)) {
            return handleAiStyle(uriNormalizeTgUri.getQueryParameter("slug"));
        }
        return false;
    }

    private boolean handleTgResolve(Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments == null) {
            return false;
        }
        ArrayList arrayList = new ArrayList(pathSegments);
        String authority = uri.getAuthority();
        if (!TextUtils.isEmpty(authority)) {
            arrayList.add(0, authority);
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        arrayList.remove(0);
        String queryParameter = uri.getQueryParameter("domain");
        String queryParameter2 = uri.getQueryParameter("startapp");
        if ("sendgrams".equalsIgnoreCase(queryParameter)) {
            return handleSendGrams(uri);
        }
        if (!"oauth".equalsIgnoreCase(queryParameter) || isEmpty(queryParameter2)) {
            return false;
        }
        return handleOAuth(uri, queryParameter2);
    }

    /* JADX WARN: Removed duplicated region for block: B:233:0x0456  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x06f0  */
    /* JADX WARN: Removed duplicated region for block: B:609:0x0a4b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean handleSettings(List<String> list) {
        boolean z;
        int i;
        int i2;
        int i3;
        final int i4;
        BaseFragment lastFragment;
        MainTabsActivity mainTabsActivity;
        ApplicationLoader applicationLoader;
        BaseFragment baseFragmentOpenSettings;
        if (list == null) {
            return false;
        }
        boolean z2 = true;
        if (list.isEmpty()) {
            presentFragment(new SettingsActivity());
            return true;
        }
        String str = list.get(0);
        String str2 = list.size() > 1 ? list.get(1) : null;
        final String str3 = list.size() > 2 ? list.get(2) : null;
        String str4 = list.size() > 3 ? list.get(3) : null;
        String str5 = list.size() > 4 ? list.get(4) : null;
        if ("theme".equalsIgnoreCase(str) || "themes".equalsIgnoreCase(str)) {
            presentFragment(new ThemeActivity(0));
            return true;
        }
        if ("devices".equalsIgnoreCase(str)) {
            SessionsActivity sessionsActivity = new SessionsActivity(0);
            if ("link-desktop".equalsIgnoreCase(str2)) {
                sessionsActivity.setHighlightLinkDesktopDevice();
            }
            presentFragment(sessionsActivity);
            if ("terminate-sessions".equalsIgnoreCase(str2)) {
                scrollTo("terminateAllSessionsRow");
            }
            if ("auto-terminate".equalsIgnoreCase(str2)) {
                scrollTo("ttlRow");
            }
            return true;
        }
        if ("folders".equalsIgnoreCase(str)) {
            final FiltersSetupActivity filtersSetupActivity = new FiltersSetupActivity();
            presentFragment(new FiltersSetupActivity());
            if ("create".equalsIgnoreCase(str2)) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$handleSettings$0(filtersSetupActivity);
                    }
                }, 300L);
            }
            if ("show-tags".equalsIgnoreCase(str2)) {
                scrollTo("showTagsRow");
            }
            return true;
        }
        if ("change_number".equalsIgnoreCase(str)) {
            presentFragment(new ActionIntroActivity(3), true);
            return true;
        }
        if ("language".equalsIgnoreCase(str)) {
            if ("do-not-translate".equalsIgnoreCase(str2)) {
                presentFragment(new RestrictedLanguagesSelectActivity());
                return true;
            }
            presentFragment(new LanguageSelectActivity());
            if ("show-button".equalsIgnoreCase(str2)) {
                scrollTo("manualTranslationPosition");
            }
            if ("translate-chats".equalsIgnoreCase(str2)) {
                scrollTo("autoTranslationPosition");
            }
            return true;
        }
        if ("auto_delete".equalsIgnoreCase(str)) {
            presentFragment(new AutoDeleteMessagesActivity());
            return true;
        }
        if ("phone_privacy".equalsIgnoreCase(str)) {
            presentFragment(new PrivacyControlActivity(6));
            return true;
        }
        if ("premium_sms".equalsIgnoreCase(str) && (applicationLoader = ApplicationLoader.applicationLoaderInstance) != null && (baseFragmentOpenSettings = applicationLoader.openSettings(13)) != null) {
            presentFragment(baseFragmentOpenSettings);
            return true;
        }
        if ("login_email".equalsIgnoreCase(str)) {
            init();
            setRequestId(getConnectionsManager().sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda5
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$handleSettings$2(tLObject, tL_error);
                }
            }, 10));
            return true;
        }
        if ("chats".equalsIgnoreCase(str)) {
            INavigationLayout parentLayout = getParentLayout();
            int size = parentLayout.getFragmentStack().size() - 1;
            while (true) {
                z = z2;
                if (size < 0) {
                    mainTabsActivity = null;
                    break;
                }
                if (parentLayout.getFragmentStack().get(size) instanceof MainTabsActivity) {
                    mainTabsActivity = (MainTabsActivity) parentLayout.getFragmentStack().get(size);
                    break;
                }
                if (size > 0) {
                    parentLayout.removeFragmentFromStack(size);
                }
                size++;
                z2 = z;
            }
            if (mainTabsActivity != null && "search".equalsIgnoreCase(str2)) {
                mainTabsActivity.viewPager.scrollToPosition(2);
                return z;
            }
        } else {
            z = true;
        }
        if ("saved-messages".equalsIgnoreCase(str)) {
            presentFragment(ChatActivity.of(getUserConfig().getClientUserId()));
            return z;
        }
        if ("calls".equalsIgnoreCase(str)) {
            if ("start-call".equalsIgnoreCase(str2)) {
                Bundle bundle = new Bundle();
                boolean z3 = z;
                bundle.putBoolean("isCall", z3);
                presentFragment(new C52991(bundle));
                return z3;
            }
            boolean z4 = z;
            presentFragment(new CallLogActivity());
            return z4;
        }
        if ("qr-code".equalsIgnoreCase(str)) {
            if ("scan".equalsIgnoreCase(str2) && (lastFragment = getLastFragment()) != null) {
                QrShareActivity.openCameraScanActivity(lastFragment);
                return z;
            }
            if ("share".equalsIgnoreCase(str2)) {
                Bundle bundle2 = new Bundle();
                bundle2.putLong("user_id", getUserConfig().getClientUserId());
                presentFragment(new QrShareActivity(bundle2) { // from class: org.telegram.ui.LinkManager.2
                    @Override // org.telegram.ui.ActionBar.BaseFragment
                    public void onBecomeFullyVisible() {
                        super.onBecomeFullyVisible();
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LinkManager$2$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                performShare();
                            }
                        });
                    }
                });
                return true;
            }
            Bundle bundle3 = new Bundle();
            bundle3.putLong("user_id", getUserConfig().getClientUserId());
            presentFragment(new QrShareActivity(bundle3));
            return true;
        }
        if ("chat".equalsIgnoreCase(str) && "browser".equalsIgnoreCase(str2)) {
            if (TextUtils.isEmpty(str3)) {
                presentFragment(new ThemeActivity(0));
                scrollTo("browserRow");
                return true;
            }
            presentFragment(new WebBrowserSettings(null));
            if ("enable-browser".equalsIgnoreCase(str3)) {
                scrollTo("enableRow");
            }
            if ("clear-cookies".equalsIgnoreCase(str3)) {
                scrollTo("clearCookiesRow");
            }
            if ("clear-cache".equalsIgnoreCase(str3)) {
                scrollTo("clearCacheRow");
            }
            if ("history".equalsIgnoreCase(str3)) {
                scrollTo("historyRow");
            }
            if ("clear-history".equalsIgnoreCase(str3)) {
                scrollTo("clearHistoryRow");
            }
            if ("never-open".equalsIgnoreCase(str3)) {
                scrollTo("neverOpenRow");
            }
            if ("clear-list".equalsIgnoreCase(str3)) {
                scrollTo("clearListRow");
            }
            if (!"search".equalsIgnoreCase(str3)) {
                return true;
            }
            scrollTo("searchRow");
            return true;
        }
        String str6 = str5;
        if ("edit".equalsIgnoreCase(str)) {
            presentFragment(new UserInfoActivity());
            if ("first-name".equalsIgnoreCase(str2)) {
                scrollTo("firstNameRow");
            }
            if ("last-name".equalsIgnoreCase(str2)) {
                scrollTo("lastNameRow");
            }
            if ("bio".equalsIgnoreCase(str2)) {
                scrollTo("bioRow");
            }
            if ("birthday".equalsIgnoreCase(str2)) {
                scrollTo("birthdayRow");
            }
            if ("change-number".equalsIgnoreCase(str2)) {
                scrollTo("numberRow");
            }
            if ("username".equalsIgnoreCase(str2)) {
                scrollTo("usernameRow");
            }
            if ("channel".equalsIgnoreCase(str2)) {
                scrollTo("channelRow");
            }
            if ("add-account".equalsIgnoreCase(str2)) {
                scrollTo("addAccountRow");
            }
            if (!"log-out".equalsIgnoreCase(str2)) {
                return true;
            }
            scrollTo("logoutRow");
            return true;
        }
        if ("my-profile".equalsIgnoreCase(str)) {
            if ("edit".equalsIgnoreCase(str2)) {
                presentFragment(new UserInfoActivity());
                return true;
            }
            Bundle bundle4 = new Bundle();
            bundle4.putLong("user_id", getUserConfig().getClientUserId());
            bundle4.putBoolean("my_profile", true);
            if ("gifts".equalsIgnoreCase(str2)) {
                bundle4.putBoolean("open_gifts", true);
            }
            final ProfileActivity profileActivity = new ProfileActivity(bundle4);
            if ("gifts".equalsIgnoreCase(str2)) {
                profileActivity.whenFullyVisible(new Runnable() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda15
                            @Override // java.lang.Runnable
                            public final void run() {
                                LinkManager.$r8$lambda$LH95z6iiSbgUKZuFzNPo8_CwFi0(profileActivity);
                            }
                        }, 200L);
                    }
                });
            }
            if ("posts".equalsIgnoreCase(str2)) {
                profileActivity.whenFullyVisible(new Runnable() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda20
                            @Override // java.lang.Runnable
                            public final void run() {
                                LinkManager.$r8$lambda$paHps_jeHUwNd7Rbor9CdgvlPiQ(profileActivity);
                            }
                        }, 200L);
                    }
                });
            }
            presentFragment(profileActivity);
            return true;
        }
        if ("notifications".equalsIgnoreCase(str)) {
            if (!TextUtils.isEmpty(str3) && ("private-chats".equalsIgnoreCase(str2) || "groups".equalsIgnoreCase(str2) || "channels".equalsIgnoreCase(str2) || "stories".equalsIgnoreCase(str2) || "reactions".equalsIgnoreCase(str2))) {
                if ("private-chats".equalsIgnoreCase(str2)) {
                    i4 = 1;
                } else if (!"groups".equalsIgnoreCase(str2)) {
                    if ("channels".equalsIgnoreCase(str2)) {
                        i4 = 2;
                    } else if ("stories".equalsIgnoreCase(str2)) {
                        i4 = 3;
                    } else {
                        i4 = "reactions".equalsIgnoreCase(str2) ? 4 : 0;
                    }
                }
                final NotificationsSettingsActivity notificationsSettingsActivity = new NotificationsSettingsActivity();
                init();
                notificationsSettingsActivity.loadExceptions(new Runnable() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$handleSettings$7(notificationsSettingsActivity, i4, str3);
                    }
                });
                return true;
            }
            presentFragment(new NotificationsSettingsActivity());
            if ("accounts".equalsIgnoreCase(str2)) {
                scrollTo("accountsAllRow");
            }
            if ("private-chats".equalsIgnoreCase(str2)) {
                scrollTo("privateRow");
            }
            if ("groups".equalsIgnoreCase(str2)) {
                scrollTo("groupRow");
            }
            if ("channels".equalsIgnoreCase(str2)) {
                scrollTo("channelsRow");
            }
            if ("stories".equalsIgnoreCase(str2)) {
                scrollTo("storiesRow");
            }
            if ("reactions".equalsIgnoreCase(str2)) {
                scrollTo("reactionsRow");
            }
            if ("in-app-sounds".equalsIgnoreCase(str2)) {
                scrollTo("inappSoundRow");
            }
            if ("in-app-vibrate".equalsIgnoreCase(str2)) {
                scrollTo("inappVibrateRow");
            }
            if ("in-app-preview".equalsIgnoreCase(str2)) {
                scrollTo("inappPreviewRow");
            }
            if ("in-chat-sounds".equalsIgnoreCase(str2)) {
                scrollTo("inchatSoundRow");
            }
            if ("in-app-popup".equalsIgnoreCase(str2)) {
                scrollTo("inappPriorityRow");
            }
            if ("show-badge-icon".equalsIgnoreCase(str2)) {
                scrollTo("badgeNumberShowRow");
            }
            if ("include-muted-chats".equalsIgnoreCase(str2)) {
                scrollTo("badgeNumberMutedRow");
            }
            if ("count-unread-messages".equalsIgnoreCase(str2)) {
                scrollTo("badgeNumberMessagesRow");
            }
            if ("new-contacts".equalsIgnoreCase(str2)) {
                scrollTo("contactJoinedRow");
            }
            if ("pinned-messages".equalsIgnoreCase(str2)) {
                scrollTo("pinnedMessageRow");
            }
            if (!"reset".equalsIgnoreCase(str2)) {
                return true;
            }
            scrollTo("resetNotificationsRow");
            return true;
        }
        if ("privacy".equalsIgnoreCase(str)) {
            if ("data-settings".equalsIgnoreCase(str2) && "delete-cloud-drafts".equalsIgnoreCase(str3)) {
                presentFragment(new DataSettingsActivity());
                scrollTo("clearDraftsRow");
                return true;
            }
            if (!TextUtils.isEmpty(str3) && "blocked".equalsIgnoreCase(str2)) {
                presentFragment(new PrivacyUsersActivity());
                return true;
            }
            if (!TextUtils.isEmpty(str3) && "active-websites".equalsIgnoreCase(str2)) {
                presentFragment(new SessionsActivity(1));
                if ("disconnect-all".equalsIgnoreCase(str3)) {
                    scrollTo("terminateAllSessionsRow");
                }
                return true;
            }
            if (!TextUtils.isEmpty(str3) && "passcode".equalsIgnoreCase(str2)) {
                Runnable runnable = new Runnable() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$handleSettings$8(str3);
                    }
                };
                BaseFragment baseFragmentDetermineOpenFragment = PasscodeActivity.determineOpenFragment();
                presentFragment(baseFragmentDetermineOpenFragment);
                if (baseFragmentDetermineOpenFragment instanceof ActionIntroActivity) {
                    ((ActionIntroActivity) baseFragmentDetermineOpenFragment).setOnOpenedSettings(runnable);
                    return true;
                }
                if (!(baseFragmentDetermineOpenFragment instanceof PasscodeActivity)) {
                    return true;
                }
                ((PasscodeActivity) baseFragmentDetermineOpenFragment).setOnOpenedSettings(runnable);
                return true;
            }
            if (!TextUtils.isEmpty(str3) && "2sv".equalsIgnoreCase(str2)) {
                init();
                setRequestId(getConnectionsManager().sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda10
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$handleSettings$11(str3, tLObject, tL_error);
                    }
                }, 10));
                return true;
            }
            if (!TextUtils.isEmpty(str3) && "passkey".equalsIgnoreCase(str2) && Build.VERSION.SDK_INT >= 28) {
                init();
                setRequestId(getConnectionsManager().sendRequestTyped(new TL_account.getPasskeys(), new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda11
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$handleSettings$12(str3, (TL_account.Passkeys) obj, (TLRPC.TL_error) obj2);
                    }
                }));
                return true;
            }
            if (!TextUtils.isEmpty(str3) && "auto-delete".equalsIgnoreCase(str2) && getUserConfig().getGlobalTTl() >= 0) {
                presentFragment(new AutoDeleteMessagesActivity());
                return true;
            }
            if (!TextUtils.isEmpty(str3) && ("phone-number".equalsIgnoreCase(str2) || "last-seen".equalsIgnoreCase(str2) || "profile-photos".equalsIgnoreCase(str2) || "bio".equalsIgnoreCase(str2) || "gifts".equalsIgnoreCase(str2) || "birthday".equalsIgnoreCase(str2) || "saved-music".equalsIgnoreCase(str2) || "forwards".equalsIgnoreCase(str2) || "calls".equalsIgnoreCase(str2) || "voice".equalsIgnoreCase(str2) || "messages".equalsIgnoreCase(str2) || "invites".equalsIgnoreCase(str2))) {
                if ("phone-number".equalsIgnoreCase(str2)) {
                    i3 = 6;
                } else if (!"last-seen".equalsIgnoreCase(str2)) {
                    if ("profile-photos".equalsIgnoreCase(str2)) {
                        i3 = 4;
                    } else if ("bio".equalsIgnoreCase(str2)) {
                        i3 = 9;
                    } else if ("gifts".equalsIgnoreCase(str2)) {
                        i3 = 12;
                    } else if ("birthday".equalsIgnoreCase(str2)) {
                        i3 = 11;
                    } else if ("saved-music".equalsIgnoreCase(str2)) {
                        i3 = 14;
                    } else if ("forwards".equalsIgnoreCase(str2)) {
                        i3 = 5;
                    } else if ("calls".equalsIgnoreCase(str2)) {
                        i3 = "p2p".equalsIgnoreCase(str3) ? 3 : 2;
                    } else if ("voice".equalsIgnoreCase(str2)) {
                        i3 = 8;
                    } else if ("messages".equalsIgnoreCase(str2)) {
                        i3 = 10;
                    } else {
                        i3 = "invites".equalsIgnoreCase(str2) ? 1 : 0;
                    }
                }
                presentFragment(new PrivacyControlActivity(i3));
                if ("birthday".equalsIgnoreCase(str2) && "add".equalsIgnoreCase(str3)) {
                    scrollTo("setBirthdayRow");
                }
                if ("always-share".equalsIgnoreCase(str3) || "always-share".equalsIgnoreCase(str4) || "always".equalsIgnoreCase(str3) || "always".equalsIgnoreCase(str4)) {
                    scrollTo("everybodyRow");
                }
                if ("never-share".equalsIgnoreCase(str3) || "never-share".equalsIgnoreCase(str4) || "never".equalsIgnoreCase(str3) || "never".equalsIgnoreCase(str4)) {
                    scrollTo("nobodyRow");
                }
                if ("gifts".equalsIgnoreCase(str2) && "show-icon".equalsIgnoreCase(str3)) {
                    scrollTo("showGiftIconRow");
                }
                if ("gifts".equalsIgnoreCase(str2) && "accepted-types".equalsIgnoreCase(str3)) {
                    scrollTo("giftTypesHeaderRow");
                }
                if ("messages".equalsIgnoreCase(str2) && "set-price".equalsIgnoreCase(str3)) {
                    scrollTo("priceRow");
                }
                if ("messages".equalsIgnoreCase(str2) && "remove-fee".equalsIgnoreCase(str3)) {
                    scrollTo("alwaysShareRow");
                }
                if ("last-seen".equalsIgnoreCase(str2) && "hide-read-time".equalsIgnoreCase(str3)) {
                    scrollTo("readRow");
                }
                if (!"profile-photos".equalsIgnoreCase(str2)) {
                    return true;
                }
                if ("set-public".equalsIgnoreCase(str3)) {
                    scrollTo("photoForRestRow");
                }
                if ("update-public".equalsIgnoreCase(str3)) {
                    scrollTo("photoForRestRow");
                }
                if (!"remove-public".equalsIgnoreCase(str3)) {
                    return true;
                }
                scrollTo("currentPhotoForRestRow");
                return true;
            }
            if (!MessagesController.getInstance(this.currentAccount).autoarchiveAvailable && "archive-and-mute".equalsIgnoreCase(str2)) {
                return true;
            }
            presentFragment(new PrivacySettingsActivity());
            if ("blocked".equalsIgnoreCase(str2)) {
                scrollTo("blockedRow");
            }
            if ("active-websites".equalsIgnoreCase(str2)) {
                scrollTo("webSessionsRow");
            }
            if ("passcode".equalsIgnoreCase(str2)) {
                scrollTo("passcodeRow");
            }
            if ("2sv".equalsIgnoreCase(str2)) {
                scrollTo("passwordRow");
            }
            if ("passkey".equalsIgnoreCase(str2)) {
                scrollTo("passkeysRow");
            }
            if ("auto-delete".equalsIgnoreCase(str2)) {
                scrollTo("autoDeleteMesages");
            }
            if ("login-email".equalsIgnoreCase(str2)) {
                scrollTo("emailLoginRow");
            }
            if ("phone-number".equalsIgnoreCase(str2)) {
                scrollTo("phoneNumberRow");
            }
            if ("last-seen".equalsIgnoreCase(str2)) {
                scrollTo("lastSeenRow");
            }
            if ("profile-photos".equalsIgnoreCase(str2)) {
                scrollTo("profilePhotoRow");
            }
            if ("bio".equalsIgnoreCase(str2)) {
                scrollTo("bioRow");
            }
            if ("gifts".equalsIgnoreCase(str2)) {
                scrollTo("giftsRow");
            }
            if ("birthday".equalsIgnoreCase(str2)) {
                scrollTo("birthdayRow");
            }
            if ("saved-music".equalsIgnoreCase(str2)) {
                scrollTo("musicRow");
            }
            if ("forwards".equalsIgnoreCase(str2)) {
                scrollTo("forwardsRow");
            }
            if ("calls".equalsIgnoreCase(str2)) {
                scrollTo("callsRow");
            }
            if ("voice".equalsIgnoreCase(str2)) {
                scrollTo("voicesRow");
            }
            if ("messages".equalsIgnoreCase(str2)) {
                scrollTo("noncontactsRow");
            }
            if ("invites".equalsIgnoreCase(str2)) {
                scrollTo("groupsRow");
            }
            if ("self-destruct".equalsIgnoreCase(str2)) {
                scrollTo("deleteAccountRow");
            }
            if ("archive-and-mute".equalsIgnoreCase(str2)) {
                scrollTo("newChatsRow");
            }
            if (!"data-settings".equalsIgnoreCase(str2)) {
                return true;
            }
            if ("sync-contacts".equalsIgnoreCase(str3)) {
                scrollTo("contactsSyncRow");
            }
            if ("delete-synced".equalsIgnoreCase(str3)) {
                scrollTo("contactsDeleteRow");
            }
            if ("suggest-contacts".equalsIgnoreCase(str3)) {
                scrollTo("contactsSuggestRow");
            }
            if ("clear-payment-info".equalsIgnoreCase(str3)) {
                scrollTo("paymentsClearRow");
            }
            if ("link-previews".equalsIgnoreCase(str3)) {
                scrollTo("secretWebpageRow");
            }
            if (!"map-provider".equalsIgnoreCase(str3)) {
                return true;
            }
            scrollTo("secretMapRow");
            return true;
        }
        if ("data".equalsIgnoreCase(str)) {
            if ("storage".equalsIgnoreCase(str2)) {
                "clear-cache".equalsIgnoreCase(str3);
                presentFragment(new CacheControlActivity());
                return true;
            }
            if ("usage".equalsIgnoreCase(str2)) {
                DataUsage2Activity dataUsage2Activity = new DataUsage2Activity();
                presentFragment(dataUsage2Activity);
                if ("mobile".equalsIgnoreCase(str3)) {
                    dataUsage2Activity.selectTab(1);
                }
                if ("wifi".equalsIgnoreCase(str3)) {
                    dataUsage2Activity.selectTab(2);
                }
                if ("roaming".equalsIgnoreCase(str3)) {
                    dataUsage2Activity.selectTab(3);
                }
                if (!"reset".equalsIgnoreCase(str3)) {
                    return true;
                }
                dataUsage2Activity.scrollToReset();
                return true;
            }
            if ("auto-download".equalsIgnoreCase(str2)) {
                if ("mobile".equalsIgnoreCase(str3) || "wifi".equalsIgnoreCase(str3) || "roaming".equalsIgnoreCase(str3)) {
                    if (!"mobile".equalsIgnoreCase(str3)) {
                        if ("wifi".equalsIgnoreCase(str3)) {
                            i2 = 1;
                        } else {
                            i2 = "roaming".equalsIgnoreCase(str3) ? 2 : 0;
                        }
                    }
                    presentFragment(new DataAutoDownloadActivity(i2));
                    if ("enable".equalsIgnoreCase(str4)) {
                        scrollTo("autoDownloadRow");
                    }
                    if ("usage".equalsIgnoreCase(str4)) {
                        scrollTo("usageProgressRow");
                    }
                    if ("photos".equalsIgnoreCase(str4)) {
                        scrollTo("photosRow");
                    }
                    if ("stories".equalsIgnoreCase(str4)) {
                        scrollTo("storiesRow");
                    }
                    if ("videos".equalsIgnoreCase(str4)) {
                        scrollTo("videosRow");
                    }
                    if (!"files".equalsIgnoreCase(str4)) {
                        return true;
                    }
                    scrollTo("filesRow");
                    return true;
                }
                if ("reset".equalsIgnoreCase(str3)) {
                    presentFragment(new DataSettingsActivity());
                    scrollTo("resetDownloadRow");
                    return true;
                }
            }
            if (!TextUtils.isEmpty(str4) && "save-to-photos".equalsIgnoreCase(str2)) {
                if ("groups".equalsIgnoreCase(str3)) {
                    i = 2;
                } else {
                    i = "channels".equalsIgnoreCase(str3) ? 4 : 1;
                }
                Bundle bundle5 = new Bundle();
                bundle5.putInt("type", i);
                presentFragment(new SaveToGallerySettingsActivity(bundle5));
                if ("max-video-size".equalsIgnoreCase(str4)) {
                    scrollTo("maxVideoSizeRow");
                }
                if ("add-exception".equalsIgnoreCase(str4)) {
                    scrollTo("addExceptionRow");
                }
                if (!"delete-all".equalsIgnoreCase(str4)) {
                    return true;
                }
                scrollTo("deleteAllExceptionsRow");
                return true;
            }
            if (!TextUtils.isEmpty(str3) && "proxy".equalsIgnoreCase(str2)) {
                presentFragment(new ProxyListActivity());
                if ("use-proxy".equalsIgnoreCase(str3)) {
                    scrollTo("useProxyRow");
                }
                if (!"add-proxy".equalsIgnoreCase(str3)) {
                    return true;
                }
                scrollTo("proxyAddRow");
                return true;
            }
            if ("pause-music".equalsIgnoreCase(str2)) {
                presentFragment(new ThemeActivity(0));
                scrollTo("pauseOnMediaRow");
                return true;
            }
            if ("pause-music-on-record".equalsIgnoreCase(str2)) {
                presentFragment(new ThemeActivity(0));
                scrollTo("pauseOnRecordRow");
                return true;
            }
            if ("raise-to-listen".equalsIgnoreCase(str2)) {
                presentFragment(new ThemeActivity(0));
                scrollTo("raiseToListenRow");
                return true;
            }
            if ("raise-to-speak".equalsIgnoreCase(str2)) {
                presentFragment(new ThemeActivity(0));
                scrollTo("raiseToSpeakRow");
                return true;
            }
            if ("show-18-contnet".equalsIgnoreCase(str2)) {
                presentFragment(new ThemeActivity(0));
                scrollTo("sensitiveContentRow");
                return true;
            }
            presentFragment(new DataSettingsActivity());
            if ("save-to-photos".equalsIgnoreCase(str2)) {
                if ("chats".equalsIgnoreCase(str3)) {
                    scrollTo("saveToGalleryPeerRow");
                }
                if ("groups".equalsIgnoreCase(str3)) {
                    scrollTo("saveToGalleryGroupsRow");
                }
                if ("channels".equalsIgnoreCase(str3)) {
                    scrollTo("saveToGalleryChannelsRow");
                }
            }
            if ("use-less-data".equalsIgnoreCase(str2)) {
                scrollTo("useLessDataForCallsRow");
            }
            if (!"proxy".equalsIgnoreCase(str2)) {
                return true;
            }
            scrollTo("proxyRow");
            return true;
        }
        if ("appearance".equalsIgnoreCase(str)) {
            if ("themes".equalsIgnoreCase(str2) || "theme".equalsIgnoreCase(str2)) {
                presentFragment(new ThemeActivity(3));
                if ("create".equalsIgnoreCase(str3)) {
                    scrollTo("createNewThemeRow");
                }
                return true;
            }
            if (!TextUtils.isEmpty(str3) && ("wallpaper".equalsIgnoreCase(str2) || "wallpapers".equalsIgnoreCase(str2))) {
                presentFragment(new WallpapersListActivity(0));
                if (!"set".equalsIgnoreCase(str3) && !"choose-photo".equalsIgnoreCase(str3)) {
                    return true;
                }
                scrollTo("uploadImageRow");
                return true;
            }
            if (!TextUtils.isEmpty(str3) && ("your-color".equalsIgnoreCase(str2) || "color".equalsIgnoreCase(str2))) {
                presentFragment(new PeerColorActivity(0L));
                return true;
            }
            if (!TextUtils.isEmpty(str3) && "stickers-and-emoji".equalsIgnoreCase(str2)) {
                if (!TextUtils.isEmpty(str4) && "archived".equalsIgnoreCase(str3)) {
                    presentFragment(new ArchivedStickersActivity(0));
                    return true;
                }
                if ("emoji".equalsIgnoreCase(str3) && !TextUtils.isEmpty(str4) && !"large".equalsIgnoreCase(str4) && !"dynamic-order".equalsIgnoreCase(str4)) {
                    if (!TextUtils.isEmpty(str6) && "archived".equalsIgnoreCase(str4)) {
                        presentFragment(new ArchivedStickersActivity(5));
                        return true;
                    }
                    presentFragment(new StickersActivity(5, null));
                    if (!"suggest".equalsIgnoreCase(str4)) {
                        return true;
                    }
                    scrollTo("suggestRow");
                    return true;
                }
                presentFragment(new StickersActivity(0, null));
                if ("trending".equalsIgnoreCase(str3)) {
                    scrollTo("featuredRow");
                }
                if ("archived".equalsIgnoreCase(str3)) {
                    scrollTo("archivedRow");
                }
                if ("emoji".equalsIgnoreCase(str3) && "large".equalsIgnoreCase(str4)) {
                    scrollTo("largeEmojiRow");
                    return true;
                }
                if ("emoji".equalsIgnoreCase(str3) && "dynamic-order".equalsIgnoreCase(str4)) {
                    scrollTo("dynamicPackOrder");
                    return true;
                }
                if (!"emoji".equalsIgnoreCase(str3)) {
                    return true;
                }
                scrollTo("emojiPacksRow");
                return true;
            }
            presentFragment(new ThemeActivity(0));
            if ("wallpaper".equalsIgnoreCase(str2) || "wallpapers".equalsIgnoreCase(str2)) {
                scrollTo("backgroundRow");
            }
            if ("your-color".equalsIgnoreCase(str2) || "color".equalsIgnoreCase(str2)) {
                scrollTo("changeUserColor");
            }
            if ("auto-night-mode".equalsIgnoreCase(str2)) {
                scrollTo("nightThemeRow");
            }
            if ("text-size".equalsIgnoreCase(str2)) {
                scrollTo("textSizeRow");
            }
            if ("message-corners".equalsIgnoreCase(str2)) {
                scrollTo("bubbleRadiusRow");
            }
            if ("animations".equalsIgnoreCase(str2)) {
                scrollTo("liteModeRow");
            }
            if ("stickers-and-emoji".equalsIgnoreCase(str2)) {
                scrollTo("stickersRow");
            }
            if ("app-icon".equalsIgnoreCase(str2)) {
                scrollTo("appIconSelectorRow");
            }
            if (!"tap-for-next-media".equalsIgnoreCase(str2)) {
                return true;
            }
            scrollTo("nextMediaTapRow");
            return true;
        }
        if ("power-saving".equalsIgnoreCase(str)) {
            LiteModeSettingsActivity liteModeSettingsActivity = new LiteModeSettingsActivity();
            presentFragment(liteModeSettingsActivity);
            if ("videos".equalsIgnoreCase(str2)) {
                liteModeSettingsActivity.scrollToFlags(1024);
            }
            if ("gifs".equalsIgnoreCase(str2)) {
                liteModeSettingsActivity.scrollToFlags(2048);
            }
            if ("stickers".equalsIgnoreCase(str2)) {
                liteModeSettingsActivity.scrollToFlags(3);
            }
            if ("emoji".equalsIgnoreCase(str2)) {
                liteModeSettingsActivity.scrollToFlags(LiteMode.FLAGS_ANIMATED_EMOJI);
            }
            if ("effects".equalsIgnoreCase(str2)) {
                liteModeSettingsActivity.scrollToFlags(LiteMode.FLAGS_CHAT);
            }
            if ("call-animations".equalsIgnoreCase(str2)) {
                liteModeSettingsActivity.scrollToFlags(512);
            }
            if ("particles".equalsIgnoreCase(str2)) {
                liteModeSettingsActivity.scrollToFlags(131072);
            }
            if ("transitions".equalsIgnoreCase(str2)) {
                liteModeSettingsActivity.scrollToType(1);
            }
            return true;
        }
        if ("stars".equalsIgnoreCase(str)) {
            if ("top-up".equalsIgnoreCase(str2)) {
                new StarsIntroActivity.StarsOptionsSheet(this.activity, null).show();
                return true;
            }
            if ("stats".equalsIgnoreCase(str2)) {
                presentFragment(new BotStarsActivity(0, getUserConfig().getClientUserId()));
                return true;
            }
            if ("gift".equalsIgnoreCase(str2)) {
                StarsController.getInstance(this.currentAccount).getGiftOptions();
                UserSelectorBottomSheet.open(1, 0L, BirthdayController.getInstance(this.currentAccount).getState());
                return true;
            }
            if ("earn".equalsIgnoreCase(str2)) {
                presentFragment(new ChannelAffiliateProgramsFragment(getUserConfig().getClientUserId()));
                return true;
            }
            presentFragment(new StarsIntroActivity());
            return true;
        }
        if ("premium".equalsIgnoreCase(str)) {
            presentFragment(new PremiumPreviewFragment("link"));
            return true;
        }
        if ("business".equalsIgnoreCase(str)) {
            presentFragment(new PremiumPreviewFragment(1, "link"));
            if ("do-not-hide-ads".equalsIgnoreCase(str2)) {
                scrollTo("showAdsRow");
            }
            return true;
        }
        if ("ton".equalsIgnoreCase(str)) {
            presentFragment(new TONIntroActivity());
            return true;
        }
        if ("send-gift".equalsIgnoreCase(str)) {
            if ("self".equalsIgnoreCase(str2)) {
                new GiftSheet(this.activity, this.currentAccount, getUserConfig().getClientUserId(), null, null).show();
                return true;
            }
            UserSelectorBottomSheet.open(0L, BirthdayController.getInstance(this.currentAccount).getState());
            return true;
        }
        if ("ask-question".equalsIgnoreCase(str) || "ask-a-question".equalsIgnoreCase(str)) {
            AlertsCreator.createSupportAlert(getLastFragment(), null).show();
            return true;
        }
        if ("faq".equalsIgnoreCase(str)) {
            Browser.openUrl(this.activity, LocaleController.getString(C2807R.string.TelegramFaqUrl));
            return true;
        }
        if ("features".equalsIgnoreCase(str)) {
            Browser.openUrl(this.activity, LocaleController.getString(C2807R.string.TelegramFeaturesUrl));
            return true;
        }
        if ("privacy-policy".equalsIgnoreCase(str)) {
            Browser.openUrl(this.activity, LocaleController.getString(C2807R.string.PrivacyPolicyUrl));
            return true;
        }
        presentFragment(new SettingsActivity());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleSettings$0(FiltersSetupActivity filtersSetupActivity) {
        filtersSetupActivity.createFolder(getParentLayout());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleSettings$2(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$handleSettings$1(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleSettings$1(TLObject tLObject) {
        lambda$handleInvoiceSlug$13();
        if (tLObject != null) {
            this.activity.lambda$handleIntent$21((TL_account.Password) tLObject);
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.LinkManager$1 */
    public class C52991 extends GroupCreateActivity {
        public C52991(Bundle bundle) {
            super(bundle);
        }

        @Override // org.telegram.ui.GroupCreateActivity
        public void onCallUsersSelected(final HashSet<Long> hashSet, final boolean z) {
            if (hashSet.size() == 1) {
                final TLRPC.User user = getMessagesController().getUser(hashSet.iterator().next());
                TLRPC.UserFull userFull = getMessagesController().getUserFull(user.id);
                if (userFull == null) {
                    TLRPC.TL_users_getFullUser tL_users_getFullUser = new TLRPC.TL_users_getFullUser();
                    tL_users_getFullUser.id = getMessagesController().getInputUser(user.id);
                    getConnectionsManager().sendRequest(tL_users_getFullUser, new RequestDelegate() { // from class: org.telegram.ui.LinkManager$1$$ExternalSyntheticLambda0
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$onCallUsersSelected$1(user, z, tLObject, tL_error);
                        }
                    });
                    return;
                }
                VoIPHelper.startCall(user, z, userFull.video_calls_available, getParentActivity(), userFull, getAccountInstance());
            } else {
                TL_phone.createConferenceCall createconferencecall = new TL_phone.createConferenceCall();
                createconferencecall.random_id = Utilities.random.nextInt();
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(createconferencecall, new RequestDelegate() { // from class: org.telegram.ui.LinkManager$1$$ExternalSyntheticLambda1
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$onCallUsersSelected$3(z, hashSet, tLObject, tL_error);
                    }
                });
            }
            finishFragment();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCallUsersSelected$1(final TLRPC.User user, final boolean z, final TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LinkManager$1$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCallUsersSelected$0(tLObject, user, z);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCallUsersSelected$0(TLObject tLObject, TLRPC.User user, boolean z) {
            TLRPC.UserFull userFull;
            boolean z2 = false;
            if (tLObject instanceof TLRPC.TL_users_userFull) {
                TLRPC.TL_users_userFull tL_users_userFull = (TLRPC.TL_users_userFull) tLObject;
                getMessagesController().putUsers(tL_users_userFull.users, false);
                getMessagesController().putChats(tL_users_userFull.chats, false);
                userFull = tL_users_userFull.full_user;
            } else {
                userFull = null;
            }
            TLRPC.UserFull userFull2 = userFull;
            if (userFull2 != null && userFull2.video_calls_available) {
                z2 = true;
            }
            VoIPHelper.startCall(user, z, z2, getParentActivity(), userFull2, getAccountInstance());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCallUsersSelected$3(final boolean z, final HashSet hashSet, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LinkManager$1$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCallUsersSelected$2(tLObject, z, hashSet, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCallUsersSelected$2(TLObject tLObject, boolean z, HashSet hashSet, TLRPC.TL_error tL_error) {
            int i = 0;
            if (tLObject instanceof TLRPC.Updates) {
                TLRPC.Updates updates = (TLRPC.Updates) tLObject;
                MessagesController.getInstance(this.currentAccount).putUsers(updates.users, false);
                MessagesController.getInstance(this.currentAccount).putChats(updates.chats, false);
                ArrayList arrayListFindUpdatesAndRemove = MessagesController.findUpdatesAndRemove(updates, TL_update.TL_updateGroupCall.class);
                int size = arrayListFindUpdatesAndRemove.size();
                TLRPC.GroupCall groupCall = null;
                while (i < size) {
                    Object obj = arrayListFindUpdatesAndRemove.get(i);
                    i++;
                    groupCall = ((TL_update.TL_updateGroupCall) obj).call;
                }
                if (LaunchActivity.instance == null || groupCall == null) {
                    return;
                }
                TLRPC.TL_inputGroupCall tL_inputGroupCall = new TLRPC.TL_inputGroupCall();
                tL_inputGroupCall.id = groupCall.id;
                tL_inputGroupCall.access_hash = groupCall.access_hash;
                VoIPHelper.joinConference(LaunchActivity.instance, this.currentAccount, tL_inputGroupCall, z, groupCall, hashSet);
                return;
            }
            if (!(tLObject instanceof TL_phone.groupCall)) {
                if (tL_error != null) {
                    LinkManager.this.getBulletinFactory().showForError(tL_error);
                    return;
                }
                return;
            }
            TL_phone.groupCall groupcall = (TL_phone.groupCall) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(groupcall.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(groupcall.chats, false);
            if (LaunchActivity.instance == null) {
                return;
            }
            TLRPC.TL_inputGroupCall tL_inputGroupCall2 = new TLRPC.TL_inputGroupCall();
            TLRPC.GroupCall groupCall2 = groupcall.call;
            tL_inputGroupCall2.id = groupCall2.id;
            tL_inputGroupCall2.access_hash = groupCall2.access_hash;
            VoIPHelper.joinConference(LaunchActivity.instance, this.currentAccount, tL_inputGroupCall2, z, groupCall2, hashSet);
        }
    }

    public static /* synthetic */ void $r8$lambda$LH95z6iiSbgUKZuFzNPo8_CwFi0(ProfileActivity profileActivity) {
        SharedMediaLayout sharedMediaLayout = profileActivity.sharedMediaLayout;
        if (sharedMediaLayout != null) {
            sharedMediaLayout.scrollToPage(14);
            profileActivity.scrollToSharedMedia();
        }
    }

    public static /* synthetic */ void $r8$lambda$paHps_jeHUwNd7Rbor9CdgvlPiQ(ProfileActivity profileActivity) {
        SharedMediaLayout sharedMediaLayout = profileActivity.sharedMediaLayout;
        if (sharedMediaLayout != null) {
            sharedMediaLayout.scrollToPage(14);
            profileActivity.scrollToSharedMedia();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleSettings$7(NotificationsSettingsActivity notificationsSettingsActivity, int i, String str) {
        lambda$handleInvoiceSlug$13();
        NotificationsCustomSettingsActivity notificationsCustomSettingsActivityMakeNotificationsCustomSettingsActivity = notificationsSettingsActivity.makeNotificationsCustomSettingsActivity(i);
        notificationsCustomSettingsActivityMakeNotificationsCustomSettingsActivity.expanded = true;
        notificationsCustomSettingsActivityMakeNotificationsCustomSettingsActivity.updateRows(false);
        presentFragment(notificationsCustomSettingsActivityMakeNotificationsCustomSettingsActivity);
        if ("show".equalsIgnoreCase(str)) {
            scrollTo("showRow");
        }
        if ("new".equalsIgnoreCase(str)) {
            scrollTo("newRow");
        }
        if ("important".equalsIgnoreCase(str)) {
            scrollTo("importantRow");
        }
        if ("messages".equalsIgnoreCase(str)) {
            scrollTo("messagesRow");
        }
        if ("stories".equalsIgnoreCase(str)) {
            scrollTo("storiesRow");
        }
        if ("preview".equalsIgnoreCase(str)) {
            scrollTo("previewRow");
        }
        if ("show-sender".equalsIgnoreCase(str)) {
            scrollTo("showSenderRow");
        }
        if ("sound".equalsIgnoreCase(str)) {
            scrollTo("soundRow");
        }
        if ("add-exception".equalsIgnoreCase(str)) {
            scrollTo("addExceptionRow");
        }
        if ("delete-exceptions".equalsIgnoreCase(str)) {
            scrollTo("deleteExceptionsRow");
        }
        if ("light-color".equalsIgnoreCase(str)) {
            scrollTo("lightColorRow");
        }
        if ("vibrate".equalsIgnoreCase(str)) {
            scrollTo("vibrateRow");
        }
        if ("popup".equalsIgnoreCase(str)) {
            scrollTo("popupRow");
        }
        if (PluginsConstants.MenuItemProperties.PRIORITY.equalsIgnoreCase(str)) {
            scrollTo("priorityRow");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleSettings$8(String str) {
        if ("disable".equalsIgnoreCase(str)) {
            scrollTo("disablePasscodeRow");
        }
        if ("change".equalsIgnoreCase(str)) {
            scrollTo("changePasscodeRow");
        }
        if ("auto-lock".equalsIgnoreCase(str)) {
            scrollTo("autoLockRow");
        }
        if ("fingerprint".equalsIgnoreCase(str)) {
            scrollTo("fingerprintRow");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleSettings$11(final String str, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$handleSettings$10(tLObject, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleSettings$10(TLObject tLObject, final String str) {
        lambda$handleInvoiceSlug$13();
        if (tLObject == null) {
            return;
        }
        TL_account.Password password = (TL_account.Password) tLObject;
        if (!TwoStepVerificationActivity.canHandleCurrentPassword(password, false)) {
            AlertsCreator.showUpdateAppAlert(this.activity, LocaleController.getString(C2807R.string.UpdateAppAlert), true);
        }
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$handleSettings$9(str);
            }
        };
        if (password.has_password) {
            TwoStepVerificationActivity twoStepVerificationActivity = new TwoStepVerificationActivity();
            twoStepVerificationActivity.setPassword(password);
            presentFragment(twoStepVerificationActivity);
            runnable.run();
            return;
        }
        TwoStepVerificationSetupActivity twoStepVerificationSetupActivity = new TwoStepVerificationSetupActivity(TextUtils.isEmpty(password.email_unconfirmed_pattern) ? 6 : 5, password);
        twoStepVerificationSetupActivity.setOnOpenedSettings(runnable);
        presentFragment(twoStepVerificationSetupActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleSettings$9(String str) {
        if ("disable".equalsIgnoreCase(str)) {
            scrollTo("turnPasswordOffRow");
        }
        if ("change".equalsIgnoreCase(str)) {
            scrollTo("changePasswordRow");
        }
        if ("change-email".equalsIgnoreCase(str)) {
            scrollTo("emailRow");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleSettings$12(String str, TL_account.Passkeys passkeys, TLRPC.TL_error tL_error) {
        lambda$handleInvoiceSlug$13();
        if (passkeys == null) {
            return;
        }
        presentFragment(new PasskeysActivity(passkeys.passkeys));
        if ("create".equalsIgnoreCase(str)) {
            scrollTo("addPasskeyRow");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean handleGetPremium(String str) {
        String str2;
        if (str != null) {
            String lowerCase = str.toLowerCase(Locale.ROOT);
            if (GET_PREMIUM_REF_PATTERN.matcher(lowerCase).matches()) {
                str2 = "tme_getpremium_" + lowerCase;
            } else {
                str2 = "tme_getpremium";
            }
        }
        presentFragment(new PremiumPreviewFragment(str2));
        return true;
    }

    private boolean handleInvoiceSlug(final String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        init();
        TLRPC.TL_payments_getPaymentForm tL_payments_getPaymentForm = new TLRPC.TL_payments_getPaymentForm();
        final TLRPC.TL_inputInvoiceSlug tL_inputInvoiceSlug = new TLRPC.TL_inputInvoiceSlug();
        tL_inputInvoiceSlug.slug = str;
        tL_payments_getPaymentForm.invoice = tL_inputInvoiceSlug;
        setRequestId(getConnectionsManager().sendRequest(tL_payments_getPaymentForm, new RequestDelegate() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$handleInvoiceSlug$17(tL_inputInvoiceSlug, str, tLObject, tL_error);
            }
        }));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleInvoiceSlug$17(final TLRPC.TL_inputInvoiceSlug tL_inputInvoiceSlug, final String str, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$handleInvoiceSlug$16(tL_error, tLObject, tL_inputInvoiceSlug, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleInvoiceSlug$16(TLRPC.TL_error tL_error, TLObject tLObject, TLRPC.TL_inputInvoiceSlug tL_inputInvoiceSlug, String str) {
        PaymentFormActivity paymentFormActivity;
        if (tL_error != null) {
            if ("SUBSCRIPTION_ALREADY_ACTIVE".equalsIgnoreCase(tL_error.text)) {
                getBulletinFactory().createErrorBulletin(LocaleController.getString(C2807R.string.PaymentInvoiceSubscriptionLinkAlreadyPaid)).show();
            } else {
                getBulletinFactory().createErrorBulletin(LocaleController.getString(C2807R.string.PaymentInvoiceLinkInvalid)).show();
            }
        } else if (!this.activity.isFinishing()) {
            if (tLObject instanceof TLRPC.TL_payments_paymentFormStars) {
                LaunchActivity launchActivity = this.activity;
                final Runnable runnable = launchActivity.navigateToPremiumGiftCallback;
                launchActivity.navigateToPremiumGiftCallback = null;
                StarsController.getInstance(this.currentAccount).openPaymentForm(null, tL_inputInvoiceSlug, (TLRPC.TL_payments_paymentFormStars) tLObject, new Runnable() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda30
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$handleInvoiceSlug$13();
                    }
                }, new Utilities.Callback() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda31
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        LinkManager.$r8$lambda$URxiwuOJG0fM2eKyA9oQo6oOclQ(runnable, (String) obj);
                    }
                });
                return;
            }
            if (tLObject instanceof TLRPC.PaymentForm) {
                TLRPC.PaymentForm paymentForm = (TLRPC.PaymentForm) tLObject;
                MessagesController.getInstance(this.currentAccount).putUsers(paymentForm.users, false);
                paymentFormActivity = new PaymentFormActivity(paymentForm, str, getLastFragment());
            } else {
                paymentFormActivity = tLObject instanceof TLRPC.PaymentReceipt ? new PaymentFormActivity((TLRPC.PaymentReceipt) tLObject) : null;
            }
            if (paymentFormActivity != null) {
                LaunchActivity launchActivity2 = this.activity;
                final Runnable runnable2 = launchActivity2.navigateToPremiumGiftCallback;
                if (runnable2 != null) {
                    launchActivity2.navigateToPremiumGiftCallback = null;
                    paymentFormActivity.setPaymentFormCallback(new PaymentFormActivity.PaymentFormCallback() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda32
                        @Override // org.telegram.ui.PaymentFormActivity.PaymentFormCallback
                        public final void onInvoiceStatusChanged(PaymentFormActivity.InvoiceStatus invoiceStatus) {
                            LinkManager.$r8$lambda$5p5ZPZn3KDU8oha1jokY1ltg1Eo(runnable2, invoiceStatus);
                        }
                    });
                }
                presentFragment(paymentFormActivity);
            }
        }
        lambda$handleInvoiceSlug$13();
    }

    public static /* synthetic */ void $r8$lambda$URxiwuOJG0fM2eKyA9oQo6oOclQ(Runnable runnable, String str) {
        if (runnable == null || !"paid".equals(str)) {
            return;
        }
        runnable.run();
    }

    public static /* synthetic */ void $r8$lambda$5p5ZPZn3KDU8oha1jokY1ltg1Eo(Runnable runnable, PaymentFormActivity.InvoiceStatus invoiceStatus) {
        if (invoiceStatus == PaymentFormActivity.InvoiceStatus.PAID) {
            runnable.run();
        }
    }

    private boolean handleOAuth(Uri uri, String str) {
        if (!this.isExternalIntent) {
            return true;
        }
        if (isEmpty(str)) {
            return false;
        }
        init();
        final TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth = new TLRPC.TL_messages_requestUrlAuth();
        tL_messages_requestUrlAuth.flags |= 4;
        tL_messages_requestUrlAuth.url = uri.toString();
        getConnectionsManager().sendRequestTyped(tL_messages_requestUrlAuth, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda12
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$handleOAuth$18(tL_messages_requestUrlAuth, (TLRPC.UrlAuthResult) obj, (TLRPC.TL_error) obj2);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleOAuth$18(TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, TLRPC.UrlAuthResult urlAuthResult, TLRPC.TL_error tL_error) {
        lambda$handleInvoiceSlug$13();
        if (tL_error != null) {
            if ("URL_EXPIRED".equalsIgnoreCase(tL_error.text)) {
                getBulletinFactory().createSimpleBulletin(C2807R.raw.error, LocaleController.getString(C2807R.string.BotAuthLoggedInFailTitle), LocaleController.getString(C2807R.string.BotAuthLoggedInFailNoDomain)).show();
                return;
            } else {
                getBulletinFactory().showForError(tL_error);
                return;
            }
        }
        OAuthSheet.handle(this.isExternalIntent, this.currentAccount, tL_messages_requestUrlAuth, urlAuthResult);
    }

    private boolean handleNewBot(String str, String str2, String str3) {
        final TLRPC.TL_requestPeerTypeCreateBot tL_requestPeerTypeCreateBot = new TLRPC.TL_requestPeerTypeCreateBot();
        tL_requestPeerTypeCreateBot.bot_managed = true;
        if (!TextUtils.isEmpty(str3)) {
            tL_requestPeerTypeCreateBot.flags |= 2;
            tL_requestPeerTypeCreateBot.suggested_name = str3;
        }
        if (!TextUtils.isEmpty(str2)) {
            tL_requestPeerTypeCreateBot.flags |= 4;
            tL_requestPeerTypeCreateBot.suggested_username = str2;
        }
        final BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null && safeLastFragment.getContext() != null) {
            init();
            final TLRPC.User[] userArr = {null};
            final Runnable runnable = new Runnable() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$handleNewBot$20(safeLastFragment, userArr, tL_requestPeerTypeCreateBot);
                }
            };
            MessagesController.getInstance(this.currentAccount).getUserNameResolver().resolve(str, new Utilities.Callback() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda14
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$handleNewBot$21(userArr, runnable, (Long) obj);
                }
            });
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleNewBot$20(BaseFragment baseFragment, final TLRPC.User[] userArr, TLRPC.TL_requestPeerTypeCreateBot tL_requestPeerTypeCreateBot) {
        CreateBotAlert.show(baseFragment.getContext(), this.currentAccount, userArr[0], tL_requestPeerTypeCreateBot, true, new Utilities.Callback() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda23
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$handleNewBot$19(userArr, (TLRPC.User) obj);
            }
        }, baseFragment.getResourceProvider(), getBulletinFactory(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleNewBot$19(TLRPC.User[] userArr, TLRPC.User user) {
        lambda$handleInvoiceSlug$13();
        if (user == null) {
            return;
        }
        long j = userArr[0].id;
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", user.id);
        presentFragment(new C53013(bundle, user, userArr, j));
    }

    /* JADX INFO: renamed from: org.telegram.ui.LinkManager$3 */
    public class C53013 extends ChatActivity {
        private boolean shownToast;
        final /* synthetic */ TLRPC.User[] val$manager;
        final /* synthetic */ long val$managerId;
        final /* synthetic */ TLRPC.User val$newBot;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C53013(Bundle bundle, TLRPC.User user, TLRPC.User[] userArr, long j) {
            super(bundle);
            this.val$newBot = user;
            this.val$manager = userArr;
            this.val$managerId = j;
        }

        @Override // org.telegram.ui.ChatActivity, org.telegram.ui.ActionBar.BaseFragment
        public void onBecomeFullyVisible() {
            super.onBecomeFullyVisible();
            if (this.shownToast) {
                return;
            }
            this.shownToast = true;
            BulletinFactory bulletinFactoryOf = BulletinFactory.of(this);
            int i = C2807R.raw.contact_check;
            String string = LocaleController.formatString(C2807R.string.CreateManagedBotCreatedTitle, UserObject.getUserName(this.val$newBot));
            String string2 = LocaleController.formatString(C2807R.string.CreateManagedBotCreatedText, UserObject.getUserName(this.val$manager[0]));
            final long j = this.val$managerId;
            bulletinFactoryOf.createSimpleBulletin(i, string, AndroidUtilities.replaceSingleTag(string2, new Runnable() { // from class: org.telegram.ui.LinkManager$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onBecomeFullyVisible$0(j);
                }
            })).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBecomeFullyVisible$0(long j) {
            presentFragment(ChatActivity.of(j));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleNewBot$21(TLRPC.User[] userArr, Runnable runnable, Long l) {
        TLRPC.User user = l == null ? null : MessagesController.getInstance(this.currentAccount).getUser(l);
        userArr[0] = user;
        if (user == null) {
            lambda$handleInvoiceSlug$13();
            getBulletinFactory().createErrorBulletin(LocaleController.getString(C2807R.string.NoUsernameFound)).show();
        } else {
            runnable.run();
        }
    }

    private boolean handleAiStyle(String str) {
        if (TextUtils.isEmpty(str) || !ExteraConfig.getTelegramAiEditor()) {
            return false;
        }
        TL_aicompose.getTone gettone = new TL_aicompose.getTone();
        TL_aicompose.inputAiComposeToneSlug inputaicomposetoneslug = new TL_aicompose.inputAiComposeToneSlug();
        inputaicomposetoneslug.slug = str;
        gettone.tone = inputaicomposetoneslug;
        init();
        ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(gettone, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$handleAiStyle$22((TL_aicompose.Tones) obj, (TLRPC.TL_error) obj2);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleAiStyle$22(TL_aicompose.Tones tones, TLRPC.TL_error tL_error) {
        lambda$handleInvoiceSlug$13();
        if (!(tones instanceof TL_aicompose.TL_tones)) {
            if (tL_error != null) {
                if ("AICOMPOSE_TONE_SLUG_INVALID".equalsIgnoreCase(tL_error.text)) {
                    getBulletinFactory().createSimpleBulletin(C2807R.raw.error, LocaleController.getString(C2807R.string.AIEditorStyleNotFound)).show();
                    return;
                } else {
                    getBulletinFactory().showForError(tL_error);
                    return;
                }
            }
            return;
        }
        TL_aicompose.TL_tones tL_tones = (TL_aicompose.TL_tones) tones;
        MessagesController.getInstance(this.currentAccount).putUsers(tL_tones.users, false);
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null || tL_tones.tones.isEmpty()) {
            return;
        }
        new AIEditorAlert.AiStyleAlert(safeLastFragment.getContext(), tL_tones.tones.get(0), safeLastFragment.getResourceProvider()).show();
    }

    private boolean handleSendGrams(Uri uri) {
        long jLongValueExact;
        if (!getMessagesController().config.walletAvailable.get()) {
            return false;
        }
        Uri tonConnectStartApp = parseTonConnectStartApp(uri.getQueryParameter("startapp"));
        if (tonConnectStartApp != null) {
            handleTc(tonConnectStartApp);
            return true;
        }
        String queryParameter = uri.getQueryParameter("to");
        String queryParameter2 = uri.getQueryParameter("amount");
        String queryParameter3 = uri.getQueryParameter("text");
        if (TextUtils.isEmpty(queryParameter3)) {
            queryParameter3 = uri.getQueryParameter("comment");
        }
        final String strLimitWalletComment = limitWalletComment(queryParameter3);
        final boolean booleanQueryParameter = uri.getBooleanQueryParameter("encrypted", false);
        if (queryParameter2 != null) {
            if (!TextUtils.isEmpty(queryParameter) && queryParameter2.matches("[0-9]+(?:\\.[0-9]+)?")) {
                try {
                    jLongValueExact = new BigDecimal(queryParameter2).movePointRight(9).longValueExact();
                } catch (ArithmeticException | NumberFormatException unused) {
                }
            }
            return true;
        }
        jLongValueExact = 0;
        final long j = jLongValueExact;
        if (TextUtils.isEmpty(queryParameter)) {
            presentFragment(new WalletActivity());
        } else if (queryParameter.startsWith("@") || queryParameter.matches("[a-zA-Z0-9_]{1,32}")) {
            if (queryParameter.startsWith("@")) {
                queryParameter = queryParameter.substring(1);
            }
            if (TextUtils.isEmpty(queryParameter)) {
                return true;
            }
            TLRPC.TL_contacts_resolveUsername tL_contacts_resolveUsername = new TLRPC.TL_contacts_resolveUsername();
            tL_contacts_resolveUsername.username = queryParameter;
            init();
            setRequestId(getConnectionsManager().sendRequest(tL_contacts_resolveUsername, new RequestDelegate() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda1
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$handleSendGrams$24(j, strLimitWalletComment, booleanQueryParameter, tLObject, tL_error);
                }
            }));
        } else {
            if (!WalletEngine2.isValidRecipientAddress(queryParameter)) {
                return true;
            }
            presentFragment(new WalletSendEnterAmount(queryParameter).setAmount(j).setComment(strLimitWalletComment, booleanQueryParameter).setAllowOpenChat());
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleSendGrams$24(final long j, final String str, final boolean z, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$handleSendGrams$23(tLObject, j, str, z, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleSendGrams$23(TLObject tLObject, long j, String str, boolean z, TLRPC.TL_error tL_error) {
        lambda$handleInvoiceSlug$13();
        if (!(tLObject instanceof TLRPC.TL_contacts_resolvedPeer)) {
            if (tL_error != null) {
                getBulletinFactory().showForError(tL_error);
                return;
            }
            return;
        }
        TLRPC.TL_contacts_resolvedPeer tL_contacts_resolvedPeer = (TLRPC.TL_contacts_resolvedPeer) tLObject;
        getMessagesController().putUsers(tL_contacts_resolvedPeer.users, false);
        getMessagesController().putChats(tL_contacts_resolvedPeer.chats, false);
        TLRPC.User user = getMessagesController().getUser(Long.valueOf(tL_contacts_resolvedPeer.peer.user_id));
        if (user != null) {
            presentFragment(new WalletSendEnterAmount(user).setAmount(j).setComment(str, z).setAllowOpenChat());
        }
    }

    private static String limitWalletComment(String str) {
        if (str == null) {
            return null;
        }
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        int i = 960;
        if (bytes.length <= 960) {
            return str;
        }
        while ((bytes[i] & 192) == 128) {
            i--;
        }
        return new String(bytes, 0, i, StandardCharsets.UTF_8);
    }

    private static Uri parseTonConnectStartApp(String str) {
        if (str == null || !str.startsWith("tonconnect-")) {
            return null;
        }
        return Uri.parse("tc://connect?" + str.substring(11).replace("--", "%").replace("__", "=").replace("-", "&").replace("%5F", "_").replace("%2D", "-").replace("%2E", "."));
    }

    private boolean handleTon(Uri uri) {
        Uri uriNormalizeTgUri;
        List<String> pathSegments;
        if (!getMessagesController().config.walletAvailable.get() || (pathSegments = (uriNormalizeTgUri = normalizeTgUri(uri)).getPathSegments()) == null) {
            return false;
        }
        ArrayList arrayList = new ArrayList(pathSegments);
        String authority = uriNormalizeTgUri.getAuthority();
        if (!TextUtils.isEmpty(authority)) {
            arrayList.add(0, authority);
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        String str = (String) arrayList.get(0);
        Long lValueOf = null;
        String str2 = arrayList.size() > 1 ? (String) arrayList.get(1) : null;
        if ("transfer".equalsIgnoreCase(str)) {
            if (arrayList.size() != 2 || !WalletEngine2.isValidRecipientAddress(str2)) {
                return true;
            }
            try {
                lValueOf = Long.valueOf(Long.parseLong(uriNormalizeTgUri.getQueryParameter("amount")));
            } catch (Throwable unused) {
            }
            String queryParameter = uriNormalizeTgUri.getQueryParameter("text");
            if (TextUtils.isEmpty(queryParameter)) {
                queryParameter = uriNormalizeTgUri.getQueryParameter("comment");
            }
            String strLimitWalletComment = limitWalletComment(queryParameter);
            boolean booleanQueryParameter = uriNormalizeTgUri.getBooleanQueryParameter("encrypted", false);
            try {
                WalletSendEnterAmount walletSendEnterAmount = new WalletSendEnterAmount(str2);
                if (lValueOf != null && lValueOf.longValue() > 0) {
                    walletSendEnterAmount.setAmount(lValueOf.longValue());
                }
                if (!TextUtils.isEmpty(strLimitWalletComment)) {
                    walletSendEnterAmount.setComment(strLimitWalletComment, booleanQueryParameter);
                }
                walletSendEnterAmount.setAllowOpenChat();
                presentFragment(walletSendEnterAmount);
                return true;
            } catch (Throwable th) {
                FileLog.m1040e(th);
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0059, code lost:
    
        if (r4.equals("http") != false) goto L27;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean isTonConnectReturnTarget(String str) {
        if ("back".equals(str) || "none".equals(str)) {
            return true;
        }
        try {
            URI uri = new URI(str);
            String scheme = uri.getScheme();
            if (scheme != null && !uri.getRawSchemeSpecificPart().isEmpty()) {
                String lowerCase = scheme.toLowerCase(Locale.ROOT);
                switch (lowerCase.hashCode()) {
                    case -1183762788:
                        return !lowerCase.equals("intent");
                    case 3695:
                        if (lowerCase.equals("tc")) {
                        }
                    case 3076010:
                        if (lowerCase.equals("data")) {
                        }
                    case 3143036:
                        if (lowerCase.equals("file")) {
                        }
                    case 3213448:
                        break;
                    case 99617003:
                        if (lowerCase.equals("https")) {
                            return uri.getHost() != null && uri.getRawUserInfo() == null;
                        }
                    case 188995949:
                        if (lowerCase.equals("javascript")) {
                        }
                    case 951530617:
                        if (lowerCase.equals("content")) {
                        }
                    default:
                }
            }
        } catch (URISyntaxException unused) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: returnFromTonConnect, reason: merged with bridge method [inline-methods] */
    public void lambda$handleTc$28(String str) {
        if (this.activity.isFinishing() || this.activity.isDestroyed() || "none".equals(str)) {
            return;
        }
        if ("back".equals(str)) {
            if (this.isExternalIntent) {
                this.activity.moveTaskToBack(true);
                return;
            }
            return;
        }
        Browser.openUrlInSystemBrowser(this.activity, str);
    }

    private boolean canOpenTonConnectTransaction() {
        return (this.tonConnectCancelled || this.activity.isFinishing() || this.activity.isDestroyed() || !LaunchActivity.isResumed || SharedConfig.appLocked || SharedConfig.isWaitingForPasscodeEnter || UserConfig.selectedAccount != this.currentAccount) ? false : true;
    }

    private void requestTonConnectTransaction(final String str, final String str2, final String str3, final int i) {
        if (this.tonConnectCancelled || this.activity.isFinishing() || this.activity.isDestroyed()) {
            lambda$handleInvoiceSlug$13();
            return;
        }
        TL_wallet.tonConnectGetPending tonconnectgetpending = new TL_wallet.tonConnectGetPending();
        tonconnectgetpending.dapp_client_id = str;
        setRequestId(getConnectionsManager().sendRequestTyped(tonconnectgetpending, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda17
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$requestTonConnectTransaction$27(str, str2, str3, i, (TL_wallet.tonConnectPending) obj, (TLRPC.TL_error) obj2);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestTonConnectTransaction$27(final String str, final String str2, final String str3, final int i, TL_wallet.tonConnectPending tonconnectpending, TLRPC.TL_error tL_error) {
        TL_wallet.tonConnectSession tonconnectsession;
        BaseFragment lastFragment;
        this.currentRequestId = -1;
        if (this.tonConnectCancelled || this.activity.isFinishing() || this.activity.isDestroyed()) {
            lambda$handleInvoiceSlug$13();
            return;
        }
        if (tL_error != null) {
            lambda$handleInvoiceSlug$13();
            if (canOpenTonConnectTransaction()) {
                getBulletinFactory().showForError(tL_error);
                return;
            }
            return;
        }
        if (tonconnectpending != null && (tonconnectsession = tonconnectpending.session) != null && !tonconnectsession.closed && !tonconnectsession.closing && !tonconnectsession.pending && str.equals(tonconnectsession.dapp_client_id)) {
            ArrayList<TL_wallet.tonConnectRequest> arrayList = tonconnectpending.requests;
            int size = arrayList.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    break;
                }
                TL_wallet.tonConnectRequest tonconnectrequest = arrayList.get(i2);
                i2++;
                TL_wallet.tonConnectRequest tonconnectrequest2 = tonconnectrequest;
                if (str2.equals(tonconnectrequest2.trace_id) && tonconnectrequest2.session_id == tonconnectpending.session.id && tonconnectrequest2.expires > getConnectionsManager().getCurrentTime()) {
                    if (canOpenTonConnectTransaction() && (lastFragment = getLastFragment()) != null && lastFragment.getContext() != null) {
                        lambda$handleInvoiceSlug$13();
                        GramWalletTonConnect.openTransactionRequest(this.activity, this.currentAccount, tonconnectrequest2.session_id, tonconnectrequest2.msg_id, lastFragment.getResourceProvider(), new Runnable() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda26
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$requestTonConnectTransaction$25(str3);
                            }
                        });
                        return;
                    }
                }
            }
        }
        if (i < 10) {
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$requestTonConnectTransaction$26(str, str2, str3, i);
                }
            };
            this.tonConnectRetry = runnable;
            AndroidUtilities.runOnUIThread(runnable, 500L);
        } else {
            lambda$handleInvoiceSlug$13();
            if (canOpenTonConnectTransaction()) {
                BulletinFactory.showError(LocaleController.getString(C2807R.string.WalletTonConnectRequestUnavailable));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestTonConnectTransaction$25(String str) {
        if (canOpenTonConnectTransaction()) {
            lambda$handleTc$28(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestTonConnectTransaction$26(String str, String str2, String str3, int i) {
        requestTonConnectTransaction(str, str2, str3, i + 1);
    }

    private boolean handleTc(Uri uri) {
        Uri uriNormalizeTgUri = normalizeTgUri(uri);
        List<String> pathSegments = uriNormalizeTgUri.getPathSegments();
        if (pathSegments == null) {
            return false;
        }
        ArrayList arrayList = new ArrayList(pathSegments);
        String authority = uriNormalizeTgUri.getAuthority();
        if (!TextUtils.isEmpty(authority)) {
            arrayList.add(0, authority);
        }
        if (arrayList.isEmpty() || "connect".equalsIgnoreCase((String) arrayList.get(0))) {
            try {
                if (!"2".equals(uriNormalizeTgUri.getQueryParameter(RegisterSpec.PREFIX))) {
                    return false;
                }
                final String queryParameter = uriNormalizeTgUri.getQueryParameter("id");
                final String queryParameter2 = uriNormalizeTgUri.getQueryParameter("r");
                final String queryParameter3 = uriNormalizeTgUri.getQueryParameter("trace_id");
                final String queryParameter4 = uriNormalizeTgUri.getQueryParameter("e");
                String queryParameter5 = uriNormalizeTgUri.getQueryParameter("ret");
                if (queryParameter5 == null || !isTonConnectReturnTarget(queryParameter5)) {
                    queryParameter5 = "back";
                }
                final String str = queryParameter5;
                if (queryParameter2 == null) {
                    if (!isEmpty(queryParameter) && !isEmpty(queryParameter3)) {
                        init();
                        requestTonConnectTransaction(queryParameter, queryParameter3, str, 0);
                        return true;
                    }
                    return false;
                }
                final String string = new JSONObject(queryParameter2).getString("manifestUrl");
                init();
                final GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
                gramWallet.whenReady(new Runnable() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$handleTc$30(gramWallet, queryParameter, string, queryParameter2, queryParameter3, queryParameter4, str);
                    }
                });
            } catch (Exception e) {
                FileLog.m1040e(e);
                return false;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleTc$30(GramWallet gramWallet, String str, String str2, String str3, String str4, String str5, final String str6) {
        gramWallet.tonConnect.createSession(str, str2, str3, str4, str5, new Utilities.Callback2() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda16
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$handleTc$29(str6, (GramWalletTonConnect.ConnectRequest) obj, (String) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleTc$29(final String str, GramWalletTonConnect.ConnectRequest connectRequest, String str2) {
        lambda$handleInvoiceSlug$13();
        if (connectRequest == null) {
            if (str2 == null) {
                str2 = LocaleController.getString(C2807R.string.WalletTonConnectSessionResponseEmpty);
            }
            BulletinFactory.showError(str2);
        } else {
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment == null || safeLastFragment.getContext() == null) {
                return;
            }
            GramWalletTonConnect.showConnectSheet(safeLastFragment.getContext(), this.currentAccount, connectRequest, safeLastFragment.getResourceProvider(), new Runnable() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$handleTc$28(str);
                }
            });
        }
    }

    private void setRequestId(int i) {
        this.currentRequestId = i;
    }

    private void presentFragment(BaseFragment baseFragment) {
        presentFragment(baseFragment, false);
    }

    private void presentFragment(BaseFragment baseFragment, boolean z) {
        this.activity.presentFragment(baseFragment, z, false);
        if (AndroidUtilities.isTablet()) {
            this.activity.actionBarLayout.rebuildFragments(1);
            this.activity.rightActionBarLayout.rebuildFragments(1);
        }
    }

    private INavigationLayout getParentLayout() {
        return this.activity.getActionBarLayout();
    }

    private void scrollTo(String str) {
        AndroidUtilities.scrollToFragmentRow(getParentLayout(), str);
    }

    private BaseFragment getLastFragment() {
        return LaunchActivity.getSafeLastFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BulletinFactory getBulletinFactory() {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return BulletinFactory.global();
        }
        return BulletinFactory.of(safeLastFragment);
    }

    public UserConfig getUserConfig() {
        return UserConfig.getInstance(this.currentAccount);
    }

    public MessagesController getMessagesController() {
        return MessagesController.getInstance(this.currentAccount);
    }

    public ConnectionsManager getConnectionsManager() {
        return ConnectionsManager.getInstance(this.currentAccount);
    }

    private void init() {
        if (this.inited || this.done) {
            return;
        }
        Browser.Progress progress = this.progress;
        if (progress == null) {
            if (this.progressDialog == null) {
                this.progressDialog = new AlertDialog(this.activity, 3);
            }
            this.progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda21
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    this.f$0.lambda$init$31(dialogInterface);
                }
            });
            this.progressDialog.showDelayed(300L);
        } else {
            progress.onCancel(new Runnable() { // from class: org.telegram.ui.LinkManager$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.cancel();
                }
            });
            this.progress.init();
        }
        this.inited = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$31(DialogInterface dialogInterface) {
        cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancel() {
        this.tonConnectCancelled = true;
        Runnable runnable = this.tonConnectRetry;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        if (this.currentRequestId >= 0) {
            getConnectionsManager().cancelRequest(this.currentRequestId, true);
            this.currentRequestId = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: done, reason: merged with bridge method [inline-methods] */
    public void lambda$handleInvoiceSlug$13() {
        if (this.done) {
            return;
        }
        AlertDialog alertDialog = this.progressDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        Browser.Progress progress = this.progress;
        if (progress != null) {
            progress.end();
        }
        this.done = true;
    }

    private static boolean isEmpty(String str) {
        return TextUtils.isEmpty(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:96:0x0144, code lost:
    
        if (r1.equals("joinchat") != false) goto L97;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0154 A[Catch: Exception -> 0x0034, TryCatch #0 {Exception -> 0x0034, blocks: (B:5:0x0004, B:8:0x000f, B:11:0x0016, B:18:0x002b, B:25:0x003f, B:28:0x0046, B:30:0x0060, B:32:0x0068, B:35:0x0072, B:38:0x0083, B:40:0x008f, B:41:0x0092, B:43:0x0098, B:45:0x009f, B:48:0x00aa, B:50:0x00b0, B:53:0x00bd, B:54:0x00c1, B:98:0x0147, B:101:0x0154, B:56:0x00c6, B:59:0x00d0, B:62:0x00da, B:65:0x00e4, B:68:0x00ed, B:71:0x00f6, B:74:0x00ff, B:77:0x0108, B:80:0x0111, B:83:0x011a, B:86:0x0123, B:89:0x012c, B:92:0x0135, B:95:0x013e, B:105:0x015e, B:107:0x0164, B:23:0x0037, B:109:0x0170, B:111:0x0178, B:113:0x0180, B:115:0x0188), top: B:120:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0045 A[ADDED_TO_REGION, REMOVE, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0046 A[Catch: Exception -> 0x0034, TryCatch #0 {Exception -> 0x0034, blocks: (B:5:0x0004, B:8:0x000f, B:11:0x0016, B:18:0x002b, B:25:0x003f, B:28:0x0046, B:30:0x0060, B:32:0x0068, B:35:0x0072, B:38:0x0083, B:40:0x008f, B:41:0x0092, B:43:0x0098, B:45:0x009f, B:48:0x00aa, B:50:0x00b0, B:53:0x00bd, B:54:0x00c1, B:98:0x0147, B:101:0x0154, B:56:0x00c6, B:59:0x00d0, B:62:0x00da, B:65:0x00e4, B:68:0x00ed, B:71:0x00f6, B:74:0x00ff, B:77:0x0108, B:80:0x0111, B:83:0x011a, B:86:0x0123, B:89:0x012c, B:92:0x0135, B:95:0x013e, B:105:0x015e, B:107:0x0164, B:23:0x0037, B:109:0x0170, B:111:0x0178, B:113:0x0180, B:115:0x0188), top: B:120:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean isWebAppLink(String str) {
        Uri uri;
        String scheme;
        String path;
        String str2;
        if (str == null) {
            return false;
        }
        try {
            uri = Uri.parse(str);
            scheme = uri.getScheme();
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
        if (scheme == null || (path = uri.getPath()) == null) {
            return false;
        }
        int iHashCode = scheme.hashCode();
        if (iHashCode != 3699) {
            if (iHashCode != 3213448) {
                if (iHashCode == 99617003 && scheme.equals("https")) {
                    if (!path.isEmpty()) {
                        return false;
                    }
                    String lowerCase = uri.getHost().toLowerCase();
                    boolean zFind = LaunchActivity.PREFIX_T_ME_PATTERN.matcher(lowerCase).find();
                    if (lowerCase.equals("telegram.me") || lowerCase.equals("t.me") || lowerCase.equals("telegram.dog") || zFind) {
                        ArrayList arrayList = new ArrayList(uri.getPathSegments());
                        if (arrayList.size() > 0 && ((String) arrayList.get(0)).equals("s")) {
                            arrayList.remove(0);
                        }
                        if (arrayList.size() <= 0 || (arrayList.size() >= 3 && "s".equals(arrayList.get(1)))) {
                            return false;
                        }
                        if (arrayList.size() > 1) {
                            String str3 = (String) arrayList.get(0);
                            if (TextUtils.isEmpty(str3)) {
                                return false;
                            }
                            switch (str3.hashCode()) {
                                case -1401304190:
                                    break;
                                case -1268966290:
                                    if (str3.equals("folder")) {
                                    }
                                    str2 = (String) arrayList.get(1);
                                    if (!TextUtils.isEmpty(str2) && !str2.matches("^\\d+$")) {
                                    }
                                    break;
                                case -1230486459:
                                    if (str3.equals("addemoji")) {
                                    }
                                    str2 = (String) arrayList.get(1);
                                    if (!TextUtils.isEmpty(str2)) {
                                        break;
                                    }
                                    break;
                                case -1216792120:
                                    if (str3.equals("addtheme")) {
                                    }
                                    str2 = (String) arrayList.get(1);
                                    if (!TextUtils.isEmpty(str2)) {
                                    }
                                    break;
                                case -1147866945:
                                    if (str3.equals("addlist")) {
                                    }
                                    str2 = (String) arrayList.get(1);
                                    if (!TextUtils.isEmpty(str2)) {
                                    }
                                    break;
                                case 99:
                                    if (str3.equals("c")) {
                                    }
                                    str2 = (String) arrayList.get(1);
                                    if (!TextUtils.isEmpty(str2)) {
                                    }
                                    break;
                                case 108417:
                                    if (str3.equals("msg")) {
                                    }
                                    str2 = (String) arrayList.get(1);
                                    if (!TextUtils.isEmpty(str2)) {
                                    }
                                    break;
                                case 93922211:
                                    if (str3.equals("boost")) {
                                    }
                                    str2 = (String) arrayList.get(1);
                                    if (!TextUtils.isEmpty(str2)) {
                                    }
                                    break;
                                case 103149417:
                                    if (str3.equals("login")) {
                                    }
                                    str2 = (String) arrayList.get(1);
                                    if (!TextUtils.isEmpty(str2)) {
                                    }
                                    break;
                                case 109400031:
                                    if (str3.equals("share")) {
                                    }
                                    str2 = (String) arrayList.get(1);
                                    if (!TextUtils.isEmpty(str2)) {
                                    }
                                    break;
                                case 311086522:
                                    if (str3.equals("setlanguage")) {
                                    }
                                    str2 = (String) arrayList.get(1);
                                    if (!TextUtils.isEmpty(str2)) {
                                    }
                                    break;
                                case 492791415:
                                    if (str3.equals("addstickers")) {
                                    }
                                    str2 = (String) arrayList.get(1);
                                    if (!TextUtils.isEmpty(str2)) {
                                    }
                                    break;
                                case 951526432:
                                    if (str3.equals("contact")) {
                                    }
                                    str2 = (String) arrayList.get(1);
                                    if (!TextUtils.isEmpty(str2)) {
                                    }
                                    break;
                                case 2112655022:
                                    if (str3.equals("confirmphone")) {
                                    }
                                    str2 = (String) arrayList.get(1);
                                    if (!TextUtils.isEmpty(str2)) {
                                    }
                                    break;
                                default:
                                    str2 = (String) arrayList.get(1);
                                    if (!TextUtils.isEmpty(str2)) {
                                    }
                                    break;
                            }
                            return false;
                        }
                        if (arrayList.size() == 1) {
                            return !TextUtils.isEmpty(uri.getQueryParameter("startapp"));
                        }
                    }
                }
            } else if (scheme.equals("http")) {
                if (!path.isEmpty()) {
                }
            }
        } else if (scheme.equals("tg") && (str.startsWith("tg:resolve") || str.startsWith("tg://resolve"))) {
            return !TextUtils.isEmpty(uri.getQueryParameter("appname"));
        }
        return false;
    }
}
