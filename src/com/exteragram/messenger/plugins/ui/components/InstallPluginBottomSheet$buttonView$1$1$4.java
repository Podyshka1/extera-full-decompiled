package com.exteragram.messenger.plugins.ui.components;

import com.exteragram.messenger.plugins.pip.PipController;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.LocaleController;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"com/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$buttonView$1$1$4", "Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;", "onProgress", _UrlKt.FRAGMENT_ENCODE_SET, "text", _UrlKt.FRAGMENT_ENCODE_SET, "isCancelled", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nInstallPluginBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InstallPluginBottomSheet.kt\ncom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$buttonView$1$1$4\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,749:1\n1#2:750\n*E\n"})
public final class InstallPluginBottomSheet$buttonView$1$1$4 implements PipController.InstallerDelegate {
    final /* synthetic */ InstallPluginBottomSheet this$0;

    public InstallPluginBottomSheet$buttonView$1$1$4(InstallPluginBottomSheet installPluginBottomSheet) {
        this.this$0 = installPluginBottomSheet;
    }

    @Override // com.exteragram.messenger.plugins.pip.PipController.InstallerDelegate
    public void onProgress(final String text) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-123679894947375L);
        final InstallPluginBottomSheet installPluginBottomSheet = this.this$0;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet$buttonView$1$1$4$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                InstallPluginBottomSheet$buttonView$1$1$4.m2336$r8$lambda$vIvpOtqwK24iEREBsNrPTCFMg(installPluginBottomSheet, text);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$vIvpOtqwK24-iE-REBsNrPTCFMg, reason: not valid java name */
    public static void m2336$r8$lambda$vIvpOtqwK24iEREBsNrPTCFMg(InstallPluginBottomSheet installPluginBottomSheet, String str) {
        Runnable runnable = installPluginBottomSheet.delayedLoadingRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        installPluginBottomSheet.delayedLoadingRunnable = null;
        if (installPluginBottomSheet.cancellationRequested) {
            return;
        }
        installPluginBottomSheet.button.setLoading(false);
        installPluginBottomSheet.button.setText(LocaleController.getString(C2573R.string.Cancel), true);
        installPluginBottomSheet.button.setSubText(str, true);
    }

    @Override // com.exteragram.messenger.plugins.pip.PipController.InstallerDelegate
    public boolean isCancelled() {
        return this.this$0.cancellationRequested;
    }
}
