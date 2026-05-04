package com.exteragram.messenger.adblock.backend;

import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.adblock.backend.ScriptletsManager;
import com.exteragram.messenger.adblock.backend.SubscriptionsManager;
import com.exteragram.messenger.adblock.interop.AdBlock;
import com.exteragram.messenger.adblock.interop.NativeAdBlock;
import com.exteragram.messenger.utils.network.RemoteUtils;
import java.util.concurrent.atomic.AtomicInteger;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes.dex */
public abstract class AdBlockManager {
    private static final String[] FILTERS = {"https://ublockorigin.github.io/uAssetsCDN/filters/filters.min.txt", "https://ublockorigin.github.io/uAssetsCDN/filters/badware.min.txt", "https://ublockorigin.github.io/uAssetsCDN/filters/privacy.min.txt", "https://ublockorigin.github.io/uAssetsCDN/filters/unbreak.min.txt", "https://ublockorigin.github.io/uAssetsCDN/filters/quick-fixes.min.txt", "https://filters.adtidy.org/extension/ublock/filters/11.txt", "https://filters.adtidy.org/extension/ublock/filters/2_without_easylist.txt", "https://cdn.jsdelivr.net/gh/uBlockOrigin/uAssetsCDN@main/thirdparties/easylist.txt", "https://cdn.jsdelivr.net/gh/dimisa-RUAdList/RUAdListCDN@main/lists/ruadlist.ubo.min.txt"};

    public static void initialize() {
        if (RemoteUtils.getBooleanConfigValue("use_adblock", false).booleanValue() && ExteraConfig.enableAdBlock && NativeAdBlock.loadLibraries()) {
            if (!ScriptletsManager.getInstance().isDownloaded()) {
                ScriptletsManager.getInstance().download(new ScriptletsManager.DownloadCallback() { // from class: com.exteragram.messenger.adblock.backend.AdBlockManager.1
                    @Override // com.exteragram.messenger.adblock.backend.ScriptletsManager.DownloadCallback
                    public void onProgress(int i, int i2) {
                        FileLog.m1133d("scriptlet download progress: " + i + "/" + i2);
                        if (i == i2) {
                            AdBlockManager.continueInitialize();
                        }
                    }

                    @Override // com.exteragram.messenger.adblock.backend.ScriptletsManager.DownloadCallback
                    public void onError() {
                        FileLog.m1134e("unable to download all scriptlets");
                        AdBlockManager.continueInitialize();
                    }
                });
            } else {
                continueInitialize();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void continueInitialize() {
        if (SubscriptionsManager.getInstance().getSubscriptions().isEmpty()) {
            addDefaultFilters();
        } else {
            SubscriptionsManager.getInstance().initialize(new Runnable() { // from class: com.exteragram.messenger.adblock.backend.AdBlockManager$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AdBlock.reload();
                }
            });
        }
    }

    private static void addDefaultFilters() {
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        for (final String str : FILTERS) {
            SubscriptionsManager.getInstance().subscribe(str, new SubscriptionsManager.SubscriptionCallback() { // from class: com.exteragram.messenger.adblock.backend.AdBlockManager$$ExternalSyntheticLambda1
                @Override // com.exteragram.messenger.adblock.backend.SubscriptionsManager.SubscriptionCallback
                public final void onComplete(boolean z) {
                    AdBlockManager.m2220$r8$lambda$fWhGQ48lIRq6JSa8wErVhU5_b8(str, atomicInteger, z);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$fWhGQ48lIRq6-JSa8wErVhU5_b8, reason: not valid java name */
    public static /* synthetic */ void m2220$r8$lambda$fWhGQ48lIRq6JSa8wErVhU5_b8(String str, AtomicInteger atomicInteger, boolean z) {
        if (z) {
            FileLog.m1133d("filter loaded: " + str);
        } else {
            FileLog.m1134e("filter failed to load: " + str);
        }
        if (atomicInteger.incrementAndGet() == FILTERS.length) {
            FileLog.m1133d("all filters loaded");
            AdBlock.reload();
        }
    }
}
