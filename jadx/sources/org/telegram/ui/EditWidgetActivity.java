package org.telegram.ui;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.SpannableStringBuilder;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.dx.io.Opcodes;
import com.exteragram.messenger.ExteraConfig;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ChatsWidgetProvider;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.ContactsWidgetProvider;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Cells.ChatActionCell;
import org.telegram.ui.Cells.GroupCreateUserCell;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackgroundGradientDrawable;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.ForegroundColorSpanThemable;
import org.telegram.ui.Components.InviteMembersBottomSheet;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.MotionBackgroundDrawable;
import org.telegram.ui.Components.RecyclerListView;

/* JADX INFO: loaded from: classes6.dex */
public class EditWidgetActivity extends BaseFragment {
    private int chatsEndRow;
    private int chatsStartRow;
    private int currentWidgetId;
    private EditWidgetActivityDelegate delegate;
    private int infoRow;
    private ItemTouchHelper itemTouchHelper;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private ImageView previewImageView;
    private int previewRow;
    private int rowCount;
    private int selectChatsRow;
    private ArrayList selectedDialogs = new ArrayList();
    private WidgetPreviewCell widgetPreviewCell;
    private int widgetType;

    public interface EditWidgetActivityDelegate {
        void didSelectDialogs(ArrayList arrayList);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return false;
    }

    public class TouchHelperCallback extends ItemTouchHelper.Callback {
        private boolean moved;

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean isLongPressDragEnabled() {
            return false;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
        }

        public TouchHelperCallback() {
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getItemViewType() != 3) {
                return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
            }
            return ItemTouchHelper.Callback.makeMovementFlags(3, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            if (viewHolder.getItemViewType() != viewHolder2.getItemViewType()) {
                return false;
            }
            int adapterPosition = viewHolder.getAdapterPosition();
            int adapterPosition2 = viewHolder2.getAdapterPosition();
            if (EditWidgetActivity.this.listAdapter.swapElements(adapterPosition, adapterPosition2)) {
                ((GroupCreateUserCell) viewHolder.itemView).setDrawDivider(adapterPosition2 != EditWidgetActivity.this.chatsEndRow - 1);
                ((GroupCreateUserCell) viewHolder2.itemView).setDrawDivider(adapterPosition != EditWidgetActivity.this.chatsEndRow - 1);
                this.moved = true;
            }
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
            super.onChildDraw(canvas, recyclerView, viewHolder, f, f2, i, z);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
            if (i != 0) {
                EditWidgetActivity.this.listView.cancelClickRunnables(false);
                viewHolder.itemView.setPressed(true);
            } else if (this.moved) {
                if (EditWidgetActivity.this.widgetPreviewCell != null) {
                    EditWidgetActivity.this.widgetPreviewCell.updateDialogs();
                }
                this.moved = false;
            }
            super.onSelectedChanged(viewHolder, i);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            super.clearView(recyclerView, viewHolder);
            viewHolder.itemView.setPressed(false);
        }
    }

