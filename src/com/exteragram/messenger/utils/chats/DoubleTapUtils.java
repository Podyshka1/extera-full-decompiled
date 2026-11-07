package com.exteragram.messenger.utils.chats;

import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DoubleTapUtils {
    public static CharSequence[] getDoubleTapActions(boolean z) {
        if (!z) {
            return new CharSequence[]{LocaleController.getString(C2807R.string.Disable), LocaleController.getString(C2807R.string.Reactions), LocaleController.getString(C2807R.string.Reply), LocaleController.getString(C2807R.string.Copy), LocaleController.getString(C2807R.string.Forward), LocaleController.getString(C2807R.string.Save), LocaleController.getString(C2807R.string.Repeat), LocaleController.getString(C2807R.string.Delete), LocaleController.getString(C2807R.string.TranslateMessage)};
        }
        return new CharSequence[]{LocaleController.getString(C2807R.string.Disable), LocaleController.getString(C2807R.string.Reactions), LocaleController.getString(C2807R.string.Reply), LocaleController.getString(C2807R.string.Copy), LocaleController.getString(C2807R.string.Forward), LocaleController.getString(C2807R.string.Edit), LocaleController.getString(C2807R.string.Save), LocaleController.getString(C2807R.string.Repeat), LocaleController.getString(C2807R.string.Delete), LocaleController.getString(C2807R.string.TranslateMessage)};
    }

    public static CharSequence getDoubleTapActionLabel(int i, boolean z) {
        return getDoubleTapActions(z)[Math.min(Math.max(i, 0), r2.length - 1)];
    }

    public static int getDoubleTapActionIcon(int i, boolean z) {
        return getDoubleTapIcons(z)[Math.min(Math.max(i, 0), r2.length - 1)];
    }

    public static int[] getDoubleTapIcons(boolean z) {
        if (!z) {
            return new int[]{C2807R.drawable.msg_block, C2807R.drawable.msg_reactions2, C2807R.drawable.menu_reply, C2807R.drawable.msg_copy, C2807R.drawable.msg_forward, C2807R.drawable.msg_saved, C2807R.drawable.msg_repeat, C2807R.drawable.msg_delete, C2807R.drawable.msg_translate};
        }
        return new int[]{C2807R.drawable.msg_block, C2807R.drawable.msg_reactions2, C2807R.drawable.menu_reply, C2807R.drawable.msg_copy, C2807R.drawable.msg_forward, C2807R.drawable.msg_edit, C2807R.drawable.msg_saved, C2807R.drawable.msg_repeat, C2807R.drawable.msg_delete, C2807R.drawable.msg_translate};
    }

    public static int getActionId(int i, boolean z) {
        int iSanitizeSetting = i == 9 ? 9 : sanitizeSetting(i);
        if (!z) {
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
                return 7;
            case 8:
                return 8;
            case 9:
                return 9;
            default:
                return 0;
        }
    }

    public static int sanitizeSetting(int i) {
        if (i < 0) {
            return 0;
        }
        return Math.min(i, 9);
    }
}
