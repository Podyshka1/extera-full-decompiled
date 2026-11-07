package org.telegram.ui.Components;

import org.telegram.messenger.ChatObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;

/* JADX INFO: loaded from: classes3.dex */
public interface ChatActivityInterface {
    default void checkAndUpdateAvatar() {
    }

    ActionBar getActionBar();

    ChatAvatarContainer getAvatarContainer();

    SizeNotifierFrameLayout getContentView();

    TLRPC.Chat getCurrentChat();

    default TLRPC.User getCurrentUser() {
        return null;
    }

    long getDialogId();

    ChatObject.Call getGroupCall();

    default long getMergeDialogId() {
        return 0L;
    }

    default long getTopicId() {
        return 0L;
    }

    default boolean openedWithLivestream() {
        return false;
    }

    default void scrollToMessageId(int i, int i2, boolean z, int i3, boolean z2, int i4) {
    }

    default boolean shouldShowImport() {
        return false;
    }
}
