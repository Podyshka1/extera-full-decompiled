package com.exteragram.messenger.utils.chats;

import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;

/* JADX INFO: loaded from: classes.dex */
public abstract class DoubleTapUtils {
    public static CharSequence[] getDoubleTapActions(boolean z) {
        if (!z) {
            return new CharSequence[]{LocaleController.getString(C2888R.string.Disable), LocaleController.getString(C2888R.string.Reactions), LocaleController.getString(C2888R.string.Reply), LocaleController.getString(C2888R.string.Copy), LocaleController.getString(C2888R.string.Forward), LocaleController.getString(C2888R.string.Save), LocaleController.getString(C2888R.string.Repeat), LocaleController.getString(C2888R.string.Delete), LocaleController.getString(C2888R.string.TranslateMessage)};
        }
        return new CharSequence[]{LocaleController.getString(C2888R.string.Disable), LocaleController.getString(C2888R.string.Reactions), LocaleController.getString(C2888R.string.Reply), LocaleController.getString(C2888R.string.Copy), LocaleController.getString(C2888R.string.Forward), LocaleController.getString(C2888R.string.Edit), LocaleController.getString(C2888R.string.Save), LocaleController.getString(C2888R.string.Delete), LocaleController.getString(C2888R.string.TranslateMessage)};
    }

    public static int[] getDoubleTapIcons(boolean z) {
        if (!z) {
            return new int[]{C2888R.drawable.msg_block, C2888R.drawable.msg_reactions2, C2888R.drawable.menu_reply, C2888R.drawable.msg_copy, C2888R.drawable.msg_forward, C2888R.drawable.msg_saved, C2888R.drawable.msg_repeat, C2888R.drawable.msg_delete, C2888R.drawable.msg_translate};
        }
        return new int[]{C2888R.drawable.msg_block, C2888R.drawable.msg_reactions2, C2888R.drawable.menu_reply, C2888R.drawable.msg_copy, C2888R.drawable.msg_forward, C2888R.drawable.msg_edit, C2888R.drawable.msg_saved, C2888R.drawable.msg_delete, C2888R.drawable.msg_translate};
    }

    public static int getActionId(int i, boolean z) {
        int iSanitizeSetting = i == 9 ? 8 : sanitizeSetting(i);
        if (z) {
            switch (iSanitizeSetting) {
                case 1:
                    return 1;
                case 2:
                    return 2;
                case 3:
                    return 3;
                case 4:
                    return 4;
                case 5:
                    return 5;
                case 6:
                    return 6;
                case 7:
                    return 8;
                case 8:
                    return 9;
                default:
                    return 0;
            }
        }
        switch (iSanitizeSetting) {
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 6;
            case 6:
                return 7;
            case 7:
                return 8;
            case 8:
                return 9;
            default:
                return 0;
        }
    }

    public static int sanitizeSetting(int i) {
        if (i < 0) {
            return 0;
        }
        return Math.min(i, 8);
    }
}
