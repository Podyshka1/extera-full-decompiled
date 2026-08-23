package com.exteragram.messenger.components;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.exifinterface.media.ExifInterface;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.MediaUtils;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.google.zxing.Dimension;
import java.io.File;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.PopupSwipeBackLayout;
import org.telegram.p029ui.ProfileActivity;
import org.telegram.tgnet.TLRPC;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class MessageDetailsPopupWrapper {
    private String filePath;
    private final BaseFragment fragment;
    private String[] geo;
    private long ownerId;
    private final Theme.ResourcesProvider resourcesProvider;
    public LinearLayout swipeBack;
    private final int SET_OWNER = 0;
    private final int FILE_PATH = 1;
    private final int LOCATION = 2;
    private final int BITRATE = 3;
    private final int RESOLUTION = 4;
    private final int PLATFORM = 5;

    protected void closeMenu() {
    }

    protected abstract void copy(String str);

    /* JADX WARN: Removed duplicated region for block: B:151:0x044b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MessageDetailsPopupWrapper(final BaseFragment baseFragment, final PopupSwipeBackLayout popupSwipeBackLayout, final MessageObject messageObject, Theme.ResourcesProvider resourcesProvider) {
        int i;
        boolean z;
        int i2;
        final ActionBarMenuSubItem actionBarMenuSubItem;
        long j;
        char c;
        LinearLayout linearLayout;
        final Item item;
        ArrayList arrayList;
        ScrollView scrollView;
        TLRPC.InputStickerSet inputStickerSet;
        int i3;
        final MessageObject messageObject2 = messageObject;
        this.ownerId = 0L;
        this.fragment = baseFragment;
        this.resourcesProvider = resourcesProvider;
        Activity parentActivity = baseFragment.getParentActivity();
        LinearLayout linearLayout2 = new LinearLayout(parentActivity);
        this.swipeBack = linearLayout2;
        linearLayout2.setOrientation(1);
        ScrollView scrollView2 = new ScrollView(parentActivity) { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper.1
            final AnimatedFloat alphaFloat = new AnimatedFloat(this, 350, CubicBezierInterpolator.EASE_OUT_QUINT);
            Drawable topShadowDrawable;
            private boolean wasCanScrollVertically;

            @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.ViewParent
            public void onNestedScroll(View view, int i4, int i5, int i6, int i7) {
                super.onNestedScroll(view, i4, i5, i6, i7);
                boolean zCanScrollVertically = canScrollVertically(-1);
                if (this.wasCanScrollVertically != zCanScrollVertically) {
                    invalidate();
                    this.wasCanScrollVertically = zCanScrollVertically;
                }
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                float f = this.alphaFloat.set(canScrollVertically(-1) ? 1.0f : 0.0f) * 0.5f;
                if (f > 0.0f) {
                    if (this.topShadowDrawable == null) {
                        this.topShadowDrawable = ContextCompat.getDrawable(getContext(), C2888R.drawable.header_shadow);
                    }
                    Drawable drawable = this.topShadowDrawable;
                    if (drawable != null) {
                        drawable.setBounds(0, getScrollY(), getWidth(), getScrollY() + this.topShadowDrawable.getIntrinsicHeight());
                        this.topShadowDrawable.setAlpha((int) (f * 255.0f));
                        this.topShadowDrawable.draw(canvas);
                    }
                }
            }
        };
        LinearLayout linearLayout3 = new LinearLayout(parentActivity);
        scrollView2.addView(linearLayout3);
        linearLayout3.setOrientation(1);
        long j2 = 0;
        ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem((Context) baseFragment.getParentActivity(), true, false, resourcesProvider);
        actionBarMenuSubItem2.setItemHeight(44);
        actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString(C2888R.string.Back), C2888R.drawable.msg_arrow_back);
        actionBarMenuSubItem2.getTextView().setPadding(LocaleController.isRTL ? 0 : AndroidUtilities.m1124dp(40.0f), 0, LocaleController.isRTL ? AndroidUtilities.m1124dp(40.0f) : 0, 0);
        actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                popupSwipeBackLayout.closeForeground();
            }
        });
        this.swipeBack.addView(actionBarMenuSubItem2, LayoutHelper.createLinear(-1, -2));
        linearLayout3.addView(createGap(), LayoutHelper.createLinear(-1, 8));
        ArrayList arrayList2 = new ArrayList();
        int i4 = messageObject2.messageOwner.views;
        if (i4 > 0) {
            i = 0;
            arrayList2.add(new Item(C2888R.drawable.msg_view_file, String.format(LocaleController.getPluralString("Views", i4), AndroidUtilities.formatCount(messageObject2.messageOwner.views)), (String) null));
        } else {
            i = 0;
        }
        int i5 = messageObject2.messageOwner.forwards;
        if (i5 > 0) {
            int i6 = C2888R.drawable.msg_forward;
            String pluralString = LocaleController.getPluralString("Shares", i5);
            Object[] objArr = new Object[1];
            objArr[i] = AndroidUtilities.formatCount(messageObject2.messageOwner.forwards);
            arrayList2.add(new Item(i6, String.format(pluralString, objArr), (String) null));
        }
        if (!arrayList2.isEmpty()) {
            arrayList2.add(null);
        }
        arrayList2.add(new Item(C2888R.drawable.msg_info, "ID", messageObject2.messageOwner.f1686id));
        if (messageObject2.messageOwner.date > 0) {
            arrayList2.add(new Item(C2888R.drawable.msg_calendar2, LocaleController.getString(C2888R.string.Date), formatTime(messageObject2.messageOwner.date, true)));
        }
        TLRPC.Message message = messageObject2.messageOwner;
        TLRPC.MessageFwdHeader messageFwdHeader = message.fwd_from;
        if (messageFwdHeader != null && (i3 = messageFwdHeader.date) > 0 && i3 != message.date) {
            arrayList2.add(new Item(C2888R.drawable.msg_recent, LocaleController.getString(C2888R.string.ForwardedDate), formatTime(messageObject2.messageOwner.fwd_from.date, true)));
        }
        TLRPC.Message message2 = messageObject2.messageOwner;
        int i7 = message2.edit_date;
        if (i7 > 0 && i7 != message2.date && !message2.edit_hide) {
            arrayList2.add(new Item(C2888R.drawable.msg_edit, LocaleController.getString(C2888R.string.EditedDate), formatTime(messageObject2.messageOwner.edit_date, true)));
        }
        arrayList2.add(null);
        if (messageObject2.getSize() > 0) {
            arrayList2.add(new Item(C2888R.drawable.msg_sendfile, LocaleController.getString(C2888R.string.FileSize), AndroidUtilities.formatFileSize(messageObject2.getSize())));
        }
        if (messageObject2.getMimeType() != null && !messageObject2.getMimeType().isEmpty()) {
            arrayList2.add(new Item(C2888R.drawable.msg_media, LocaleController.getString(C2888R.string.MimeType), messageObject2.getMimeType()));
        }
        if (MessageObject.getMedia(messageObject2.messageOwner) != null && MessageObject.getMedia(messageObject2.messageOwner).document != null) {
            ArrayList<TLRPC.DocumentAttribute> arrayList3 = MessageObject.getMedia(messageObject2.messageOwner).document.attributes;
            int size = arrayList3.size();
            int i8 = i;
            while (i8 < size) {
                TLRPC.DocumentAttribute documentAttribute = arrayList3.get(i8);
                i8++;
                TLRPC.DocumentAttribute documentAttribute2 = documentAttribute;
                if (documentAttribute2 instanceof TLRPC.TL_documentAttributeFilename) {
                    scrollView = scrollView2;
                    arrayList2.add(new Item(C2888R.drawable.msg_log, LocaleController.getString(C2888R.string.FileName), documentAttribute2.file_name));
                } else {
                    scrollView = scrollView2;
                }
                if ((documentAttribute2 instanceof TLRPC.TL_documentAttributeSticker) && (inputStickerSet = documentAttribute2.stickerset) != null) {
                    long jExtractOwnerId = ChatUtils.extractOwnerId(inputStickerSet.f1685id);
                    this.ownerId = jExtractOwnerId;
                    if (jExtractOwnerId > 0) {
                        arrayList2.add(new Item(i, C2888R.drawable.msg_sticker, LocaleController.getString(C2888R.string.ChannelCreator), String.valueOf(this.ownerId)));
                    }
                }
                scrollView2 = scrollView;
                i = 0;
            }
        }
        ScrollView scrollView3 = scrollView2;
        String str = messageObject2.messageOwner.attachPath;
        this.filePath = str;
        if (!TextUtils.isEmpty(str) && !new File(this.filePath).exists()) {
            this.filePath = null;
        }
        if (TextUtils.isEmpty(this.filePath)) {
            this.filePath = FileLoader.getInstance(UserConfig.selectedAccount).getPathToMessage(messageObject2.messageOwner).toString();
            if (!new File(this.filePath).exists()) {
                this.filePath = null;
            }
        }
        if (TextUtils.isEmpty(this.filePath)) {
            this.filePath = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(messageObject2.getDocument(), true).toString();
            if (!new File(this.filePath).isFile()) {
                this.filePath = null;
            }
        }
        if (!TextUtils.isEmpty(this.filePath)) {
            arrayList2.add(new Item(1, C2888R.drawable.msg_map, LocaleController.getString(C2888R.string.FilePath), LocaleController.getString(C2888R.string.Open)));
        }
        boolean z2 = messageObject2.isVoice() || messageObject2.isMusic();
        boolean z3 = messageObject2.isVideo() || messageObject2.isRoundVideo() || messageObject2.isVideoSticker() || messageObject2.isGif();
        boolean zIsPhotoAsDocument = isPhotoAsDocument(messageObject2);
        boolean z4 = zIsPhotoAsDocument || messageObject2.isPhoto() || messageObject2.isSticker();
        if (!z4 || TextUtils.isEmpty(this.filePath)) {
            z = z2;
        } else {
            z = z2;
            arrayList2.add(new Item(5, C2888R.drawable.menu_devices, LocaleController.getString(C2888R.string.Platform), LocaleController.getString(C2888R.string.NumberUnknown)));
        }
        if (z3 || z4) {
            arrayList2.add(new Item(4, C2888R.drawable.msg_photo_crop, LocaleController.getString(C2888R.string.Resolution), "0x0"));
        }
        if (zIsPhotoAsDocument && !TextUtils.isEmpty(this.filePath)) {
            arrayList2.add(new Item(2, C2888R.drawable.msg_location, LocaleController.getString(C2888R.string.ShareLocation), "0.0, 0.0"));
        }
        if (z3 || z) {
            arrayList2.add(new Item(3, C2888R.drawable.msg_noise_on, LocaleController.getString(C2888R.string.Bitrate), "0 Kbps"));
            int duration = (int) messageObject2.getDuration();
            if (duration > 0) {
                arrayList2.add(new Item(C2888R.drawable.msg2_animations, LocaleController.getString(C2888R.string.Duration), AndroidUtilities.formatShortDuration(duration)));
            }
        }
        if (MessageObject.getMedia(messageObject2.messageOwner) == null) {
            i2 = 0;
        } else if (MessageObject.getMedia(messageObject2.messageOwner).photo != null && MessageObject.getMedia(messageObject2.messageOwner).photo.dc_id > 0) {
            i2 = MessageObject.getMedia(messageObject2.messageOwner).photo.dc_id;
        } else if (MessageObject.getMedia(messageObject2.messageOwner).document != null && MessageObject.getMedia(messageObject2.messageOwner).document.dc_id > 0) {
            i2 = MessageObject.getMedia(messageObject2.messageOwner).document.dc_id;
        } else if (MessageObject.getMedia(messageObject2.messageOwner).webpage != null && MessageObject.getMedia(messageObject2.messageOwner).webpage.photo != null && MessageObject.getMedia(messageObject2.messageOwner).webpage.photo.dc_id > 0) {
            i2 = MessageObject.getMedia(messageObject2.messageOwner).webpage.photo.dc_id;
        } else if (MessageObject.getMedia(messageObject2.messageOwner).webpage != null && MessageObject.getMedia(messageObject2.messageOwner).webpage.document != null && MessageObject.getMedia(messageObject2.messageOwner).webpage.document.dc_id > 0) {
            i2 = MessageObject.getMedia(messageObject2.messageOwner).webpage.document.dc_id;
        }
        if (i2 != 0) {
            arrayList2.add(new Item(C2888R.drawable.msg_satellite, LocaleController.getString(C2888R.string.Datacenter), String.format(Locale.ROOT, "DC%d, %s", Integer.valueOf(i2), ChatUtils.getDCName(i2))));
        }
        if (arrayList2.get(arrayList2.size() - 1) == null) {
            arrayList2.remove(arrayList2.size() - 1);
        }
        int size2 = arrayList2.size();
        int i9 = 0;
        int i10 = 0;
        while (i10 < size2) {
            int i11 = i10 + 1;
            final Item item2 = (Item) arrayList2.get(i10);
            if (item2 == null) {
                linearLayout3.addView(createGap(), LayoutHelper.createLinear(-1, 8));
                i9 += 8;
                i10 = i11;
            } else {
                ArrayList arrayList4 = arrayList2;
                final ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem((Context) baseFragment.getParentActivity(), false, false, resourcesProvider);
                actionBarMenuSubItem3.setTextAndIcon(item2.title, item2.resId);
                actionBarMenuSubItem3.setMinimumWidth(AndroidUtilities.m1124dp(196.0f));
                actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        popupSwipeBackLayout.closeForeground();
                    }
                });
                linearLayout3.addView(actionBarMenuSubItem3, LayoutHelper.createLinear(-1, 48));
                int i12 = i9 + 48;
                String str2 = item2.subtitle;
                if (str2 != null) {
                    actionBarMenuSubItem3.setSubtext(str2);
                    actionBarMenuSubItem3.subtextView.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                    actionBarMenuSubItem3.subtextView.setMarqueeRepeatLimit(-1);
                    actionBarMenuSubItem3.subtextView.setSelected(true);
                    actionBarMenuSubItem3.setItemHeight(56);
                    i12 = i9 + 56;
                }
                int i13 = item2.f270id;
                final boolean z5 = z3;
                if (i13 == 0 && this.ownerId > j2) {
                    ChatUtils.getInstance().searchUserById(Long.valueOf(this.ownerId), new Utilities.Callback() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda2
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            MessageDetailsPopupWrapper.$r8$lambda$dE2BmWFMp3ZO7Tcpe0bsPv1CgxY(item2, actionBarMenuSubItem3, (TLRPC.User) obj);
                        }
                    });
                } else if (i13 == 2) {
                    ChatUtils.utilsQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$new$4(actionBarMenuSubItem3, item2);
                        }
                    });
                } else if (i13 == 3) {
                    ChatUtils.utilsQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$new$6(messageObject2, actionBarMenuSubItem3, item2);
                        }
                    });
                    actionBarMenuSubItem = actionBarMenuSubItem3;
                    j = j2;
                    c = 5;
                    linearLayout = linearLayout3;
                    item = item2;
                    arrayList = arrayList4;
                    actionBarMenuSubItem.setTag(item);
                    final Activity activity = parentActivity;
                    ActionBarMenuSubItem actionBarMenuSubItem4 = actionBarMenuSubItem;
                    final boolean z6 = z4;
                    actionBarMenuSubItem4.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda7
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$new$11(item, activity, z6, messageObject, baseFragment, view);
                        }
                    });
                    actionBarMenuSubItem4.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda8
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view) {
                            return this.f$0.lambda$new$12(item, view);
                        }
                    });
                    parentActivity = activity;
                    i10 = i11;
                    i9 = i12;
                    linearLayout3 = linearLayout;
                    z3 = z5;
                    messageObject2 = messageObject;
                    z4 = z6;
                    arrayList2 = arrayList;
                    j2 = j;
                } else {
                    if (i13 == 4) {
                        DispatchQueue dispatchQueue = ChatUtils.utilsQueue;
                        j = j2;
                        linearLayout = linearLayout3;
                        arrayList = arrayList4;
                        Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda5
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$new$8(z5, messageObject2, actionBarMenuSubItem3, item2);
                            }
                        };
                        actionBarMenuSubItem = actionBarMenuSubItem3;
                        item = item2;
                        dispatchQueue.postRunnable(runnable);
                        c = 5;
                    } else {
                        actionBarMenuSubItem = actionBarMenuSubItem3;
                        j = j2;
                        c = 5;
                        linearLayout = linearLayout3;
                        item = item2;
                        arrayList = arrayList4;
                        if (i13 == 5) {
                            ChatUtils.utilsQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda6
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$new$10(actionBarMenuSubItem, item);
                                }
                            });
                        }
                    }
                    actionBarMenuSubItem.setTag(item);
                    final Activity activity2 = parentActivity;
                    ActionBarMenuSubItem actionBarMenuSubItem42 = actionBarMenuSubItem;
                    final boolean z62 = z4;
                    actionBarMenuSubItem42.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda7
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$new$11(item, activity2, z62, messageObject, baseFragment, view);
                        }
                    });
                    actionBarMenuSubItem42.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda8
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view) {
                            return this.f$0.lambda$new$12(item, view);
                        }
                    });
                    parentActivity = activity2;
                    i10 = i11;
                    i9 = i12;
                    linearLayout3 = linearLayout;
                    z3 = z5;
                    messageObject2 = messageObject;
                    z4 = z62;
                    arrayList2 = arrayList;
                    j2 = j;
                }
                actionBarMenuSubItem = actionBarMenuSubItem3;
                j = j2;
                c = 5;
                linearLayout = linearLayout3;
                item = item2;
                arrayList = arrayList4;
                actionBarMenuSubItem.setTag(item);
                final Activity activity22 = parentActivity;
                ActionBarMenuSubItem actionBarMenuSubItem422 = actionBarMenuSubItem;
                final boolean z622 = z4;
                actionBarMenuSubItem422.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda7
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$11(item, activity22, z622, messageObject, baseFragment, view);
                    }
                });
                actionBarMenuSubItem422.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda8
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        return this.f$0.lambda$new$12(item, view);
                    }
                });
                parentActivity = activity22;
                i10 = i11;
                i9 = i12;
                linearLayout3 = linearLayout;
                z3 = z5;
                messageObject2 = messageObject;
                z4 = z622;
                arrayList2 = arrayList;
                j2 = j;
            }
        }
        if (i9 > 380 && Math.abs(i9 - 380) > 112) {
            this.swipeBack.addView(scrollView3, LayoutHelper.createLinear(-1, 380));
        } else {
            this.swipeBack.addView(scrollView3, LayoutHelper.createLinear(-1, -2));
        }
    }

    public static /* synthetic */ void $r8$lambda$dE2BmWFMp3ZO7Tcpe0bsPv1CgxY(Item item, ActionBarMenuSubItem actionBarMenuSubItem, TLRPC.User user) {
        if (user != null) {
            if (!TextUtils.isEmpty(UserObject.getPublicUsername(user))) {
                item.subtitle = "@" + UserObject.getPublicUsername(user);
            } else {
                item.subtitle = ContactsController.formatName(user);
            }
            actionBarMenuSubItem.setSubtext(item.subtitle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(final ActionBarMenuSubItem actionBarMenuSubItem, final Item item) {
        this.geo = getLatLongFromPhoto(new File(this.filePath));
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$3(actionBarMenuSubItem, item);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(ActionBarMenuSubItem actionBarMenuSubItem, Item item) {
        if (this.geo != null) {
            actionBarMenuSubItem.setSubtext(this.geo[0] + ", " + this.geo[1]);
            item.subtitle = this.geo[0] + ", " + this.geo[1];
            return;
        }
        actionBarMenuSubItem.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(MessageObject messageObject, final ActionBarMenuSubItem actionBarMenuSubItem, final Item item) {
        final int bitrate = getBitrate(messageObject, this.filePath);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                MessageDetailsPopupWrapper.$r8$lambda$f_aN3ZZNn5AFFp878etwVxDefTs(bitrate, actionBarMenuSubItem, item);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$f_aN3ZZNn5AFFp878etwVxDefTs(int i, ActionBarMenuSubItem actionBarMenuSubItem, Item item) {
        if (i > 0) {
            actionBarMenuSubItem.setSubtext(i + " Kbps");
            item.subtitle = i + " Kbps";
            return;
        }
        actionBarMenuSubItem.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(boolean z, MessageObject messageObject, final ActionBarMenuSubItem actionBarMenuSubItem, final Item item) {
        final Dimension videoResolution = z ? getVideoResolution(messageObject, this.filePath) : getPhotoResolution(messageObject, this.filePath);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                MessageDetailsPopupWrapper.$r8$lambda$nKLUxPKKYKjJIhJVpxjuwM7e7_4(videoResolution, actionBarMenuSubItem, item);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$nKLUxPKKYKjJIhJVpxjuwM7e7_4(Dimension dimension, ActionBarMenuSubItem actionBarMenuSubItem, Item item) {
        if (dimension != null) {
            actionBarMenuSubItem.setSubtext(dimension.toString());
            item.subtitle = dimension.toString();
        } else {
            actionBarMenuSubItem.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(final ActionBarMenuSubItem actionBarMenuSubItem, final Item item) {
        final String photoPlatform = MediaUtils.getPhotoPlatform(this.filePath);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                MessageDetailsPopupWrapper.m2315$r8$lambda$8KY68BRgfBrUh0xLJdGa54yNS4(photoPlatform, actionBarMenuSubItem, item);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$8KY68BRgfBrUh0xLJ-dGa54yNS4, reason: not valid java name */
    public static /* synthetic */ void m2315$r8$lambda$8KY68BRgfBrUh0xLJdGa54yNS4(String str, ActionBarMenuSubItem actionBarMenuSubItem, Item item) {
        if (!TextUtils.isEmpty(str)) {
            actionBarMenuSubItem.setSubtext(str);
            item.subtitle = str;
        } else {
            actionBarMenuSubItem.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$11(Item item, Activity activity, boolean z, MessageObject messageObject, BaseFragment baseFragment, View view) {
        closeMenu();
        if (item.f270id == 1 && !TextUtils.isEmpty(this.filePath)) {
            try {
                Uri uriForFile = FileProvider.getUriForFile(activity, ApplicationLoader.getApplicationId() + ".provider", new File(this.filePath));
                if (z) {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setFlags(1);
                    intent.setDataAndType(uriForFile, messageObject.getMimeType());
                    if (!activity.getPackageManager().queryIntentActivities(intent, 0).isEmpty()) {
                        activity.startActivity(intent);
                        return;
                    }
                }
                Intent intent2 = new Intent("android.intent.action.SEND");
                intent2.setFlags(1);
                intent2.putExtra("android.intent.extra.STREAM", uriForFile);
                intent2.setDataAndType(uriForFile, messageObject.getMimeType());
                activity.startActivityForResult(Intent.createChooser(intent2, LocaleController.getString(C2888R.string.ShareFile)), 500);
                return;
            } catch (IllegalArgumentException e) {
                FileLog.m1136e(e);
                return;
            }
        }
        int i = item.f270id;
        if (i == 0) {
            if (item.subtitle.startsWith("@")) {
                Bundle bundle = new Bundle();
                bundle.putLong("user_id", this.ownerId);
                baseFragment.presentFragment(new ProfileActivity(bundle));
                return;
            }
            copy(String.valueOf(this.ownerId));
            return;
        }
        if (i == 2) {
            String str = ExteraConfig.canUseYandexMaps() ? "http://maps.yandex.ru/?text=%s,%s" : "https://maps.google.com/?q=%s,%s";
            Activity parentActivity = baseFragment.getParentActivity();
            String[] strArr = this.geo;
            Browser.openUrl(parentActivity, String.format(str, strArr[0], strArr[1]));
            return;
        }
        String str2 = item.subtitle;
        if (str2 == null) {
            str2 = item.title;
        }
        copy(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$12(Item item, View view) {
        String strValueOf;
        if (item.f270id == 1 && !TextUtils.isEmpty(this.filePath)) {
            strValueOf = this.filePath;
        } else if (item.f270id == 0) {
            strValueOf = String.valueOf(this.ownerId);
        } else {
            String str = item.subtitle;
            strValueOf = str != null ? str : item.title;
        }
        copy(strValueOf);
        return true;
    }

    public static int getBitrate(MessageObject messageObject, String str) {
        int bitrateFromPath;
        if (TextUtils.isEmpty(str)) {
            bitrateFromPath = -1;
        } else {
            try {
                bitrateFromPath = getBitrateFromPath(str);
            } catch (Exception e) {
                FileLog.m1136e(e);
                bitrateFromPath = -1;
            }
        }
        if (bitrateFromPath != -1) {
            return bitrateFromPath;
        }
        try {
            return getBitrateFromAttributes(messageObject);
        } catch (Exception e2) {
            FileLog.m1136e(e2);
            return bitrateFromPath;
        }
    }

    public static int getBitrateFromPath(String str) {
        int i;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaMetadataRetriever.setDataSource(str);
            String strExtractMetadata = mediaMetadataRetriever.extractMetadata(20);
            Objects.requireNonNull(strExtractMetadata);
            i = Integer.parseInt(strExtractMetadata) / MediaDataController.MAX_STYLE_RUNS_COUNT;
        } catch (Exception e) {
            FileLog.m1136e(e);
            i = -1;
        }
        try {
            mediaMetadataRetriever.release();
        } catch (Throwable th) {
            FileLog.m1136e(th);
        }
        return i;
    }

    public static int getBitrateFromAttributes(MessageObject messageObject) {
        long messageSize = MessageObject.getMessageSize(messageObject.messageOwner);
        if (messageSize > 0 && MessageObject.getMedia(messageObject.messageOwner) != null && MessageObject.getMedia(messageObject.messageOwner).document != null) {
            ArrayList<TLRPC.DocumentAttribute> arrayList = MessageObject.getMedia(messageObject.messageOwner).document.attributes;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TLRPC.DocumentAttribute documentAttribute = arrayList.get(i);
                i++;
                TLRPC.DocumentAttribute documentAttribute2 = documentAttribute;
                if (documentAttribute2 instanceof TLRPC.TL_documentAttributeAudio) {
                    double d = documentAttribute2.duration;
                    if (d > 0.0d) {
                        return (int) (((messageSize / d) * 8.0d) / 1000.0d);
                    }
                }
            }
        }
        return -1;
    }

    public static Dimension getPhotoResolution(MessageObject messageObject, String str) {
        Dimension photoResolutionFromPath;
        if (TextUtils.isEmpty(str)) {
            photoResolutionFromPath = null;
        } else {
            try {
                photoResolutionFromPath = getPhotoResolutionFromPath(str);
            } catch (Exception e) {
                FileLog.m1136e(e);
                photoResolutionFromPath = null;
            }
        }
        if (photoResolutionFromPath != null) {
            return photoResolutionFromPath;
        }
        try {
            return getPhotoResolutionFromAttributes(messageObject);
        } catch (Exception e2) {
            FileLog.m1136e(e2);
            return photoResolutionFromPath;
        }
    }

    public static Dimension getPhotoResolutionFromPath(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        return new Dimension(options.outWidth, options.outHeight);
    }

    public static Dimension getPhotoResolutionFromAttributes(MessageObject messageObject) {
        int i;
        int i2;
        TLRPC.VideoSize closestVideoSizeWithSize;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = 0;
        Dimension dimension = null;
        if (MessageObject.getMedia(messageObject.messageOwner) != null && MessageObject.getMedia(messageObject.messageOwner).photo != null) {
            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(MessageObject.getMedia(messageObject.messageOwner).photo.sizes, AndroidUtilities.getPhotoSize(), false, null, true);
            if (closestPhotoSizeWithSize != null && (i5 = closestPhotoSizeWithSize.f1694w) > 0 && (i6 = closestPhotoSizeWithSize.f1693h) > 0) {
                dimension = new Dimension(i5, i6);
            }
            return (dimension != null || (closestVideoSizeWithSize = FileLoader.getClosestVideoSizeWithSize(MessageObject.getMedia(messageObject.messageOwner).photo.video_sizes, AndroidUtilities.getPhotoSize(), false, true)) == null || (i3 = closestVideoSizeWithSize.f1832w) <= 0 || (i4 = closestVideoSizeWithSize.f1831h) <= 0) ? dimension : new Dimension(i3, i4);
        }
        if (MessageObject.getMedia(messageObject.messageOwner) != null && MessageObject.getMedia(messageObject.messageOwner).document != null) {
            ArrayList<TLRPC.DocumentAttribute> arrayList = MessageObject.getMedia(messageObject.messageOwner).document.attributes;
            int size = arrayList.size();
            while (i7 < size) {
                TLRPC.DocumentAttribute documentAttribute = arrayList.get(i7);
                i7++;
                TLRPC.DocumentAttribute documentAttribute2 = documentAttribute;
                if ((documentAttribute2 instanceof TLRPC.TL_documentAttributeImageSize) && (i = documentAttribute2.f1671w) > 0 && (i2 = documentAttribute2.f1670h) > 0) {
                    return new Dimension(i, i2);
                }
            }
        }
        return null;
    }

    public static Dimension getVideoResolution(MessageObject messageObject, String str) {
        Dimension videoResolutionFromPath;
        if (TextUtils.isEmpty(str)) {
            videoResolutionFromPath = null;
        } else {
            try {
                videoResolutionFromPath = getVideoResolutionFromPath(str);
            } catch (Exception e) {
                FileLog.m1136e(e);
                videoResolutionFromPath = null;
            }
        }
        if (videoResolutionFromPath != null) {
            return videoResolutionFromPath;
        }
        try {
            return getVideoResolutionFromAttributes(messageObject);
        } catch (Exception e2) {
            FileLog.m1136e(e2);
            return videoResolutionFromPath;
        }
    }

    public static Dimension getVideoResolutionFromPath(String str) {
        int i;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        int i2 = 0;
        try {
            mediaMetadataRetriever.setDataSource(str);
            String strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
            Objects.requireNonNull(strExtractMetadata);
            i = Integer.parseInt(strExtractMetadata);
        } catch (Exception e) {
            e = e;
            i = 0;
        }
        try {
            String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(19);
            Objects.requireNonNull(strExtractMetadata2);
            i2 = Integer.parseInt(strExtractMetadata2);
        } catch (Exception e2) {
            e = e2;
            FileLog.m1136e(e);
        }
        try {
            mediaMetadataRetriever.release();
        } catch (Throwable th) {
            FileLog.m1136e(th);
        }
        return new Dimension(i, i2);
    }

    public static Dimension getVideoResolutionFromAttributes(MessageObject messageObject) {
        int i;
        int i2;
        if (MessageObject.getMedia(messageObject.messageOwner) == null || MessageObject.getMedia(messageObject.messageOwner).document == null) {
            return null;
        }
        ArrayList<TLRPC.DocumentAttribute> arrayList = MessageObject.getMedia(messageObject.messageOwner).document.attributes;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            TLRPC.DocumentAttribute documentAttribute = arrayList.get(i3);
            i3++;
            TLRPC.DocumentAttribute documentAttribute2 = documentAttribute;
            if ((documentAttribute2 instanceof TLRPC.TL_documentAttributeVideo) && (i = documentAttribute2.f1671w) > 0 && (i2 = documentAttribute2.f1670h) > 0) {
                return new Dimension(i, i2);
            }
        }
        return null;
    }

    public static String[] getLatLongFromPhoto(File file) {
        try {
            ExifInterface exifInterface = new ExifInterface(file.getAbsolutePath());
            String attribute = exifInterface.getAttribute("GPSLatitude");
            String attribute2 = exifInterface.getAttribute("GPSLongitude");
            String attribute3 = exifInterface.getAttribute("GPSLatitudeRef");
            String attribute4 = exifInterface.getAttribute("GPSLongitudeRef");
            if (attribute == null || attribute2 == null || attribute3 == null || attribute4 == null) {
                return null;
            }
            double dConvertToDegrees = convertToDegrees(attribute);
            if ("S".equalsIgnoreCase(attribute3)) {
                dConvertToDegrees = -dConvertToDegrees;
            }
            double dConvertToDegrees2 = convertToDegrees(attribute2);
            if ("W".equalsIgnoreCase(attribute4)) {
                dConvertToDegrees2 = -dConvertToDegrees2;
            }
            DecimalFormat decimalFormat = new DecimalFormat("#.######");
            decimalFormat.setDecimalFormatSymbols(DecimalFormatSymbols.getInstance(Locale.ENGLISH));
            return new String[]{decimalFormat.format(dConvertToDegrees), decimalFormat.format(dConvertToDegrees2)};
        } catch (Exception e) {
            FileLog.m1136e(e);
            return null;
        }
    }

    private static double convertToDegrees(String str) {
        String[] strArrSplit = str.split(",");
        return convertToDouble(strArrSplit[0]) + (convertToDouble(strArrSplit[1]) / 60.0d) + (convertToDouble(strArrSplit[2]) / 3600.0d);
    }

    private static double convertToDouble(String str) {
        String[] strArrSplit = str.split("/");
        if (strArrSplit.length == 1) {
            return Double.parseDouble(strArrSplit[0]);
        }
        if (strArrSplit.length == 2) {
            double d = Double.parseDouble(strArrSplit[0]);
            double d2 = Double.parseDouble(strArrSplit[1]);
            if (d2 != 0.0d) {
                return d / d2;
            }
            FileLog.m1134e("Division by zero in GPS data");
            return 0.0d;
        }
        FileLog.m1134e("Invalid rational number format: " + str);
        return 0.0d;
    }

    private boolean isPhotoAsDocument(MessageObject messageObject) {
        try {
            if (MessageObject.getMedia(messageObject.messageOwner) != null && MessageObject.getMedia(messageObject.messageOwner).document != null) {
                ArrayList<TLRPC.DocumentAttribute> arrayList = MessageObject.getMedia(messageObject.messageOwner).document.attributes;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    TLRPC.DocumentAttribute documentAttribute = arrayList.get(i);
                    i++;
                    TLRPC.DocumentAttribute documentAttribute2 = documentAttribute;
                    if ((documentAttribute2 instanceof TLRPC.TL_documentAttributeImageSize) && documentAttribute2.f1671w > 0 && documentAttribute2.f1670h > 0) {
                        return true;
                    }
                }
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        return false;
    }

    private String formatTime(int i, boolean z) {
        if (i == 2147483646) {
            return LocaleController.getString(C2888R.string.SendWhenOnline);
        }
        if (z) {
            long j = ((long) i) * 1000;
            return LocaleController.formatString("formatDateAtTime", C2888R.string.formatDateAtTime, LocaleController.getInstance().getFormatterYear().format(new Date(j)), LocaleController.getInstance().getFormatterDayWithSeconds().format(new Date(j)));
        }
        return LocaleController.formatDateAudio(i, true);
    }

    private View createGap() {
        FrameLayout frameLayout = new FrameLayout(this.fragment.getContext());
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuSeparator, this.resourcesProvider));
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class Item {

        /* JADX INFO: renamed from: id */
        int f270id;
        int resId;
        String subtitle;
        String title;

        Item(int i, String str, String str2) {
            this(-1, i, str, str2);
        }

        Item(int i, String str, int i2) {
            this(-1, i, str, String.valueOf(i2));
        }

        Item(int i, int i2, String str, String str2) {
            this.f270id = i;
            this.resId = i2;
            this.title = str;
            this.subtitle = str2;
        }
    }
}
