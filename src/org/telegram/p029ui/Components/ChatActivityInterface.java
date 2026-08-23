package org.telegram.p029ui.Components;

import org.telegram.messenger.ChatObject;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public interface ChatActivityInterface {
    void checkAndUpdateAvatar();

    ActionBar getActionBar();

    ChatAvatarContainer getAvatarContainer();

    SizeNotifierFrameLayout getContentView();

    TLRPC.Chat getCurrentChat();

    TLRPC.User getCurrentUser();

    long getDialogId();

    ChatObject.Call getGroupCall();

    long getMergeDialogId();

    Theme.ResourcesProvider getResourceProvider();

    long getTopicId();

    boolean openedWithLivestream();

    void scrollToMessageId(int i, int i2, boolean z, int i3, boolean z2, int i4);

    boolean shouldShowImport();

    /* JADX INFO: renamed from: org.telegram.ui.Components.ChatActivityInterface$-CC, reason: invalid class name */
    /* JADX INFO: loaded from: classes7.dex */
    public abstract /* synthetic */ class CC {
        public static TLRPC.User $default$getCurrentUser(ChatActivityInterface chatActivityInterface) {
            return null;
        }

        public static void $default$scrollToMessageId(ChatActivityInterface chatActivityInterface, int i, int i2, boolean z, int i3, boolean z2, int i4) {
        }

        public static boolean $default$shouldShowImport(ChatActivityInterface chatActivityInterface) {
            return false;
        }

        public static boolean $default$openedWithLivestream(ChatActivityInterface chatActivityInterface) {
            return false;
        }

        public static long $default$getMergeDialogId(ChatActivityInterface chatActivityInterface) {
            return 0L;
        }

        public static long $default$getTopicId(ChatActivityInterface chatActivityInterface) {
            return 0L;
        }

        public static void $default$checkAndUpdateAvatar(ChatActivityInterface chatActivityInterface) {
        }
    }
}
