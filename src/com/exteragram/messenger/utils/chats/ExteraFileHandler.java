package com.exteragram.messenger.utils.chats;

import com.exteragram.messenger.backup.BackupBottomSheet;
import com.exteragram.messenger.backup.PreferencesUtils;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.plugins.PluginsController;
import java.io.File;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.MessageObject;
import org.telegram.ui.ActionBar.BaseFragment;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\u001a\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bH\u0007J,\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\u0011\u001a\u0004\u0018\u00010\u000bH\u0007J6\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u000bH\u0002¨\u0006\u0012"}, d2 = {"Lcom/exteragram/messenger/utils/chats/ExteraFileHandler;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getFileIcon", _UrlKt.FRAGMENT_ENCODE_SET, "file", "Ljava/io/File;", "fileName", _UrlKt.FRAGMENT_ENCODE_SET, "fileMessage", "Lorg/telegram/messenger/MessageObject;", "open", _UrlKt.FRAGMENT_ENCODE_SET, "fragment", "Lorg/telegram/ui/ActionBar/BaseFragment;", "messageObject", "source", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nExteraFileHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExteraFileHandler.kt\ncom/exteragram/messenger/utils/chats/ExteraFileHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,69:1\n1#2:70\n*E\n"})
public final class ExteraFileHandler {
    public static final ExteraFileHandler INSTANCE = new ExteraFileHandler();

    private ExteraFileHandler() {
    }

    @JvmStatic
    public static final int getFileIcon(File file, String fileName, MessageObject fileMessage) {
        String lowerCase;
        if (fileName != null) {
            String str = fileName.length() > 0 ? fileName : null;
            if (str != null && (lowerCase = str.toLowerCase(Locale.ROOT)) != null) {
                if (StringsKt.endsWith$default(lowerCase, ".extera", false, 2, (Object) null)) {
                    return 17;
                }
                if (StringsKt.endsWith$default(lowerCase, ".icons", false, 2, (Object) null)) {
                    return 18;
                }
                if (file != null && PluginsController.INSTANCE.isPlugin(file, fileMessage)) {
                    return 16;
                }
                Integer numValueOf = Integer.valueOf(PluginsController.INSTANCE.getFileIconId(fileName));
                Integer num = numValueOf.intValue() != -1 ? numValueOf : null;
                if (num != null) {
                    return num.intValue();
                }
            }
        }
        return 5;
    }

    @JvmStatic
    public static final boolean open(BaseFragment fragment, MessageObject messageObject) {
        String documentName;
        String pathToMessage;
        if (messageObject == null || (documentName = messageObject.getDocumentName()) == null || (pathToMessage = ChatUtils.getInstance().getPathToMessage(messageObject)) == null || pathToMessage.length() == 0) {
            return false;
        }
        return INSTANCE.open(fragment, new File(pathToMessage), documentName, messageObject, messageObject);
    }

    @JvmStatic
    public static final boolean open(BaseFragment fragment, File file, String fileName, MessageObject source) {
        return INSTANCE.open(fragment, file, fileName, null, source);
    }

    private final boolean open(BaseFragment fragment, File file, String fileName, MessageObject fileMessage, MessageObject source) {
        String lowerCase;
        if (fileName == null || (lowerCase = fileName.toLowerCase(Locale.ROOT)) == null) {
            return false;
        }
        String absolutePath = file.getAbsolutePath();
        if (PreferencesUtils.getInstance().isBackup(file)) {
            new BackupBottomSheet(fragment, file).showIfPossible();
        } else {
            PluginsController.Companion companion = PluginsController.INSTANCE;
            if (companion.isPlugin(file, fileMessage)) {
                if (source != null) {
                    companion.getInstance().showInstallDialog(fragment, source, absolutePath);
                } else {
                    PluginsController.showInstallDialog$default(companion.getInstance(), fragment, absolutePath, false, 4, (Object) null);
                }
            } else {
                if (!StringsKt.endsWith$default(lowerCase, ".icons", false, 2, (Object) null)) {
                    return false;
                }
                IconManager.INSTANCE.handleIconPack(fragment, absolutePath);
            }
        }
        return true;
    }
}
