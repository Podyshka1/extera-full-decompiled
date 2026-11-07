package com.exteragram.messenger.plugins.ui.components;

import android.app.Activity;
import android.content.DialogInterface;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.utils.MarkdownUtils;
import java.io.File;
import java.io.FileInputStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.Components.BulletinFactory;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J(\u0010\r\u001a\u00020\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007J\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J&\u0010\u0013\u001a\u00020\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001a\u0010\u0016\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/PluginFileViewer;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "MAX_FILE_SIZE", _UrlKt.FRAGMENT_ENCODE_SET, "MAX_BLOCK_LENGTH", "SNIFF_LENGTH", "canOpen", _UrlKt.FRAGMENT_ENCODE_SET, "file", "Ljava/io/File;", "isText", "openExternally", "fragment", "Lorg/telegram/ui/ActionBar/BaseFragment;", "fileName", _UrlKt.FRAGMENT_ENCODE_SET, "isZip", "open", "createMessageObject", "Lorg/telegram/messenger/MessageObject;", "normalizeFileName", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPluginFileViewer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginFileViewer.kt\ncom/exteragram/messenger/plugins/ui/components/PluginFileViewer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,198:1\n2792#2,3:199\n1#3:202\n*S KotlinDebug\n*F\n+ 1 PluginFileViewer.kt\ncom/exteragram/messenger/plugins/ui/components/PluginFileViewer\n*L\n49#1:199,3\n*E\n"})
public final class PluginFileViewer {
    public static final PluginFileViewer INSTANCE = new PluginFileViewer();
    private static final int MAX_BLOCK_LENGTH = 8192;
    private static final int MAX_FILE_SIZE = 524288;
    private static final int SNIFF_LENGTH = 8192;

    private PluginFileViewer() {
    }

    @JvmStatic
    public static final boolean canOpen(File file) {
        if (file == null || !file.exists() || !file.isFile() || file.length() > 524288) {
            return false;
        }
        return INSTANCE.isText(file);
    }

    private final boolean isText(File file) {
        boolean z;
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[8192];
                int i = fileInputStream.read(bArr);
                if (i <= 0) {
                    z = false;
                    break;
                }
                List<Byte> listTake = ArraysKt.take(bArr, i);
                if (!(listTake instanceof Collection) || !listTake.isEmpty()) {
                    Iterator<T> it = listTake.iterator();
                    while (it.hasNext()) {
                        if (((Number) it.next()).byteValue() == 0) {
                            z = false;
                            break;
                        }
                    }
                }
                z = true;
                CloseableKt.closeFinally(fileInputStream, null);
                return z;
            } finally {
            }
        } catch (Throwable th) {
            FileLog.m1040e(th);
            return false;
        }
    }

    public static /* synthetic */ boolean openExternally$default(BaseFragment baseFragment, File file, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            str = null;
        }
        return openExternally(baseFragment, file, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x006b  */
    @JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean openExternally(BaseFragment fragment, File file, String fileName) {
        Activity parentActivity;
        String str;
        String str2;
        if (fragment != null && (parentActivity = fragment.getParentActivity()) != null && file != null && file.exists() && file.isFile()) {
            PluginFileViewer pluginFileViewer = INSTANCE;
            boolean zIsZip = pluginFileViewer.isZip(file);
            boolean z = !zIsZip && pluginFileViewer.isText(file);
            if (fileName != null) {
                if (StringsKt.isBlank(fileName)) {
                    fileName = null;
                }
                if (fileName == null) {
                }
                if (!StringsKt.contains$default((CharSequence) fileName, '.', false, 2, (Object) null)) {
                }
                String str3 = fileName;
                if (!zIsZip) {
                }
                return AndroidUtilities.openForView(file, str3, str, parentActivity, fragment.getResourceProvider(), false);
            }
            fileName = file.getName();
            if (!StringsKt.contains$default((CharSequence) fileName, '.', false, 2, (Object) null)) {
                if (zIsZip) {
                    str2 = ".zip";
                } else if (z) {
                    str2 = ".txt";
                } else {
                    str2 = ".bin";
                }
                fileName = fileName + str2;
            }
            String str32 = fileName;
            if (!zIsZip) {
                str = "application/zip";
            } else if (z) {
                str = "text/plain";
            } else {
                str = "application/octet-stream";
            }
            try {
                return AndroidUtilities.openForView(file, str32, str, parentActivity, fragment.getResourceProvider(), false);
            } catch (Throwable th) {
                FileLog.m1040e(th);
                BulletinFactory.of(fragment).createSimpleBulletin(C2807R.raw.error, LocaleController.getString(C2807R.string.ErrorOccurred)).show();
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final boolean isZip(File file) {
        boolean z;
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[4];
                if (fileInputStream.read(bArr) != 4) {
                    CloseableKt.closeFinally(fileInputStream, null);
                    return false;
                }
                if (bArr[0] == 80) {
                    z = true;
                    if (bArr[1] == 75) {
                        byte b2 = bArr[2];
                        if (b2 != 3 && b2 != 5 && b2 != 7) {
                            z = false;
                        }
                    }
                }
                CloseableKt.closeFinally(fileInputStream, null);
                return z;
            } finally {
            }
        } catch (Throwable th) {
            FileLog.m1040e(th);
            return false;
        }
        FileLog.m1040e(th);
        return false;
    }

    public static /* synthetic */ boolean open$default(PluginFileViewer pluginFileViewer, BaseFragment baseFragment, File file, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            str = null;
        }
        return pluginFileViewer.open(baseFragment, file, str);
    }

    public final boolean open(final BaseFragment fragment, final File file, final String fileName) {
        Activity parentActivity;
        if (fragment == null || (parentActivity = fragment.getParentActivity()) == null || file == null || !file.exists() || !file.isFile()) {
            return false;
        }
        if (!canOpen(file)) {
            return openExternally(fragment, file, fileName);
        }
        final AlertDialog alertDialog = new AlertDialog(parentActivity, 3, fragment.getResourceProvider());
        alertDialog.setCanceledOnTouchOutside(false);
        final boolean[] zArr = {false};
        alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.exteragram.messenger.plugins.ui.components.PluginFileViewer$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                PluginFileViewer.m3152$r8$lambda$vbpziXMO_HwI7YqbW1Hz2wiHAQ(zArr, dialogInterface);
            }
        });
        alertDialog.showDelayed(150L);
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.PluginFileViewer$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                PluginFileViewer.m3151$r8$lambda$vQwAKkakqkeP6_e0FaokhJKWvo(file, fileName, alertDialog, zArr, fragment);
            }
        });
        return true;
    }

    /* JADX INFO: renamed from: $r8$lambda$vbpziXMO_H-wI7YqbW1Hz2wiHAQ, reason: not valid java name */
    public static void m3152$r8$lambda$vbpziXMO_HwI7YqbW1Hz2wiHAQ(boolean[] zArr, DialogInterface dialogInterface) {
        zArr[0] = true;
    }

    /* JADX INFO: renamed from: $r8$lambda$vQwAKkakqkeP6_e0FaokhJK-Wvo, reason: not valid java name */
    public static void m3151$r8$lambda$vQwAKkakqkeP6_e0FaokhJKWvo(File file, String str, final AlertDialog alertDialog, final boolean[] zArr, final BaseFragment baseFragment) {
        final MessageObject messageObjectCreateMessageObject;
        try {
            PluginFileViewer pluginFileViewer = INSTANCE;
            messageObjectCreateMessageObject = pluginFileViewer.createMessageObject(file, pluginFileViewer.normalizeFileName(file, str));
        } catch (Throwable th) {
            FileLog.m1040e(th);
            messageObjectCreateMessageObject = null;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.PluginFileViewer$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                PluginFileViewer.$r8$lambda$0xZUrpuuyQT7Lkt43HYs6kdYNiE(alertDialog, zArr, messageObjectCreateMessageObject, baseFragment);
            }
        });
    }

    public static void $r8$lambda$0xZUrpuuyQT7Lkt43HYs6kdYNiE(AlertDialog alertDialog, boolean[] zArr, MessageObject messageObject, BaseFragment baseFragment) {
        try {
            alertDialog.dismiss();
        } catch (Throwable unused) {
        }
        if (zArr[0]) {
            return;
        }
        if (messageObject != null) {
            baseFragment.createArticleViewer(false).open(messageObject);
        } else {
            BulletinFactory.of(baseFragment).createSimpleBulletin(C2807R.raw.error, LocaleController.getString(C2807R.string.ErrorOccurred)).show();
        }
    }

    private final MessageObject createMessageObject(File file, String fileName) {
        String text = FilesKt.readText(file, Charsets.UTF_8);
        TL_iv.TL_page tL_page = new TL_iv.TL_page();
        tL_page.local = file;
        tL_page.url = fileName;
        MarkdownUtils.appendPreformattedBlocks(tL_page.blocks, text, PluginsConstants.PYTHON, 8192);
        TLRPC.TL_webPage tL_webPage = new TLRPC.TL_webPage();
        tL_webPage.id = file.getAbsolutePath().hashCode();
        tL_webPage.url = fileName;
        tL_webPage.display_url = fileName;
        tL_webPage.title = fileName;
        tL_webPage.flags |= 1028;
        tL_webPage.cached_page = tL_page;
        long j = UserConfig.getInstance(UserConfig.selectedAccount).clientUserId;
        TLRPC.TL_message tL_message = new TLRPC.TL_message();
        tL_message.id = 0;
        tL_message.date = (int) (System.currentTimeMillis() / 1000);
        tL_message.message = fileName;
        tL_message.out = true;
        TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
        tL_peerUser.user_id = j;
        tL_message.peer_id = tL_peerUser;
        TLRPC.TL_peerUser tL_peerUser2 = new TLRPC.TL_peerUser();
        tL_peerUser2.user_id = j;
        tL_message.from_id = tL_peerUser2;
        TLRPC.TL_messageMediaWebPage tL_messageMediaWebPage = new TLRPC.TL_messageMediaWebPage();
        tL_messageMediaWebPage.webpage = tL_webPage;
        tL_message.media = tL_messageMediaWebPage;
        return new MessageObject(UserConfig.selectedAccount, tL_message, false, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x000d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final String normalizeFileName(File file, String fileName) {
        if (fileName == null) {
            fileName = file.getName();
        } else {
            if (StringsKt.isBlank(fileName)) {
                fileName = null;
            }
            if (fileName == null) {
            }
        }
        if (StringsKt.contains$default((CharSequence) fileName, '.', false, 2, (Object) null)) {
            return fileName;
        }
        return fileName + PluginsConstants.PLUGINS_EXT;
    }
}
