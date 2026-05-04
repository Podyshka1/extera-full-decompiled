package com.exteragram.messenger.plugins;

import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.chaquo.python.PyObject;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.hooks.EventHookRecord;
import com.exteragram.messenger.plugins.hooks.HookRecord;
import com.exteragram.messenger.plugins.hooks.MenuItemRecord;
import com.exteragram.messenger.plugins.hooks.PluginsHooks;
import com.exteragram.messenger.plugins.hooks.XposedHookRecord;
import com.exteragram.messenger.plugins.models.SettingItem;
import com.exteragram.messenger.plugins.p015ui.PluginsActivity;
import com.exteragram.messenger.plugins.p015ui.components.InstallPluginBottomSheet;
import com.exteragram.messenger.plugins.p015ui.components.SafeModeBottomSheet;
import com.exteragram.messenger.plugins.utils.MenuContextBuilder;
import com.exteragram.messenger.plugins.utils.NativeCrashHandler;
import com.exteragram.messenger.plugins.utils.PluginsWatchdog;
import com.exteragram.messenger.utils.chats.ChatUtils;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import java.io.File;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import p022j$.lang.Iterable$EL;
import p022j$.util.Collection;
import p022j$.util.Comparator;
import p022j$.util.List;
import p022j$.util.Map;
import p022j$.util.Objects;
import p022j$.util.concurrent.ConcurrentHashMap;
import p022j$.util.concurrent.ConcurrentMap$EL;
import p022j$.util.function.BiFunction$CC;
import p022j$.util.function.Consumer$CC;
import p022j$.util.function.Function$CC;
import p022j$.util.function.Predicate$CC;
import p022j$.util.stream.Collectors;

