package com.exteragram.messenger.badges;

import android.content.SharedPreferences;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.api.network.ApiClient;
import com.exteragram.messenger.components.SupporterWelcomeSheet;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.utils.network.BotCloudStorage;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.Components.ForegroundDetector;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.PhotoViewer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\u0003J\u001f\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u000f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u001d\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0017\u0010\u0016J7\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0016\u0010\u001b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u001a0\u0019\"\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR$\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u000b0\u001ej\b\u0012\u0004\u0012\u00020\u000b`\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R$\u0010\"\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\u001ej\b\u0012\u0004\u0012\u00020\u000b`\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010!R\u0016\u0010$\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010%R\u0014\u0010(\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006*"}, d2 = {"Lcom/exteragram/messenger/badges/SupporterWelcomeController;", "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;", "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "check", "tryShow", "start", "scheduleRetry", _UrlKt.FRAGMENT_ENCODE_SET, "account", _UrlKt.FRAGMENT_ENCODE_SET, "userId", "markShown", "(IJ)V", "writeCloud", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.KEY, _UrlKt.FRAGMENT_ENCODE_SET, "readSet", "(Ljava/lang/String;)Ljava/util/Set;", "addToSet", "(Ljava/lang/String;J)V", "removeFromSet", "id", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "args", "didReceivedNotification", "(II[Ljava/lang/Object;)V", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "requested", "Ljava/util/HashSet;", "ready", _UrlKt.FRAGMENT_ENCODE_SET, "started", "Z", "retryScheduled", "Ljava/lang/Runnable;", "retryRunnable", "Ljava/lang/Runnable;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSupporterWelcomeController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SupporterWelcomeController.kt\ncom/exteragram/messenger/badges/SupporterWelcomeController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n*L\n1#1,153:1\n1651#2:154\n1915#2:155\n1916#2:157\n1652#2:158\n1#3:156\n41#4,12:159\n41#4,12:171\n*S KotlinDebug\n*F\n+ 1 SupporterWelcomeController.kt\ncom/exteragram/messenger/badges/SupporterWelcomeController\n*L\n136#1:154\n136#1:155\n136#1:157\n136#1:158\n136#1:156\n142#1:159,12\n149#1:171,12\n*E\n"})
public final class SupporterWelcomeController implements NotificationCenter.NotificationCenterDelegate {
    private static boolean retryScheduled;
    private static boolean started;
    public static final SupporterWelcomeController INSTANCE = new SupporterWelcomeController();
    private static final HashSet<Long> requested = new HashSet<>();
    private static final HashSet<Long> ready = new HashSet<>();
    private static final Runnable retryRunnable = new Runnable() { // from class: com.exteragram.messenger.badges.SupporterWelcomeController$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            SupporterWelcomeController.$r8$lambda$Q6nxkEWl9EedDDqeatH22QHfSHY();
        }
    };

    private SupporterWelcomeController() {
    }

    public static void $r8$lambda$Q6nxkEWl9EedDDqeatH22QHfSHY() {
        retryScheduled = false;
        tryShow();
    }

    @JvmStatic
    public static final void check() {
        if (ApiClient.INSTANCE.getRequestsEnabled$TMessagesProj()) {
            SupporterWelcomeController supporterWelcomeController = INSTANCE;
            supporterWelcomeController.start();
            Set<Long> set = supporterWelcomeController.readSet("supporterWelcomeShown");
            Set<Long> set2 = supporterWelcomeController.readSet("supporterWelcomeCloudPending");
            for (int i = 0; i < 16; i++) {
                UserConfig userConfig = UserConfig.getInstance(i);
                if (userConfig.isClientActivated()) {
                    final long j = userConfig.clientUserId;
                    if (BadgesController.INSTANCE.isSupporter(j)) {
                        if (set2.contains(Long.valueOf(j))) {
                            INSTANCE.writeCloud(i, j);
                        }
                        if (!set.contains(Long.valueOf(j))) {
                            HashSet<Long> hashSet = requested;
                            if (!hashSet.contains(Long.valueOf(j)) && !ready.contains(Long.valueOf(j))) {
                                hashSet.add(Long.valueOf(j));
                                BotCloudStorage.INSTANCE.getInstance(i).get(CollectionsKt.listOf("supporter_welcome"), new Function1() { // from class: com.exteragram.messenger.badges.SupporterWelcomeController$$ExternalSyntheticLambda1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) {
                                        return SupporterWelcomeController.$r8$lambda$RzRLy18N9GDSh2GZl0lz60_9W9o(j, (Map) obj);
                                    }
                                });
                            }
                        }
                    }
                }
            }
        }
    }

    public static Unit $r8$lambda$RzRLy18N9GDSh2GZl0lz60_9W9o(long j, Map map) {
        requested.remove(Long.valueOf(j));
        if (map == null) {
            return Unit.INSTANCE;
        }
        if (map.containsKey("supporter_welcome")) {
            INSTANCE.addToSet("supporterWelcomeShown", j);
        } else if (BadgesController.INSTANCE.isSupporter(j)) {
            ready.add(Long.valueOf(j));
            tryShow();
        }
        return Unit.INSTANCE;
    }

    @JvmStatic
    public static final void tryShow() {
        HashSet<Long> hashSet = ready;
        if (hashSet.isEmpty()) {
            return;
        }
        int i = UserConfig.selectedAccount;
        long j = UserConfig.getInstance(i).clientUserId;
        if (hashSet.contains(Long.valueOf(j))) {
            if (!BadgesController.INSTANCE.isSupporter(j)) {
                hashSet.remove(Long.valueOf(j));
                return;
            }
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (ApplicationLoader.mainInterfacePaused || SharedConfig.isWaitingForPasscodeEnter || safeLastFragment == null || safeLastFragment.getParentActivity() == null || safeLastFragment.getCurrentAccount() != i || safeLastFragment.visibleDialog != null || safeLastFragment.hasShownSheet() || (PhotoViewer.hasInstance() && PhotoViewer.getInstance().isVisible())) {
                INSTANCE.scheduleRetry();
                return;
            }
            hashSet.remove(Long.valueOf(j));
            if (SupporterWelcomeSheet.show(safeLastFragment, 0) != null) {
                INSTANCE.markShown(i, j);
            }
        }
    }

    private final void start() {
        if (started) {
            return;
        }
        started = true;
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.activeAccountChanged);
        ForegroundDetector foregroundDetector = ForegroundDetector.getInstance();
        if (foregroundDetector != null) {
            foregroundDetector.addListener(new ForegroundDetector.Listener() { // from class: com.exteragram.messenger.badges.SupporterWelcomeController.start.1
                @Override // org.telegram.ui.Components.ForegroundDetector.Listener
                public void onBecameBackground() {
                }

                @Override // org.telegram.ui.Components.ForegroundDetector.Listener
                public void onBecameForeground() {
                    SupporterWelcomeController.INSTANCE.scheduleRetry();
                }
            });
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int id, int account, Object... args) {
        if (id == NotificationCenter.activeAccountChanged) {
            scheduleRetry();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void scheduleRetry() {
        if (retryScheduled || ready.isEmpty()) {
            return;
        }
        retryScheduled = true;
        AndroidUtilities.runOnUIThread(retryRunnable, 5000L);
    }

    private final void markShown(int account, long userId) {
        addToSet("supporterWelcomeShown", userId);
        addToSet("supporterWelcomeCloudPending", userId);
        writeCloud(account, userId);
    }

    private final void writeCloud(int account, final long userId) {
        String string;
        Integer number = BadgesController.INSTANCE.getNumber(userId);
        if (number == null || (string = number.toString()) == null) {
            string = "1";
        }
        BotCloudStorage.INSTANCE.getInstance(account).set("supporter_welcome", string, new Function1() { // from class: com.exteragram.messenger.badges.SupporterWelcomeController$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SupporterWelcomeController.m2279$r8$lambda$wNQze7USz3KqoukNbh7QeDJ9vA(userId, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$wN-Qze7USz3KqoukNbh7QeDJ9vA, reason: not valid java name */
    public static Unit m2279$r8$lambda$wNQze7USz3KqoukNbh7QeDJ9vA(long j, boolean z) {
        if (z) {
            INSTANCE.removeFromSet("supporterWelcomeCloudPending", j);
        }
        return Unit.INSTANCE;
    }

    private final Set<Long> readSet(String key) {
        Set<String> stringSet = ExteraConfig.getPreferences().getStringSet(key, null);
        if (stringSet == null) {
            return SetsKt.emptySet();
        }
        HashSet hashSet = new HashSet();
        Iterator<T> it = stringSet.iterator();
        while (it.hasNext()) {
            Long longOrNull = StringsKt.toLongOrNull((String) it.next());
            if (longOrNull != null) {
                hashSet.add(longOrNull);
            }
        }
        return hashSet;
    }

    private final void addToSet(String key, long userId) {
        Set<String> stringSet = ExteraConfig.getPreferences().getStringSet(key, null);
        if (stringSet == null) {
            stringSet = SetsKt.emptySet();
        }
        HashSet hashSet = new HashSet(stringSet);
        if (hashSet.add(String.valueOf(userId))) {
            SharedPreferences.Editor editorEdit = ExteraConfig.getPreferences().edit();
            editorEdit.putStringSet(key, hashSet);
            editorEdit.apply();
        }
    }

    private final void removeFromSet(String key, long userId) {
        Set<String> stringSet = ExteraConfig.getPreferences().getStringSet(key, null);
        if (stringSet == null) {
            stringSet = SetsKt.emptySet();
        }
        HashSet hashSet = new HashSet(stringSet);
        if (hashSet.remove(String.valueOf(userId))) {
            SharedPreferences.Editor editorEdit = ExteraConfig.getPreferences().edit();
            editorEdit.putStringSet(key, hashSet);
            editorEdit.apply();
        }
    }
}
