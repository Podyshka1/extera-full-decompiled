package com.exteragram.messenger.utils.ui;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.view.View;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.android.tools.r8.RecordTag;
import com.exteragram.messenger.ai.network.Client$ImagePayload$$ExternalSyntheticRecord1;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Adapters.FiltersView;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.ItemOptions;

/* JADX INFO: loaded from: classes4.dex */
public final class ChatSearchFilterUiHelper {
    private static final Type[] TYPES = {new Type(C2807R.drawable.msg_photos, C2807R.string.SearchFilterPhotos, new TLRPC.TL_inputMessagesFilterPhotos(), false), new Type(C2807R.drawable.msg_videocall, C2807R.string.SearchFilterVideos, new TLRPC.TL_inputMessagesFilterVideo(), false), new Type(C2807R.drawable.msg_sendfile, C2807R.string.SharedFilesTab2, new TLRPC.TL_inputMessagesFilterDocument(), false), new Type(C2807R.drawable.msg_link, C2807R.string.SharedLinksTab2, new TLRPC.TL_inputMessagesFilterUrl(), false), new Type(C2807R.drawable.msg_voice_headphones, C2807R.string.SharedMusicTab2, new TLRPC.TL_inputMessagesFilterMusic(), false), new Type(C2807R.drawable.input_mic, C2807R.string.SearchFilterVoice, new TLRPC.TL_inputMessagesFilterVoice(), false), new Type(C2807R.drawable.input_video, C2807R.string.SearchFilterRound, new TLRPC.TL_inputMessagesFilterRoundVideo(), false), new Type(C2807R.drawable.msg_gif, C2807R.string.SharedGIFsTab2, new TLRPC.TL_inputMessagesFilterGif(), false), new Type(C2807R.drawable.menu_poll_notify, C2807R.string.SharedPollTab, new TLRPC.TL_inputMessagesFilterPoll(), false), new Type(C2807R.drawable.msg_location, C2807R.string.SearchFilterLocations, new TLRPC.TL_inputMessagesFilterGeo(), false), new Type(C2807R.drawable.msg_pin, C2807R.string.SearchFilterPinned, new TLRPC.TL_inputMessagesFilterPinned(), false), new Type(C2807R.drawable.msg_mention, C2807R.string.SearchFilterMentions, new TLRPC.TL_inputMessagesFilterMyMentions(), true)};
    private ImageView button;
    private final ChatActivity chatActivity;
    private Runnable onChanged;
    private ActionBarMenuItem searchItem;
    private FiltersView.MediaFilterData selected;

    public static final class Type extends RecordTag {
        private final TLRPC.MessagesFilter filter;
        private final boolean groupsOnly;
        private final int iconResId;
        private final int titleResId;

        private /* synthetic */ boolean $record$equals(Object obj) {
            if (!(obj instanceof Type)) {
                return false;
            }
            Type type = (Type) obj;
            return this.groupsOnly == type.groupsOnly && this.iconResId == type.iconResId && this.titleResId == type.titleResId && Objects.equals(this.filter, type.filter);
        }

        private /* synthetic */ Object[] $record$getFieldsAsObjects() {
            return new Object[]{Integer.valueOf(this.iconResId), Integer.valueOf(this.titleResId), this.filter, Boolean.valueOf(this.groupsOnly)};
        }

        private Type(int i, int i2, TLRPC.MessagesFilter messagesFilter, boolean z) {
            this.iconResId = i;
            this.titleResId = i2;
            this.filter = messagesFilter;
            this.groupsOnly = z;
        }

        public final boolean equals(Object obj) {
            return $record$equals(obj);
        }

        public final int hashCode() {
            return ChatSearchFilterUiHelper$Type$$ExternalSyntheticRecord0.m296m(this.groupsOnly, this.iconResId, this.titleResId, this.filter);
        }

        public final String toString() {
            return Client$ImagePayload$$ExternalSyntheticRecord1.m238m($record$getFieldsAsObjects(), Type.class, "iconResId;titleResId;filter;groupsOnly");
        }
    }

    public ChatSearchFilterUiHelper(ChatActivity chatActivity) {
        this.chatActivity = chatActivity;
    }

