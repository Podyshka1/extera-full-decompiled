package com.exteragram.messenger.utils.chats;

import org.telegram.messenger.C2573R;
import org.telegram.messenger.LocaleController;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DoubleTapUtils {
    public static CharSequence[] getDoubleTapActions(boolean z) {
        if (!z) {
            return new CharSequence[]{LocaleController.getString(C2573R.string.Disable), LocaleController.getString(C2573R.string.Reactions), LocaleController.getString(C2573R.string.Reply), LocaleController.getString(C2573R.string.Copy), LocaleController.getString(C2573R.string.Forward), LocaleController.getString(C2573R.string.Save), LocaleController.getString(C2573R.string.Repeat), LocaleController.getString(C2573R.string.Delete), LocaleController.getString(C2573R.string.TranslateMessage)};
        }
        return new CharSequence[]{LocaleController.getString(C2573R.string.Disable), LocaleController.getString(C2573R.string.Reactions), LocaleController.getString(C2573R.string.Reply), LocaleController.getString(C2573R.string.Copy), LocaleController.getString(C2573R.string.Forward), LocaleController.getString(C2573R.string.Edit), LocaleController.getString(C2573R.string.Save), LocaleController.getString(C2573R.string.Repeat), LocaleController.getString(C2573R.string.Delete), LocaleController.getString(C2573R.string.TranslateMessage)};
    }

    public static CharSequence getDoubleTapActionLabel(int i, boolean z) {
        return getDoubleTapActions(z)[Math.min(Math.max(i, 0), r2.length - 1)];
    }

    public static int getDoubleTapActionIcon(int i, boolean z) {
        return getDoubleTapIcons(z)[Math.min(Math.max(i, 0), r2.length - 1)];
    }

    public static int[] getDoubleTapIcons(boolean z) {
        if (!z) {
            return new int[]{C2573R.drawable.msg_block, C2573R.drawable.msg_reactions2, C2573R.drawable.menu_reply, C2573R.drawable.msg_copy, C2573R.drawable.msg_forward, C2573R.drawable.msg_saved, C2573R.drawable.msg_repeat, C2573R.drawable.msg_delete, C2573R.drawable.msg_translate};
        }
        return new int[]{C2573R.drawable.msg_block, C2573R.drawable.msg_reactions2, C2573R.drawable.menu_reply, C2573R.drawable.msg_copy, C2573R.drawable.msg_forward, C2573R.drawable.msg_edit, C2573R.drawable.msg_saved, C2573R.drawable.msg_repeat, C2573R.drawable.msg_delete, C2573R.drawable.msg_translate};
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
