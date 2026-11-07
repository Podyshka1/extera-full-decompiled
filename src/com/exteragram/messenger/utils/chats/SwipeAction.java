package com.exteragram.messenger.utils.chats;

import com.exteragram.messenger.ExteraConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.MediaDataController;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes4.dex */
public enum SwipeAction {
    REACTION(1, C2807R.drawable.msg_reactions2, C2807R.string.DoubleTapSetting, 1.0f),
    REPLY(2, C2807R.drawable.menu_reply, C2807R.string.Reply, 1.09f),
    COPY(3, C2807R.drawable.msg_copy, C2807R.string.Copy, 1.0f),
    FORWARD(4, C2807R.drawable.msg_forward, C2807R.string.Forward, 1.09f),
    EDIT(5, C2807R.drawable.msg_edit, C2807R.string.Edit, 1.0f),
    SAVE(6, C2807R.drawable.msg_saved, C2807R.string.Save, 1.0f),
    REPEAT(7, C2807R.drawable.msg_repeat, C2807R.string.Repeat, 1.09f),
    DELETE(8, C2807R.drawable.msg_delete, C2807R.string.Delete, 1.09f),
    TRANSLATE(9, C2807R.drawable.msg_translate, C2807R.string.TranslateMessage, 1.09f);

    public final int actionId;
    public final int iconRes;
    public final float iconTrim;
    public final int titleRes;

    SwipeAction(int i, int i2, int i3, float f) {
        this.actionId = i;
        this.iconRes = i2;
        this.titleRes = i3;
        this.iconTrim = f;
    }

    public static String quickReactionEmoticon(int i) {
        MediaDataController mediaDataController = MediaDataController.getInstance(i);
        String doubleTapReaction = mediaDataController.getDoubleTapReaction();
        if (doubleTapReaction == null) {
            return null;
        }
        if (doubleTapReaction.startsWith("animated_")) {
            return doubleTapReaction;
        }
        TLRPC.TL_availableReaction tL_availableReaction = mediaDataController.getReactionsMap().get(doubleTapReaction);
        if (tL_availableReaction != null) {
            return tL_availableReaction.reaction;
        }
        return null;
    }

    public static SwipeAction of(int i) {
        for (SwipeAction swipeAction : values()) {
            if (swipeAction.actionId == i) {
                return swipeAction;
            }
        }
        return null;
    }

    public static List<SwipeAction> enabled() {
        ArrayList arrayList = new ArrayList();
        for (String str : ExteraConfig.getSwipeActions().split(",")) {
            try {
                SwipeAction swipeActionOf = of(Integer.parseInt(str.trim()));
                if (swipeActionOf != null && !arrayList.contains(swipeActionOf)) {
                    arrayList.add(swipeActionOf);
                }
            } catch (NumberFormatException unused) {
            }
        }
        return arrayList;
    }

    public static List<SwipeAction> disabled() {
        ArrayList arrayList = new ArrayList(Arrays.asList(values()));
        arrayList.removeAll(enabled());
        return arrayList;
    }

    public static void setEnabled(List<SwipeAction> list) {
        StringBuilder sb = new StringBuilder();
        for (SwipeAction swipeAction : list) {
            if (sb.length() > 0) {
                sb.append(',');
            }
            sb.append(swipeAction.actionId);
        }
        ExteraConfig.setSwipeActions(sb.toString());
    }

    public boolean isEnabled() {
        return enabled().contains(this);
    }

    public void setEnabled(boolean z) {
        List<SwipeAction> listEnabled = enabled();
        if (z == listEnabled.contains(this)) {
            return;
        }
        if (z) {
            int i = 0;
            for (SwipeAction swipeAction : values()) {
                if (swipeAction == this) {
                    break;
                }
                if (listEnabled.contains(swipeAction)) {
                    i++;
                }
            }
            listEnabled.add(i, this);
        } else {
            listEnabled.remove(this);
        }
        setEnabled(listEnabled);
    }
}