    public ImageView createButton(Context context, Theme.ResourcesProvider resourcesProvider, ActionBarMenuItem actionBarMenuItem, Runnable runnable) {
        this.searchItem = actionBarMenuItem;
        this.onChanged = runnable;
        this.selected = null;
        ImageView imageView = new ImageView(context);
        this.button = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.button.setImageResource(C2807R.drawable.msg_filter);
        this.button.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chat_searchPanelIcons, resourcesProvider), PorterDuff.Mode.MULTIPLY));
        this.button.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_actionBarActionModeDefaultSelector, resourcesProvider), 1));
        this.button.setContentDescription(LocaleController.getString(C2807R.string.SearchFilterByType));
        this.button.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.utils.ui.ChatSearchFilterUiHelper$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createButton$0(view);
            }
        });
        return this.button;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createButton$0(View view) {
        showMenu();
    }

    public static int getButtonLeftMargin(View... viewArr) {
        float f = 0.0f;
        for (View view : viewArr) {
            if (view != null && view.getVisibility() != 8) {
                f += 45.33f;
            }
        }
        return AndroidUtilities.dp(f);
    }

    public static int getCountTextLeftMargin(View... viewArr) {
        int i = 0;
        for (View view : viewArr) {
            if (view != null && view.getVisibility() != 8) {
                i++;
            }
        }
        return AndroidUtilities.dp(i == 0 ? 18.0f : 14.67f + (i * 45.33f));
    }

    public TLRPC.MessagesFilter getFilter() {
        FiltersView.MediaFilterData mediaFilterData = this.selected;
        if (mediaFilterData != null) {
            return mediaFilterData.filter;
        }
        return null;
    }

    public boolean onFilterCleared(FiltersView.MediaFilterData mediaFilterData) {
        if (mediaFilterData == null || mediaFilterData != this.selected) {
            return false;
        }
        this.selected = null;
        return true;
    }

    public void clear() {
        FiltersView.MediaFilterData mediaFilterData = this.selected;
        if (mediaFilterData != null) {
            this.searchItem.removeSearchFilter(mediaFilterData);
            this.selected = null;
        }
    }

    private void showMenu() {
        TLRPC.Chat currentChat = this.chatActivity.getCurrentChat();
        boolean z = currentChat != null && (!ChatObject.isChannel(currentChat) || currentChat.megagroup);
        int[] iArr = new int[2];
        this.button.getLocationInWindow(iArr);
        int i = iArr[1];
        ActionBar actionBar = this.chatActivity.getActionBar();
        actionBar.getLocationInWindow(iArr);
        ItemOptions scrimViewBackground = ItemOptions.makeOptions(this.chatActivity, this.button).setGravity(0).forceTop(true).followScrimView().setMaxHeight((i - iArr[1]) - actionBar.getMeasuredHeight()).setScrimViewBackground(Theme.createCircleDrawable(AndroidUtilities.dp(40.0f), Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, this.chatActivity.getResourceProvider())));
        for (final Type type : TYPES) {
            if (!type.groupsOnly || z) {
                FiltersView.MediaFilterData mediaFilterData = this.selected;
                scrimViewBackground.addChecked(mediaFilterData != null && mediaFilterData.filter == type.filter, getMenuIcon(type.iconResId), LocaleController.getString(type.titleResId), new Runnable() { // from class: com.exteragram.messenger.utils.ui.ChatSearchFilterUiHelper$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$showMenu$1(type);
                    }
                });
            }
        }
        scrimViewBackground.show();
    }

    private Drawable getMenuIcon(int i) {
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{ContextCompat.getDrawable(this.chatActivity.getContext(), i).mutate()});
        layerDrawable.setLayerSize(0, AndroidUtilities.dp(24.0f), AndroidUtilities.dp(24.0f));
        return layerDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: select, reason: merged with bridge method [inline-methods] */
    public void lambda$showMenu$1(Type type) {
        FiltersView.MediaFilterData mediaFilterData = this.selected;
        boolean z = mediaFilterData != null && mediaFilterData.filter == type.filter;
        FiltersView.MediaFilterData mediaFilterData2 = this.selected;
        if (mediaFilterData2 != null) {
            this.searchItem.removeSearchFilter(mediaFilterData2);
            this.selected = null;
        }
        if (!z) {
            FiltersView.MediaFilterData mediaFilterData3 = new FiltersView.MediaFilterData(type.iconResId, type.titleResId, type.filter, 0);
            this.selected = mediaFilterData3;
            mediaFilterData3.iconSize = 18;
            this.searchItem.addSearchFilter(mediaFilterData3);
        }
        AndroidUtilities.hideKeyboard(this.searchItem.getSearchField());
        this.onChanged.run();
    }
}
