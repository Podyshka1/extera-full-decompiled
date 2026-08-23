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
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.exifinterface.media.ExifInterface;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.MediaUtils;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.google.android.gms.cast.MediaError;
import com.google.zxing.Dimension;
import java.io.File;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.PopupSwipeBackLayout;
import org.telegram.ui.ProfileActivity;

/* JADX INFO: loaded from: classes4.dex */
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

    public void closeMenu() {
    }

    public abstract void copy(String str);

    /* JADX WARN: Removed duplicated region for block: B:134:0x03d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MessageDetailsPopupWrapper(final BaseFragment baseFragment, final PopupSwipeBackLayout popupSwipeBackLayout, final MessageObject messageObject, Theme.ResourcesProvider resourcesProvider) {
        boolean z;
        int i;
        int i2;
        final ActionBarMenuSubItem actionBarMenuSubItem;
        LinearLayout linearLayout;
        final Item item;
        char c2;
        ScrollView scrollView;
        final boolean z2;
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
            public void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                float f = this.alphaFloat.set(canScrollVertically(-1) ? 1.0f : 0.0f) * 0.5f;
                if (f > 0.0f) {
                    if (this.topShadowDrawable == null) {
                        this.topShadowDrawable = ContextCompat.getDrawable(getContext(), C2573R.drawable.header_shadow);
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
        ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem((Context) baseFragment.getParentActivity(), true, false, resourcesProvider);
        actionBarMenuSubItem2.setItemHeight(44);
        actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString(C2573R.string.Back), C2573R.drawable.msg_arrow_back);
        actionBarMenuSubItem2.getTextView().setPadding(LocaleController.isRTL ? 0 : AndroidUtilities.dp(40.0f), 0, LocaleController.isRTL ? AndroidUtilities.dp(40.0f) : 0, 0);
        actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                popupSwipeBackLayout.closeForeground();
            }
        });
        this.swipeBack.addView(actionBarMenuSubItem2, LayoutHelper.createLinear(-1, -2));
        linearLayout3.addView(createGap(), LayoutHelper.createLinear(-1, 8));
        ArrayList arrayList = new ArrayList();
        int i4 = messageObject2.messageOwner.views;
        if (i4 > 0) {
            arrayList.add(new Item(C2573R.drawable.msg_view_file, String.format(LocaleController.getPluralString("Views", i4), AndroidUtilities.formatCount(messageObject2.messageOwner.views)), (String) null));
        }
        int i5 = messageObject2.messageOwner.forwards;
        if (i5 > 0) {
            arrayList.add(new Item(C2573R.drawable.msg_forward, String.format(LocaleController.getPluralString("Shares", i5), AndroidUtilities.formatCount(messageObject2.messageOwner.forwards)), (String) null));
        }
        if (!arrayList.isEmpty()) {
            arrayList.add(null);
        }
        arrayList.add(new Item(C2573R.drawable.msg_info, "ID", messageObject2.messageOwner.id));
        if (messageObject2.messageOwner.date > 0) {
            arrayList.add(new Item(C2573R.drawable.msg_calendar2, LocaleController.getString(C2573R.string.Date), formatTime(messageObject2.messageOwner.date, true)));
        }
        TLRPC.Message message = messageObject2.messageOwner;
        TLRPC.MessageFwdHeader messageFwdHeader = message.fwd_from;
        if (messageFwdHeader != null && (i3 = messageFwdHeader.date) > 0 && i3 != message.date) {
            arrayList.add(new Item(C2573R.drawable.msg_recent, LocaleController.getString(C2573R.string.ForwardedDate), formatTime(messageObject2.messageOwner.fwd_from.date, true)));
        }
        TLRPC.Message message2 = messageObject2.messageOwner;
        int i6 = message2.edit_date;
        if (i6 > 0 && i6 != message2.date && !message2.edit_hide) {
            arrayList.add(new Item(C2573R.drawable.msg_edit, LocaleController.getString(C2573R.string.EditedDate), formatTime(messageObject2.messageOwner.edit_date, true)));
        }
        arrayList.add(null);
        if (messageObject2.getSize() > 0) {
            arrayList.add(new Item(C2573R.drawable.msg_sendfile, LocaleController.getString(C2573R.string.FileSize), AndroidUtilities.formatFileSize(messageObject2.getSize())));
        }
        if (messageObject2.getMimeType() != null && !messageObject2.getMimeType().isEmpty()) {
            arrayList.add(new Item(C2573R.drawable.msg_media, LocaleController.getString(C2573R.string.MimeType), messageObject2.getMimeType()));
        }
        if (MessageObject.getMedia(messageObject2.messageOwner) != null && MessageObject.getMedia(messageObject2.messageOwner).document != null) {
            ArrayList<TLRPC.DocumentAttribute> arrayList2 = MessageObject.getMedia(messageObject2.messageOwner).document.attributes;
            int size = arrayList2.size();
            int i7 = 0;
            while (i7 < size) {
                TLRPC.DocumentAttribute documentAttribute = arrayList2.get(i7);
                i7++;
                TLRPC.DocumentAttribute documentAttribute2 = documentAttribute;
                if (documentAttribute2 instanceof TLRPC.TL_documentAttributeFilename) {
                    arrayList.add(new Item(C2573R.drawable.msg_log, LocaleController.getString(C2573R.string.FileName), documentAttribute2.file_name));
                }
                if ((documentAttribute2 instanceof TLRPC.TL_documentAttributeSticker) && (inputStickerSet = documentAttribute2.stickerset) != null) {
                    long jExtractOwnerId = ChatUtils.extractOwnerId(inputStickerSet.id);
                    this.ownerId = jExtractOwnerId;
                    if (jExtractOwnerId > 0) {
                        arrayList.add(new Item(0, C2573R.drawable.msg_sticker, LocaleController.getString(C2573R.string.ChannelCreator), String.valueOf(this.ownerId)));
                    }
                }
            }
        }
        String pathToMessage = ChatUtils.getInstance().getPathToMessage(messageObject2);
        this.filePath = pathToMessage;
        if (!TextUtils.isEmpty(pathToMessage)) {
            arrayList.add(new Item(1, C2573R.drawable.msg_map, LocaleController.getString(C2573R.string.FilePath), LocaleController.getString(C2573R.string.Open)));
        }
        boolean z3 = messageObject2.isVoice() || messageObject2.isMusic();
        boolean z4 = messageObject2.isVideo() || messageObject2.isRoundVideo() || messageObject2.isVideoSticker() || messageObject2.isGif();
        boolean zIsPhotoAsDocument = isPhotoAsDocument(messageObject2);
        boolean z5 = zIsPhotoAsDocument || messageObject2.isPhoto() || messageObject2.isSticker();
        if (!z5 || TextUtils.isEmpty(this.filePath)) {
            z = z3;
        } else {
            z = z3;
            arrayList.add(new Item(5, C2573R.drawable.menu_devices, LocaleController.getString(C2573R.string.Platform), LocaleController.getString(C2573R.string.NumberUnknown)));
        }
        if (z4 || z5) {
            arrayList.add(new Item(4, C2573R.drawable.msg_photo_crop, LocaleController.getString(C2573R.string.Resolution), "0x0"));
        }
        if (zIsPhotoAsDocument && !TextUtils.isEmpty(this.filePath)) {
            arrayList.add(new Item(2, C2573R.drawable.msg_location, LocaleController.getString(C2573R.string.ShareLocation), "0.0, 0.0"));
        }
        if (z4 || z) {
            arrayList.add(new Item(3, C2573R.drawable.msg_noise_on, LocaleController.getString(C2573R.string.Bitrate), "0 Kbps"));
            int duration = (int) messageObject2.getDuration();
            if (duration > 0) {
                arrayList.add(new Item(C2573R.drawable.msg2_animations, LocaleController.getString(C2573R.string.Duration), AndroidUtilities.formatShortDuration(duration)));
            }
        }
        if (MessageObject.getMedia(messageObject2.messageOwner) == null) {
            i = 0;
        } else if (MessageObject.getMedia(messageObject2.messageOwner).photo != null && MessageObject.getMedia(messageObject2.messageOwner).photo.dc_id > 0) {
            i = MessageObject.getMedia(messageObject2.messageOwner).photo.dc_id;
        } else if (MessageObject.getMedia(messageObject2.messageOwner).document != null && MessageObject.getMedia(messageObject2.messageOwner).document.dc_id > 0) {
            i = MessageObject.getMedia(messageObject2.messageOwner).document.dc_id;
        } else if (MessageObject.getMedia(messageObject2.messageOwner).webpage != null && MessageObject.getMedia(messageObject2.messageOwner).webpage.photo != null && MessageObject.getMedia(messageObject2.messageOwner).webpage.photo.dc_id > 0) {
            i = MessageObject.getMedia(messageObject2.messageOwner).webpage.photo.dc_id;
        } else if (MessageObject.getMedia(messageObject2.messageOwner).webpage != null && MessageObject.getMedia(messageObject2.messageOwner).webpage.document != null && MessageObject.getMedia(messageObject2.messageOwner).webpage.document.dc_id > 0) {
            i = MessageObject.getMedia(messageObject2.messageOwner).webpage.document.dc_id;
        }
        if (i != 0) {
            arrayList.add(new Item(C2573R.drawable.msg_satellite, LocaleController.getString(C2573R.string.Datacenter), String.format(Locale.ROOT, "DC%d, %s", Integer.valueOf(i), ChatUtils.getDCName(i))));
        }
        if (arrayList.get(arrayList.size() - 1) == null) {
            arrayList.remove(arrayList.size() - 1);
        }
        int size2 = arrayList.size();
        int i8 = 0;
        int i9 = 0;
        while (i9 < size2) {
            int i10 = i9 + 1;
            final Item item2 = (Item) arrayList.get(i9);
            if (item2 == null) {
                linearLayout3.addView(createGap(), LayoutHelper.createLinear(-1, 8));
                i8 += 8;
                i9 = i10;
                parentActivity = parentActivity;
            } else {
                final Activity activity = parentActivity;
                ScrollView scrollView3 = scrollView2;
                final ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem((Context) baseFragment.getParentActivity(), false, false, resourcesProvider);
                actionBarMenuSubItem3.setTextAndIcon(item2.title, item2.resId);
                actionBarMenuSubItem3.setMinimumWidth(AndroidUtilities.dp(196.0f));
                actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        popupSwipeBackLayout.closeForeground();
                    }
                });
                linearLayout3.addView(actionBarMenuSubItem3, LayoutHelper.createLinear(-1, 48));
                int i11 = i8 + 48;
                String str = item2.subtitle;
                if (str != null) {
                    actionBarMenuSubItem3.setSubtext(str);
                    actionBarMenuSubItem3.subtextView.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                    actionBarMenuSubItem3.subtextView.setMarqueeRepeatLimit(-1);
                    actionBarMenuSubItem3.subtextView.setSelected(true);
                    actionBarMenuSubItem3.setItemHeight(56);
                    i2 = i8 + 56;
                } else {
                    i2 = i11;
                }
                int i12 = item2.id;
                boolean z6 = z4;
                if (i12 == 0 && this.ownerId > 0) {
                    ChatUtils.getInstance().searchUserById(Long.valueOf(this.ownerId), new Utilities.Callback() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda2
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            MessageDetailsPopupWrapper.$r8$lambda$dE2BmWFMp3ZO7Tcpe0bsPv1CgxY(item2, actionBarMenuSubItem3, (TLRPC.User) obj);
                        }
                    });
                } else if (i12 == 2) {
                    ChatUtils.utilsQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$new$4(actionBarMenuSubItem3, item2);
                        }
                    });
                } else if (i12 == 3) {
                    ChatUtils.utilsQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$new$6(messageObject2, actionBarMenuSubItem3, item2);
                        }
                    });
                    actionBarMenuSubItem = actionBarMenuSubItem3;
                    linearLayout = linearLayout3;
                    item = item2;
                    c2 = 5;
                    scrollView = scrollView3;
                    z2 = z6;
                    actionBarMenuSubItem.setTag(item);
                    final Item item3 = item;
                    final boolean z7 = z2;
                    ActionBarMenuSubItem actionBarMenuSubItem4 = actionBarMenuSubItem;
                    final boolean z8 = z5;
                    actionBarMenuSubItem4.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda7
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$new$11(item3, activity, z8, z7, messageObject, baseFragment, view);
                        }
                    });
                    actionBarMenuSubItem4.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda8
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view) {
                            return this.f$0.lambda$new$12(item3, view);
                        }
                    });
                    messageObject2 = messageObject;
                    z4 = z7;
                    arrayList = arrayList;
                    i9 = i10;
                    linearLayout3 = linearLayout;
                    parentActivity = activity;
                    i8 = i2;
                    z5 = z8;
                    scrollView2 = scrollView;
                } else {
                    if (i12 == 4) {
                        DispatchQueue dispatchQueue = ChatUtils.utilsQueue;
                        scrollView = scrollView3;
                        z2 = z6;
                        linearLayout = linearLayout3;
                        item = item2;
                        Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda5
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$new$8(z2, messageObject2, actionBarMenuSubItem3, item);
                            }
                        };
                        actionBarMenuSubItem = actionBarMenuSubItem3;
                        dispatchQueue.postRunnable(runnable);
                        c2 = 5;
                    } else {
                        actionBarMenuSubItem = actionBarMenuSubItem3;
                        linearLayout = linearLayout3;
                        item = item2;
                        c2 = 5;
                        scrollView = scrollView3;
                        z2 = z6;
                        if (i12 == 5) {
                            ChatUtils.utilsQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda6
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$new$10(actionBarMenuSubItem, item);
                                }
                            });
                        }
                    }
                    actionBarMenuSubItem.setTag(item);
                    final Item item32 = item;
                    final boolean z72 = z2;
                    ActionBarMenuSubItem actionBarMenuSubItem42 = actionBarMenuSubItem;
                    final boolean z82 = z5;
                    actionBarMenuSubItem42.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda7
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$new$11(item32, activity, z82, z72, messageObject, baseFragment, view);
                        }
                    });
                    actionBarMenuSubItem42.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda8
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view) {
                            return this.f$0.lambda$new$12(item32, view);
                        }
                    });
                    messageObject2 = messageObject;
                    z4 = z72;
                    arrayList = arrayList;
                    i9 = i10;
                    linearLayout3 = linearLayout;
                    parentActivity = activity;
                    i8 = i2;
                    z5 = z82;
                    scrollView2 = scrollView;
                }
                actionBarMenuSubItem = actionBarMenuSubItem3;
                linearLayout = linearLayout3;
                item = item2;
                c2 = 5;
                scrollView = scrollView3;
                z2 = z6;
                actionBarMenuSubItem.setTag(item);
                final Item item322 = item;
                final boolean z722 = z2;
                ActionBarMenuSubItem actionBarMenuSubItem422 = actionBarMenuSubItem;
                final boolean z822 = z5;
                actionBarMenuSubItem422.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda7
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$11(item322, activity, z822, z722, messageObject, baseFragment, view);
                    }
                });
                actionBarMenuSubItem422.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.exteragram.messenger.components.MessageDetailsPopupWrapper$$ExternalSyntheticLambda8
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        return this.f$0.lambda$new$12(item322, view);
                    }
                });
                messageObject2 = messageObject;
                z4 = z722;
                arrayList = arrayList;
                i9 = i10;
                linearLayout3 = linearLayout;
                parentActivity = activity;
                i8 = i2;
                z5 = z822;
                scrollView2 = scrollView;
            }
        }
        ScrollView scrollView4 = scrollView2;
        if (i8 > 380 && Math.abs(i8 - 380) > 112) {
            this.swipeBack.addView(scrollView4, LayoutHelper.createLinear(-1, 380));
        } else {
            this.swipeBack.addView(scrollView4, LayoutHelper.createLinear(-1, -2));
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
        String str = this.filePath;
        final Dimension videoResolution = z ? getVideoResolution(messageObject, str) : getPhotoResolution(messageObject, str);
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
                MessageDetailsPopupWrapper.m1942$r8$lambda$8KY68BRgfBrUh0xLJdGa54yNS4(photoPlatform, actionBarMenuSubItem, item);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$8KY68BRgfBrUh0xLJ-dGa54yNS4, reason: not valid java name */
    public static /* synthetic */ void m1942$r8$lambda$8KY68BRgfBrUh0xLJdGa54yNS4(String str, ActionBarMenuSubItem actionBarMenuSubItem, Item item) {
        if (!TextUtils.isEmpty(str)) {
            actionBarMenuSubItem.setSubtext(str);
            item.subtitle = str;
        } else {
            actionBarMenuSubItem.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$11(Item item, Activity activity, boolean z, boolean z2, MessageObject messageObject, BaseFragment baseFragment, View view) {
        closeMenu();
        if (item.id == 1 && !TextUtils.isEmpty(this.filePath)) {
            try {
                Uri uriForFile = FileProvider.getUriForFile(activity, ApplicationLoader.getApplicationId() + ".provider", new File(this.filePath));
                if (z || z2) {
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
                activity.startActivityForResult(Intent.createChooser(intent2, LocaleController.getString(C2573R.string.ShareFile)), MediaError.DetailedErrorCode.SEGMENT_UNKNOWN);
                return;
            } catch (IllegalArgumentException e) {
                FileLog.m898e(e);
                return;
            }
        }
        int i = item.id;
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
        if (item.id == 1 && !TextUtils.isEmpty(this.filePath)) {
            strValueOf = this.filePath;
        } else if (item.id == 0) {
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
                FileLog.m898e(e);
                bitrateFromPath = -1;
            }
        }
        if (bitrateFromPath != -1) {
            return bitrateFromPath;
        }
        try {
            return getBitrateFromAttributes(messageObject);
        } catch (Exception e2) {
            FileLog.m898e(e2);
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
            i = Integer.parseInt(strExtractMetadata) / 1000;
        } catch (Exception e) {
            FileLog.m898e(e);
            i = -1;
        }
        try {
            mediaMetadataRetriever.release();
        } catch (Throwable th) {
            FileLog.m898e(th);
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
                if ((documentAttribute2 instanceof TLRPC.TL_documentAttributeAudio) || (documentAttribute2 instanceof TLRPC.TL_documentAttributeVideo)) {
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
                FileLog.m898e(e);
                photoResolutionFromPath = null;
            }
        }
        if (photoResolutionFromPath != null) {
            return photoResolutionFromPath;
        }
        try {
            return getPhotoResolutionFromAttributes(messageObject);
        } catch (Exception e2) {
            FileLog.m898e(e2);
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
            if (closestPhotoSizeWithSize != null && (i5 = closestPhotoSizeWithSize.f858w) > 0 && (i6 = closestPhotoSizeWithSize.f857h) > 0) {
                dimension = new Dimension(i5, i6);
            }
            return (dimension != null || (closestVideoSizeWithSize = FileLoader.getClosestVideoSizeWithSize(MessageObject.getMedia(messageObject.messageOwner).photo.video_sizes, AndroidUtilities.getPhotoSize(), false, true)) == null || (i3 = closestVideoSizeWithSize.f881w) <= 0 || (i4 = closestVideoSizeWithSize.f880h) <= 0) ? dimension : new Dimension(i3, i4);
        }
        if (MessageObject.getMedia(messageObject.messageOwner) != null && MessageObject.getMedia(messageObject.messageOwner).document != null) {
            ArrayList<TLRPC.DocumentAttribute> arrayList = MessageObject.getMedia(messageObject.messageOwner).document.attributes;
            int size = arrayList.size();
            while (i7 < size) {
                TLRPC.DocumentAttribute documentAttribute = arrayList.get(i7);
                i7++;
                TLRPC.DocumentAttribute documentAttribute2 = documentAttribute;
                if ((documentAttribute2 instanceof TLRPC.TL_documentAttributeImageSize) && (i = documentAttribute2.f856w) > 0 && (i2 = documentAttribute2.f855h) > 0) {
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
                FileLog.m898e(e);
                videoResolutionFromPath = null;
            }
        }
        if (videoResolutionFromPath != null) {
            return videoResolutionFromPath;
        }
        try {
            return getVideoResolutionFromAttributes(messageObject);
        } catch (Exception e2) {
            FileLog.m898e(e2);
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
            FileLog.m898e(e);
        }
        try {
            mediaMetadataRetriever.release();
        } catch (Throwable th) {
            FileLog.m898e(th);
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
            if ((documentAttribute2 instanceof TLRPC.TL_documentAttributeVideo) && (i = documentAttribute2.f856w) > 0 && (i2 = documentAttribute2.f855h) > 0) {
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
            FileLog.m898e(e);
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
            FileLog.m896e("Division by zero in GPS data");
            return 0.0d;
        }
        FileLog.m896e("Invalid rational number format: ".concat(str));
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
                    if ((documentAttribute2 instanceof TLRPC.TL_documentAttributeImageSize) && documentAttribute2.f856w > 0 && documentAttribute2.f855h > 0) {
                        return true;
                    }
                }
            }
        } catch (Exception e) {
            FileLog.m898e(e);
        }
        return false;
    }

    private String formatTime(int i, boolean z) {
        if (i == 2147483646) {
            return LocaleController.getString(C2573R.string.SendWhenOnline);
        }
        if (z) {
            long j = ((long) i) * 1000;
            return LocaleController.formatString("formatDateAtTime", C2573R.string.formatDateAtTime, LocaleController.getInstance().getFormatterYear().format(new Date(j)), LocaleController.getInstance().getFormatterDayWithSeconds().format(new Date(j)));
        }
        return LocaleController.formatDateAudio(i, true);
    }

    private View createGap() {
        ActionBarPopupWindow.GapView gapView = new ActionBarPopupWindow.GapView(this.fragment.getContext(), this.resourcesProvider);
        gapView.setDividerVisible(false);
        return gapView;
    }

    public static class Item {
        int id;
        int resId;
        String subtitle;
        String title;

        public Item(int i, String str, String str2) {
            this(-1, i, str, str2);
        }

        public Item(int i, String str, int i2) {
            this(-1, i, str, String.valueOf(i2));
        }

        public Item(int i, int i2, String str, String str2) {
            this.id = i;
            this.resId = i2;
            this.title = str;
            this.subtitle = str2;
        }
    }
}
