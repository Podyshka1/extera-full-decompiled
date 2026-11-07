package org.telegram.ui.Components;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.provider.MediaStore;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.cast.HlsSegmentFormat;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import me.vkryl.android.animator.BoolAnimator;
import me.vkryl.android.animator.FactorAnimator;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.audioinfo.AudioInfo;
import org.telegram.messenger.utils.TextWatcherImpl;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Cells.SharedAudioCell;
import org.telegram.ui.Components.ChatAttachAlert;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"ViewConstructor"})
public class ChatAttachAlertAudioLayout extends ChatAttachAlert.AttachAlertLayout implements NotificationCenter.NotificationCenterDelegate, FactorAnimator.Target {
    private int LOAD_MORE_SEARCH_CHATS;
    private int LOAD_MORE_SEARCH_GLOBAL;
    private int LOAD_MORE_SEARCH_PROFILE;
    private final BoolAnimator animatorFadeVisible;
    private ArrayList<MediaController.AudioEntry> audioEntries;
    private float currentPanTranslationProgress;
    private AudioSelectDelegate delegate;
    private final View fadeView;
    private boolean failedToResolveGlobalAudioBot;
    private ArrayList<MediaController.AudioEntry> foundGlobal;
    private ArrayList<MediaController.AudioEntry> foundInChats;
    private final FrameLayout frameLayout;
    private TLRPC.User globalAudioBot;
    private int globalAudioMessageId;
    private String globalAudioOffset;
    private String lastSearchChatsQuery;
    private String lastSearchGlobalQuery;
    private UniversalRecyclerView listView;
    private boolean loadingAudio;
    private boolean loadingSearchChats;
    private boolean loadingSearchGlobal;
    private int maxSelectedFiles;
    private MessageObject playingAudio;
    private int preMeasuredAvailableHeight;
    private ArrayList<MediaController.AudioEntry> profileEntries;
    private String query;
    private boolean resolvingGlobalAudioBot;
    private MessagesController.SavedMusicList savedMusicList;
    private boolean searchChatsHasMore;
    private int searchChatsNextRate;
    private int searchChatsRequestId;
    private final Runnable searchChatsRunnable;
    private final FragmentSearchField searchField;
    private boolean searchGlobalHasMore;
    private int searchGlobalRequestId;
    private final Runnable searchGlobalRunnable;
    private final HashSet<MediaController.AudioEntry> selectedAudios;
    private boolean sendPressed;
    private DialogsActivityTopPanelLayout topPanelLayout;
    private final Runnable updateWithSavingScrollRunnable;