    public class WidgetPreviewCell extends FrameLayout {
        private Drawable backgroundDrawable;
        private BackgroundGradientDrawable.Disposable backgroundGradientDisposable;
        private RectF bitmapRect;
        private ViewGroup[] cells;
        private Drawable oldBackgroundDrawable;
        private BackgroundGradientDrawable.Disposable oldBackgroundGradientDisposable;
        private Paint roundPaint;
        private Drawable shadowDrawable;

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchSetPressed(boolean z) {
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        public WidgetPreviewCell(Context context) {
            super(context);
            this.roundPaint = new Paint(1);
            this.bitmapRect = new RectF();
            this.cells = new ViewGroup[2];
            int i = 0;
            setWillNotDraw(false);
            setPadding(0, AndroidUtilities.dp(24.0f), 0, AndroidUtilities.dp(24.0f));
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, LayoutHelper.createFrame(-2, -2, 17));
            ChatActionCell chatActionCell = new ChatActionCell(context);
            chatActionCell.setCustomText(LocaleController.getString(C2484R.string.WidgetPreview));
            linearLayout.addView(chatActionCell, LayoutHelper.createLinear(-2, -2, 17, 0, 0, 0, 4));
            LinearLayout linearLayout2 = new LinearLayout(context);
            linearLayout2.setOrientation(1);
            linearLayout2.setBackgroundResource(C2484R.drawable.widget_bg);
            linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-2, -2, 17, 10, 0, 10, 0));
            EditWidgetActivity.this.previewImageView = new ImageView(context);
            if (EditWidgetActivity.this.widgetType == 0) {
                while (i < 2) {
                    this.cells[i] = (ViewGroup) EditWidgetActivity.this.getParentActivity().getLayoutInflater().inflate(C2484R.layout.shortcut_widget_item, (ViewGroup) null);
                    linearLayout2.addView(this.cells[i], LayoutHelper.createLinear(-1, -2));
                    i++;
                }
                linearLayout2.addView(EditWidgetActivity.this.previewImageView, LayoutHelper.createLinear(Opcodes.MUL_INT_LIT8, 160, 17));
                EditWidgetActivity.this.previewImageView.setImageResource(C2484R.drawable.chats_widget_preview);
            } else if (EditWidgetActivity.this.widgetType == 1) {
                while (i < 2) {
                    this.cells[i] = (ViewGroup) EditWidgetActivity.this.getParentActivity().getLayoutInflater().inflate(C2484R.layout.contacts_widget_item, (ViewGroup) null);
                    linearLayout2.addView(this.cells[i], LayoutHelper.createLinear(160, -2));
                    i++;
                }
                linearLayout2.addView(EditWidgetActivity.this.previewImageView, LayoutHelper.createLinear(160, 160, 17));
                EditWidgetActivity.this.previewImageView.setImageResource(C2484R.drawable.contacts_widget_preview);
            }
            updateDialogs();
            this.shadowDrawable = Theme.getThemedDrawableByKey(context, C2484R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(9:162|(1:164)(2:166|(1:168)(8:169|(1:171)(1:172)|173|417|174|178|421|186))|165|173|417|174|178|421|186) */
        /* JADX WARN: Code restructure failed: missing block: B:176:0x03eb, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:177:0x03ec, code lost:
        
            org.telegram.messenger.FileLog.m955e(r0);
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:121:0x0296  */
        /* JADX WARN: Removed duplicated region for block: B:190:0x043c  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x008a  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0095  */
        /* JADX WARN: Removed duplicated region for block: B:264:0x0692  */
        /* JADX WARN: Removed duplicated region for block: B:390:0x08c2  */
        /* JADX WARN: Removed duplicated region for block: B:403:0x090a  */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v5, types: [boolean, int] */
        /* JADX WARN: Type inference failed for: r11v7 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void updateDialogs() {
            TLRPC.Dialog tL_dialog;
            int i;
            String str;
            TLRPC.FileLocation fileLocation;
            TLRPC.Chat chat;
            TLRPC.User user;
            Bitmap bitmapDecodeFile;
            int i2;
            AvatarDrawable avatarDrawable;
            String firstName;
            TLRPC.UserProfilePhoto userProfilePhoto;
            TLRPC.Dialog dialog;
            TLRPC.Dialog tL_dialog2;
            TLRPC.Chat chat2;
            String name;
            TLRPC.User user2;
            TLRPC.FileLocation fileLocation2;
            Bitmap bitmapDecodeFile2;
            TLRPC.Chat chat3;
            TLRPC.User user3;
            CharSequence charSequence;
            String strReplace;
            SpannableStringBuilder spannableStringBuilderValueOf;
            int i3;
            String string;
            SpannableStringBuilder spannableStringBuilder;
            CharSequence string2;
            AvatarDrawable avatarDrawable2;
            TLRPC.UserProfilePhoto userProfilePhoto2;
            int i4 = 12;
            float f = 0.0f;
            int i5 = 8;
            int i6 = 2;
            ?? r11 = 1;
            if (EditWidgetActivity.this.widgetType == 0) {
                int i7 = 0;
                while (i7 < i6) {
                    if (EditWidgetActivity.this.selectedDialogs.isEmpty()) {
                        tL_dialog2 = i7 < EditWidgetActivity.this.getMessagesController().dialogsServerOnly.size() ? EditWidgetActivity.this.getMessagesController().dialogsServerOnly.get(i7) : null;
                    } else if (i7 < EditWidgetActivity.this.selectedDialogs.size()) {
                        tL_dialog2 = (TLRPC.Dialog) EditWidgetActivity.this.getMessagesController().dialogs_dict.get(((Long) EditWidgetActivity.this.selectedDialogs.get(i7)).longValue());
                        if (tL_dialog2 == null) {
                            tL_dialog2 = new TLRPC.TL_dialog();
                            tL_dialog2.id = ((Long) EditWidgetActivity.this.selectedDialogs.get(i7)).longValue();
                        }
                    } else {
                        dialog = null;
                        if (dialog != null) {
                            this.cells[i7].setVisibility(i5);
                        } else {
                            this.cells[i7].setVisibility(0);
                            if (DialogObject.isUserDialog(dialog.id)) {
                                user2 = EditWidgetActivity.this.getMessagesController().getUser(Long.valueOf(dialog.id));
                                if (user2 != null) {
                                    if (UserObject.isUserSelf(user2)) {
                                        name = LocaleController.getString(C2484R.string.SavedMessages);
                                    } else if (UserObject.isReplyUser(user2)) {
                                        name = LocaleController.getString(C2484R.string.RepliesTitle);
                                    } else if (UserObject.isDeleted(user2)) {
                                        name = LocaleController.getString(C2484R.string.HiddenName);
                                    } else {
                                        name = ContactsController.formatName(user2.first_name, user2.last_name);
                                    }
                                    if (UserObject.isReplyUser(user2) || UserObject.isUserSelf(user2) || (userProfilePhoto2 = user2.photo) == null || (fileLocation2 = userProfilePhoto2.photo_small) == null || fileLocation2.volume_id == 0 || fileLocation2.local_id == 0) {
                                    }
                                    chat2 = null;
                                } else {
                                    name = _UrlKt.FRAGMENT_ENCODE_SET;
                                }
                                fileLocation2 = null;
                                chat2 = null;
                            } else {
                                TLRPC.Chat chat4 = EditWidgetActivity.this.getMessagesController().getChat(Long.valueOf(-dialog.id));
                                if (chat4 != null) {
                                    name = chat4.title;
                                    TLRPC.ChatPhoto chatPhoto = chat4.photo;
                                    if (chatPhoto == null || (fileLocation2 = chatPhoto.photo_small) == null || fileLocation2.volume_id == 0 || fileLocation2.local_id == 0) {
                                        chat2 = chat4;
                                    } else {
                                        chat2 = chat4;
                                        user2 = null;
                                    }
                                } else {
                                    chat2 = chat4;
                                    name = _UrlKt.FRAGMENT_ENCODE_SET;
                                }
                                user2 = null;
                                fileLocation2 = null;
                            }
                            ((TextView) this.cells[i7].findViewById(C2484R.id.shortcut_widget_item_text)).setText(name);
                            if (fileLocation2 != null) {
                                try {
                                    bitmapDecodeFile2 = BitmapFactory.decodeFile(EditWidgetActivity.this.getFileLoader().getPathToAttach(fileLocation2, r11).toString());
                                } catch (Throwable th) {
                                    FileLog.m955e(th);
                                }
                            } else {
                                bitmapDecodeFile2 = null;
                            }
                            int iDp = AndroidUtilities.dp(48.0f);
                            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iDp, iDp, Bitmap.Config.ARGB_8888);
                            bitmapCreateBitmap.eraseColor(0);
                            Canvas canvas = new Canvas(bitmapCreateBitmap);
                            if (bitmapDecodeFile2 == null) {
                                if (user2 != null) {
                                    AvatarDrawable avatarDrawable3 = new AvatarDrawable(user2);
                                    if (UserObject.isReplyUser(user2)) {
                                        avatarDrawable3.setAvatarType(i4);
                                        avatarDrawable2 = avatarDrawable3;
                                    } else {
                                        avatarDrawable2 = avatarDrawable3;
                                        if (UserObject.isUserSelf(user2)) {
                                            avatarDrawable3.setAvatarType(r11);
                                            avatarDrawable2 = avatarDrawable3;
                                        }
                                    }
                                } else {
                                    avatarDrawable2 = new AvatarDrawable(chat2);
                                }
                                avatarDrawable2.setRoundRadius(ExteraConfig.getAvatarCorners(iDp, r11, (chat2 == null || !chat2.forum) ? 0 : r11));
                                avatarDrawable2.setBounds(0, 0, iDp, iDp);
                                avatarDrawable2.draw(canvas);
                            } else {
                                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                                BitmapShader bitmapShader = new BitmapShader(bitmapDecodeFile2, tileMode, tileMode);
                                if (this.roundPaint == null) {
                                    this.roundPaint = new Paint((int) r11);
                                    this.bitmapRect = new RectF();
                                }
                                float width = iDp / bitmapDecodeFile2.getWidth();
                                canvas.save();
                                canvas.scale(width, width);
                                float avatarCorners = ExteraConfig.getAvatarCorners(bitmapDecodeFile2.getWidth(), r11, (chat2 == null || !chat2.forum) ? 0 : r11);
                                this.roundPaint.setShader(bitmapShader);
                                this.bitmapRect.set(f, f, bitmapDecodeFile2.getWidth(), bitmapDecodeFile2.getHeight());
                                canvas.drawRoundRect(this.bitmapRect, avatarCorners, avatarCorners, this.roundPaint);
                                canvas.restore();
                            }
                            canvas.setBitmap(null);
                            ((ImageView) this.cells[i7].findViewById(C2484R.id.shortcut_widget_item_avatar)).setImageBitmap(bitmapCreateBitmap);
                            ArrayList arrayList = (ArrayList) EditWidgetActivity.this.getMessagesController().dialogMessage.get(dialog.id);
                            MessageObject messageObject = (arrayList == null || arrayList.size() <= 0) ? null : (MessageObject) arrayList.get(0);
                            if (messageObject != null) {
                                long fromChatId = messageObject.getFromChatId();
                                if (fromChatId > 0) {
                                    user3 = EditWidgetActivity.this.getMessagesController().getUser(Long.valueOf(fromChatId));
                                    chat3 = null;
                                } else {
                                    chat3 = EditWidgetActivity.this.getMessagesController().getChat(Long.valueOf(-fromChatId));
                                    user3 = null;
                                }
                                int color = getContext().getResources().getColor(C2484R.color.widget_text);
                                if (messageObject.messageOwner instanceof TLRPC.TL_messageService) {
                                    if (ChatObject.isChannel(chat2)) {
                                        TLRPC.MessageAction messageAction = messageObject.messageOwner.action;
                                        boolean z = messageAction instanceof TLRPC.TL_messageActionHistoryClear;
                                        CharSequence charSequence2 = _UrlKt.FRAGMENT_ENCODE_SET;
                                        if (!z) {
                                            boolean z2 = messageAction instanceof TLRPC.TL_messageActionChannelMigrateFrom;
                                            charSequence2 = _UrlKt.FRAGMENT_ENCODE_SET;
                                            if (!z2) {
                                                charSequence2 = messageObject.messageText;
                                            }
                                        }
                                        color = getContext().getResources().getColor(C2484R.color.widget_action_text);
                                        string2 = charSequence2;
                                    }
                                } else {
                                    String str2 = "📎 ";
                                    if (chat2 != null) {
                                        int i8 = r11;
                                        if (chat2.id > 0 && chat3 == null && (!ChatObject.isChannel(chat2) || ChatObject.isMegagroup(chat2))) {
                                            if (messageObject.isOutOwner()) {
                                                strReplace = LocaleController.getString(C2484R.string.FromYou);
                                            } else if (user3 != null) {
                                                strReplace = UserObject.getFirstName(user3).replace("\n", _UrlKt.FRAGMENT_ENCODE_SET);
                                            } else {
                                                strReplace = "DELETED";
                                            }
                                            String str3 = strReplace;
                                            CharSequence charSequence3 = messageObject.caption;
                                            try {
                                                if (charSequence3 != null) {
                                                    String string3 = charSequence3.toString();
                                                    if (string3.length() > 150) {
                                                        string3 = string3.substring(0, 150);
                                                    }
                                                    if (messageObject.isVideo()) {
                                                        str2 = "📹 ";
                                                    } else if (messageObject.isVoice()) {
                                                        str2 = "🎤 ";
                                                    } else if (messageObject.isMusic()) {
                                                        str2 = "🎧 ";
                                                    } else if (messageObject.isPhoto()) {
                                                        str2 = "🖼 ";
                                                    }
                                                    Object[] objArr = new Object[2];
                                                    objArr[0] = str2 + string3.replace('\n', ' ');
                                                    objArr[i8] = str3;
                                                    spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(String.format("%2$s: \u2068%1$s\u2069", objArr));
                                                } else if (messageObject.messageOwner.media != null && !messageObject.isMediaEmpty()) {
                                                    color = getContext().getResources().getColor(C2484R.color.widget_action_text);
                                                    TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
                                                    if (messageMedia instanceof TLRPC.TL_messageMediaPoll) {
                                                        Object[] objArr2 = new Object[i8];
                                                        objArr2[0] = ((TLRPC.TL_messageMediaPoll) messageMedia).poll.question.text;
                                                        string = String.format("📊 \u2068%s\u2069", objArr2);
                                                    } else if (messageMedia instanceof TLRPC.TL_messageMediaGame) {
                                                        Object[] objArr3 = new Object[i8];
                                                        objArr3[0] = messageMedia.game.title;
                                                        string = String.format("🎮 \u2068%s\u2069", objArr3);
                                                        i8 = i8;
                                                    } else {
                                                        if (messageObject.type == 14) {
                                                            String musicAuthor = messageObject.getMusicAuthor();
                                                            String musicTitle = messageObject.getMusicTitle();
                                                            i8 = i8;
                                                            i3 = 2;
                                                            Object[] objArr4 = new Object[2];
                                                            objArr4[0] = musicAuthor;
                                                            objArr4[i8 == true ? 1 : 0] = musicTitle;
                                                            string = String.format("🎧 \u2068%s - %s\u2069", objArr4);
                                                        } else {
                                                            i8 = i8;
                                                            i3 = 2;
                                                            string = messageObject.messageText.toString();
                                                        }
                                                        Object[] objArr5 = new Object[i3];
                                                        objArr5[0] = string.replace('\n', ' ');
                                                        objArr5[i8] = str3;
                                                        SpannableStringBuilder spannableStringBuilderValueOf2 = SpannableStringBuilder.valueOf(String.format("%2$s: \u2068%1$s\u2069", objArr5));
                                                        spannableStringBuilderValueOf2.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_attachMessage), str3.length() + 2, spannableStringBuilderValueOf2.length(), 33);
                                                        spannableStringBuilder = spannableStringBuilderValueOf2;
                                                        spannableStringBuilder.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_nameMessage), 0, str3.length() + 1, 33);
                                                        string2 = spannableStringBuilder;
                                                    }
                                                    i3 = 2;
                                                    Object[] objArr52 = new Object[i3];
                                                    objArr52[0] = string.replace('\n', ' ');
                                                    objArr52[i8] = str3;
                                                    SpannableStringBuilder spannableStringBuilderValueOf22 = SpannableStringBuilder.valueOf(String.format("%2$s: \u2068%1$s\u2069", objArr52));
                                                    spannableStringBuilderValueOf22.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_attachMessage), str3.length() + 2, spannableStringBuilderValueOf22.length(), 33);
                                                    spannableStringBuilder = spannableStringBuilderValueOf22;
                                                    spannableStringBuilder.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_nameMessage), 0, str3.length() + 1, 33);
                                                    string2 = spannableStringBuilder;
                                                } else {
                                                    String strSubstring = messageObject.messageOwner.message;
                                                    if (strSubstring != null) {
                                                        if (strSubstring.length() > 150) {
                                                            strSubstring = strSubstring.substring(0, 150);
                                                        }
                                                        spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(String.format("%2$s: \u2068%1$s\u2069", strSubstring.replace('\n', ' ').trim(), str3));
                                                    } else {
                                                        spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(_UrlKt.FRAGMENT_ENCODE_SET);
                                                    }
                                                }
                                                spannableStringBuilder.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_nameMessage), 0, str3.length() + 1, 33);
                                                string2 = spannableStringBuilder;
                                            } catch (Exception e) {
                                                FileLog.m955e(e);
                                                string2 = spannableStringBuilder;
                                            }
                                            spannableStringBuilder = spannableStringBuilderValueOf;
                                        } else {
                                            TLRPC.MessageMedia messageMedia2 = messageObject.messageOwner.media;
                                            if ((messageMedia2 instanceof TLRPC.TL_messageMediaPhoto) && (messageMedia2.photo instanceof TLRPC.TL_photoEmpty) && messageMedia2.ttl_seconds != 0) {
                                                string2 = LocaleController.getString(C2484R.string.AttachPhotoExpired);
                                            } else if ((messageMedia2 instanceof TLRPC.TL_messageMediaDocument) && (messageMedia2.document instanceof TLRPC.TL_documentEmpty) && messageMedia2.ttl_seconds != 0) {
                                                string2 = LocaleController.getString(C2484R.string.AttachVideoExpired);
                                            } else if (messageObject.caption != null) {
                                                if (messageObject.isVideo()) {
                                                    str2 = "📹 ";
                                                } else if (messageObject.isVoice()) {
                                                    str2 = "🎤 ";
                                                } else if (messageObject.isMusic()) {
                                                    str2 = "🎧 ";
                                                } else if (messageObject.isPhoto()) {
                                                    str2 = "🖼 ";
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
                                                    CharSequence charSequence4 = messageObject.messageText;
                                                    AndroidUtilities.highlightText(charSequence4, messageObject.highlightedWords, (Theme.ResourcesProvider) null);
                                                    charSequence = charSequence4;
                                                }
                                                CharSequence charSequence5 = charSequence;
                                                string2 = charSequence5;
                                                if (messageObject.messageOwner.media != null) {
                                                    string2 = charSequence5;
                                                    if (!messageObject.isMediaEmpty()) {
                                                        color = getContext().getResources().getColor(C2484R.color.widget_action_text);
                                                        string2 = charSequence5;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                ((TextView) this.cells[i7].findViewById(C2484R.id.shortcut_widget_item_time)).setText(LocaleController.stringForMessageListDate(messageObject.messageOwner.date));
                                ((TextView) this.cells[i7].findViewById(C2484R.id.shortcut_widget_item_message)).setText(string2.toString());
                                ((TextView) this.cells[i7].findViewById(C2484R.id.shortcut_widget_item_message)).setTextColor(color);
                            } else {
                                if (dialog.last_message_date != 0) {
                                    ((TextView) this.cells[i7].findViewById(C2484R.id.shortcut_widget_item_time)).setText(LocaleController.stringForMessageListDate(dialog.last_message_date));
                                } else {
                                    ((TextView) this.cells[i7].findViewById(C2484R.id.shortcut_widget_item_time)).setText(_UrlKt.FRAGMENT_ENCODE_SET);
                                }
                                ((TextView) this.cells[i7].findViewById(C2484R.id.shortcut_widget_item_message)).setText(_UrlKt.FRAGMENT_ENCODE_SET);
                            }
                            if (dialog.unread_count > 0) {
                                ((TextView) this.cells[i7].findViewById(C2484R.id.shortcut_widget_item_badge)).setText(String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(dialog.unread_count)));
                                this.cells[i7].findViewById(C2484R.id.shortcut_widget_item_badge).setVisibility(0);
                                if (EditWidgetActivity.this.getMessagesController().isDialogMuted(dialog.id, 0L)) {
                                    this.cells[i7].findViewById(C2484R.id.shortcut_widget_item_badge).setBackgroundResource(C2484R.drawable.widget_counter_muted);
                                } else {
                                    this.cells[i7].findViewById(C2484R.id.shortcut_widget_item_badge).setBackgroundResource(C2484R.drawable.widget_counter);
                                }
                            } else {
                                this.cells[i7].findViewById(C2484R.id.shortcut_widget_item_badge).setVisibility(8);
                            }
                        }
                        i7++;
                        i4 = 12;
                        f = 0.0f;
                        i5 = 8;
                        i6 = 2;
                        r11 = 1;
                    }
                    dialog = tL_dialog2;
                    if (dialog != null) {
                    }
                    i7++;
                    i4 = 12;
                    f = 0.0f;
                    i5 = 8;
                    i6 = 2;
                    r11 = 1;
                }
                this.cells[0].findViewById(C2484R.id.shortcut_widget_item_divider).setVisibility(this.cells[1].getVisibility());
                this.cells[1].findViewById(C2484R.id.shortcut_widget_item_divider).setVisibility(8);
            } else if (EditWidgetActivity.this.widgetType == 1) {
                int i9 = 0;
                int i10 = 2;
                while (i9 < i10) {
                    int i11 = 0;
                    while (i11 < i10) {
                        int i12 = (i9 * 2) + i11;
                        if (EditWidgetActivity.this.selectedDialogs.isEmpty()) {
                            if (i12 < EditWidgetActivity.this.getMediaDataController().hints.size()) {
                                long j = EditWidgetActivity.this.getMediaDataController().hints.get(i12).peer.user_id;
                                TLRPC.Dialog tL_dialog3 = (TLRPC.Dialog) EditWidgetActivity.this.getMessagesController().dialogs_dict.get(j);
                                if (tL_dialog3 == null) {
                                    tL_dialog3 = new TLRPC.TL_dialog();
                                    tL_dialog3.id = j;
                                }
                                tL_dialog = tL_dialog3;
                            } else {
                                tL_dialog = null;
                            }
                        } else if (i12 < EditWidgetActivity.this.selectedDialogs.size()) {
                            tL_dialog = (TLRPC.Dialog) EditWidgetActivity.this.getMessagesController().dialogs_dict.get(((Long) EditWidgetActivity.this.selectedDialogs.get(i12)).longValue());
                            if (tL_dialog == null) {
                                tL_dialog = new TLRPC.TL_dialog();
                                tL_dialog.id = ((Long) EditWidgetActivity.this.selectedDialogs.get(i12)).longValue();
                            }
                        }
                        if (tL_dialog == null) {
                            this.cells[i9].findViewById(i11 == 0 ? C2484R.id.contacts_widget_item1 : C2484R.id.contacts_widget_item2).setVisibility(4);
                            if (i12 == 0 || i12 == 2) {
                                this.cells[i9].setVisibility(8);
                                i = 2;
                            } else {
                                i = 2;
                            }
                        } else {
                            this.cells[i9].findViewById(i11 == 0 ? C2484R.id.contacts_widget_item1 : C2484R.id.contacts_widget_item2).setVisibility(0);
                            i = 2;
                            if (i12 == 0 || i12 == 2) {
                                this.cells[i9].setVisibility(0);
                            }
                            if (DialogObject.isUserDialog(tL_dialog.id)) {
                                user = EditWidgetActivity.this.getMessagesController().getUser(Long.valueOf(tL_dialog.id));
                                if (UserObject.isUserSelf(user)) {
                                    firstName = LocaleController.getString(C2484R.string.SavedMessages);
                                } else if (UserObject.isReplyUser(user)) {
                                    firstName = LocaleController.getString(C2484R.string.RepliesTitle);
                                } else if (UserObject.isDeleted(user)) {
                                    firstName = LocaleController.getString(C2484R.string.HiddenName);
                                } else {
                                    firstName = UserObject.getFirstName(user);
                                }
                                if (UserObject.isReplyUser(user) || UserObject.isUserSelf(user) || user == null || (userProfilePhoto = user.photo) == null || (fileLocation = userProfilePhoto.photo_small) == null || fileLocation.volume_id == 0 || fileLocation.local_id == 0) {
                                    str = firstName;
                                    chat = null;
                                    fileLocation = null;
                                } else {
                                    str = firstName;
                                    chat = null;
                                }
                            } else {
                                TLRPC.Chat chat5 = EditWidgetActivity.this.getMessagesController().getChat(Long.valueOf(-tL_dialog.id));
                                String str4 = chat5.title;
                                TLRPC.ChatPhoto chatPhoto2 = chat5.photo;
                                if (chatPhoto2 != null && (fileLocation = chatPhoto2.photo_small) != null) {
                                    if (fileLocation.volume_id != 0 && fileLocation.local_id != 0) {
                                        str = str4;
                                    }
                                    chat = chat5;
                                    user = null;
                                }
                                str = str4;
                                fileLocation = null;
                                chat = chat5;
                                user = null;
                            }
                            ((TextView) this.cells[i9].findViewById(i11 == 0 ? C2484R.id.contacts_widget_item_text1 : C2484R.id.contacts_widget_item_text2)).setText(str);
                            if (fileLocation != null) {
                                try {
                                    bitmapDecodeFile = BitmapFactory.decodeFile(EditWidgetActivity.this.getFileLoader().getPathToAttach(fileLocation, true).toString());
                                } catch (Throwable th2) {
                                    th = th2;
                                    FileLog.m955e(th);
                                    i2 = tL_dialog.unread_count;
                                    if (i2 > 0) {
                                    }
                                    i11++;
                                    i10 = i;
                                }
                            } else {
                                bitmapDecodeFile = null;
                            }
                            int iDp2 = AndroidUtilities.dp(48.0f);
                            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(iDp2, iDp2, Bitmap.Config.ARGB_8888);
                            bitmapCreateBitmap2.eraseColor(0);
                            Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
                            if (bitmapDecodeFile == null) {
                                if (user != null) {
                                    try {
                                        avatarDrawable = new AvatarDrawable(user);
                                        if (UserObject.isReplyUser(user)) {
                                            try {
                                                avatarDrawable.setAvatarType(12);
                                            } catch (Throwable th3) {
                                                th = th3;
                                                FileLog.m955e(th);
                                                i2 = tL_dialog.unread_count;
                                                if (i2 > 0) {
                                                }
                                                i11++;
                                                i10 = i;
                                            }
                                        } else if (UserObject.isUserSelf(user)) {
                                            avatarDrawable.setAvatarType(1);
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        FileLog.m955e(th);
                                        i2 = tL_dialog.unread_count;
                                        if (i2 > 0) {
                                        }
                                        i11++;
                                        i10 = i;
                                    }
                                } else {
                                    avatarDrawable = new AvatarDrawable(chat);
                                }
                                avatarDrawable.setBounds(0, 0, iDp2, iDp2);
                                avatarDrawable.setRoundRadius(ExteraConfig.getAvatarCorners(iDp2, true, chat != null && chat.forum));
                                avatarDrawable.draw(canvas2);
                            } else {
                                Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
                                BitmapShader bitmapShader2 = new BitmapShader(bitmapDecodeFile, tileMode2, tileMode2);
                                float width2 = iDp2 / bitmapDecodeFile.getWidth();
                                canvas2.save();
                                canvas2.scale(width2, width2);
                                float avatarCorners2 = ExteraConfig.getAvatarCorners(bitmapDecodeFile.getWidth(), true, chat != null && chat.forum);
                                this.roundPaint.setShader(bitmapShader2);
                                try {
                                    this.bitmapRect.set(0.0f, 0.0f, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight());
                                    canvas2.drawRoundRect(this.bitmapRect, avatarCorners2, avatarCorners2, this.roundPaint);
                                    canvas2.restore();
                                } catch (Throwable th5) {
                                    th = th5;
                                    FileLog.m955e(th);
                                    i2 = tL_dialog.unread_count;
                                    if (i2 > 0) {
                                    }
                                    i11++;
                                    i10 = i;
                                }
                            }
                            try {
                                canvas2.setBitmap(null);
                                ((ImageView) this.cells[i9].findViewById(i11 == 0 ? C2484R.id.contacts_widget_item_avatar1 : C2484R.id.contacts_widget_item_avatar2)).setImageBitmap(bitmapCreateBitmap2);
                            } catch (Throwable th6) {
                                th = th6;
                                FileLog.m955e(th);
                            }
                            i2 = tL_dialog.unread_count;
                            if (i2 > 0) {
                                ((TextView) this.cells[i9].findViewById(i11 == 0 ? C2484R.id.contacts_widget_item_badge1 : C2484R.id.contacts_widget_item_badge2)).setText(i2 > 99 ? String.format("%d+", 99) : String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(i2)));
                                this.cells[i9].findViewById(i11 == 0 ? C2484R.id.contacts_widget_item_badge_bg1 : C2484R.id.contacts_widget_item_badge_bg2).setVisibility(0);
                            } else {
                                this.cells[i9].findViewById(i11 == 0 ? C2484R.id.contacts_widget_item_badge_bg1 : C2484R.id.contacts_widget_item_badge_bg2).setVisibility(8);
                            }
                        }
                        i11++;
                        i10 = i;
                    }
                    i9++;
                    i10 = i10;
                }
            }
            if (this.cells[0].getVisibility() == 0) {
                EditWidgetActivity.this.previewImageView.setVisibility(8);
            } else {
                EditWidgetActivity.this.previewImageView.setVisibility(0);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(264.0f), TLObject.FLAG_30));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            Drawable cachedWallpaperNonBlocking = Theme.getCachedWallpaperNonBlocking();
            if (cachedWallpaperNonBlocking != this.backgroundDrawable && cachedWallpaperNonBlocking != null) {
                if (Theme.isAnimatingColor()) {
                    this.oldBackgroundDrawable = this.backgroundDrawable;
                    this.oldBackgroundGradientDisposable = this.backgroundGradientDisposable;
                } else {
                    BackgroundGradientDrawable.Disposable disposable = this.backgroundGradientDisposable;
                    if (disposable != null) {
                        disposable.dispose();
                        this.backgroundGradientDisposable = null;
                    }
                }
                this.backgroundDrawable = cachedWallpaperNonBlocking;
            }
            float themeAnimationValue = ((BaseFragment) EditWidgetActivity.this).parentLayout.getThemeAnimationValue();
            int i = 0;
            while (i < 2) {
                Drawable drawable = i == 0 ? this.oldBackgroundDrawable : this.backgroundDrawable;
                if (drawable != null) {
                    if (i == 1 && this.oldBackgroundDrawable != null && ((BaseFragment) EditWidgetActivity.this).parentLayout != null) {
                        drawable.setAlpha((int) (255.0f * themeAnimationValue));
                    } else {
                        drawable.setAlpha(255);
                    }
                    if ((drawable instanceof ColorDrawable) || (drawable instanceof GradientDrawable) || (drawable instanceof MotionBackgroundDrawable)) {
                        drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                        if (drawable instanceof BackgroundGradientDrawable) {
                            this.backgroundGradientDisposable = ((BackgroundGradientDrawable) drawable).drawExactBoundsSize(canvas, this);
                        } else {
                            drawable.draw(canvas);
                        }
                    } else if (drawable instanceof BitmapDrawable) {
                        if (((BitmapDrawable) drawable).getTileModeX() == Shader.TileMode.REPEAT) {
                            canvas.save();
                            float f = 2.0f / AndroidUtilities.density;
                            canvas.scale(f, f);
                            drawable.setBounds(0, 0, (int) Math.ceil(getMeasuredWidth() / f), (int) Math.ceil(getMeasuredHeight() / f));
                        } else {
                            int measuredHeight = getMeasuredHeight();
                            float fMax = Math.max(getMeasuredWidth() / drawable.getIntrinsicWidth(), measuredHeight / drawable.getIntrinsicHeight());
                            int iCeil = (int) Math.ceil(drawable.getIntrinsicWidth() * fMax);
                            int iCeil2 = (int) Math.ceil(drawable.getIntrinsicHeight() * fMax);
                            int measuredWidth = (getMeasuredWidth() - iCeil) / 2;
                            int i2 = (measuredHeight - iCeil2) / 2;
                            canvas.save();
                            canvas.clipRect(0, 0, iCeil, getMeasuredHeight());
                            drawable.setBounds(measuredWidth, i2, iCeil + measuredWidth, iCeil2 + i2);
                        }
                        drawable.draw(canvas);
                        canvas.restore();
                    }
                    if (i == 0 && this.oldBackgroundDrawable != null && themeAnimationValue >= 1.0f) {
                        BackgroundGradientDrawable.Disposable disposable2 = this.oldBackgroundGradientDisposable;
                        if (disposable2 != null) {
                            disposable2.dispose();
                            this.oldBackgroundGradientDisposable = null;
                        }
                        this.oldBackgroundDrawable = null;
                        invalidate();
                    }
                }
                i++;
            }
            this.shadowDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            this.shadowDrawable.draw(canvas);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            BackgroundGradientDrawable.Disposable disposable = this.backgroundGradientDisposable;
            if (disposable != null) {
                disposable.dispose();
                this.backgroundGradientDisposable = null;
            }
            BackgroundGradientDrawable.Disposable disposable2 = this.oldBackgroundGradientDisposable;
            if (disposable2 != null) {
                disposable2.dispose();
                this.oldBackgroundGradientDisposable = null;
            }
        }
    }

    public EditWidgetActivity(int i, int i2) {
        this.widgetType = i;
        this.currentWidgetId = i2;
        ArrayList<TLRPC.User> arrayList = new ArrayList<>();
        ArrayList<TLRPC.Chat> arrayList2 = new ArrayList<>();
        getMessagesStorage().getWidgetDialogIds(this.currentWidgetId, this.widgetType, this.selectedDialogs, arrayList, arrayList2, true);
        getMessagesController().putUsers(arrayList, true);
        getMessagesController().putChats(arrayList2, true);
        updateRows();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        DialogsActivity.loadDialogs(AccountInstance.getInstance(this.currentAccount));
        getMediaDataController().loadHints(true);
        return super.onFragmentCreate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRows() {
        this.previewRow = 0;
        this.rowCount = 1 + 1;
        this.selectChatsRow = 1;
        if (this.selectedDialogs.isEmpty()) {
            this.chatsStartRow = -1;
            this.chatsEndRow = -1;
        } else {
            int i = this.rowCount;
            this.chatsStartRow = i;
            int size = i + this.selectedDialogs.size();
            this.rowCount = size;
            this.chatsEndRow = size;
        }
        int i2 = this.rowCount;
        this.rowCount = i2 + 1;
        this.infoRow = i2;
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
    }

    public void setDelegate(EditWidgetActivityDelegate editWidgetActivityDelegate) {
        this.delegate = editWidgetActivityDelegate;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        this.actionBar.setBackButtonImage(C2484R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(false);
        if (AndroidUtilities.isTablet()) {
            this.actionBar.setOccupyStatusBar(false);
        }
        if (this.widgetType == 0) {
            this.actionBar.setTitle(LocaleController.getString(C2484R.string.WidgetChats));
        } else {
            this.actionBar.setTitle(LocaleController.getString(C2484R.string.WidgetShortcuts));
        }
        this.actionBar.createMenu().addItem(1, LocaleController.getString(C2484R.string.Done).toUpperCase());
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.EditWidgetActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    if (EditWidgetActivity.this.delegate == null) {
                        EditWidgetActivity.this.finishActivity();
                        return;
                    } else {
                        EditWidgetActivity.this.finishFragment();
                        return;
                    }
                }
                if (i != 1 || EditWidgetActivity.this.getParentActivity() == null) {
                    return;
                }
                ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
                for (int i2 = 0; i2 < EditWidgetActivity.this.selectedDialogs.size(); i2++) {
                    arrayList.add(MessagesStorage.TopicKey.of(((Long) EditWidgetActivity.this.selectedDialogs.get(i2)).longValue(), 0L));
                }
                EditWidgetActivity.this.getMessagesStorage().putWidgetDialogs(EditWidgetActivity.this.currentWidgetId, arrayList);
                SharedPreferences.Editor editorEdit = EditWidgetActivity.this.getParentActivity().getSharedPreferences("shortcut_widget", 0).edit();
                editorEdit.putInt("account" + EditWidgetActivity.this.currentWidgetId, ((BaseFragment) EditWidgetActivity.this).currentAccount);
                editorEdit.putInt("type" + EditWidgetActivity.this.currentWidgetId, EditWidgetActivity.this.widgetType);
                editorEdit.apply();
                AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(EditWidgetActivity.this.getParentActivity());
                if (EditWidgetActivity.this.widgetType == 0) {
                    ChatsWidgetProvider.updateWidget(EditWidgetActivity.this.getParentActivity(), appWidgetManager, EditWidgetActivity.this.currentWidgetId);
                } else {
                    ContactsWidgetProvider.updateWidget(EditWidgetActivity.this.getParentActivity(), appWidgetManager, EditWidgetActivity.this.currentWidgetId);
                }
                if (EditWidgetActivity.this.delegate != null) {
                    EditWidgetActivity.this.delegate.didSelectDialogs(EditWidgetActivity.this.selectedDialogs);
                } else {
                    EditWidgetActivity.this.finishActivity();
                }
            }
        });
        this.listAdapter = new ListAdapter(context);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        this.fragmentView = frameLayout;
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setLayoutManager(new LinearLayoutManager(context, 1, false));
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setAdapter(this.listAdapter);
        ((DefaultItemAnimator) this.listView.getItemAnimator()).setDelayAnimations(false);
        frameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new TouchHelperCallback());
        this.itemTouchHelper = itemTouchHelper;
        itemTouchHelper.attachToRecyclerView(this.listView);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.EditWidgetActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                this.f$0.lambda$createView$1(context, view, i);
            }
        });
        this.listView.setOnItemLongClickListener(new C46242());
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(Context context, View view, int i) {
        if (i == this.selectChatsRow) {
            InviteMembersBottomSheet inviteMembersBottomSheet = new InviteMembersBottomSheet(context, this.currentAccount, null, 0L, this, null);
            inviteMembersBottomSheet.setDelegate(new InviteMembersBottomSheet.InviteMembersBottomSheetDelegate() { // from class: org.telegram.ui.EditWidgetActivity$$ExternalSyntheticLambda2
                @Override // org.telegram.ui.Components.InviteMembersBottomSheet.InviteMembersBottomSheetDelegate
                public final void didSelectDialogs(ArrayList arrayList) {
                    this.f$0.lambda$createView$0(arrayList);
                }
            }, this.selectedDialogs);
            inviteMembersBottomSheet.setSelectedContacts(this.selectedDialogs);
            showDialog(inviteMembersBottomSheet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(ArrayList arrayList) {
        this.selectedDialogs.clear();
        this.selectedDialogs.addAll(arrayList);
        updateRows();
        WidgetPreviewCell widgetPreviewCell = this.widgetPreviewCell;
        if (widgetPreviewCell != null) {
            widgetPreviewCell.updateDialogs();
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.EditWidgetActivity$2 */
    class C46242 implements RecyclerListView.OnItemLongClickListenerExtended {
        private Rect rect = new Rect();

        @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListenerExtended
        public void onLongClickRelease() {
        }

        @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListenerExtended
        public void onMove(float f, float f2) {
        }

        C46242() {
        }

        @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListenerExtended
        public boolean onItemClick(View view, final int i, float f, float f2) {
            if (EditWidgetActivity.this.getParentActivity() != null && (view instanceof GroupCreateUserCell)) {
                ((ImageView) view.getTag(C2484R.id.object_tag)).getHitRect(this.rect);
                if (!this.rect.contains((int) f, (int) f2)) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(EditWidgetActivity.this.getParentActivity());
                    builder.setItems(new CharSequence[]{LocaleController.getString(C2484R.string.Delete)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.EditWidgetActivity$2$$ExternalSyntheticLambda0
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            this.f$0.lambda$onItemClick$0(i, dialogInterface, i2);
                        }
                    });
                    EditWidgetActivity.this.showDialog(builder.create());
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0(int i, DialogInterface dialogInterface, int i2) {
            if (i2 == 0) {
                EditWidgetActivity.this.selectedDialogs.remove(i - EditWidgetActivity.this.chatsStartRow);
                EditWidgetActivity.this.updateRows();
                if (EditWidgetActivity.this.widgetPreviewCell != null) {
                    EditWidgetActivity.this.widgetPreviewCell.updateDialogs();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishActivity() {
        if (getParentActivity() == null) {
            return;
        }
        getParentActivity().finish();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.EditWidgetActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.removeSelfFromStack();
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return EditWidgetActivity.this.rowCount;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            return itemViewType == 1 || itemViewType == 3;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View view;
            if (i == 0) {
                TextInfoPrivacyCell textInfoPrivacyCell = new TextInfoPrivacyCell(this.mContext);
                textInfoPrivacyCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, C2484R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                view = textInfoPrivacyCell;
            } else if (i == 1) {
                TextCell textCell = new TextCell(this.mContext);
                textCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                view = textCell;
            } else if (i == 2) {
                EditWidgetActivity editWidgetActivity = EditWidgetActivity.this;
                WidgetPreviewCell widgetPreviewCell = EditWidgetActivity.this.new WidgetPreviewCell(this.mContext);
                editWidgetActivity.widgetPreviewCell = widgetPreviewCell;
                view = widgetPreviewCell;
            } else {
                final GroupCreateUserCell groupCreateUserCell = new GroupCreateUserCell(this.mContext, 0, 0, false);
                ImageView imageView = new ImageView(this.mContext);
                imageView.setImageResource(C2484R.drawable.list_reorder);
                imageView.setScaleType(ImageView.ScaleType.CENTER);
                groupCreateUserCell.setTag(C2484R.id.object_tag, imageView);
                groupCreateUserCell.addView(imageView, LayoutHelper.createFrame(40, -1.0f, (LocaleController.isRTL ? 3 : 5) | 16, 10.0f, 0.0f, 10.0f, 0.0f));
                imageView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.EditWidgetActivity$ListAdapter$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view2, MotionEvent motionEvent) {
                        return this.f$0.lambda$onCreateViewHolder$0(groupCreateUserCell, view2, motionEvent);
                    }
                });
                imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_pinnedIcon), PorterDuff.Mode.MULTIPLY));
                view = groupCreateUserCell;
            }
            return new RecyclerListView.Holder(view);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$onCreateViewHolder$0(GroupCreateUserCell groupCreateUserCell, View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return false;
            }
            EditWidgetActivity.this.itemTouchHelper.startDrag(EditWidgetActivity.this.listView.getChildViewHolder(groupCreateUserCell));
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                if (i == EditWidgetActivity.this.infoRow) {
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    if (EditWidgetActivity.this.widgetType == 0) {
                        spannableStringBuilder.append((CharSequence) LocaleController.getString(C2484R.string.EditWidgetChatsInfo));
                    } else if (EditWidgetActivity.this.widgetType == 1) {
                        spannableStringBuilder.append((CharSequence) LocaleController.getString(C2484R.string.EditWidgetContactsInfo));
                    }
                    if (SharedConfig.passcodeHash.length() > 0) {
                        spannableStringBuilder.append((CharSequence) "\n\n").append((CharSequence) AndroidUtilities.replaceTags(LocaleController.getString(C2484R.string.WidgetPasscode2)));
                    }
                    textInfoPrivacyCell.setText(spannableStringBuilder);
                    return;
                }
                return;
            }
            if (itemViewType != 1) {
                if (itemViewType != 3) {
                    return;
                }
                GroupCreateUserCell groupCreateUserCell = (GroupCreateUserCell) viewHolder.itemView;
                Long l = (Long) EditWidgetActivity.this.selectedDialogs.get(i - EditWidgetActivity.this.chatsStartRow);
                long jLongValue = l.longValue();
                if (DialogObject.isUserDialog(jLongValue)) {
                    groupCreateUserCell.setObject(EditWidgetActivity.this.getMessagesController().getUser(l), null, null, i != EditWidgetActivity.this.chatsEndRow - 1);
                    return;
                } else {
                    groupCreateUserCell.setObject(EditWidgetActivity.this.getMessagesController().getChat(Long.valueOf(-jLongValue)), null, null, i != EditWidgetActivity.this.chatsEndRow - 1);
                    return;
                }
            }
            TextCell textCell = (TextCell) viewHolder.itemView;
            textCell.setColors(-1, Theme.key_windowBackgroundWhiteBlueText4);
            Drawable drawable = this.mContext.getResources().getDrawable(C2484R.drawable.poll_add_circle);
            Drawable drawable2 = this.mContext.getResources().getDrawable(C2484R.drawable.poll_add_plus);
            int color = Theme.getColor(Theme.key_switchTrackChecked);
            PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
            drawable.setColorFilter(new PorterDuffColorFilter(color, mode));
            drawable2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_checkboxCheck), mode));
            textCell.setTextAndIcon(LocaleController.getString(C2484R.string.SelectChats), new CombinedDrawable(drawable, drawable2), EditWidgetActivity.this.chatsStartRow != -1);
            textCell.getImageView().setPadding(0, AndroidUtilities.dp(7.0f), 0, 0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 3 || itemViewType == 1) {
                viewHolder.itemView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == EditWidgetActivity.this.previewRow) {
                return 2;
            }
            if (i == EditWidgetActivity.this.selectChatsRow) {
                return 1;
            }
            return i == EditWidgetActivity.this.infoRow ? 0 : 3;
        }

        public boolean swapElements(int i, int i2) {
            int i3 = i - EditWidgetActivity.this.chatsStartRow;
            int i4 = i2 - EditWidgetActivity.this.chatsStartRow;
            int i5 = EditWidgetActivity.this.chatsEndRow - EditWidgetActivity.this.chatsStartRow;
            if (i3 < 0 || i4 < 0 || i3 >= i5 || i4 >= i5) {
                return false;
            }
            Long l = (Long) EditWidgetActivity.this.selectedDialogs.get(i3);
            EditWidgetActivity.this.selectedDialogs.set(i3, (Long) EditWidgetActivity.this.selectedDialogs.get(i4));
            EditWidgetActivity.this.selectedDialogs.set(i4, l);
            notifyItemMoved(i, i2);
            return true;
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        if (this.delegate != null) {
            return super.onBackPressed(z);
        }
        if (!z) {
            return false;
        }
        finishActivity();
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList getThemeDescriptions() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCell.class}, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        ActionBar actionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(actionBar, i, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUBACKGROUND, null, null, null, null, Theme.key_actionBarDefaultSubmenuBackground));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM, null, null, null, null, Theme.key_actionBarDefaultSubmenuItem));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM | ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, Theme.key_actionBarDefaultSubmenuItemIcon));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        int i3 = Theme.key_windowBackgroundWhiteBlueText4;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        return arrayList;
    }
}