/* JADX INFO: loaded from: classes.dex */
public class PluginsController implements PluginsHooks {
    public static final String PREF_PLUGIN_ENABLED_KEY_PREFIX = Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986172465259836635L);
    public static final ConcurrentHashMap<String, PluginsEngine> engines = new ConcurrentHashMap<>(PluginsController$$ExternalSyntheticBackport1.m253m(new Map.Entry[]{new AbstractMap.SimpleEntry(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986172533979313371L), new PythonPluginsEngine())}));
    private volatile Map<String, List<EventHookRecord>> exactMatchEventHooksCache;
    public File pluginsDir;
    private volatile List<EventHookRecord> substringMatchEventHooksCache;
    public final ConcurrentHashMap<String, Plugin> plugins = new ConcurrentHashMap<>();
    public final ConcurrentHashMap<String, List<SettingItem>> settings = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, MenuItemRecord> menuItemsById = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, CopyOnWriteArrayList<MenuItemRecord>> menuItemsByMenuType = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, Set<HookRecord>> hooks = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, List<String>> interestedPluginsCache = new ConcurrentHashMap<>();
    private final Object hooksCacheLock = new Object();
    private volatile boolean hooksCacheDirty = true;
    public SharedPreferences preferences = ApplicationLoader.applicationContext.getSharedPreferences(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986168492415087835L), 0);
    public final PluginsWatchdog watchdog = new PluginsWatchdog(this);
    private final Runnable updateNotificationRunnable = new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda18
        @Override // java.lang.Runnable
        public final void run() {
            PluginsController.m2610$r8$lambda$b4UZpx3nWzNShmhdIX8ST6qcpc();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    interface EngineHookCaller<T> {
        HookResult<T> call(PluginsEngine pluginsEngine, T t, String str);
    }

    public interface PluginsEngine {
        boolean canOpenInExternalApp();

        void checkDevServer();

        void clearPluginSettings(String str);

        void deletePlugin(String str, Utilities.Callback<String> callback);

        void executeOnAppEvent(String str);

        HookResult<PluginsHooks.PostRequestResult> executePostRequestHook(String str, int i, TLObject tLObject, TLRPC.TL_error tL_error, String str2);

        HookResult<TLObject> executePreRequestHook(String str, int i, TLObject tLObject, String str2);

        HookResult<SendMessagesHelper.SendMessageParams> executeSendMessageHook(int i, SendMessagesHelper.SendMessageParams sendMessageParams, String str);

        HookResult<TLRPC.Update> executeUpdateHook(String str, int i, TLRPC.Update update, String str2);

        HookResult<TLRPC.Updates> executeUpdatesHook(String str, int i, TLRPC.Updates updates, String str2);

        Map<String, ?> getAllPluginSettings(String str);

        String getPluginPath(String str);

        Object getPluginSetting(String str, String str2, Object obj);

        void init(Runnable runnable);

        boolean isEngineAvailable();

        boolean isPlugin(File file, MessageObject messageObject);

        List<SettingItem> loadPluginSettings(String str);

        void openInExternalApp(String str);

        void openPluginSetting(Plugin plugin, String str, BaseFragment baseFragment);

        void openPluginSetting(String str, String str2, BaseFragment baseFragment);

        void openPluginSettings(Plugin plugin, BaseFragment baseFragment);

        void openPluginSettings(String str, BaseFragment baseFragment);

        void setPluginEnabled(String str, boolean z, Utilities.Callback<String> callback);

        void setPluginSetting(String str, String str2, Object obj);

        void sharePlugin(String str);

        void showInstallDialog(BaseFragment baseFragment, InstallPluginBottomSheet.PluginInstallParams pluginInstallParams);

        void shutdown(Runnable runnable);
    }

    public static /* synthetic */ void $r8$lambda$QHAWdjg_nos3ztw400vtKLSsL5c() {
    }

    public static PluginsController getInstance() {
        return SingletonHolder.INSTANCE;
    }

    public static boolean isPluginEngineSupported() {
        return Build.VERSION.SDK_INT >= 24;
    }

    public static boolean isPluginEngineAvailable() {
        if (isPluginEngineSupported() && ExteraConfig.pluginsEngine && !ExteraConfig.pluginsSafeMode) {
            for (PluginsEngine pluginsEngine : engines.values()) {
                if (pluginsEngine != null) {
                    try {
                        if (pluginsEngine.isEngineAvailable()) {
                            return true;
                        }
                    } catch (Throwable th) {
                        FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986168561134564571L), th);
                    }
                }
            }
        }
        return false;
    }

    public static void applyArtOpts() {
        if (ExteraConfig.pluginsDisableArtOpts && isPluginEngineSupported()) {
            try {
                XposedBridge.disableProfileSaver();
            } catch (Throwable th) {
                FileLog.m1136e(th);
            }
        }
    }

    public static void applyBlacklist() {
        XposedBridge.setBlacklist(new String[]{Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986168715753387227L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986168814537635035L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986168939091686619L)});
    }

    public static boolean isPlugin(MessageObject messageObject) {
        String pathToMessage = ChatUtils.getInstance().getPathToMessage(messageObject);
        return (messageObject == null || messageObject.getDocumentName() == null || TextUtils.isEmpty(pathToMessage) || !isPlugin(new File(pathToMessage), messageObject) || !isPluginEngineSupported()) ? false : true;
    }

    public static boolean isPlugin(File file, MessageObject messageObject) {
        if (file == null) {
            return false;
        }
        Iterator<PluginsEngine> it = engines.values().iterator();
        while (it.hasNext()) {
            if (it.next().isPlugin(file, messageObject)) {
                return true;
            }
        }
        return false;
    }

    public static PluginsEngine getPluginEngine(File file) {
        if (file == null) {
            return null;
        }
        for (PluginsEngine pluginsEngine : engines.values()) {
            if (pluginsEngine.isPlugin(file, null)) {
                return pluginsEngine;
            }
        }
        return null;
    }

    public static void openPluginSettings(String str) {
        openPluginSettings(str, null);
    }

    public static void openPluginSettings(String str, String str2) {
        final BaseFragment lastFragment;
        if (TextUtils.isEmpty(str) || (lastFragment = LaunchActivity.getLastFragment()) == null) {
            return;
        }
        if (!ExteraConfig.pluginsEngine) {
            BulletinFactory.m1246of(lastFragment).createSimpleBulletin(C2888R.raw.error, LocaleController.formatString(C2888R.string.PluginEngineNotEnabled, str), LocaleController.getString(C2888R.string.Enable), 2750, new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    lastFragment.presentFragment(new PluginsActivity());
                }
            }).show();
            return;
        }
        Plugin plugin = getInstance().plugins.get(str);
        if (plugin == null) {
            BulletinFactory.m1246of(lastFragment).createEmojiBulletin(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986169076530640091L), LocaleController.formatString(C2888R.string.PluginNotFound, str)).show();
            return;
        }
        if (!getInstance().hasPluginSettings(str)) {
            BulletinFactory.m1246of(lastFragment).createEmojiBulletin(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986169102300443867L), LocaleController.formatString(C2888R.string.PluginHasNoSettings, plugin.getName())).show();
            return;
        }
        PluginsEngine pluginEngine = getInstance().getPluginEngine(str);
        if (pluginEngine != null) {
            if (str2 == null) {
                pluginEngine.openPluginSettings(str, lastFragment);
            } else {
                pluginEngine.openPluginSetting(str, str2, lastFragment);
            }
        }
    }

    public PluginsEngine getPluginEngine(String str) {
        PluginsEngine pluginsEngine = null;
        if (str != null && !TextUtils.isEmpty(str)) {
            Plugin plugin = this.plugins.get(str);
            if (plugin == null) {
                return null;
            }
            PluginsEngine pluginsEngine2 = plugin.cachedEngine;
            if (pluginsEngine2 != null) {
                return pluginsEngine2;
            }
            String engine = plugin.getEngine();
            if (engine == null) {
                return null;
            }
            pluginsEngine = engines.get(engine);
            if (pluginsEngine != null) {
                plugin.cachedEngine = pluginsEngine;
            }
        }
        return pluginsEngine;
    }

    public static boolean isPluginPinned(String str) {
        return !TextUtils.isEmpty(str) && ExteraConfig.pinnedPlugins.contains(str);
    }

    public static void setPluginPinned(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        HashSet hashSet = new HashSet(ExteraConfig.pinnedPlugins);
        if (!z) {
            hashSet.remove(str);
        } else {
            hashSet.add(str);
        }
        ExteraConfig.pinnedPlugins = hashSet;
        ExteraConfig.editor.putStringSet(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986169128070247643L), hashSet).apply();
        getInstance().notifyPluginsChanged();
    }

    public void init() {
        init(false, null);
    }

    public void init(Runnable runnable) {
        init(false, runnable);
    }

    public void init(boolean z) {
        init(z, null);
    }

    public static void runOnPluginsQueue(Runnable runnable) {
        if (Utilities.pluginsQueue == null || !Utilities.pluginsQueue.isAlive()) {
            synchronized (PluginsController.class) {
                try {
                    if (Utilities.pluginsQueue == null || !Utilities.pluginsQueue.isAlive()) {
                        Utilities.pluginsQueue = new DispatchQueue(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986169188199789787L));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        Utilities.pluginsQueue.postRunnable(runnable);
    }

    public void init(boolean z, final Runnable runnable) {
        if (!isPluginEngineSupported() || !ExteraConfig.pluginsEngine) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        NativeCrashHandler.checkAndHandleNativeCrash();
        this.watchdog.start();
        runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                PluginsController.$r8$lambda$QHAWdjg_nos3ztw400vtKLSsL5c();
            }
        });
        if (this.preferences == null) {
            this.preferences = ApplicationLoader.applicationContext.getSharedPreferences(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986169244034364635L), 0);
        }
        try {
            boolean z2 = this.preferences.getBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986169312753841371L), false);
            String string = this.preferences.getString(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986169355703514331L), null);
            boolean z3 = (string != null && string.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986169433012925659L))) || z;
            this.preferences.edit().remove(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986169467372664027L)).remove(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986169510322336987L)).apply();
            if (z2) {
                if (string != null && !z3) {
                    this.preferences.edit().putBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986169587631748315L) + string, false).apply();
                } else {
                    SharedPreferences.Editor editor = ExteraConfig.editor;
                    String string2 = Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986169656351225051L);
                    ExteraConfig.pluginsSafeMode = true;
                    editor.putBoolean(string2, true).apply();
                }
                if (!z3) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            PluginsController.$r8$lambda$_Eg9DLlVzcL2GapKmkTt3lrGdxY();
                        }
                    }, 800L);
                }
            } else {
                SharedPreferences.Editor editor2 = ExteraConfig.editor;
                String string3 = Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986169725070701787L);
                ExteraConfig.pluginsSafeMode = z;
                editor2.putBoolean(string3, z).apply();
            }
        } catch (Exception unused) {
        }
        File file = new File(ApplicationLoader.getFilesDirFixed(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986169793790178523L));
        this.pluginsDir = file;
        if (!file.exists()) {
            this.pluginsDir.mkdirs();
        }
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        Runnable runnable2 = new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                PluginsController.$r8$lambda$GxNqH3Tn3T0wowPL10edJkONHf4(atomicInteger, runnable);
            }
        };
        Iterator<PluginsEngine> it = engines.values().iterator();
        while (it.hasNext()) {
            it.next().init(runnable2);
        }
    }

    public static /* synthetic */ void $r8$lambda$_Eg9DLlVzcL2GapKmkTt3lrGdxY() {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment != null) {
            new SafeModeBottomSheet(lastFragment).show();
        }
    }

    public static /* synthetic */ void $r8$lambda$GxNqH3Tn3T0wowPL10edJkONHf4(AtomicInteger atomicInteger, Runnable runnable) {
        if (atomicInteger.addAndGet(1) < engines.size() || runnable == null) {
            return;
        }
        runnable.run();
    }

    public void checkDevServers() {
        Iterator<PluginsEngine> it = engines.values().iterator();
        while (it.hasNext()) {
            it.next().checkDevServer();
        }
    }

    public void shutdown(final Runnable runnable) {
        runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$shutdown$5(runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$shutdown$5(final Runnable runnable) {
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        Runnable runnable2 = new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$shutdown$4(atomicInteger, runnable);
            }
        };
        Iterator<PluginsEngine> it = engines.values().iterator();
        while (it.hasNext()) {
            it.next().shutdown(runnable2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$shutdown$4(AtomicInteger atomicInteger, Runnable runnable) {
        if (atomicInteger.addAndGet(1) >= engines.size()) {
            this.watchdog.stop();
            this.plugins.clear();
            this.settings.clear();
            FileLog.m1133d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986172357885654235L));
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public void restart() {
        FileLog.m1133d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986169828149916891L));
        shutdown(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$restart$7();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$restart$7() {
        if (ExteraConfig.pluginsEngine) {
            init(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    FileLog.m1133d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986172246216504539L));
                }
            });
        }
    }

    public List<SettingItem> getPluginSettingsList(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.settings.get(str);
    }

    public void setPluginEnabled(final String str, final boolean z, final Utilities.Callback<String> callback) {
        runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setPluginEnabled$8(str, z, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setPluginEnabled$8(String str, boolean z, Utilities.Callback callback) {
        PluginsEngine pluginEngine = getPluginEngine(str);
        if (pluginEngine != null) {
            pluginEngine.setPluginEnabled(str, z, callback);
            this.interestedPluginsCache.clear();
        }
    }

    public void deletePlugin(final String str, final Utilities.Callback<String> callback) {
        runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deletePlugin$9(str, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deletePlugin$9(String str, Utilities.Callback callback) {
        PluginsEngine pluginEngine = getPluginEngine(str);
        if (pluginEngine != null) {
            pluginEngine.deletePlugin(str, callback);
        }
    }

    void cleanupPlugin(String str) {
        removeHooksByPluginId(str);
        invalidatePluginSettings(str);
        removeMenuItemsByPluginId(str);
    }

    public String getPluginPath(String str) {
        PluginsEngine pluginEngine;
        if (str == null || TextUtils.isEmpty(str) || (pluginEngine = getPluginEngine(str)) == null) {
            return null;
        }
        return pluginEngine.getPluginPath(str);
    }

    public void showInstallDialog(BaseFragment baseFragment, MessageObject messageObject) {
        showInstallDialog(baseFragment, InstallPluginBottomSheet.PluginInstallParams.m261of(messageObject));
    }

    public void showInstallDialog(BaseFragment baseFragment, String str, boolean z) {
        showInstallDialog(baseFragment, new InstallPluginBottomSheet.PluginInstallParams(str, z));
    }

    private void showInstallDialog(final BaseFragment baseFragment, InstallPluginBottomSheet.PluginInstallParams pluginInstallParams) {
        if (baseFragment == null || !AndroidUtilities.isActivityRunning(baseFragment.getParentActivity()) || TextUtils.isEmpty(pluginInstallParams.filePath)) {
            return;
        }
        File file = new File(pluginInstallParams.filePath);
        if (!ExteraConfig.pluginsEngine) {
            BulletinFactory.m1246of(baseFragment).createSimpleBulletin(C2888R.raw.error, LocaleController.formatString(C2888R.string.PluginNotEnabled, file.getName()), LocaleController.getString(C2888R.string.Enable), 2750, new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    baseFragment.presentFragment(new PluginsActivity());
                }
            }).show();
            return;
        }
        PluginsEngine pluginEngine = getPluginEngine(file);
        if (pluginEngine == null) {
            return;
        }
        pluginEngine.showInstallDialog(baseFragment, pluginInstallParams);
    }

    public void loadPluginSettings() {
        loadPluginSettings(null);
    }

    public void loadPluginSettings(final String str) {
        if (TextUtils.isEmpty(str)) {
            for (String str2 : this.plugins.keySet()) {
                Plugin plugin = this.plugins.get(str2);
                if (plugin != null && plugin.isEnabled() && plugin.getError() == null) {
                    loadPluginSettings(str2);
                } else if (plugin != null) {
                    invalidatePluginSettings(str2);
                }
            }
            return;
        }
        Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadPluginSettings$12(str);
            }
        };
        if (Utilities.pluginsQueue != null && Utilities.pluginsQueue.getHandler() != null && Thread.currentThread() == Utilities.pluginsQueue.getHandler().getLooper().getThread()) {
            runnable.run();
        } else {
            runOnPluginsQueue(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPluginSettings$12(final String str) {
        try {
            PluginsEngine pluginEngine = getPluginEngine(str);
            if (pluginEngine == null) {
                return;
            }
            List<SettingItem> listLoadPluginSettings = pluginEngine.loadPluginSettings(str);
            if (listLoadPluginSettings == null) {
                invalidatePluginSettings(str);
                return;
            }
            this.settings.put(str, listLoadPluginSettings);
            FileLog.m1133d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986172108777551067L) + str);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda37
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pluginSettingsRegistered, str);
                }
            });
        } catch (Throwable th) {
            FileLog.m1136e(th);
            invalidatePluginSettings(str);
        }
    }

    public boolean hasPluginSettings(String str) {
        return !TextUtils.isEmpty(str) && this.settings.containsKey(str);
    }

    public void invalidatePluginSettings(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.settings.remove(str);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pluginSettingsUnregistered, str);
            }
        });
    }

    public void clearPluginSettingsPreferences(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        PluginsEngine pluginEngine = getPluginEngine(str);
        if (pluginEngine != null) {
            pluginEngine.clearPluginSettings(str);
        } else {
            Iterator<PluginsEngine> it = engines.values().iterator();
            while (it.hasNext()) {
                it.next().clearPluginSettings(str);
            }
        }
        if (this.preferences == null) {
            return;
        }
        String str2 = Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986169952703968475L) + str;
        if (this.preferences.contains(str2)) {
            this.preferences.edit().remove(str2).apply();
        }
    }

    public Map<String, ?> getPluginSettingsPreferences(String str) {
        PluginsEngine pluginEngine = getPluginEngine(str);
        if (pluginEngine != null) {
            return pluginEngine.getAllPluginSettings(str);
        }
        return null;
    }

    public boolean hasPluginSettingsPreferences(String str) {
        Map<String, ?> pluginSettingsPreferences = getPluginSettingsPreferences(str);
        return (pluginSettingsPreferences == null || pluginSettingsPreferences.isEmpty()) ? false : true;
    }

    public boolean getPluginSettingBoolean(String str, String str2, boolean z) {
        PluginsEngine pluginEngine = getPluginEngine(str);
        if (pluginEngine != null) {
            Object pluginSetting = pluginEngine.getPluginSetting(str, str2, Boolean.valueOf(z));
            if (pluginSetting instanceof Boolean) {
                return ((Boolean) pluginSetting).booleanValue();
            }
        }
        return z;
    }

    public String getPluginSettingString(String str, String str2, String str3) {
        Object pluginSetting;
        PluginsEngine pluginEngine = getPluginEngine(str);
        return (pluginEngine == null || (pluginSetting = pluginEngine.getPluginSetting(str, str2, str3)) == null) ? str3 : pluginSetting.toString();
    }

    public int getPluginSettingInt(String str, String str2, int i) {
        PluginsEngine pluginEngine = getPluginEngine(str);
        if (pluginEngine != null) {
            Object pluginSetting = pluginEngine.getPluginSetting(str, str2, Integer.valueOf(i));
            if (pluginSetting instanceof Number) {
                return ((Number) pluginSetting).intValue();
            }
        }
        return i;
    }

    public void setPluginSetting(String str, String str2, Object obj) {
        PluginsEngine pluginEngine = getPluginEngine(str);
        if (pluginEngine != null) {
            pluginEngine.setPluginSetting(str, str2, obj);
            loadPluginSettings(str);
        }
    }

    private void addHook(String str, HookRecord hookRecord, String str2) {
        if (TextUtils.isEmpty(str) || hookRecord == null || !((Set) ConcurrentMap$EL.computeIfAbsent(this.hooks, str, new Function() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda23
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return PluginsController.m2607$r8$lambda$FYukywYKGo_wPdhFkDnrIRWDhw((String) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        })).add(hookRecord)) {
            return;
        }
        FileLog.m1133d(str2);
        this.interestedPluginsCache.clear();
        this.hooksCacheDirty = true;
    }

    /* JADX INFO: renamed from: $r8$lambda$FYukyw-YKGo_wPdhFkDnrIRWDhw, reason: not valid java name */
    public static /* synthetic */ Set m2607$r8$lambda$FYukywYKGo_wPdhFkDnrIRWDhw(String str) {
        return new CopyOnWriteArraySet();
    }

    public void addEventHook(String str, String str2, boolean z, int i) {
        addHook(str, new EventHookRecord(str, str2, z, i), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986170021423445211L) + str2 + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986170103027823835L) + str);
    }

    private void removeHook(String str, Predicate<HookRecord> predicate, String str2) {
        Set<HookRecord> set;
        if (TextUtils.isEmpty(str) || (set = this.hooks.get(str)) == null || set.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (HookRecord hookRecord : set) {
            if (predicate.test(hookRecord)) {
                arrayList2.add(hookRecord);
            } else {
                arrayList.add(hookRecord);
            }
        }
        if (arrayList2.isEmpty()) {
            return;
        }
        Iterable$EL.forEach(arrayList2, new Consumer() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda21
            @Override // java.util.function.Consumer
            /* JADX INFO: renamed from: accept */
            public final void m940v(Object obj) {
                ((HookRecord) obj).cleanup();
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        if (arrayList.isEmpty()) {
            this.hooks.remove(str);
        } else {
            this.hooks.put(str, new CopyOnWriteArraySet(arrayList));
        }
        FileLog.m1133d(str2);
        this.interestedPluginsCache.clear();
        this.hooksCacheDirty = true;
    }

    /* JADX INFO: renamed from: $r8$lambda$0MKBwYBnp1INQdsep3RmAg-7Dyg, reason: not valid java name */
    public static /* synthetic */ boolean m2604$r8$lambda$0MKBwYBnp1INQdsep3RmAg7Dyg(String str, HookRecord hookRecord) {
        return (hookRecord instanceof EventHookRecord) && Objects.equals(((EventHookRecord) hookRecord).getHookName(), str);
    }

    public void removeEventHook(String str, final String str2) {
        removeHook(str, new Predicate() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda22
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m255or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return PluginsController.m2604$r8$lambda$0MKBwYBnp1INQdsep3RmAg7Dyg(str2, (HookRecord) obj);
            }
        }, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986170163157365979L) + str2 + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986170326366123227L) + str);
    }

    public void addXposedHook(String str, XC_MethodHook.Unhook unhook) {
        addHook(str, new XposedHookRecord(unhook), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986170386495665371L) + str);
    }

    public void addXposedHooks(String str, ArrayList<XC_MethodHook.Unhook> arrayList) {
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            XC_MethodHook.Unhook unhook = arrayList.get(i);
            i++;
            addXposedHook(str, unhook);
        }
    }

    public static /* synthetic */ boolean $r8$lambda$D7iuh79ccD5yYXeFej0RROjlm5A(XC_MethodHook.Unhook unhook, HookRecord hookRecord) {
        return (hookRecord instanceof XposedHookRecord) && hookRecord.matches(unhook);
    }

    public void removeXposedHook(String str, final XC_MethodHook.Unhook unhook) {
        removeHook(str, new Predicate() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda10
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m254or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return PluginsController.$r8$lambda$D7iuh79ccD5yYXeFej0RROjlm5A(unhook, (HookRecord) obj);
            }
        }, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986170515344684251L) + str);
    }

    public void removeHooksByPluginId(String str) {
        Set<HookRecord> setRemove;
        if (TextUtils.isEmpty(str) || (setRemove = this.hooks.remove(str)) == null) {
            return;
        }
        Iterator<HookRecord> it = setRemove.iterator();
        while (it.hasNext()) {
            it.next().cleanup();
        }
        FileLog.m1133d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986170652783637723L) + setRemove.size() + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986170712913179867L) + str);
        this.interestedPluginsCache.clear();
        this.hooksCacheDirty = true;
    }

    public String addMenuItem(String str, PyObject pyObject) {
        if (isPluginEngineAvailable() && pyObject != null) {
            try {
                final MenuItemRecord menuItemRecord = new MenuItemRecord(str, pyObject);
                if (menuItemRecord.menuType == null) {
                    return null;
                }
                MenuItemRecord menuItemRecord2 = this.menuItemsById.get(menuItemRecord.itemId);
                if (menuItemRecord2 != null && !menuItemRecord2.pluginId.equals(str)) {
                    FileLog.m1137w(String.format(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986170798812525787L), str, menuItemRecord.itemId, menuItemRecord2.pluginId));
                    return null;
                }
                this.menuItemsById.put(menuItemRecord.itemId, menuItemRecord);
                ConcurrentMap$EL.compute(this.menuItemsByMenuType, menuItemRecord.menuType, new BiFunction() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda5
                    public /* synthetic */ BiFunction andThen(Function function) {
                        return BiFunction$CC.$default$andThen(this, function);
                    }

                    @Override // java.util.function.BiFunction
                    public final Object apply(Object obj, Object obj2) {
                        return PluginsController.$r8$lambda$Rghq_G_pJLYBjuuBNY5w2Zx4URE(menuItemRecord, (String) obj, (CopyOnWriteArrayList) obj2);
                    }
                });
                FileLog.m1133d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986171120935072987L) + menuItemRecord.itemId + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986171198244484315L) + str + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986171254079059163L) + menuItemRecord.menuType);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pluginMenuItemsUpdated, new Object[0]);
                    }
                });
                return menuItemRecord.itemId;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static /* synthetic */ CopyOnWriteArrayList $r8$lambda$Rghq_G_pJLYBjuuBNY5w2Zx4URE(final MenuItemRecord menuItemRecord, String str, CopyOnWriteArrayList copyOnWriteArrayList) {
        ArrayList arrayList;
        if (copyOnWriteArrayList == null) {
            arrayList = new ArrayList();
        } else {
            arrayList = new ArrayList(copyOnWriteArrayList);
            Collection.EL.removeIf(arrayList, new Predicate() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda29
                public /* synthetic */ Predicate and(Predicate predicate) {
                    return Predicate$CC.$default$and(this, predicate);
                }

                public /* synthetic */ Predicate negate() {
                    return Predicate$CC.$default$negate(this);
                }

                /* JADX INFO: renamed from: or */
                public /* synthetic */ Predicate m256or(Predicate predicate) {
                    return Predicate$CC.$default$or(this, predicate);
                }

                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ((MenuItemRecord) obj).itemId.equals(menuItemRecord.itemId);
                }
            });
        }
        arrayList.add(menuItemRecord);
        List.EL.sort(arrayList, Comparator.EL.reversed(Comparator.CC.comparingInt(new ToIntFunction() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda30
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((MenuItemRecord) obj).priority;
            }
        })));
        return new CopyOnWriteArrayList(arrayList);
    }

    public boolean removeMenuItem(String str, String str2) {
        MenuItemRecord menuItemRecordRemove;
        if (TextUtils.isEmpty(str2) || (menuItemRecordRemove = this.menuItemsById.remove(str2)) == null || menuItemRecordRemove.menuType == null) {
            return false;
        }
        if (!menuItemRecordRemove.pluginId.equals(str)) {
            this.menuItemsById.put(str2, menuItemRecordRemove);
            return false;
        }
        CopyOnWriteArrayList<MenuItemRecord> copyOnWriteArrayList = this.menuItemsByMenuType.get(menuItemRecordRemove.menuType);
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.remove(menuItemRecordRemove);
        }
        FileLog.m1133d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986171297028732123L) + str2 + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986171382928078043L) + str);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pluginMenuItemsUpdated, new Object[0]);
            }
        });
        return true;
    }

    public void removeMenuItemsByPluginId(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (MenuItemRecord menuItemRecord : this.menuItemsById.values()) {
            if (menuItemRecord.pluginId.equals(str)) {
                arrayList.add(menuItemRecord.itemId);
            }
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            removeMenuItem(str, (String) obj);
        }
        FileLog.m1133d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986171438762652891L) + str);
    }

    public java.util.List<MenuItemRecord> getMenuItemsForLocation(String str, MenuContextBuilder menuContextBuilder) {
        if (menuContextBuilder == null) {
            return getMenuItemsForLocation(str, new HashMap());
        }
        return getMenuItemsForLocation(str, menuContextBuilder.build());
    }

    public java.util.List<MenuItemRecord> getMenuItemsForLocation(String str, Map<String, Object> map) {
        CopyOnWriteArrayList<MenuItemRecord> copyOnWriteArrayList;
        if (!isPluginEngineAvailable() || TextUtils.isEmpty(str)) {
            return Collections.EMPTY_LIST;
        }
        LinkedHashSet<MenuItemRecord> linkedHashSet = new LinkedHashSet();
        CopyOnWriteArrayList<MenuItemRecord> copyOnWriteArrayList2 = this.menuItemsByMenuType.get(str);
        if (copyOnWriteArrayList2 != null && !copyOnWriteArrayList2.isEmpty()) {
            linkedHashSet.addAll(copyOnWriteArrayList2);
        }
        if (Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986171593381475547L).equals(str) && (copyOnWriteArrayList = this.menuItemsByMenuType.get(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986171636331148507L))) != null && !copyOnWriteArrayList.isEmpty()) {
            linkedHashSet.addAll(copyOnWriteArrayList);
        }
        if (linkedHashSet.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        for (MenuItemRecord menuItemRecord : linkedHashSet) {
            Plugin plugin = this.plugins.get(menuItemRecord.pluginId);
            if (plugin != null && plugin.isEnabled() && !plugin.hasError()) {
                this.watchdog.onPluginExecutionStarted(menuItemRecord.pluginId);
                try {
                    if (menuItemRecord.checkCondition(map)) {
                        arrayList.add(menuItemRecord);
                    }
                } finally {
                    this.watchdog.onPluginExecutionFinished(menuItemRecord.pluginId);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: $r8$lambda$b4-UZpx3nWzNShmhdIX8ST6qcpc, reason: not valid java name */
    public static /* synthetic */ void m2610$r8$lambda$b4UZpx3nWzNShmhdIX8ST6qcpc() {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pluginsUpdated, new Object[0]);
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pluginMenuItemsUpdated, new Object[0]);
    }

    void notifyPluginsChanged() {
        AndroidUtilities.cancelRunOnUIThread(this.updateNotificationRunnable);
        AndroidUtilities.runOnUIThread(this.updateNotificationRunnable, 150L);
    }

    public void executeOnAppEvent(final String str) {
        if (isPluginEngineAvailable()) {
            FileLog.m1133d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986171687870756059L) + str);
            Iterable$EL.forEach(engines.values(), new Consumer() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda9
                @Override // java.util.function.Consumer
                /* JADX INFO: renamed from: accept */
                public final void m940v(Object obj) {
                    PluginsController.$r8$lambda$fkOEc2l7S3Khbq5IvdTb1K9rydw(str, (PluginsController.PluginsEngine) obj);
                }

                public /* synthetic */ Consumer andThen(Consumer consumer) {
                    return Consumer$CC.$default$andThen(this, consumer);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$fkOEc2l7S3Khbq5IvdTb1K9rydw(String str, PluginsEngine pluginsEngine) {
        if (pluginsEngine != null) {
            pluginsEngine.executeOnAppEvent(str);
        }
    }

    java.util.List<String> getInterestedPluginIds(String str) {
        if (TextUtils.isEmpty(str)) {
            return Collections.EMPTY_LIST;
        }
        java.util.List<String> list = this.interestedPluginsCache.get(str);
        if (list == null) {
            rebuildHooksCacheIfNeeded();
            HashMap map = new HashMap();
            java.util.List<EventHookRecord> list2 = this.exactMatchEventHooksCache.get(str);
            if (list2 != null) {
                for (final EventHookRecord eventHookRecord : list2) {
                    Map.EL.compute(map, eventHookRecord.getPluginId(), new BiFunction() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda31
                        public /* synthetic */ BiFunction andThen(Function function) {
                            return BiFunction$CC.$default$andThen(this, function);
                        }

                        @Override // java.util.function.BiFunction
                        public final Object apply(Object obj, Object obj2) {
                            EventHookRecord eventHookRecord2 = eventHookRecord;
                            Integer num = (Integer) obj2;
                            return Integer.valueOf(num == null ? eventHookRecord2.getPriority() : Math.max(num.intValue(), eventHookRecord2.getPriority()));
                        }
                    });
                }
            }
            for (final EventHookRecord eventHookRecord2 : this.substringMatchEventHooksCache) {
                if (eventHookRecord2.matches(str)) {
                    Map.EL.compute(map, eventHookRecord2.getPluginId(), new BiFunction() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda32
                        public /* synthetic */ BiFunction andThen(Function function) {
                            return BiFunction$CC.$default$andThen(this, function);
                        }

                        @Override // java.util.function.BiFunction
                        public final Object apply(Object obj, Object obj2) {
                            EventHookRecord eventHookRecord3 = eventHookRecord2;
                            Integer num = (Integer) obj2;
                            return Integer.valueOf(num == null ? eventHookRecord3.getPriority() : Math.max(num.intValue(), eventHookRecord3.getPriority()));
                        }
                    });
                }
            }
            if (map.isEmpty()) {
                list = Collections.EMPTY_LIST;
            } else {
                ArrayList arrayList = new ArrayList(map.entrySet());
                List.EL.sort(arrayList, new java.util.Comparator() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda33
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return PluginsController.$r8$lambda$oBZHDd32O9sFqH2KwjebyzDHZxw((Map.Entry) obj, (Map.Entry) obj2);
                    }
                });
                list = (java.util.List) Collection.EL.stream(arrayList).map(new Function() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda34
                    public /* synthetic */ Function andThen(Function function) {
                        return Function$CC.$default$andThen(this, function);
                    }

                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return (String) ((Map.Entry) obj).getKey();
                    }

                    public /* synthetic */ Function compose(Function function) {
                        return Function$CC.$default$compose(this, function);
                    }
                }).filter(new Predicate() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda35
                    public /* synthetic */ Predicate and(Predicate predicate) {
                        return Predicate$CC.$default$and(this, predicate);
                    }

                    public /* synthetic */ Predicate negate() {
                        return Predicate$CC.$default$negate(this);
                    }

                    /* JADX INFO: renamed from: or */
                    public /* synthetic */ Predicate m257or(Predicate predicate) {
                        return Predicate$CC.$default$or(this, predicate);
                    }

                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return this.f$0.lambda$getInterestedPluginIds$27((String) obj);
                    }
                }).collect(Collectors.toList());
            }
            this.interestedPluginsCache.put(str, list);
            if (!list.isEmpty()) {
                FileLog.m1133d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986171816719774939L) + str + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986172014288270555L) + list);
            }
        }
        return list;
    }

    public static /* synthetic */ int $r8$lambda$oBZHDd32O9sFqH2KwjebyzDHZxw(Map.Entry entry, Map.Entry entry2) {
        int iCompare = Integer.compare(((Integer) entry2.getValue()).intValue(), ((Integer) entry.getValue()).intValue());
        return iCompare == 0 ? ((String) entry.getKey()).compareTo((String) entry2.getKey()) : iCompare;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$getInterestedPluginIds$27(String str) {
        Plugin plugin = this.plugins.get(str);
        return (plugin == null || !plugin.isEnabled() || plugin.hasError()) ? false : true;
    }

    private void rebuildHooksCacheIfNeeded() {
        if (this.hooksCacheDirty) {
            synchronized (this.hooksCacheLock) {
                try {
                    if (this.hooksCacheDirty) {
                        HashMap map = new HashMap();
                        ArrayList arrayList = new ArrayList();
                        Iterator<Set<HookRecord>> it = this.hooks.values().iterator();
                        while (it.hasNext()) {
                            for (HookRecord hookRecord : it.next()) {
                                if (hookRecord instanceof EventHookRecord) {
                                    EventHookRecord eventHookRecord = (EventHookRecord) hookRecord;
                                    if (eventHookRecord.isMatchSubstring()) {
                                        arrayList.add(eventHookRecord);
                                    } else {
                                        ((java.util.List) Map.EL.computeIfAbsent(map, eventHookRecord.getHookName(), new Function() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda25
                                            public /* synthetic */ Function andThen(Function function) {
                                                return Function$CC.$default$andThen(this, function);
                                            }

                                            @Override // java.util.function.Function
                                            public final Object apply(Object obj) {
                                                return PluginsController.$r8$lambda$J4Q7oAMZibqdYmPlqB0gtk5ZZs0((String) obj);
                                            }

                                            public /* synthetic */ Function compose(Function function) {
                                                return Function$CC.$default$compose(this, function);
                                            }
                                        })).add(eventHookRecord);
                                    }
                                }
                            }
                        }
                        this.exactMatchEventHooksCache = map;
                        this.substringMatchEventHooksCache = arrayList;
                        this.hooksCacheDirty = false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static /* synthetic */ java.util.List $r8$lambda$J4Q7oAMZibqdYmPlqB0gtk5ZZs0(String str) {
        return new ArrayList();
    }

    private <T> T executeGenericHook(String str, T t, EngineHookCaller<T> engineHookCaller) {
        if (isPluginEngineAvailable()) {
            java.util.List<String> interestedPluginIds = getInterestedPluginIds(str);
            if (!interestedPluginIds.isEmpty()) {
                Iterator<String> it = interestedPluginIds.iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    PluginsEngine pluginEngine = getPluginEngine(next);
                    if (pluginEngine != null) {
                        this.watchdog.onPluginExecutionStarted(next);
                        try {
                            HookResult<T> hookResultCall = engineHookCaller.call(pluginEngine, t, next);
                            T t2 = hookResultCall.result;
                            if (!hookResultCall.cancel) {
                                if (hookResultCall.isFinal) {
                                    return t2;
                                }
                                this.watchdog.onPluginExecutionFinished(next);
                                t = t2;
                            } else {
                                this.watchdog.onPluginExecutionFinished(next);
                                return null;
                            }
                        } finally {
                            this.watchdog.onPluginExecutionFinished(next);
                        }
                    }
                }
                return t;
            }
        }
        return t;
    }

    @Override // com.exteragram.messenger.plugins.hooks.PluginsHooks
    public TLObject executePreRequestHook(final String str, final int i, TLObject tLObject) {
        return (TLObject) executeGenericHook(str, tLObject, new EngineHookCaller() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda26
            @Override // com.exteragram.messenger.plugins.PluginsController.EngineHookCaller
            public final PluginsController.HookResult call(PluginsController.PluginsEngine pluginsEngine, Object obj, String str2) {
                return pluginsEngine.executePreRequestHook(str, i, (TLObject) obj, str2);
            }
        });
    }

    @Override // com.exteragram.messenger.plugins.hooks.PluginsHooks
    public PluginsHooks.PostRequestResult executePostRequestHook(final String str, final int i, TLObject tLObject, TLRPC.TL_error tL_error) {
        return (PluginsHooks.PostRequestResult) executeGenericHook(str, new PluginsHooks.PostRequestResult(tLObject, tL_error), new EngineHookCaller() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda12
            @Override // com.exteragram.messenger.plugins.PluginsController.EngineHookCaller
            public final PluginsController.HookResult call(PluginsController.PluginsEngine pluginsEngine, Object obj, String str2) {
                PluginsHooks.PostRequestResult postRequestResult = (PluginsHooks.PostRequestResult) obj;
                return pluginsEngine.executePostRequestHook(str, i, postRequestResult.response, postRequestResult.error, str2);
            }
        });
    }

    @Override // com.exteragram.messenger.plugins.hooks.PluginsHooks
    public TLRPC.Update executeUpdateHook(final String str, final int i, TLRPC.Update update) {
        return (TLRPC.Update) executeGenericHook(str, update, new EngineHookCaller() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda16
            @Override // com.exteragram.messenger.plugins.PluginsController.EngineHookCaller
            public final PluginsController.HookResult call(PluginsController.PluginsEngine pluginsEngine, Object obj, String str2) {
                return pluginsEngine.executeUpdateHook(str, i, (TLRPC.Update) obj, str2);
            }
        });
    }

    @Override // com.exteragram.messenger.plugins.hooks.PluginsHooks
    public TLRPC.Updates executeUpdatesHook(final String str, final int i, TLRPC.Updates updates) {
        return (TLRPC.Updates) executeGenericHook(str, updates, new EngineHookCaller() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda28
            @Override // com.exteragram.messenger.plugins.PluginsController.EngineHookCaller
            public final PluginsController.HookResult call(PluginsController.PluginsEngine pluginsEngine, Object obj, String str2) {
                return pluginsEngine.executeUpdatesHook(str, i, (TLRPC.Updates) obj, str2);
            }
        });
    }

    @Override // com.exteragram.messenger.plugins.hooks.PluginsHooks
    public SendMessagesHelper.SendMessageParams executeSendMessageHook(final int i, SendMessagesHelper.SendMessageParams sendMessageParams) {
        return (SendMessagesHelper.SendMessageParams) executeGenericHook(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986172031468139739L), sendMessageParams, new EngineHookCaller() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda20
            @Override // com.exteragram.messenger.plugins.PluginsController.EngineHookCaller
            public final PluginsController.HookResult call(PluginsController.PluginsEngine pluginsEngine, Object obj, String str) {
                return pluginsEngine.executeSendMessageHook(i, (SendMessagesHelper.SendMessageParams) obj, str);
            }
        });
    }

    private static class SingletonHolder {
        private static final PluginsController INSTANCE = new PluginsController();

        private SingletonHolder() {
        }
    }

    public static class HookResult<T> {
        public boolean cancel;
        public boolean isFinal;
        public T result;

        public HookResult(T t, boolean z, boolean z2) {
            this.result = t;
            this.cancel = z;
            this.isFinal = z2;
        }
    }

    public static class PluginValidationResult {
        public String error;
        public Plugin plugin;

        public PluginValidationResult(Plugin plugin, String str) {
            this.plugin = plugin;
            this.error = str;
        }
    }
}
