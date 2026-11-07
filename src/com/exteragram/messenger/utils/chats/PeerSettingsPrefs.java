package com.exteragram.messenger.utils.chats;

import android.content.SharedPreferences;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.util.Map;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PeerSettingsPrefs {
    private static final String[] FLAG_KEYS = {"dialog_bar_share", "dialog_bar_add", "dialog_bar_block", "dialog_bar_exception", "dialog_bar_location", "dialog_bar_archived", "dialog_bar_invite", "dialog_bar_chat_with_channel"};

    public static void putBar(SharedPreferences.Editor editor, long j, TLRPC.PeerSettings peerSettings) {
        editor.putBoolean("dialog_bar_report" + j, peerSettings.report_spam);
        putFlag(editor, "dialog_bar_share" + j, peerSettings.share_contact);
        putFlag(editor, "dialog_bar_add" + j, peerSettings.add_contact);
        putFlag(editor, "dialog_bar_block" + j, peerSettings.block_contact);
        putFlag(editor, "dialog_bar_exception" + j, peerSettings.need_contacts_exception);
        putFlag(editor, "dialog_bar_location" + j, peerSettings.report_geo);
        putFlag(editor, "dialog_bar_archived" + j, peerSettings.autoarchived);
        putFlag(editor, "dialog_bar_invite" + j, peerSettings.invite_members);
        editor.putString("dialog_bar_chat_with_admin_title" + j, peerSettings.request_chat_title);
        putFlag(editor, "dialog_bar_chat_with_channel" + j, peerSettings.request_chat_broadcast);
        if (peerSettings.request_chat_date != 0) {
            editor.putInt("dialog_bar_chat_with_date" + j, peerSettings.request_chat_date);
        } else {
            editor.remove("dialog_bar_chat_with_date" + j);
        }
    }

    public static void putPaidMessageStars(SharedPreferences.Editor editor, long j, long j2) {
        if (j2 != 0) {
            editor.putLong("dialog_bar_paying_" + j, j2);
        } else {
            editor.remove("dialog_bar_paying_" + j);
        }
    }

    public static void scheduleCompaction(final SharedPreferences sharedPreferences) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.utils.chats.PeerSettingsPrefs$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                PeerSettingsPrefs.compact(sharedPreferences);
            }
        }, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
    }

    private static void putFlag(SharedPreferences.Editor editor, String str, boolean z) {
        if (z) {
            editor.putBoolean(str, true);
        } else {
            editor.remove(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void compact(SharedPreferences sharedPreferences) {
        if (sharedPreferences.getBoolean("extera_peer_bar_compacted", false)) {
            return;
        }
        SharedPreferences.Editor editorEdit = null;
        for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
            if (isDefaultValue(entry.getKey(), entry.getValue())) {
                if (editorEdit == null) {
                    editorEdit = sharedPreferences.edit();
                }
                editorEdit.remove(entry.getKey());
            }
        }
        if (editorEdit != null) {
            editorEdit.putBoolean("extera_peer_bar_compacted", true).apply();
        }
    }

    private static boolean isDefaultValue(String str, Object obj) {
        if (!str.startsWith("dialog_bar_")) {
            return false;
        }
        if (Boolean.FALSE.equals(obj)) {
            for (String str2 : FLAG_KEYS) {
                if (str.startsWith(str2)) {
                    return true;
                }
            }
            return false;
        }
        if ((obj instanceof Integer) && ((Integer) obj).intValue() == 0) {
            return str.startsWith("dialog_bar_chat_with_date");
        }
        if ((obj instanceof Long) && ((Long) obj).longValue() == 0) {
            return str.startsWith("dialog_bar_paying_");
        }
        return false;
    }
}