    public interface AudioSelectDelegate {
        void didSelectAudio(ArrayList<MessageObject> arrayList, CharSequence charSequence, boolean z, int i, int i2, long j, boolean z2, long j2);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public ChatAttachAlertAudioLayout(final ChatAttachAlert chatAttachAlert, Context context, Theme.ResourcesProvider resourcesProvider) {
        FrameLayout frameLayout;
        super(chatAttachAlert, context, resourcesProvider);
        this.animatorFadeVisible = new BoolAnimator(0, this, CubicBezierInterpolator.EASE_OUT_QUINT, 380L);
        this.maxSelectedFiles = -1;
        this.audioEntries = new ArrayList<>();
        this.selectedAudios = new HashSet<>();
        this.profileEntries = new ArrayList<>();
        this.foundInChats = new ArrayList<>();
        this.foundGlobal = new ArrayList<>();
        this.LOAD_MORE_SEARCH_CHATS = 1;
        this.LOAD_MORE_SEARCH_GLOBAL = 2;
        this.LOAD_MORE_SEARCH_PROFILE = 3;
        this.updateWithSavingScrollRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1();
            }
        };
        this.searchChatsRequestId = -1;
        this.searchChatsRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.searchChats();
            }
        };
        this.searchGlobalRequestId = -1;
        this.searchGlobalRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.searchGlobal();
            }
        };
        this.globalAudioMessageId = -1000000000;
        NotificationCenter.getInstance(this.parentAlert.currentAccount).addObserver(this, NotificationCenter.messagePlayingDidReset);
        NotificationCenter.getInstance(this.parentAlert.currentAccount).addObserver(this, NotificationCenter.messagePlayingDidStart);
        NotificationCenter.getInstance(this.parentAlert.currentAccount).addObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
        NotificationCenter.getInstance(this.parentAlert.currentAccount).addObserver(this, NotificationCenter.musicListLoaded);
        loadAudio();
        ChatAttachAlert.SearchFadeView searchFadeView = new ChatAttachAlert.SearchFadeView(context, Theme.key_windowBackgroundWhite, resourcesProvider);
        this.fadeView = searchFadeView;
        searchFadeView.setVisibility(4);
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.frameLayout = frameLayout2;
        ChatAttachAlert.AttachSearchField attachSearchField = new ChatAttachAlert.AttachSearchField(context, this.parentAlert, resourcesProvider);
        this.searchField = attachSearchField;
        attachSearchField.setPadding(AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f));
        attachSearchField.editText.addTextChangedListener(new TextWatcherImpl() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                TextUtils.isEmpty(ChatAttachAlertAudioLayout.this.query);
                ChatAttachAlertAudioLayout.this.query = editable.toString().trim();
                AndroidUtilities.cancelRunOnUIThread(ChatAttachAlertAudioLayout.this.searchChatsRunnable);
                if (!TextUtils.isEmpty(ChatAttachAlertAudioLayout.this.query)) {
                    ChatAttachAlertAudioLayout chatAttachAlertAudioLayout = ChatAttachAlertAudioLayout.this;
                    chatAttachAlertAudioLayout.loadingSearchChats = chatAttachAlertAudioLayout.query != null && ChatAttachAlertAudioLayout.this.query.length() >= 0;
                    if (!TextUtils.equals(ChatAttachAlertAudioLayout.this.lastSearchChatsQuery, ChatAttachAlertAudioLayout.this.query)) {
                        ChatAttachAlertAudioLayout.this.foundInChats.clear();
                        ChatAttachAlertAudioLayout.this.searchChatsNextRate = 0;
                        ChatAttachAlertAudioLayout.this.searchChatsHasMore = false;
                    }
                    AndroidUtilities.runOnUIThread(ChatAttachAlertAudioLayout.this.searchChatsRunnable, 1500L);
                }
                AndroidUtilities.cancelRunOnUIThread(ChatAttachAlertAudioLayout.this.searchGlobalRunnable);
                if (!TextUtils.isEmpty(ChatAttachAlertAudioLayout.this.query)) {
                    ChatAttachAlertAudioLayout chatAttachAlertAudioLayout2 = ChatAttachAlertAudioLayout.this;
                    chatAttachAlertAudioLayout2.loadingSearchGlobal = (chatAttachAlertAudioLayout2.query == null || ChatAttachAlertAudioLayout.this.query.length() < 3 || TextUtils.isEmpty(MessagesController.getInstance(ChatAttachAlertAudioLayout.this.parentAlert.currentAccount).config.musicSearchUsername.get())) ? false : true;
                    if (!TextUtils.equals(ChatAttachAlertAudioLayout.this.lastSearchGlobalQuery, ChatAttachAlertAudioLayout.this.query)) {
                        ChatAttachAlertAudioLayout.this.foundGlobal.clear();
                        ChatAttachAlertAudioLayout.this.searchGlobalHasMore = false;
                    }
                    AndroidUtilities.runOnUIThread(ChatAttachAlertAudioLayout.this.searchGlobalRunnable, 1500L);
                }
                ChatAttachAlertAudioLayout.this.updateWithSavingScroll();
            }
        });
        attachSearchField.editText.setHint(LocaleController.getString(C2807R.string.SearchMusic));
        frameLayout2.addView(searchFadeView, LayoutHelper.createFrameMatchParent());
        FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(-1, 48.0f, 51, 7.0f, 8.0f, 7.0f, 4.0f);
        ((ViewGroup.MarginLayoutParams) layoutParamsCreateFrame).topMargin += AndroidUtilities.statusBarHeight;
        frameLayout2.addView(attachSearchField, layoutParamsCreateFrame);
        DialogsActivityTopPanelLayout dialogsActivityTopPanelLayout = new DialogsActivityTopPanelLayout(context);
        this.topPanelLayout = dialogsActivityTopPanelLayout;
        dialogsActivityTopPanelLayout.setPadding(AndroidUtilities.dp(11.0f), AndroidUtilities.dp(21.0f), AndroidUtilities.dp(11.0f), AndroidUtilities.dp(21.0f));
        this.topPanelLayout.setOnAnimatedHeightChangedListener(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0(chatAttachAlert);
            }
        });
        if (chatAttachAlert == null || chatAttachAlert.baseFragment == null) {
            frameLayout = frameLayout2;
        } else {
            final FrameLayout frameLayout3 = new FrameLayout(context);
            this.topPanelLayout.addView(frameLayout3);
            this.topPanelLayout.setViewVisible(frameLayout3, true, false);
            FragmentContextView fragmentContextView = new FragmentContextView(context, chatAttachAlert.baseFragment, frameLayout2, false, resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout.2
                @Override // org.telegram.ui.Components.FragmentContextView, android.view.View
                public void setVisibility(int i) {
                    ChatAttachAlertAudioLayout.this.topPanelLayout.setViewVisible(frameLayout3, i == 0);
                }
            };
            frameLayout = frameLayout2;
            frameLayout3.addView(fragmentContextView);
            this.topPanelLayout.setCallFragmentContextView(fragmentContextView);
        }
        FrameLayout.LayoutParams layoutParamsCreateFrame2 = LayoutHelper.createFrame(-1, -2.0f, 51, 0.0f, 8.0f, 0.0f, 4.0f);
        ((ViewGroup.MarginLayoutParams) layoutParamsCreateFrame2).topMargin += AndroidUtilities.statusBarHeight + AndroidUtilities.dp(27.0f);
        frameLayout.addView(this.topPanelLayout, layoutParamsCreateFrame2);
        UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(context, chatAttachAlert.currentAccount, 0, new Utilities.Callback2() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, new Utilities.Callback5() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                this.f$0.onItemClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, new Utilities.Callback5Return() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.Utilities.Callback5Return
            public final Object run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                return Boolean.valueOf(this.f$0.onItemLongClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue()));
            }
        }, resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout.3
            @Override // org.telegram.ui.Components.RecyclerListView
            public boolean allowSelectChildAtPosition(float f, float f2) {
                return f2 >= ((float) ((ChatAttachAlertAudioLayout.this.parentAlert.scrollOffsetY[0] + AndroidUtilities.dp(30.0f)) + (!ChatAttachAlertAudioLayout.this.parentAlert.inBubbleMode ? AndroidUtilities.statusBarHeight : 0)));
            }

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                ChatAttachAlertAudioLayout chatAttachAlertAudioLayout = ChatAttachAlertAudioLayout.this;
                chatAttachAlertAudioLayout.parentAlert.updateLayout(chatAttachAlertAudioLayout, true, 0);
            }

            @Override // org.telegram.ui.Components.UniversalRecyclerView
            public void onLayoutUpdate() {
                ChatAttachAlertAudioLayout chatAttachAlertAudioLayout = ChatAttachAlertAudioLayout.this;
                chatAttachAlertAudioLayout.parentAlert.updateLayout(chatAttachAlertAudioLayout, true, 0);
            }
        };
        this.listView = universalRecyclerView;
        universalRecyclerView.adapter.setApplyBackground(false);
        this.listView.setSections();
        UniversalRecyclerView universalRecyclerView2 = this.listView;
        this.iBlur3Capture = universalRecyclerView2;
        this.iBlur3CaptureView = universalRecyclerView2;
        this.occupyStatusBar = true;
        this.occupyNavigationBar = true;
        universalRecyclerView2.setClipToPadding(false);
        this.listView.setHorizontalScrollBarEnabled(false);
        this.listView.setVerticalScrollBarEnabled(false);
        addView(this.listView, LayoutHelper.createFrame(-1, -1.0f, 51, 0.0f, 0.0f, 0.0f, 0.0f));
        this.listView.setGlowColor(getThemedColor(Theme.key_dialogScrollGlow));
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout.4
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                ChatAttachAlertAudioLayout chatAttachAlertAudioLayout = ChatAttachAlertAudioLayout.this;
                chatAttachAlertAudioLayout.parentAlert.updateLayout(chatAttachAlertAudioLayout, true, i2);
            }
        });
        addView(frameLayout, LayoutHelper.createFrame(-1, 200, 51));
        this.listView.adapter.update(false);
        checkUi_listViewPadding();
        int i = this.parentAlert.currentAccount;
        this.savedMusicList = new MessagesController.SavedMusicList(i, UserConfig.getInstance(i).getClientUserId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ChatAttachAlert chatAttachAlert) {
        chatAttachAlert.blur3_InvalidateBlur();
        checkUi_listViewPadding();
        this.parentAlert.updateLayout(this, true, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void checkUi_listViewPadding() {
        int iDp;
        if (this.parentAlert.sizeNotifierFrameLayout.measureKeyboardHeight() > AndroidUtilities.dp(20.0f)) {
            iDp = AndroidUtilities.dp(8.0f);
            this.parentAlert.setAllowNestedScroll(false);
        } else if (!AndroidUtilities.isTablet()) {
            Point point = AndroidUtilities.displaySize;
            if (point.x > point.y) {
                iDp = (int) (this.preMeasuredAvailableHeight / 3.5f);
            } else {
                iDp = (this.preMeasuredAvailableHeight / 5) * 2;
            }
            this.parentAlert.setAllowNestedScroll(true);
        }
        this.listView.setPadding(0, (int) (iDp + AndroidUtilities.statusBarHeight + AndroidUtilities.dp(56.0f) + this.topPanelLayout.getAnimatedHeightWithPadding(0.0f)), 0, this.listPaddingBottom);
    }

    private void convertProfileMusicToEntries() {
        MediaController.AudioEntry audioEntry;
        MessagesController.SavedMusicList savedMusicList = this.savedMusicList;
        if (savedMusicList == null) {
            return;
        }
        int size = savedMusicList.list.size();
        if (size < this.profileEntries.size()) {
            ArrayList<MediaController.AudioEntry> arrayList = this.profileEntries;
            arrayList.subList(size, arrayList.size()).clear();
        }
        for (int i = 0; i < size; i++) {
            int size2 = this.profileEntries.size();
            ArrayList<MediaController.AudioEntry> arrayList2 = this.profileEntries;
            if (i >= size2) {
                audioEntry = new MediaController.AudioEntry();
                arrayList2.add(audioEntry);
            } else {
                audioEntry = arrayList2.get(i);
            }
            if (audioEntry.messageObject != this.savedMusicList.list.get(i)) {
                MessageObject messageObject = this.savedMusicList.list.get(i);
                int i2 = this.globalAudioMessageId;
                this.globalAudioMessageId = i2 - 1;
                audioEntry.id = i2;
                audioEntry.messageObject = messageObject;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean needPlayMessage(MessageObject messageObject) {
        this.playingAudio = messageObject;
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        arrayList.add(messageObject);
        return MediaController.getInstance().setPlaylist(arrayList, messageObject, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:79:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0270  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        boolean z;
        ArrayList<MediaController.AudioEntry> arrayList2;
        arrayList.add(UItem.asSpace(-100, AndroidUtilities.dp(1.0f)));
        int size = arrayList.size();
        if (TextUtils.isEmpty(this.query)) {
            universalAdapter.whiteSectionStart();
            for (int i = 0; i < this.audioEntries.size(); i++) {
                MediaController.AudioEntry audioEntry = this.audioEntries.get(i);
                audioEntry.messageObject.setQuery(null);
                arrayList.add(SharedAudioCell.Factory.as(audioEntry, (Utilities.CallbackReturn<MessageObject, Boolean>) new Utilities.CallbackReturn() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda10
                    @Override // org.telegram.messenger.Utilities.CallbackReturn
                    public final Object run(Object obj) {
                        return Boolean.valueOf(this.f$0.needPlayMessage((MessageObject) obj));
                    }
                }).setChecked(this.selectedAudios.contains(audioEntry)).setId(-1));
            }
            if (this.loadingAudio) {
                arrayList.add(UItem.asFlicker(11, 4));
                arrayList.add(UItem.asFlicker(12, 4));
                arrayList.add(UItem.asFlicker(13, 4));
            }
            universalAdapter.whiteSectionEnd();
            convertProfileMusicToEntries();
            if (this.savedMusicList != null && (arrayList2 = this.profileEntries) != null && !arrayList2.isEmpty()) {
                if (arrayList.size() > size) {
                    arrayList.add(UItem.asShadow(-98, null));
                }
                universalAdapter.whiteSectionStart();
                arrayList.add(UItem.asHeader(45, LocaleController.getString(C2807R.string.AudioSearchProfile)));
                for (int i2 = 0; i2 < this.profileEntries.size(); i2++) {
                    MediaController.AudioEntry audioEntry2 = this.profileEntries.get(i2);
                    arrayList.add(SharedAudioCell.Factory.as(audioEntry2, (Utilities.CallbackReturn<MessageObject, Boolean>) new Utilities.CallbackReturn() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda10
                        @Override // org.telegram.messenger.Utilities.CallbackReturn
                        public final Object run(Object obj) {
                            return Boolean.valueOf(this.f$0.needPlayMessage((MessageObject) obj));
                        }
                    }).setChecked(this.selectedAudios.contains(audioEntry2)));
                }
                if (this.savedMusicList.loading) {
                    arrayList.add(UItem.asFlicker(41, 4));
                    arrayList.add(UItem.asFlicker(42, 4));
                    arrayList.add(UItem.asFlicker(43, 4));
                }
                MessagesController.SavedMusicList savedMusicList = this.savedMusicList;
                if (!savedMusicList.loading && !savedMusicList.endReached) {
                    arrayList.add(UItem.asButton(this.LOAD_MORE_SEARCH_PROFILE, C2807R.drawable.arrow_more, LocaleController.getString(C2807R.string.ShowMore)).accent());
                }
                universalAdapter.whiteSectionEnd();
            }
            ArrayList<MediaController.AudioEntry> arrayList3 = this.foundInChats;
            if (arrayList3 != null && (!arrayList3.isEmpty() || this.searchChatsRequestId >= 0 || this.loadingSearchChats)) {
                if (arrayList.size() > size) {
                    arrayList.add(UItem.asShadow(-98, null));
                }
                universalAdapter.whiteSectionStart();
                arrayList.add(UItem.asHeader(((this.searchChatsRequestId >= 0 || this.loadingSearchChats) && this.foundInChats.isEmpty()) ? 25 : 20, LocaleController.getString(C2807R.string.AudioSearchChats)));
                for (int i3 = 0; i3 < this.foundInChats.size(); i3++) {
                    MediaController.AudioEntry audioEntry3 = this.foundInChats.get(i3);
                    audioEntry3.messageObject.setQuery(this.query);
                    arrayList.add(SharedAudioCell.Factory.as(audioEntry3, (Utilities.CallbackReturn<MessageObject, Boolean>) new Utilities.CallbackReturn() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda10
                        @Override // org.telegram.messenger.Utilities.CallbackReturn
                        public final Object run(Object obj) {
                            return Boolean.valueOf(this.f$0.needPlayMessage((MessageObject) obj));
                        }
                    }).setChecked(this.selectedAudios.contains(audioEntry3)));
                }
                if (this.searchChatsRequestId >= 0 || this.loadingSearchChats) {
                    arrayList.add(UItem.asFlicker(21, 4));
                    arrayList.add(UItem.asFlicker(22, 4));
                    arrayList.add(UItem.asFlicker(23, 4));
                }
                if (this.searchChatsHasMore) {
                    arrayList.add(UItem.asButton(this.LOAD_MORE_SEARCH_CHATS, C2807R.drawable.arrow_more, LocaleController.getString(C2807R.string.ShowMore)).accent());
                }
                universalAdapter.whiteSectionEnd();
            }
        } else {
            String lowerCase = this.query.toLowerCase();
            String strTranslitSafe = AndroidUtilities.translitSafe(lowerCase);
            boolean z2 = false;
            for (int i4 = 0; i4 < this.audioEntries.size(); i4++) {
                MediaController.AudioEntry audioEntry4 = this.audioEntries.get(i4);
                String str = audioEntry4.author;
                if (str != null) {
                    String lowerCase2 = str.toLowerCase();
                    String strTranslitSafe2 = AndroidUtilities.translitSafe(lowerCase2);
                    if (!lowerCase2.startsWith(lowerCase)) {
                        if (!lowerCase2.contains(" " + lowerCase) && !strTranslitSafe2.startsWith(strTranslitSafe)) {
                            if (!strTranslitSafe2.contains(" " + strTranslitSafe)) {
                                z = false;
                            }
                        }
                    }
                    z = true;
                }
                String str2 = audioEntry4.title;
                if (str2 != null) {
                    String lowerCase3 = str2.toLowerCase();
                    String strTranslitSafe3 = AndroidUtilities.translitSafe(lowerCase3);
                    if (z || lowerCase3.startsWith(lowerCase)) {
                        z = true;
                    } else {
                        if (!lowerCase3.contains(" " + lowerCase) && !strTranslitSafe3.startsWith(strTranslitSafe)) {
                            if (!strTranslitSafe3.contains(" " + strTranslitSafe)) {
                                z = false;
                            }
                        }
                    }
                }
                if (z) {
                    if (!z2) {
                        if (arrayList.size() > size) {
                            arrayList.add(UItem.asShadow(-97, null));
                        }
                        universalAdapter.whiteSectionStart();
                        arrayList.add(UItem.asHeader(10, LocaleController.getString(C2807R.string.AudioSearchLocal)));
                        z2 = true;
                    }
                    audioEntry4.messageObject.setQuery(this.query);
                    arrayList.add(SharedAudioCell.Factory.as(audioEntry4, (Utilities.CallbackReturn<MessageObject, Boolean>) new Utilities.CallbackReturn() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda10
                        @Override // org.telegram.messenger.Utilities.CallbackReturn
                        public final Object run(Object obj) {
                            return Boolean.valueOf(this.f$0.needPlayMessage((MessageObject) obj));
                        }
                    }).setChecked(this.selectedAudios.contains(audioEntry4)).setId(10));
                }
            }
            universalAdapter.whiteSectionEnd();
            ArrayList<MediaController.AudioEntry> arrayList4 = this.foundInChats;
            if (arrayList4 != null && (!arrayList4.isEmpty() || this.searchChatsRequestId >= 0 || this.loadingSearchChats)) {
                if (arrayList.size() > size) {
                    arrayList.add(UItem.asShadow(-98, null));
                }
                universalAdapter.whiteSectionStart();
                arrayList.add(UItem.asHeader(((this.searchChatsRequestId >= 0 || this.loadingSearchChats) && this.foundInChats.isEmpty()) ? 25 : 20, LocaleController.getString(C2807R.string.AudioSearchChats)));
                for (int i5 = 0; i5 < this.foundInChats.size(); i5++) {
                    MediaController.AudioEntry audioEntry5 = this.foundInChats.get(i5);
                    audioEntry5.messageObject.setQuery(this.query);
                    arrayList.add(SharedAudioCell.Factory.as(audioEntry5, (Utilities.CallbackReturn<MessageObject, Boolean>) new Utilities.CallbackReturn() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda10
                        @Override // org.telegram.messenger.Utilities.CallbackReturn
                        public final Object run(Object obj) {
                            return Boolean.valueOf(this.f$0.needPlayMessage((MessageObject) obj));
                        }
                    }).setChecked(this.selectedAudios.contains(audioEntry5)));
                }
                if (this.searchChatsRequestId >= 0 || this.loadingSearchChats) {
                    arrayList.add(UItem.asFlicker(21, 4));
                    arrayList.add(UItem.asFlicker(22, 4));
                    arrayList.add(UItem.asFlicker(23, 4));
                }
                if (this.searchChatsHasMore) {
                    arrayList.add(UItem.asButton(this.LOAD_MORE_SEARCH_CHATS, C2807R.drawable.arrow_more, LocaleController.getString(C2807R.string.ShowMore)).accent());
                }
                universalAdapter.whiteSectionEnd();
            }
            ArrayList<MediaController.AudioEntry> arrayList5 = this.foundGlobal;
            if (arrayList5 != null && (!arrayList5.isEmpty() || this.searchGlobalRequestId >= 0 || this.loadingSearchGlobal)) {
                if (arrayList.size() > size) {
                    arrayList.add(UItem.asShadow(-96, null));
                }
                universalAdapter.whiteSectionStart();
                arrayList.add(UItem.asHeader(((this.searchGlobalRequestId >= 0 || this.loadingSearchGlobal) && this.foundGlobal.isEmpty()) ? 35 : 30, LocaleController.getString(C2807R.string.AudioSearchGlobal)));
                int size2 = this.foundGlobal.size();
                for (int i6 = 0; i6 < size2; i6++) {
                    MediaController.AudioEntry audioEntry6 = this.foundGlobal.get(i6);
                    audioEntry6.messageObject.setQuery(this.query);
                    arrayList.add(SharedAudioCell.Factory.as(audioEntry6, (Utilities.CallbackReturn<MessageObject, Boolean>) new Utilities.CallbackReturn() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda10
                        @Override // org.telegram.messenger.Utilities.CallbackReturn
                        public final Object run(Object obj) {
                            return Boolean.valueOf(this.f$0.needPlayMessage((MessageObject) obj));
                        }
                    }).setChecked(this.selectedAudios.contains(audioEntry6)));
                }
                if (this.searchGlobalRequestId >= 0 || this.loadingSearchGlobal) {
                    arrayList.add(UItem.asFlicker(31, 4));
                    arrayList.add(UItem.asFlicker(32, 4));
                    arrayList.add(UItem.asFlicker(33, 4));
                }
                if (this.searchGlobalHasMore) {
                    arrayList.add(UItem.asButton(this.LOAD_MORE_SEARCH_GLOBAL, C2807R.drawable.arrow_more, LocaleController.getString(C2807R.string.ShowMore)).accent());
                }
                universalAdapter.whiteSectionEnd();
            }
        }
        if (arrayList.size() <= size && !this.loadingAudio) {
            if (isSearching()) {
                arrayList.add(EmptyView.Factory.as(LocaleController.getString(C2807R.string.NoAudioFound), AndroidUtilities.replaceTags(LocaleController.formatString(this.query.length() >= 3 ? C2807R.string.NoAudioFoundInfo2 : C2807R.string.NoAudioFoundInfo, this.query))));
            } else {
                arrayList.add(EmptyView.Factory.as(LocaleController.getString(C2807R.string.NoAudioFiles), LocaleController.getString(C2807R.string.NoAudioFilesInfo)));
            }
        }
        arrayList.add(UItem.asShadow(-99, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWithSavingScroll() {
        AndroidUtilities.cancelRunOnUIThread(this.updateWithSavingScrollRunnable);
        AndroidUtilities.runOnUIThread(this.updateWithSavingScrollRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        int i = -1;
        boolean zCanScrollVertically = this.listView.canScrollVertically(-1);
        int i2 = -1;
        int i3 = 0;
        while (true) {
            if (i3 >= this.listView.getChildCount()) {
                break;
            }
            View childAt = this.listView.getChildAt(i3);
            int childAdapterPosition = this.listView.getChildAdapterPosition(childAt);
            int top = childAt.getTop();
            if (childAdapterPosition >= 0) {
                i2 = top;
                i = childAdapterPosition;
                break;
            } else {
                i3++;
                i2 = top;
                i = childAdapterPosition;
            }
        }
        this.listView.adapter.update(true);
        if (!zCanScrollVertically) {
            this.listView.layoutManager.scrollToPositionWithOffset(0, 0);
        } else if (i >= 0) {
            UniversalRecyclerView universalRecyclerView = this.listView;
            universalRecyclerView.layoutManager.scrollToPositionWithOffset(i, i2 - universalRecyclerView.getPaddingTop());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onItemClick(UItem uItem, View view, int i, float f, float f2) {
        boolean z;
        if (uItem != null && uItem.id == this.LOAD_MORE_SEARCH_PROFILE) {
            this.savedMusicList.load();
            return;
        }
        if (uItem != null && uItem.id == this.LOAD_MORE_SEARCH_CHATS) {
            searchChats();
            return;
        }
        if (uItem != null && uItem.id == this.LOAD_MORE_SEARCH_GLOBAL) {
            searchGlobal();
            return;
        }
        if (view instanceof SharedAudioCell) {
            SharedAudioCell sharedAudioCell = (SharedAudioCell) view;
            MediaController.AudioEntry audioEntry = (MediaController.AudioEntry) sharedAudioCell.getTag();
            ChatAttachAlert chatAttachAlert = this.parentAlert;
            if (chatAttachAlert.isStoryAudioPicker || chatAttachAlert.isPollAttach) {
                this.sendPressed = true;
                ArrayList<MessageObject> arrayList = new ArrayList<>();
                arrayList.add(audioEntry.messageObject);
                this.delegate.didSelectAudio(arrayList, this.parentAlert.getCommentView().getText(), false, 0, 0, 0L, false, 0L);
            } else {
                z = false;
                if (this.selectedAudios.contains(audioEntry)) {
                    this.selectedAudios.remove(audioEntry);
                    uItem.checked = false;
                    sharedAudioCell.setChecked(false, true);
                    this.parentAlert.updateCountButton(z ? 1 : 2);
                }
                if (this.maxSelectedFiles >= 0) {
                    int size = this.selectedAudios.size();
                    int i2 = this.maxSelectedFiles;
                    if (size >= i2) {
                        showErrorBox(LocaleController.formatString(C2807R.string.PassportUploadMaxReached, LocaleController.formatPluralString("Files", i2, new Object[0])));
                        return;
                    }
                }
                uItem.checked = true;
                this.selectedAudios.add(audioEntry);
                sharedAudioCell.setChecked(true, true);
            }
            z = true;
            this.parentAlert.updateCountButton(z ? 1 : 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onItemLongClick(UItem uItem, View view, int i, float f, float f2) {
        onItemClick(uItem, view, i, f, f2);
        return true;
    }

    public void setupBlurredSearchField(BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory) {
        FragmentSearchField fragmentSearchField = this.searchField;
        if (fragmentSearchField != null) {
            fragmentSearchField.setupBlurredBackground(blurredBackgroundDrawableViewFactory.create(fragmentSearchField, BlurredBackgroundProviderImpl.topPanel(this.resourcesProvider)));
        }
        View view = this.topPanelLayout;
        if (view != null) {
            BlurredBackgroundDrawable blurredBackgroundDrawableCreate = blurredBackgroundDrawableViewFactory.create(view, BlurredBackgroundProviderImpl.topPanel(this.resourcesProvider));
            blurredBackgroundDrawableCreate.setRadius(AndroidUtilities.dp(24.0f));
            blurredBackgroundDrawableCreate.setPadding(AndroidUtilities.dp(7.0f));
            this.topPanelLayout.setBlurredBackground(blurredBackgroundDrawableCreate);
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onDestroy() {
        onHide();
        NotificationCenter.getInstance(this.parentAlert.currentAccount).removeObserver(this, NotificationCenter.messagePlayingDidReset);
        NotificationCenter.getInstance(this.parentAlert.currentAccount).removeObserver(this, NotificationCenter.messagePlayingDidStart);
        NotificationCenter.getInstance(this.parentAlert.currentAccount).removeObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
        NotificationCenter.getInstance(this.parentAlert.currentAccount).removeObserver(this, NotificationCenter.musicListLoaded);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onHide() {
        if (this.playingAudio != null && MediaController.getInstance().isPlayingMessage(this.playingAudio)) {
            MediaController.getInstance().cleanupPlayer(true, true);
        }
        this.playingAudio = null;
    }

    private boolean isSearching() {
        return !TextUtils.isEmpty(this.query);
    }

    public void setMaxSelectedFiles(int i) {
        this.maxSelectedFiles = i;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void scrollToTop() {
        this.listView.smoothScrollToPosition(0);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getCurrentItemTop() {
        if (this.listView.getChildCount() <= 0) {
            return Integer.MAX_VALUE;
        }
        boolean z = false;
        int top = Integer.MAX_VALUE;
        for (int i = 0; i < this.listView.getChildCount(); i++) {
            View childAt = this.listView.getChildAt(i);
            int childAdapterPosition = this.listView.getChildAdapterPosition(childAt);
            if (childAdapterPosition == 0) {
                z = true;
            }
            if (childAdapterPosition >= 0 && childAt.getTop() < top) {
                top = childAt.getTop();
            }
        }
        if (top == Integer.MAX_VALUE) {
            return Integer.MAX_VALUE;
        }
        int iDp = (((top - AndroidUtilities.dp(56.0f)) - ((int) this.topPanelLayout.getAnimatedHeightWithPadding(0.0f))) - AndroidUtilities.statusBarHeight) - AndroidUtilities.dp(8.0f);
        int i2 = (iDp <= 0 || !z) ? 0 : iDp;
        if (iDp >= 0 && z) {
            this.animatorFadeVisible.setValue(false, true);
        } else {
            this.animatorFadeVisible.setValue(true, true);
            iDp = i2;
        }
        this.frameLayout.setTranslationY(iDp);
        return iDp + AndroidUtilities.dp(12.0f);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getFirstOffset() {
        return getListTopPadding() + AndroidUtilities.dp(4.0f);
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        this.parentAlert.getSheetContainer().invalidate();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean onDismiss() {
        if (this.playingAudio != null && MediaController.getInstance().isPlayingMessage(this.playingAudio)) {
            MediaController.getInstance().cleanupPlayer(true, true);
        }
        return super.onDismiss();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getListTopPadding() {
        return (this.listView.getPaddingTop() - AndroidUtilities.dp(56.0f)) - ((int) this.topPanelLayout.getAnimatedHeightWithPadding(0.0f));
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onPreMeasure(int i, int i2) {
        this.preMeasuredAvailableHeight = i2;
        checkUi_listViewPadding();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onShow(ChatAttachAlert.AttachAlertLayout attachAlertLayout) {
        searchChats();
        this.savedMusicList.load();
        this.listView.layoutManager.scrollToPositionWithOffset(0, 0);
        this.listView.adapter.update(false);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onHidden() {
        this.selectedAudios.clear();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        UniversalRecyclerView universalRecyclerView;
        int i3 = NotificationCenter.messagePlayingDidReset;
        if (i == i3 || i == NotificationCenter.messagePlayingDidStart || i == NotificationCenter.messagePlayingPlayStateChanged) {
            if (i == i3 || i == NotificationCenter.messagePlayingPlayStateChanged) {
                int childCount = this.listView.getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = this.listView.getChildAt(i4);
                    if (childAt instanceof SharedAudioCell) {
                        SharedAudioCell sharedAudioCell = (SharedAudioCell) childAt;
                        if (sharedAudioCell.getMessage() != null) {
                            sharedAudioCell.updateButtonState(false, true);
                        }
                    }
                }
                return;
            }
            if (i == NotificationCenter.messagePlayingDidStart && ((MessageObject) objArr[0]).eventId == 0) {
                int childCount2 = this.listView.getChildCount();
                for (int i5 = 0; i5 < childCount2; i5++) {
                    View childAt2 = this.listView.getChildAt(i5);
                    if (childAt2 instanceof SharedAudioCell) {
                        SharedAudioCell sharedAudioCell2 = (SharedAudioCell) childAt2;
                        if (sharedAudioCell2.getMessage() != null) {
                            sharedAudioCell2.updateButtonState(false, true);
                        }
                    }
                }
                return;
            }
            return;
        }
        if (i == NotificationCenter.musicListLoaded && objArr[0] == this.savedMusicList && (universalRecyclerView = this.listView) != null) {
            universalRecyclerView.adapter.update(true);
        }
    }

    private void showErrorBox(String str) {
        new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(LocaleController.getString(C2807R.string.AppName)).setMessage(str).setPositiveButton(LocaleController.getString(C2807R.string.OK), null).show();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getSelectedItemsCount() {
        return this.selectedAudios.size();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean sendSelectedItems(final boolean z, final int i, final int i2, final long j, final boolean z2) {
        if (this.selectedAudios.size() == 0 || this.delegate == null || this.sendPressed) {
            return false;
        }
        this.sendPressed = true;
        final ArrayList arrayList = new ArrayList();
        Iterator<MediaController.AudioEntry> it = this.selectedAudios.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().messageObject);
        }
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        return AlertsCreator.ensurePaidMessageConfirmation(chatAttachAlert.currentAccount, chatAttachAlert.getDialogId(), arrayList.size() + this.parentAlert.getAdditionalMessagesCount(), new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda8
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$sendSelectedItems$2(arrayList, z, i, i2, j, z2, (Long) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSelectedItems$2(ArrayList arrayList, boolean z, int i, int i2, long j, boolean z2, Long l) {
        this.delegate.didSelectAudio(arrayList, this.parentAlert.getCommentView().getText(), z, i, i2, j, z2, l.longValue());
        this.parentAlert.dismiss(true);
    }

    public ArrayList<MessageObject> getSelected() {
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        Iterator<MediaController.AudioEntry> it = this.selectedAudios.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().messageObject);
        }
        return arrayList;
    }

    public void setDelegate(AudioSelectDelegate audioSelectDelegate) {
        this.delegate = audioSelectDelegate;
    }

    private void loadAudio() {
        this.loadingAudio = true;
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadAudio$4();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAudio$4() {
        String[] strArr = {"_id", "artist", "title", "_data", "duration", "album"};
        final ArrayList arrayList = new ArrayList();
        try {
            Cursor cursorQuery = ApplicationLoader.applicationContext.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, strArr, "is_music != 0", null, "title");
            int i = -2000000000;
            while (cursorQuery.moveToNext()) {
                try {
                    MediaController.AudioEntry audioEntry = new MediaController.AudioEntry();
                    audioEntry.id = cursorQuery.getInt(0);
                    audioEntry.author = cursorQuery.getString(1);
                    audioEntry.title = cursorQuery.getString(2);
                    audioEntry.path = cursorQuery.getString(3);
                    audioEntry.duration = (int) (cursorQuery.getLong(4) / 1000);
                    audioEntry.genre = cursorQuery.getString(5);
                    File file = new File(audioEntry.path);
                    TLRPC.TL_message tL_message = new TLRPC.TL_message();
                    tL_message.out = true;
                    tL_message.id = i;
                    tL_message.peer_id = new TLRPC.TL_peerUser();
                    TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                    tL_message.from_id = tL_peerUser;
                    TLRPC.Peer peer = tL_message.peer_id;
                    long clientUserId = UserConfig.getInstance(this.parentAlert.currentAccount).getClientUserId();
                    tL_peerUser.user_id = clientUserId;
                    peer.user_id = clientUserId;
                    tL_message.date = (int) (System.currentTimeMillis() / 1000);
                    tL_message.message = _UrlKt.FRAGMENT_ENCODE_SET;
                    tL_message.attachPath = audioEntry.path;
                    TLRPC.TL_messageMediaDocument tL_messageMediaDocument = new TLRPC.TL_messageMediaDocument();
                    tL_message.media = tL_messageMediaDocument;
                    tL_messageMediaDocument.flags |= 3;
                    tL_messageMediaDocument.document = new TLRPC.TL_document();
                    tL_message.flags |= 768;
                    String fileExtension = FileLoader.getFileExtension(file);
                    TLRPC.Document document = tL_message.media.document;
                    document.id = 0L;
                    document.access_hash = 0L;
                    document.file_reference = new byte[0];
                    document.date = tL_message.date;
                    StringBuilder sb = new StringBuilder();
                    sb.append("audio/");
                    if (fileExtension.length() <= 0) {
                        fileExtension = HlsSegmentFormat.MP3;
                    }
                    sb.append(fileExtension);
                    document.mime_type = sb.toString();
                    tL_message.media.document.size = (int) file.length();
                    tL_message.media.document.dc_id = 0;
                    TLRPC.TL_documentAttributeAudio tL_documentAttributeAudio = new TLRPC.TL_documentAttributeAudio();
                    tL_documentAttributeAudio.duration = audioEntry.duration;
                    tL_documentAttributeAudio.title = audioEntry.title;
                    tL_documentAttributeAudio.performer = audioEntry.author;
                    tL_documentAttributeAudio.flags = 3 | tL_documentAttributeAudio.flags;
                    tL_message.media.document.attributes.add(tL_documentAttributeAudio);
                    TLRPC.TL_documentAttributeFilename tL_documentAttributeFilename = new TLRPC.TL_documentAttributeFilename();
                    tL_documentAttributeFilename.file_name = file.getName();
                    tL_message.media.document.attributes.add(tL_documentAttributeFilename);
                    audioEntry.messageObject = new MessageObject(this.parentAlert.currentAccount, tL_message, false, true);
                    AudioInfo audioInfo = AudioInfo.getAudioInfo(file);
                    if (audioInfo != null && audioInfo.getCover() != null) {
                        int iDp = AndroidUtilities.dp(44.0f);
                        Bitmap cover = audioInfo.getCover();
                        if (cover.getWidth() > iDp || cover.getHeight() > iDp) {
                            float f = iDp;
                            float fMin = Math.min(f / cover.getWidth(), f / cover.getHeight());
                            audioEntry.messageObject.audioCover = Bitmap.createScaledBitmap(cover, (int) (cover.getWidth() * fMin), (int) (cover.getHeight() * fMin), true);
                        } else {
                            audioEntry.messageObject.audioCover = cover;
                        }
                    }
                    arrayList.add(audioEntry);
                    i--;
                } finally {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda13
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$loadAudio$3(arrayList);
                        }
                    });
                }
            }
            cursorQuery.close();
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadAudio$3(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAudio$3(ArrayList arrayList) {
        this.loadingAudio = false;
        this.audioEntries = arrayList;
        updateWithSavingScroll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void searchChats() {
        AndroidUtilities.cancelRunOnUIThread(this.searchChatsRunnable);
        String str = this.query;
        if (str != null && str.length() > 0 && this.query.length() < 3) {
            if (this.loadingSearchChats) {
                this.loadingSearchChats = false;
                updateWithSavingScroll();
                return;
            }
            return;
        }
        if (!TextUtils.equals(this.lastSearchChatsQuery, this.query)) {
            this.foundInChats.clear();
            this.searchChatsNextRate = 0;
            this.searchChatsHasMore = false;
        }
        if (!this.foundInChats.isEmpty() && !this.searchChatsHasMore) {
            if (this.loadingSearchChats) {
                this.loadingSearchChats = false;
                updateWithSavingScroll();
                return;
            }
            return;
        }
        final int i = this.parentAlert.currentAccount;
        final MessagesController messagesController = MessagesController.getInstance(i);
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(i);
        int i2 = this.searchChatsRequestId;
        if (i2 >= 0) {
            connectionsManager.cancelRequest(i2, true);
            this.searchChatsRequestId = -1;
        }
        TLRPC.TL_messages_searchGlobal tL_messages_searchGlobal = new TLRPC.TL_messages_searchGlobal();
        tL_messages_searchGlobal.filter = new TLRPC.TL_inputMessagesFilterMusic();
        String str2 = this.query;
        this.lastSearchChatsQuery = str2;
        if (str2 == null) {
            str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        tL_messages_searchGlobal.f1034q = str2;
        tL_messages_searchGlobal.limit = this.foundInChats.isEmpty() ? 3 : 15;
        if (this.foundInChats.size() > 0) {
            ArrayList<MediaController.AudioEntry> arrayList = this.foundInChats;
            MessageObject messageObject = arrayList.get(arrayList.size() - 1).messageObject;
            tL_messages_searchGlobal.offset_id = messageObject.getId();
            tL_messages_searchGlobal.offset_rate = this.searchChatsNextRate;
            tL_messages_searchGlobal.offset_peer = messagesController.getInputPeer(MessageObject.getPeerId(messageObject.messageOwner.peer_id));
        } else {
            tL_messages_searchGlobal.offset_rate = 0;
            tL_messages_searchGlobal.offset_id = 0;
            tL_messages_searchGlobal.offset_peer = new TLRPC.TL_inputPeerEmpty();
        }
        this.searchChatsRequestId = connectionsManager.sendRequestTyped(tL_messages_searchGlobal, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$searchChats$5(messagesController, i, (TLRPC.messages_Messages) obj, (TLRPC.TL_error) obj2);
            }
        });
        updateWithSavingScroll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchChats$5(MessagesController messagesController, int i, TLRPC.messages_Messages messages_messages, TLRPC.TL_error tL_error) {
        TLRPC.TL_documentAttributeAudio tL_documentAttributeAudio;
        this.searchChatsRequestId = -1;
        boolean z = false;
        this.loadingSearchChats = false;
        if (messages_messages != null) {
            messagesController.putUsers(messages_messages.users, false);
            messagesController.putChats(messages_messages.chats, false);
            ArrayList<TLRPC.Message> arrayList = messages_messages.messages;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                TLRPC.Message message = arrayList.get(i2);
                i2++;
                MediaController.AudioEntry audioEntry = new MediaController.AudioEntry();
                MessageObject messageObject = new MessageObject(i, message, false, true);
                audioEntry.messageObject = messageObject;
                TLRPC.Document document = messageObject.getDocument();
                if (document != null) {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= document.attributes.size()) {
                            tL_documentAttributeAudio = null;
                            break;
                        } else {
                            if (document.attributes.get(i3) instanceof TLRPC.TL_documentAttributeAudio) {
                                tL_documentAttributeAudio = (TLRPC.TL_documentAttributeAudio) document.attributes.get(i3);
                                break;
                            }
                            i3++;
                        }
                    }
                    if (tL_documentAttributeAudio != null) {
                        audioEntry.author = tL_documentAttributeAudio.performer;
                        audioEntry.title = tL_documentAttributeAudio.title;
                        audioEntry.duration = (int) tL_documentAttributeAudio.duration;
                        this.foundInChats.add(audioEntry);
                    }
                }
            }
            int i4 = messages_messages.next_rate;
            this.searchChatsNextRate = i4;
            if (i4 != 0 || (messages_messages.count > 0 && this.foundInChats.size() < messages_messages.count)) {
                z = true;
            }
            this.searchChatsHasMore = z;
            updateWithSavingScroll();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void searchGlobal() {
        String str;
        AndroidUtilities.cancelRunOnUIThread(this.searchGlobalRunnable);
        if (TextUtils.isEmpty(this.query) || this.query.length() < 3) {
            if (this.loadingSearchGlobal) {
                this.loadingSearchGlobal = false;
                updateWithSavingScroll();
                return;
            }
            return;
        }
        if (!TextUtils.equals(this.lastSearchGlobalQuery, this.query)) {
            this.foundGlobal.clear();
            this.searchGlobalHasMore = false;
        }
        final int i = this.parentAlert.currentAccount;
        final MessagesController messagesController = MessagesController.getInstance(i);
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(i);
        int i2 = this.searchGlobalRequestId;
        if (i2 >= 0) {
            connectionsManager.cancelRequest(i2, true);
            this.searchGlobalRequestId = -1;
        }
        String str2 = messagesController.config.musicSearchUsername.get();
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        if (this.globalAudioBot == null) {
            this.globalAudioBot = messagesController.getUser(str2);
        }
        if (this.globalAudioBot == null) {
            if (this.resolvingGlobalAudioBot || this.failedToResolveGlobalAudioBot) {
                return;
            }
            this.resolvingGlobalAudioBot = true;
            messagesController.getUserNameResolver().resolve(str2, new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda11
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$searchGlobal$6(messagesController, (Long) obj);
                }
            });
            return;
        }
        TLRPC.User currentUser = UserConfig.getInstance(i).getCurrentUser();
        TLRPC.TL_messages_getInlineBotResults tL_messages_getInlineBotResults = new TLRPC.TL_messages_getInlineBotResults();
        tL_messages_getInlineBotResults.bot = messagesController.getInputUser(this.globalAudioBot);
        tL_messages_getInlineBotResults.peer = MessagesController.getInputPeer(currentUser);
        boolean zIsEmpty = this.foundGlobal.isEmpty();
        String str3 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (zIsEmpty || (str = this.globalAudioOffset) == null) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        tL_messages_getInlineBotResults.offset = str;
        String str4 = this.query;
        if (str4 != null) {
            str3 = str4;
        }
        this.lastSearchGlobalQuery = str3;
        tL_messages_getInlineBotResults.query = str3;
        this.searchGlobalRequestId = connectionsManager.sendRequestTyped(tL_messages_getInlineBotResults, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda12
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$searchGlobal$7(messagesController, i, (TLRPC.messages_BotResults) obj, (TLRPC.TL_error) obj2);
            }
        });
        updateWithSavingScroll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchGlobal$6(MessagesController messagesController, Long l) {
        this.resolvingGlobalAudioBot = false;
        TLRPC.User user = l == null ? null : messagesController.getUser(l);
        this.globalAudioBot = user;
        this.failedToResolveGlobalAudioBot = user == null;
        if (user != null) {
            searchGlobal();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchGlobal$7(MessagesController messagesController, int i, TLRPC.messages_BotResults messages_botresults, TLRPC.TL_error tL_error) {
        TLRPC.TL_documentAttributeAudio tL_documentAttributeAudio;
        this.searchGlobalRequestId = -1;
        this.loadingSearchGlobal = false;
        if (messages_botresults != null) {
            messagesController.putUsers(messages_botresults.users, false);
            ArrayList<TLRPC.BotInlineResult> arrayList = messages_botresults.results;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                TLRPC.BotInlineResult botInlineResult = arrayList.get(i2);
                i2++;
                TLRPC.BotInlineResult botInlineResult2 = botInlineResult;
                if (botInlineResult2 instanceof TLRPC.TL_botInlineMediaResult) {
                    TLRPC.TL_botInlineMediaResult tL_botInlineMediaResult = (TLRPC.TL_botInlineMediaResult) botInlineResult2;
                    if (tL_botInlineMediaResult.document != null) {
                        TLRPC.TL_message tL_message = new TLRPC.TL_message();
                        tL_message.out = true;
                        int i3 = this.globalAudioMessageId;
                        this.globalAudioMessageId = i3 - 1;
                        tL_message.id = i3;
                        tL_message.peer_id = new TLRPC.TL_peerUser();
                        TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                        tL_message.from_id = tL_peerUser;
                        TLRPC.Peer peer = tL_message.peer_id;
                        long clientUserId = UserConfig.getInstance(i).getClientUserId();
                        tL_peerUser.user_id = clientUserId;
                        peer.user_id = clientUserId;
                        tL_message.date = (int) (System.currentTimeMillis() / 1000);
                        tL_message.message = _UrlKt.FRAGMENT_ENCODE_SET;
                        TLRPC.TL_messageMediaDocument tL_messageMediaDocument = new TLRPC.TL_messageMediaDocument();
                        tL_message.media = tL_messageMediaDocument;
                        tL_messageMediaDocument.flags |= 3;
                        tL_messageMediaDocument.document = tL_botInlineMediaResult.document;
                        tL_message.flags |= 768;
                        MediaController.AudioEntry audioEntry = new MediaController.AudioEntry();
                        MessageObject messageObject = new MessageObject(i, tL_message, false, true);
                        audioEntry.messageObject = messageObject;
                        TLRPC.Document document = messageObject.getDocument();
                        if (document != null) {
                            int i4 = 0;
                            while (true) {
                                if (i4 >= document.attributes.size()) {
                                    tL_documentAttributeAudio = null;
                                    break;
                                } else {
                                    if (document.attributes.get(i4) instanceof TLRPC.TL_documentAttributeAudio) {
                                        tL_documentAttributeAudio = (TLRPC.TL_documentAttributeAudio) document.attributes.get(i4);
                                        break;
                                    }
                                    i4++;
                                }
                            }
                            if (tL_documentAttributeAudio != null) {
                                audioEntry.author = tL_documentAttributeAudio.performer;
                                audioEntry.title = tL_documentAttributeAudio.title;
                                audioEntry.duration = (int) tL_documentAttributeAudio.duration;
                                this.foundGlobal.add(audioEntry);
                            }
                        }
                    }
                }
            }
            this.globalAudioOffset = messages_botresults.next_offset;
            this.searchGlobalHasMore = !TextUtils.isEmpty(r10);
            updateWithSavingScroll();
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onContainerTranslationUpdated(float f) {
        this.currentPanTranslationProgress = f;
        super.onContainerTranslationUpdated(f);
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
        if (i == 0) {
            this.fadeView.setAlpha(f);
            this.fadeView.setVisibility(f > 0.0f ? 0 : 4);
        }
    }

    public static final class EmptyView extends FrameLayout implements Theme.Colorable {
        public BackupImageView imageView;
        public LinearLayout layout;
        private final Theme.ResourcesProvider resourcesProvider;
        public TextView subtitleView;
        public TextView titleView;

        @Override // org.telegram.ui.ActionBar.Theme.Colorable
        public /* bridge */ /* synthetic */ int[] getColorKeys() {
            return super.getColorKeys();
        }

        public EmptyView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            setPadding(0, AndroidUtilities.dp(42.0f), 0, AndroidUtilities.dp(42.0f));
            setTag(-33024);
            LinearLayout linearLayout = new LinearLayout(context);
            this.layout = linearLayout;
            linearLayout.setOrientation(1);
            addView(this.layout, LayoutHelper.createLinear(-1, -2, 17));
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            backupImageView.setImageDrawable(new RLottieDrawable(C2807R.raw.utyan_empty, AndroidUtilities.dp(120.0f), AndroidUtilities.dp(120.0f)));
            this.layout.addView(this.imageView, LayoutHelper.createLinear(120, 120, 17, 0, 0, 0, 0));
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextSize(1, 20.0f);
            this.titleView.setTypeface(AndroidUtilities.bold());
            this.titleView.setGravity(17);
            this.layout.addView(this.titleView, LayoutHelper.createLinear(-1, -2, 17, 32, 12, 32, 8));
            TextView textView2 = new TextView(context);
            this.subtitleView = textView2;
            textView2.setTextSize(1, 14.0f);
            this.subtitleView.setGravity(17);
            this.layout.addView(this.subtitleView, LayoutHelper.createLinear(-1, -2, 17, 32, 0, 32, 0));
            updateColors();
        }

        public void set(CharSequence charSequence, CharSequence charSequence2) {
            this.titleView.setText(charSequence);
            this.subtitleView.setText(charSequence2);
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), i2);
        }

        @Override // org.telegram.ui.ActionBar.Theme.Colorable
        public void updateColors() {
            this.titleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            this.subtitleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, this.resourcesProvider));
        }

        public static final class Factory extends UItem.UItemFactory<EmptyView> {
            @Override // org.telegram.ui.Components.UItem.UItemFactory
            /* JADX INFO: renamed from: isClickable */
            public boolean getIsClickableValue() {
                return false;
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            /* JADX INFO: renamed from: isShadow */
            public boolean getIsShadowValue() {
                return true;
            }

            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public EmptyView createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new EmptyView(context, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((EmptyView) view).set(uItem.text, uItem.subtext);
            }

            public static UItem as(CharSequence charSequence, CharSequence charSequence2) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.text = charSequence;
                uItemOfFactory.subtext = charSequence2;
                return uItemOfFactory;
            }
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_dialogScrollGlow));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKBOX, new Class[]{SharedAudioCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_checkbox));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{SharedAudioCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_checkboxCheck));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{SharedAudioCell.class}, Theme.chat_contextResult_titleTextPaint, null, null, Theme.key_windowBackgroundWhiteBlackText));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{SharedAudioCell.class}, Theme.chat_contextResult_descriptionTextPaint, null, null, Theme.key_windowBackgroundWhiteGrayText2));
        return arrayList;
    }
}
