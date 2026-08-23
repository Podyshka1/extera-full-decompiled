package org.telegram.messenger;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.widget.RemoteViews;
import android.widget.RemoteViewsService;
import androidx.collection.LongSparseArray;
import com.exteragram.messenger.ExteraConfig;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AvatarDrawable;
import org.telegram.p029ui.Components.ForegroundColorSpanThemable;
import org.telegram.p029ui.Components.Forum.ForumUtilities;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes5.dex */
class ChatsRemoteViewsFactory implements RemoteViewsService.RemoteViewsFactory {
    private AccountInstance accountInstance;
    private int appWidgetId;
    private RectF bitmapRect;
    private boolean deleted;
    private Context mContext;
    private Paint roundPaint;
    private ArrayList<Long> dids = new ArrayList<>();
    private LongSparseArray dialogs = new LongSparseArray();
    private LongSparseArray messageObjects = new LongSparseArray();

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public RemoteViews getLoadingView() {
        return null;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public int getViewTypeCount() {
        return 2;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public boolean hasStableIds() {
        return true;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public void onDestroy() {
    }

    public ChatsRemoteViewsFactory(Context context, Intent intent) {
        this.mContext = context;
        Theme.createDialogsResources(context);
        this.appWidgetId = intent.getIntExtra("appWidgetId", 0);
        SharedPreferences sharedPreferences = context.getSharedPreferences("shortcut_widget", 0);
        int i = sharedPreferences.getInt("account" + this.appWidgetId, -1);
        if (i >= 0) {
            this.accountInstance = AccountInstance.getInstance(i);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("deleted");
        sb.append(this.appWidgetId);
        this.deleted = sharedPreferences.getBoolean(sb.toString(), false) || this.accountInstance == null;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public void onCreate() {
        ApplicationLoader.postInitApplication();
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public int getCount() {
        if (this.deleted) {
            return 1;
        }
        return this.dids.size() + 1;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:161|(1:163)(2:165|(1:167)(8:168|(1:170)(1:171)|172|265|173|177|262|186))|164|172|265|173|177|262|186) */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x040a, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x040b, code lost:
    
        org.telegram.messenger.FileLog.m1136e(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x056c  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x05d8  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x05ed  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x05f7  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x061f  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0621  */
    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public RemoteViews getViewAt(int i) {
        TLRPC.Chat chat;
        String str;
        TLRPC.User user;
        TLRPC.FileLocation fileLocation;
        String monoForumTitle;
        TLRPC.FileLocation fileLocation2;
        TLRPC.ChatPhoto chatPhoto;
        int i2;
        Bitmap bitmapDecodeFile;
        MessageObject messageObject;
        TLRPC.Dialog dialog;
        int i3;
        int i4;
        int i5;
        TLRPC.Chat chat2;
        TLRPC.User user2;
        CharSequence charSequence;
        String str2;
        String strReplace;
        SpannableStringBuilder spannableStringBuilderValueOf;
        char c;
        char c2;
        int i6;
        String string;
        SpannableStringBuilder spannableStringBuilder;
        String str3;
        CharSequence string2;
        AvatarDrawable avatarDrawable;
        String name;
        TLRPC.UserProfilePhoto userProfilePhoto;
        TLRPC.FileLocation fileLocation3;
        if (this.deleted) {
            RemoteViews remoteViews = new RemoteViews(this.mContext.getPackageName(), C2888R.layout.widget_deleted);
            remoteViews.setTextViewText(C2888R.id.widget_deleted_text, LocaleController.getString(C2888R.string.WidgetLoggedOff));
            return remoteViews;
        }
        if (i >= this.dids.size()) {
            RemoteViews remoteViews2 = new RemoteViews(this.mContext.getPackageName(), C2888R.layout.widget_edititem);
            remoteViews2.setTextViewText(C2888R.id.widget_edititem_text, LocaleController.getString(C2888R.string.TapToEditWidget));
            Bundle bundle = new Bundle();
            bundle.putInt("appWidgetId", this.appWidgetId);
            bundle.putInt("appWidgetType", 0);
            bundle.putInt("currentAccount", this.accountInstance.getCurrentAccount());
            Intent intent = new Intent();
            intent.putExtras(bundle);
            remoteViews2.setOnClickFillInIntent(C2888R.id.widget_edititem, intent);
            return remoteViews2;
        }
        Long l = this.dids.get(i);
        boolean zIsUserDialog = DialogObject.isUserDialog(l.longValue());
        String str4 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (zIsUserDialog) {
            user = this.accountInstance.getMessagesController().getUser(l);
            if (user != null) {
                if (UserObject.isUserSelf(user)) {
                    name = LocaleController.getString(C2888R.string.SavedMessages);
                } else if (UserObject.isReplyUser(user)) {
                    name = LocaleController.getString(C2888R.string.RepliesTitle);
                } else if (UserObject.isDeleted(user)) {
                    name = LocaleController.getString(C2888R.string.HiddenName);
                } else {
                    name = ContactsController.formatName(user.first_name, user.last_name);
                }
                if (UserObject.isReplyUser(user) || UserObject.isUserSelf(user) || (userProfilePhoto = user.photo) == null || (fileLocation3 = userProfilePhoto.photo_small) == null || fileLocation3.volume_id == 0 || fileLocation3.local_id == 0) {
                    fileLocation = null;
                    str = name;
                    chat = null;
                } else {
                    fileLocation = fileLocation3;
                    str = name;
                    chat = null;
                }
            } else {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
                chat = null;
                fileLocation = null;
            }
        } else {
            TLRPC.Chat chat3 = this.accountInstance.getMessagesController().getChat(Long.valueOf(-l.longValue()));
            if (chat3 != null) {
                if (ChatObject.isMonoForum(chat3)) {
                    monoForumTitle = ForumUtilities.getMonoForumTitle(this.accountInstance.getCurrentAccount(), chat3);
                    TLRPC.Chat chat4 = this.accountInstance.getMessagesController().getChat(Long.valueOf(chat3.linked_monoforum_id));
                    if (chat4 == null || (chatPhoto = chat4.photo) == null || (fileLocation2 = chatPhoto.photo_small) == null || fileLocation2.volume_id == 0 || fileLocation2.local_id == 0) {
                        fileLocation2 = null;
                    }
                } else {
                    monoForumTitle = chat3.title;
                    TLRPC.ChatPhoto chatPhoto2 = chat3.photo;
                    if (chatPhoto2 == null || (fileLocation2 = chatPhoto2.photo_small) == null || fileLocation2.volume_id == 0 || fileLocation2.local_id == 0) {
                        fileLocation = null;
                        str = monoForumTitle;
                        chat = chat3;
                        user = null;
                    }
                }
                fileLocation = fileLocation2;
                str = monoForumTitle;
                chat = chat3;
                user = null;
            } else {
                chat = chat3;
                str = _UrlKt.FRAGMENT_ENCODE_SET;
                user = null;
                fileLocation = null;
            }
        }
        RemoteViews remoteViews3 = new RemoteViews(this.mContext.getPackageName(), C2888R.layout.shortcut_widget_item);
        remoteViews3.setTextViewText(C2888R.id.shortcut_widget_item_text, str);
        if (fileLocation != null) {
            try {
                bitmapDecodeFile = BitmapFactory.decodeFile(FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(fileLocation, true).toString());
            } catch (Throwable th) {
                th = th;
                i2 = 1;
                FileLog.m1136e(th);
                messageObject = (MessageObject) this.messageObjects.get(l.longValue());
                dialog = (TLRPC.Dialog) this.dialogs.get(l.longValue());
                if (messageObject == null) {
                }
                if (dialog == null) {
                    i4 = 0;
                    remoteViews3.setViewVisibility(C2888R.id.shortcut_widget_item_badge, 8);
                }
                Bundle bundle2 = new Bundle();
                if (!DialogObject.isUserDialog(l.longValue())) {
                }
                bundle2.putInt("currentAccount", this.accountInstance.getCurrentAccount());
                Intent intent2 = new Intent();
                intent2.putExtras(bundle2);
                remoteViews3.setOnClickFillInIntent(C2888R.id.shortcut_widget_item, intent2);
                remoteViews3.setViewVisibility(C2888R.id.shortcut_widget_item_divider, i != getCount() ? 8 : i4);
                return remoteViews3;
            }
        } else {
            bitmapDecodeFile = null;
        }
        int iM1124dp = AndroidUtilities.m1124dp(48.0f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iM1124dp, iM1124dp, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.eraseColor(0);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        if (bitmapDecodeFile == null) {
            if (user != null) {
                avatarDrawable = new AvatarDrawable(user);
                if (UserObject.isReplyUser(user)) {
                    avatarDrawable.setAvatarType(12);
                } else if (UserObject.isUserSelf(user)) {
                    avatarDrawable.setAvatarType(1);
                }
            } else {
                avatarDrawable = new AvatarDrawable();
                avatarDrawable.setInfo(this.accountInstance.getCurrentAccount(), chat);
            }
            avatarDrawable.setRoundRadius(ExteraConfig.getAvatarCorners(iM1124dp, true, chat != null && chat.forum));
            avatarDrawable.setBounds(0, 0, iM1124dp, iM1124dp);
            avatarDrawable.draw(canvas);
            i2 = 1;
        } else {
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader = new BitmapShader(bitmapDecodeFile, tileMode, tileMode);
            if (this.roundPaint == null) {
                this.roundPaint = new Paint(1);
                this.bitmapRect = new RectF();
            }
            float width = iM1124dp / bitmapDecodeFile.getWidth();
            canvas.save();
            canvas.scale(width, width);
            float avatarCorners = ExteraConfig.getAvatarCorners(bitmapDecodeFile.getWidth(), true, chat != null && chat.forum);
            this.roundPaint.setShader(bitmapShader);
            i2 = 1;
            try {
                this.bitmapRect.set(0.0f, 0.0f, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight());
                canvas.drawRoundRect(this.bitmapRect, avatarCorners, avatarCorners, this.roundPaint);
                canvas.restore();
            } catch (Throwable th2) {
                th = th2;
                FileLog.m1136e(th);
            }
        }
        canvas.setBitmap(null);
        remoteViews3.setImageViewBitmap(C2888R.id.shortcut_widget_item_avatar, bitmapCreateBitmap);
        messageObject = (MessageObject) this.messageObjects.get(l.longValue());
        dialog = (TLRPC.Dialog) this.dialogs.get(l.longValue());
        if (messageObject == null) {
            long fromChatId = messageObject.getFromChatId();
            if (DialogObject.isUserDialog(fromChatId)) {
                user2 = this.accountInstance.getMessagesController().getUser(Long.valueOf(fromChatId));
                chat2 = null;
            } else {
                chat2 = this.accountInstance.getMessagesController().getChat(Long.valueOf(-fromChatId));
                user2 = null;
            }
            int color = this.mContext.getResources().getColor(C2888R.color.widget_text);
            if (messageObject.messageOwner instanceof TLRPC.TL_messageService) {
                if (ChatObject.isChannel(chat)) {
                    TLRPC.MessageAction messageAction = messageObject.messageOwner.action;
                    CharSequence charSequence2 = str4;
                    if (!(messageAction instanceof TLRPC.TL_messageActionHistoryClear)) {
                        charSequence2 = str4;
                        if (!(messageAction instanceof TLRPC.TL_messageActionChannelMigrateFrom)) {
                            charSequence2 = messageObject.messageText;
                        }
                    }
                    color = this.mContext.getResources().getColor(C2888R.color.widget_action_text);
                    string2 = charSequence2;
                }
            } else if (chat != null && chat2 == null && (!ChatObject.isChannel(chat) || ChatObject.isMegagroup(chat))) {
                if (messageObject.isOutOwner()) {
                    strReplace = LocaleController.getString(C2888R.string.FromYou);
                } else if (user2 != null) {
                    strReplace = UserObject.getFirstName(user2).replace("\n", _UrlKt.FRAGMENT_ENCODE_SET);
                } else {
                    strReplace = "DELETED";
                }
                String str5 = strReplace;
                CharSequence charSequence3 = messageObject.caption;
                try {
                    if (charSequence3 != null) {
                        String string3 = charSequence3.toString();
                        if (string3.length() > 150) {
                            string3 = string3.substring(0, 150);
                        }
                        if (messageObject.isVideo()) {
                            str3 = "📹 ";
                        } else if (messageObject.isVoice()) {
                            str3 = "🎤 ";
                        } else if (messageObject.isMusic()) {
                            str3 = "🎧 ";
                        } else {
                            str3 = messageObject.isPhoto() ? "🖼 " : "📎 ";
                        }
                        Object[] objArr = new Object[2];
                        objArr[0] = str3 + string3.replace('\n', ' ');
                        objArr[i2] = str5;
                        spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(String.format("%2$s: \u2068%1$s\u2069", objArr));
                    } else if (messageObject.messageOwner.media != null && !messageObject.isMediaEmpty()) {
                        color = this.mContext.getResources().getColor(C2888R.color.widget_action_text);
                        TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
                        if (messageMedia instanceof TLRPC.TL_messageMediaPoll) {
                            Object[] objArr2 = new Object[i2];
                            objArr2[0] = ((TLRPC.TL_messageMediaPoll) messageMedia).poll.question.text;
                            string = String.format("📊 \u2068%s\u2069", objArr2);
                            c2 = 0;
                        } else {
                            int i7 = i2;
                            if (messageMedia instanceof TLRPC.TL_messageMediaGame) {
                                Object[] objArr3 = new Object[i7];
                                objArr3[0] = messageMedia.game.title;
                                string = String.format("🎮 \u2068%s\u2069", objArr3);
                                c2 = 0;
                                i2 = i7;
                            } else {
                                if (messageObject.type == 14) {
                                    String musicAuthor = messageObject.getMusicAuthor();
                                    String musicTitle = messageObject.getMusicTitle();
                                    c2 = 0;
                                    i2 = i7;
                                    i6 = 2;
                                    Object[] objArr4 = new Object[2];
                                    objArr4[0] = musicAuthor;
                                    objArr4[i2] = musicTitle;
                                    string = String.format("🎧 \u2068%s - %s\u2069", objArr4);
                                } else {
                                    c2 = 0;
                                    i2 = i7;
                                    i6 = 2;
                                    string = messageObject.messageText.toString();
                                }
                                Object[] objArr5 = new Object[i6];
                                objArr5[c2] = string.replace('\n', ' ');
                                objArr5[i2] = str5;
                                SpannableStringBuilder spannableStringBuilderValueOf2 = SpannableStringBuilder.valueOf(String.format("%2$s: \u2068%1$s\u2069", objArr5));
                                spannableStringBuilderValueOf2.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_attachMessage), str5.length() + 2, spannableStringBuilderValueOf2.length(), 33);
                                spannableStringBuilder = spannableStringBuilderValueOf2;
                                spannableStringBuilder.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_nameMessage), 0, str5.length() + 1, 33);
                                string2 = spannableStringBuilder;
                            }
                        }
                        i6 = 2;
                        Object[] objArr52 = new Object[i6];
                        objArr52[c2] = string.replace('\n', ' ');
                        objArr52[i2] = str5;
                        SpannableStringBuilder spannableStringBuilderValueOf22 = SpannableStringBuilder.valueOf(String.format("%2$s: \u2068%1$s\u2069", objArr52));
                        spannableStringBuilderValueOf22.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_attachMessage), str5.length() + 2, spannableStringBuilderValueOf22.length(), 33);
                        spannableStringBuilder = spannableStringBuilderValueOf22;
                        spannableStringBuilder.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_nameMessage), 0, str5.length() + 1, 33);
                        string2 = spannableStringBuilder;
                    } else {
                        String strSubstring = messageObject.messageOwner.message;
                        if (strSubstring != null) {
                            if (strSubstring.length() > 150) {
                                c = 0;
                                strSubstring = strSubstring.substring(0, 150);
                            } else {
                                c = 0;
                            }
                            Object[] objArr6 = new Object[2];
                            objArr6[c] = strSubstring.replace('\n', ' ').trim();
                            objArr6[1] = str5;
                            spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(String.format("%2$s: \u2068%1$s\u2069", objArr6));
                        } else {
                            spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(_UrlKt.FRAGMENT_ENCODE_SET);
                        }
                    }
                    spannableStringBuilder.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_nameMessage), 0, str5.length() + 1, 33);
                    string2 = spannableStringBuilder;
                } catch (Exception e) {
                    FileLog.m1136e(e);
                    string2 = spannableStringBuilder;
                }
                spannableStringBuilder = spannableStringBuilderValueOf;
            } else {
                TLRPC.MessageMedia messageMedia2 = messageObject.messageOwner.media;
                if ((messageMedia2 instanceof TLRPC.TL_messageMediaPhoto) && (messageMedia2.photo instanceof TLRPC.TL_photoEmpty) && messageMedia2.ttl_seconds != 0) {
                    string2 = LocaleController.getString(C2888R.string.AttachPhotoExpired);
                } else if ((messageMedia2 instanceof TLRPC.TL_messageMediaDocument) && (messageMedia2.document instanceof TLRPC.TL_documentEmpty) && messageMedia2.ttl_seconds != 0) {
                    string2 = LocaleController.getString(C2888R.string.AttachVideoExpired);
                } else if (messageObject.caption != null) {
                    if (messageObject.isVideo()) {
                        str2 = "📹 ";
                    } else if (messageObject.isVoice()) {
                        str2 = "🎤 ";
                    } else if (messageObject.isMusic()) {
                        str2 = "🎧 ";
                    } else {
                        str2 = messageObject.isPhoto() ? "🖼 " : "📎 ";
                    }
                    string2 = str2 + ((Object) messageObject.caption);
                } else {
                    if (messageMedia2 instanceof TLRPC.TL_messageMediaPoll) {
                        charSequence = "📊 " + ((TLRPC.TL_messageMediaPoll) messageMedia2).poll.question.text;
                    } else if (messageMedia2 instanceof TLRPC.TL_messageMediaGame) {
                        charSequence = "🎮 " + messageObject.messageOwner.media.game.title;
                    } else if (messageObject.type == 14) {
                        charSequence = String.format("🎧 %s - %s", messageObject.getMusicAuthor(), messageObject.getMusicTitle());
                    } else {
                        charSequence = messageObject.messageText;
                        AndroidUtilities.highlightText(charSequence, messageObject.highlightedWords, (Theme.ResourcesProvider) null);
                    }
                    CharSequence charSequence4 = charSequence;
                    string2 = charSequence4;
                    if (messageObject.messageOwner.media != null) {
                        string2 = charSequence4;
                        if (!messageObject.isMediaEmpty()) {
                            color = this.mContext.getResources().getColor(C2888R.color.widget_action_text);
                            string2 = charSequence4;
                        }
                    }
                }
            }
            remoteViews3.setTextViewText(C2888R.id.shortcut_widget_item_time, LocaleController.stringForMessageListDate(messageObject.messageOwner.date));
            remoteViews3.setTextViewText(C2888R.id.shortcut_widget_item_message, string2.toString());
            remoteViews3.setTextColor(C2888R.id.shortcut_widget_item_message, color);
        } else {
            if (dialog != null && (i3 = dialog.last_message_date) != 0) {
                remoteViews3.setTextViewText(C2888R.id.shortcut_widget_item_time, LocaleController.stringForMessageListDate(i3));
            } else {
                remoteViews3.setTextViewText(C2888R.id.shortcut_widget_item_time, _UrlKt.FRAGMENT_ENCODE_SET);
            }
            remoteViews3.setTextViewText(C2888R.id.shortcut_widget_item_message, _UrlKt.FRAGMENT_ENCODE_SET);
        }
        if (dialog == null && (i5 = dialog.unread_count) > 0) {
            i4 = 0;
            remoteViews3.setTextViewText(C2888R.id.shortcut_widget_item_badge, String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(i5)));
            remoteViews3.setViewVisibility(C2888R.id.shortcut_widget_item_badge, 0);
            if (this.accountInstance.getMessagesController().isDialogMuted(dialog.f1666id, 0L)) {
                remoteViews3.setBoolean(C2888R.id.shortcut_widget_item_badge, "setEnabled", false);
                remoteViews3.setInt(C2888R.id.shortcut_widget_item_badge, "setBackgroundResource", C2888R.drawable.widget_badge_muted_background);
            } else {
                remoteViews3.setBoolean(C2888R.id.shortcut_widget_item_badge, "setEnabled", true);
                remoteViews3.setInt(C2888R.id.shortcut_widget_item_badge, "setBackgroundResource", C2888R.drawable.widget_badge_background);
            }
        } else {
            i4 = 0;
            remoteViews3.setViewVisibility(C2888R.id.shortcut_widget_item_badge, 8);
        }
        Bundle bundle22 = new Bundle();
        if (!DialogObject.isUserDialog(l.longValue())) {
            bundle22.putLong("userId", l.longValue());
        } else {
            bundle22.putLong("chatId", -l.longValue());
        }
        bundle22.putInt("currentAccount", this.accountInstance.getCurrentAccount());
        Intent intent22 = new Intent();
        intent22.putExtras(bundle22);
        remoteViews3.setOnClickFillInIntent(C2888R.id.shortcut_widget_item, intent22);
        remoteViews3.setViewVisibility(C2888R.id.shortcut_widget_item_divider, i != getCount() ? 8 : i4);
        return remoteViews3;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public void onDataSetChanged() {
        this.dids.clear();
        this.messageObjects.clear();
        AccountInstance accountInstance = this.accountInstance;
        if (accountInstance == null || !accountInstance.getUserConfig().isClientActivated()) {
            return;
        }
        ArrayList<TLRPC.User> arrayList = new ArrayList<>();
        ArrayList<TLRPC.Chat> arrayList2 = new ArrayList<>();
        LongSparseArray longSparseArray = new LongSparseArray();
        this.accountInstance.getMessagesStorage().getWidgetDialogs(this.appWidgetId, 0, this.dids, this.dialogs, longSparseArray, arrayList, arrayList2);
        this.accountInstance.getMessagesController().putUsers(arrayList, true);
        this.accountInstance.getMessagesController().putChats(arrayList2, true);
        this.messageObjects.clear();
        int size = longSparseArray.size();
        for (int i = 0; i < size; i++) {
            this.messageObjects.put(longSparseArray.keyAt(i), new MessageObject(this.accountInstance.getCurrentAccount(), (TLRPC.Message) longSparseArray.valueAt(i), (LongSparseArray) null, (LongSparseArray) null, false, true));
        }
    }
}
