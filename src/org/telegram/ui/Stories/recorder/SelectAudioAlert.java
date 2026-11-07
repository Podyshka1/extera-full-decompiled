package org.telegram.ui.Stories.recorder;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.os.Build;
import android.provider.MediaStore;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.cast.HlsSegmentFormat;
import java.io.File;
import java.util.ArrayList;
import me.vkryl.android.animator.BoolAnimator;
import me.vkryl.android.animator.FactorAnimator;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.utils.RectFMergeBounding;
import org.telegram.messenger.utils.TextWatcherImpl;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.SharedAudioCell;
import org.telegram.ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.ui.Components.ChatAttachAlert;
import org.telegram.ui.Components.ChatAttachAlertAudioLayout;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.FragmentSearchField;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.DownscaleScrollableNoiseSuppressor;
import org.telegram.ui.Components.blur3.RenderNodeWithHash;
import org.telegram.ui.Components.blur3.capture.IBlur3Capture;
import org.telegram.ui.Components.blur3.capture.IBlur3Hash;
import org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceColor;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceRenderNode;
import org.telegram.ui.Components.blur3.utils.Blur3Utils;
import org.telegram.ui.recyclerview.LinearSmoothScrollerCustom;

/* JADX INFO: loaded from: classes7.dex */
public class SelectAudioAlert extends BottomSheetWithRecyclerListView implements NotificationCenter.NotificationCenterDelegate, DownloadController.FileDownloadProgressListener, FactorAnimator.Target {
    private UniversalAdapter adapter;
    private final BoolAnimator animatorFadeVisible;
    private MessageObject downloadingMessageObject;
    private final View fadeView;
    private boolean failedToResolveGlobalAudioBot;
    private final FrameLayout frameLayout;
    private final ArrayList<MessageObject> globalAudio;
    private TLRPC.User globalAudioBot;
    private boolean globalAudioHasMore;
    private int globalAudioId;
    private String globalAudioOffset;
    private final IBlur3Capture iBlur3Capture;
    private final BlurredBackgroundDrawableViewFactory iBlur3FactoryFade;
    private final BlurredBackgroundDrawableViewFactory iBlur3FactoryFrostedLiquidGlass;
    private final BlurredBackgroundDrawableViewFactory iBlur3FactoryLiquidGlass;
    private final RectF iBlur3PositionActionBar;
    private final ArrayList<RectF> iBlur3Positions;
    private final ArrayList<RectF> iBlur3PositionsMerged;
    private final BlurredBackgroundSourceColor iBlur3SourceColor;
    private final BlurredBackgroundSourceRenderNode iBlur3SourceGlass;
    private final BlurredBackgroundSourceRenderNode iBlur3SourceGlassFrosted;
    private boolean ignoreScroll;
    private String lastLoadingGlobalAudioQuery;
    private String lastLoadingSharedAudioQuery;
    private Runnable loadGlobalAudioRunnable;
    private Runnable loadSharedAudioRunnable;
    private boolean loadingGlobalAudio;
    private int loadingGlobalAudioRequestId;
    private boolean loadingLocalAudio;
    private boolean loadingSharedAudio;
    private int loadingSharedAudioRequestId;
    private boolean local;
    private final ArrayList<MessageObject> localAudio;
    private int nextSearchRate;
    private final Utilities.Callback<MessageObject> onAudioSelected;
    private final SelectAudioAlert parentAlert;
    private MessageObject playingAudio;
    private String query;
    private boolean resolvingGlobalAudioBot;
    private final MessagesController.SavedMusicList savedMusicList;
    private final DownscaleScrollableNoiseSuppressor scrollableViewNoiseSuppressor;
    private final FragmentSearchField searchField;
    private final ArrayList<MessageObject> sharedAudio;
    private boolean sharedAudioHasMore;
    private final int tag;
    private boolean willLoadGlobalAudio;
    private boolean willLoadSharedAudio;
    private boolean withoutSavedMusic;

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onFailedDownload(String str, boolean z) {
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressDownload(String str, long j, long j2) {
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressUpload(String str, long j, long j2, boolean z) {
    }

    public SelectAudioAlert(Context context, Utilities.Callback<MessageObject> callback, Theme.ResourcesProvider resourcesProvider) {
        this(context, false, null, callback, resourcesProvider);
    }

    public SelectAudioAlert(Context context, boolean z, SelectAudioAlert selectAudioAlert, final Utilities.Callback<MessageObject> callback, final Theme.ResourcesProvider resourcesProvider) {
        super(context, null, true, false, false, BottomSheetWithRecyclerListView.ActionBarType.SLIDING, resourcesProvider);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.animatorFadeVisible = new BoolAnimator(0, this, cubicBezierInterpolator, 380L);
        this.localAudio = new ArrayList<>();
        this.sharedAudio = new ArrayList<>();
        this.globalAudio = new ArrayList<>();
        this.loadingSharedAudioRequestId = -1;
        this.loadSharedAudioRunnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.loadSharedAudio();
            }
        };
        this.loadingGlobalAudioRequestId = -1;
        this.globalAudioId = -2000000000;
        this.loadGlobalAudioRunnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.loadGlobalAudio();
            }
        };
        ArrayList<RectF> arrayList = new ArrayList<>();
        this.iBlur3Positions = arrayList;
        RectF rectF = new RectF();
        this.iBlur3PositionActionBar = rectF;
        arrayList.add(rectF);
        this.iBlur3PositionsMerged = new ArrayList<>();
        this.topPadding = 0.35f;
        int i = Theme.key_windowBackgroundGray;
        fixNavigationBar(getThemedColor(i));
        setSlidingActionBar();
        this.headerPaddingTop = AndroidUtilities.dp(4.0f);
        this.headerPaddingBottom = AndroidUtilities.dp(-20.0f);
        this.local = z;
        this.tag = DownloadController.getInstance(this.currentAccount).generateObserverTag();
        this.parentAlert = selectAudioAlert;
        this.onAudioSelected = callback;
        BlurredBackgroundSourceColor blurredBackgroundSourceColor = new BlurredBackgroundSourceColor();
        this.iBlur3SourceColor = blurredBackgroundSourceColor;
        blurredBackgroundSourceColor.setColor(getThemedColor(Theme.key_windowBackgroundWhite));
        if (Build.VERSION.SDK_INT >= 31) {
            this.scrollableViewNoiseSuppressor = new DownscaleScrollableNoiseSuppressor();
            BlurredBackgroundSourceRenderNode blurredBackgroundSourceRenderNode = new BlurredBackgroundSourceRenderNode(null);
            this.iBlur3SourceGlass = blurredBackgroundSourceRenderNode;
            blurredBackgroundSourceRenderNode.setupRenderer(new RenderNodeWithHash.Renderer() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert.1
                @Override // org.telegram.ui.Components.blur3.RenderNodeWithHash.Renderer
                public void renderNodeCalculateHash(IBlur3Hash iBlur3Hash) {
                    iBlur3Hash.add(SelectAudioAlert.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    iBlur3Hash.add(SharedConfig.chatBlurEnabled());
                }

                @Override // org.telegram.ui.Components.blur3.RenderNodeWithHash.Renderer
                public void renderNodeUpdateDisplayList(Canvas canvas) {
                    canvas.drawColor(SelectAudioAlert.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    if (SharedConfig.chatBlurEnabled()) {
                        SelectAudioAlert.this.scrollableViewNoiseSuppressor.draw(canvas, -2);
                    }
                }
            });
            BlurredBackgroundSourceRenderNode blurredBackgroundSourceRenderNode2 = new BlurredBackgroundSourceRenderNode(null);
            this.iBlur3SourceGlassFrosted = blurredBackgroundSourceRenderNode2;
            blurredBackgroundSourceRenderNode2.setupRenderer(new RenderNodeWithHash.Renderer() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert.2
                @Override // org.telegram.ui.Components.blur3.RenderNodeWithHash.Renderer
                public void renderNodeCalculateHash(IBlur3Hash iBlur3Hash) {
                    iBlur3Hash.add(SelectAudioAlert.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    iBlur3Hash.add(SharedConfig.chatBlurEnabled());
                }

                @Override // org.telegram.ui.Components.blur3.RenderNodeWithHash.Renderer
                public void renderNodeUpdateDisplayList(Canvas canvas) {
                    canvas.drawColor(SelectAudioAlert.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    if (SharedConfig.chatBlurEnabled()) {
                        SelectAudioAlert.this.scrollableViewNoiseSuppressor.draw(canvas, -3);
                    }
                }
            });
            BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceRenderNode);
            this.iBlur3FactoryLiquidGlass = blurredBackgroundDrawableViewFactory;
            blurredBackgroundDrawableViewFactory.setLiquidGlassEffectAllowed(LiteMode.isEnabled(262144));
            BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory2 = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceRenderNode2);
            this.iBlur3FactoryFrostedLiquidGlass = blurredBackgroundDrawableViewFactory2;
            blurredBackgroundDrawableViewFactory2.setLiquidGlassEffectAllowed(LiteMode.isEnabled(262144));
        } else {
            this.scrollableViewNoiseSuppressor = null;
            this.iBlur3SourceGlassFrosted = null;
            this.iBlur3SourceGlass = null;
            this.iBlur3FactoryLiquidGlass = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceColor);
            this.iBlur3FactoryFrostedLiquidGlass = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceColor);
        }
        this.iBlur3FactoryFade = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceColor);
        this.iBlur3Capture = new IBlur3Capture() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.Components.blur3.capture.IBlur3Capture
            public final void capture(Canvas canvas, RectF rectF2) {
                this.f$0.lambda$new$0(canvas, rectF2);
            }
        };
        ChatAttachAlert.SearchFadeView searchFadeView = new ChatAttachAlert.SearchFadeView(context, i, resourcesProvider);
        this.fadeView = searchFadeView;
        searchFadeView.setVisibility(4);
        FrameLayout frameLayout = new FrameLayout(context);
        this.frameLayout = frameLayout;
        FragmentSearchField fragmentSearchField = new FragmentSearchField(context, resourcesProvider);
        this.searchField = fragmentSearchField;
        fragmentSearchField.editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z2) {
                if (z2) {
                    SelectAudioAlert.this.ignoreScroll = true;
                    SelectAudioAlert.this.scrollToSearchTop();
                }
            }
        });
        fragmentSearchField.setSectionBackground();
        fragmentSearchField.setPadding(AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f));
        fragmentSearchField.editText.addTextChangedListener(new TextWatcherImpl() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert.4
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                String unused = SelectAudioAlert.this.query;
                SelectAudioAlert.this.query = editable.toString();
                if (!SelectAudioAlert.this.local) {
                    String str = SelectAudioAlert.this.lastLoadingSharedAudioQuery;
                    String str2 = SelectAudioAlert.this.query;
                    String str3 = _UrlKt.FRAGMENT_ENCODE_SET;
                    boolean zEquals = TextUtils.equals(str, str2 == null ? _UrlKt.FRAGMENT_ENCODE_SET : SelectAudioAlert.this.query);
                    boolean z2 = false;
                    if (!zEquals) {
                        SelectAudioAlert.this.cancelLoadingSharedAudio();
                        SelectAudioAlert selectAudioAlert2 = SelectAudioAlert.this;
                        selectAudioAlert2.willLoadSharedAudio = selectAudioAlert2.query != null && SelectAudioAlert.this.query.length() > 0;
                    }
                    String str4 = SelectAudioAlert.this.lastLoadingGlobalAudioQuery;
                    if (SelectAudioAlert.this.query != null) {
                        str3 = SelectAudioAlert.this.query;
                    }
                    if (!TextUtils.equals(str4, str3)) {
                        SelectAudioAlert.this.cancelLoadingGlobalAudio();
                        SelectAudioAlert selectAudioAlert3 = SelectAudioAlert.this;
                        if (selectAudioAlert3.query != null && SelectAudioAlert.this.query.length() > 3 && !TextUtils.isEmpty(MessagesController.getInstance(((BottomSheet) SelectAudioAlert.this).currentAccount).config.musicSearchUsername.get())) {
                            z2 = true;
                        }
                        selectAudioAlert3.willLoadGlobalAudio = z2;
                    }
                    SelectAudioAlert.this.loadSharedAudioDelayed();
                    SelectAudioAlert.this.loadGlobalAudioDelayed();
                }
                SelectAudioAlert.this.adapter.update(true);
            }
        });
        fragmentSearchField.editText.setHint(LocaleController.getString(C2665R.string.Search));
        frameLayout.addView(searchFadeView, LayoutHelper.createFrameMatchParent());
        frameLayout.addView(fragmentSearchField, LayoutHelper.createFrame(-1, 48.0f, 51, 0.0f, 8.0f, 0.0f, 4.0f));
        fragmentSearchField.setupBlurredBackground(this.iBlur3FactoryLiquidGlass.create(fragmentSearchField, BlurredBackgroundProviderImpl.topPanel(resourcesProvider)));
        frameLayout.setPadding(this.backgroundPaddingLeft + AndroidUtilities.dp(8.0f), 0, this.backgroundPaddingLeft + AndroidUtilities.dp(8.0f), 0);
        this.containerView.addView(frameLayout, LayoutHelper.createFrame(-1, -2, 55));
        setBackgroundColor(getThemedColor(i));
        RecyclerListView recyclerListView = this.recyclerListView;
        int i2 = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i2, 0, i2, 0);
        this.recyclerListView.setSections();
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(cubicBezierInterpolator);
        defaultItemAnimator.setDurations(350L);
        this.recyclerListView.setItemAnimator(defaultItemAnimator);
        if (!z) {
            int i3 = this.currentAccount;
            MessagesController.SavedMusicList savedMusicList = new MessagesController.SavedMusicList(i3, UserConfig.getInstance(i3).getClientUserId());
            this.savedMusicList = savedMusicList;
            savedMusicList.load();
            loadSharedAudio();
            loadGlobalAudio();
        } else {
            this.savedMusicList = null;
            loadLocalAudio();
        }
        this.recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert.5
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i4) {
                super.onScrollStateChanged(recyclerView, i4);
                if (i4 == 0 && SelectAudioAlert.this.ignoreScroll) {
                    SelectAudioAlert.this.ignoreScroll = false;
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i4, int i5) {
                SelectAudioAlert.this.updateSearchY();
                SelectAudioAlert.this.blur3_InvalidateBlur();
                if (!((BottomSheetWithRecyclerListView) SelectAudioAlert.this).recyclerListView.scrollingByUser || SelectAudioAlert.this.ignoreScroll) {
                    return;
                }
                AndroidUtilities.hideKeyboard(((BottomSheet) SelectAudioAlert.this).containerView);
            }
        });
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert$$ExternalSyntheticLambda4
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i4) {
                this.f$0.lambda$new$1(callback, resourcesProvider, view, i4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Canvas canvas, RectF rectF) {
        RecyclerListView recyclerListView = this.recyclerListView;
        Blur3Utils.captureRelativeParent(recyclerListView, canvas, rectF, recyclerListView, getContainerView(), 255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(Utilities.Callback callback, Theme.ResourcesProvider resourcesProvider, View view, int i) {
        if (view instanceof SharedAudioCell) {
            MessageObject message = ((SharedAudioCell) view).getMessage();
            if (message == null) {
                return;
            }
            DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
            if (this.downloadingMessageObject != null) {
                FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.downloadingMessageObject.getDocument());
                this.downloadingMessageObject = null;
            }
            if (!message.attachPathExists && !message.mediaExists) {
                String fileName = message.getFileName();
                if (TextUtils.isEmpty(fileName)) {
                    return;
                }
                this.downloadingMessageObject = message;
                DownloadController.getInstance(this.currentAccount).addLoadingFileObserver(fileName, message, this);
                FileLoader.getInstance(this.currentAccount).loadFile(message.getDocument(), message, 1, 0);
                return;
            }
            done(message);
            return;
        }
        UItem item = this.adapter.getItem(i - 1);
        if (item != null && item.id == 1) {
            new SelectAudioAlert(getContext(), true, this, callback, resourcesProvider).show();
            return;
        }
        if (item != null && item.id == 2) {
            this.savedMusicList.load();
            return;
        }
        if (item != null && item.id == 3) {
            loadSharedAudio();
        } else {
            if (item == null || item.id != 4) {
                return;
            }
            loadGlobalAudio();
        }
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public void preDrawInternal(Canvas canvas, View view) {
        if (Build.VERSION.SDK_INT >= 31 && this.scrollableViewNoiseSuppressor != null) {
            blur3_InvalidateBlur();
            BlurredBackgroundSourceRenderNode blurredBackgroundSourceRenderNode = this.iBlur3SourceGlassFrosted;
            if (blurredBackgroundSourceRenderNode != null) {
                blurredBackgroundSourceRenderNode.setSize(this.containerView.getMeasuredWidth(), this.containerView.getMeasuredHeight());
                this.iBlur3SourceGlassFrosted.updateDisplayListIfNeeded();
            }
            BlurredBackgroundSourceRenderNode blurredBackgroundSourceRenderNode2 = this.iBlur3SourceGlass;
            if (blurredBackgroundSourceRenderNode2 != null) {
                blurredBackgroundSourceRenderNode2.setSize(this.containerView.getMeasuredWidth(), this.containerView.getMeasuredHeight());
                this.iBlur3SourceGlass.updateDisplayListIfNeeded();
            }
        }
        updateSearchY();
        super.preDrawInternal(canvas, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToSearchTop() {
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.recyclerListView.getLayoutManager();
        LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(getContext(), 2);
        linearSmoothScrollerCustom.setTargetPosition(1);
        linearSmoothScrollerCustom.setOffset((AndroidUtilities.statusBarHeight + ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.dp(1.0f));
        linearLayoutManager.startSmoothScroll(linearSmoothScrollerCustom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSearchY() {
        float y = AndroidUtilities.displaySize.y;
        for (int i = 0; i < this.recyclerListView.getChildCount(); i++) {
            View childAt = this.recyclerListView.getChildAt(i);
            if (this.recyclerListView.getChildAdapterPosition(childAt) >= 1 && childAt.getY() < y) {
                y = childAt.getY();
            }
        }
        this.frameLayout.setTranslationY(Math.max(AndroidUtilities.statusBarHeight + ActionBar.getCurrentActionBarHeight(), y));
        this.animatorFadeVisible.setValue(y <= ((float) (AndroidUtilities.statusBarHeight + ActionBar.getCurrentActionBarHeight())), true);
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
        if (i == 0) {
            this.fadeView.setAlpha(f);
            this.fadeView.setVisibility(f > 0.0f ? 0 : 4);
        }
    }

    private void done(MessageObject messageObject) {
        this.onAudioSelected.run(messageObject);
        SelectAudioAlert selectAudioAlert = this.parentAlert;
        if (selectAudioAlert != null) {
            selectAudioAlert.lambda$new$0();
        }
        lambda$new$0();
    }

    public SelectAudioAlert withoutSavedMusic() {
        this.withoutSavedMusic = true;
        this.local = false;
        this.adapter.update(true);
        return this;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        super.lambda$new$0();
        if (this.playingAudio != null && MediaController.getInstance().isPlayingMessage(this.playingAudio)) {
            MediaController.getInstance().cleanupPlayer(true, true);
        }
        this.playingAudio = null;
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public CharSequence getTitle() {
        return LocaleController.getString(C2665R.string.StoryMusicTitle2);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.musicListLoaded) {
            this.adapter.update(true);
        }
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(recyclerListView, getContext(), this.currentAccount, 0, new Utilities.Callback2() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, this.resourcesProvider);
        this.adapter = universalAdapter;
        universalAdapter.setApplyBackground(false);
        return this.adapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean needPlayMessage(MessageObject messageObject) {
        this.playingAudio = messageObject;
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        arrayList.add(messageObject);
        return MediaController.getInstance().setPlaylist(arrayList, messageObject, 0L);
    }

    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        SelectAudioAlert selectAudioAlert;
        ArrayList<UItem> arrayList2;
        int i = 1;
        universalAdapter.itemsOffset = 1;
        int iDp = AndroidUtilities.dp(64.0f);
        arrayList.add(UItem.asSpace(AndroidUtilities.dp(64.0f)));
        if (this.local || this.withoutSavedMusic) {
            selectAudioAlert = this;
            arrayList2 = arrayList;
            iDp += selectAudioAlert.addSection(true, arrayList2, LocaleController.getString(C2665R.string.AudioSearchLocal), this.localAudio, false, false, -1);
        } else {
            selectAudioAlert = this;
            arrayList2 = arrayList;
        }
        if (!selectAudioAlert.local) {
            if (TextUtils.isEmpty(selectAudioAlert.query) && !selectAudioAlert.withoutSavedMusic) {
                universalAdapter.whiteSectionStart();
                arrayList2.add(UItem.asButton(1, C2665R.drawable.msg2_folder, LocaleController.getString(C2665R.string.StoryMusicSelectFromFiles)).accent());
                universalAdapter.whiteSectionEnd();
                iDp += AndroidUtilities.dp(50.0f);
            }
            if (!selectAudioAlert.withoutSavedMusic && selectAudioAlert.savedMusicList != null) {
                String string = LocaleController.getString(C2665R.string.AudioSearchProfile);
                MessagesController.SavedMusicList savedMusicList = selectAudioAlert.savedMusicList;
                iDp += selectAudioAlert.addSection(true, arrayList2, string, savedMusicList.list, savedMusicList.loading, !savedMusicList.endReached, 2);
            }
            iDp = iDp + selectAudioAlert.addSection(false, arrayList2, LocaleController.getString(C2665R.string.AudioSearchChats), selectAudioAlert.sharedAudio, selectAudioAlert.willLoadSharedAudio || selectAudioAlert.loadingSharedAudio, selectAudioAlert.sharedAudioHasMore, 3) + selectAudioAlert.addSection(false, arrayList2, LocaleController.getString(C2665R.string.AudioSearchGlobal), selectAudioAlert.globalAudio, selectAudioAlert.willLoadGlobalAudio || selectAudioAlert.loadingGlobalAudio, selectAudioAlert.globalAudioHasMore, 4);
        }
        int size = arrayList2.size();
        if (!selectAudioAlert.local && TextUtils.isEmpty(selectAudioAlert.query) && !selectAudioAlert.withoutSavedMusic) {
            i = 2;
        }
        if (size <= i) {
            if (TextUtils.isEmpty(selectAudioAlert.query)) {
                arrayList2.add(ChatAttachAlertAudioLayout.EmptyView.Factory.as(LocaleController.getString(C2665R.string.NoAudioFound), LocaleController.getString(C2665R.string.NoAudioFilesInfo)));
            } else {
                arrayList2.add(ChatAttachAlertAudioLayout.EmptyView.Factory.as(LocaleController.getString(C2665R.string.NoAudioFound), AndroidUtilities.replaceTags(LocaleController.formatString(selectAudioAlert.query.length() >= 3 ? C2665R.string.NoAudioFoundInfo2 : C2665R.string.NoAudioFoundInfo, selectAudioAlert.query))));
            }
        }
        arrayList2.add(UItem.asShadow(null));
        arrayList2.add(UItem.asSpace(Math.max(0, (((AndroidUtilities.displaySize.y - (iDp + AndroidUtilities.dp(12.0f))) - AndroidUtilities.statusBarHeight) - ActionBar.getCurrentActionBarHeight()) + AndroidUtilities.dp(24.0f))));
    }

    private int addSection(boolean z, ArrayList<UItem> arrayList, String str, ArrayList<MessageObject> arrayList2, boolean z2, boolean z3, int i) {
        int iDp;
        int i2 = 0;
        if (arrayList2 == null || (arrayList2.isEmpty() && !z2)) {
            return 0;
        }
        ArrayList arrayList3 = new ArrayList();
        String str2 = this.query;
        String lowerCase = str2 == null ? null : str2.toLowerCase();
        String strTranslitSafe = AndroidUtilities.translitSafe(lowerCase);
        int size = arrayList2.size();
        int i3 = 0;
        while (i3 < size) {
            MessageObject messageObject = arrayList2.get(i3);
            i3++;
            MessageObject messageObject2 = messageObject;
            if (!z) {
                messageObject2.setQuery(this.query);
                arrayList3.add(messageObject2);
            } else if (TextUtils.isEmpty(lowerCase) || arrayList2 == this.sharedAudio) {
                messageObject2.setQuery(null);
                arrayList3.add(messageObject2);
            } else {
                String musicTitle = messageObject2.getMusicTitle();
                String musicAuthor = messageObject2.getMusicAuthor();
                if (matches(lowerCase, strTranslitSafe, musicTitle) || matches(lowerCase, strTranslitSafe, musicAuthor)) {
                    messageObject2.setQuery(this.query);
                    arrayList3.add(messageObject2);
                }
            }
        }
        if (arrayList3.isEmpty() && !z2) {
            return 0;
        }
        if (arrayList.isEmpty() || arrayList.size() <= 1) {
            iDp = 0;
        } else {
            arrayList.add(UItem.asShadow(null));
            iDp = AndroidUtilities.dp(12.0f);
        }
        this.adapter.whiteSectionStart();
        arrayList.add(UItem.asHeader(str));
        int size2 = arrayList3.size();
        while (i2 < size2) {
            Object obj = arrayList3.get(i2);
            i2++;
            arrayList.add(SharedAudioCell.Factory.as((MessageObject) obj, (Utilities.CallbackReturn<MessageObject, Boolean>) new Utilities.CallbackReturn() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert$$ExternalSyntheticLambda7
                @Override // org.telegram.messenger.Utilities.CallbackReturn
                public final Object run(Object obj2) {
                    return Boolean.valueOf(this.f$0.needPlayMessage((MessageObject) obj2));
                }
            }));
            iDp += AndroidUtilities.dp(56.0f);
        }
        if (z2) {
            arrayList.add(UItem.asFlicker(4));
            arrayList.add(UItem.asFlicker(4));
            arrayList.add(UItem.asFlicker(4));
            iDp += AndroidUtilities.dp(56.0f) * 3;
        }
        if (z3 && !z2) {
            arrayList.add(UItem.asButton(i, C2665R.drawable.arrow_more, LocaleController.getString(C2665R.string.ShowMore)).accent());
            iDp += AndroidUtilities.dp(50.0f);
        }
        this.adapter.whiteSectionEnd();
        return iDp;
    }

    private boolean matches(String str, String str2, String str3) {
        if (str3 == null) {
            return false;
        }
        String lowerCase = str3.toLowerCase();
        if (!lowerCase.startsWith(str)) {
            if (!lowerCase.contains(" " + str)) {
                String strTranslitSafe = AndroidUtilities.translitSafe(lowerCase);
                if (!strTranslitSafe.startsWith(str2)) {
                    if (!strTranslitSafe.contains(" " + str2)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelLoadingSharedAudio() {
        if (this.loadingSharedAudioRequestId >= 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.loadingSharedAudioRequestId, true);
        }
        this.loadingSharedAudioRequestId = -1;
        this.nextSearchRate = 0;
        this.sharedAudio.clear();
        this.loadingSharedAudio = false;
        this.willLoadSharedAudio = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadSharedAudioDelayed() {
        AndroidUtilities.cancelRunOnUIThread(this.loadSharedAudioRunnable);
        AndroidUtilities.runOnUIThread(this.loadSharedAudioRunnable, 400L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadSharedAudio() {
        if (this.local) {
            return;
        }
        String str = this.lastLoadingSharedAudioQuery;
        String str2 = this.query;
        String str3 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (str2 == null) {
            str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (!TextUtils.equals(str, str2)) {
            cancelLoadingSharedAudio();
        }
        if (this.loadingSharedAudio) {
            return;
        }
        if (this.sharedAudio.isEmpty() || this.sharedAudioHasMore) {
            this.loadingSharedAudio = true;
            TLRPC.TL_messages_searchGlobal tL_messages_searchGlobal = new TLRPC.TL_messages_searchGlobal();
            tL_messages_searchGlobal.filter = new TLRPC.TL_inputMessagesFilterMusic();
            String str4 = this.query;
            if (str4 != null) {
                str3 = str4;
            }
            this.lastLoadingSharedAudioQuery = str3;
            tL_messages_searchGlobal.f1032q = str3;
            tL_messages_searchGlobal.limit = 20;
            ArrayList<MessageObject> arrayList = this.sharedAudio;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList<MessageObject> arrayList2 = this.sharedAudio;
                MessageObject messageObject = arrayList2.get(arrayList2.size() - 1);
                tL_messages_searchGlobal.offset_id = messageObject.getId();
                tL_messages_searchGlobal.offset_rate = this.nextSearchRate;
                tL_messages_searchGlobal.offset_peer = MessagesController.getInstance(this.currentAccount).getInputPeer(MessageObject.getPeerId(messageObject.messageOwner.peer_id));
            } else {
                tL_messages_searchGlobal.offset_rate = 0;
                tL_messages_searchGlobal.offset_id = 0;
                tL_messages_searchGlobal.offset_peer = new TLRPC.TL_inputPeerEmpty();
            }
            this.loadingSharedAudioRequestId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_searchGlobal, new RequestDelegate() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert$$ExternalSyntheticLambda9
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadSharedAudio$3(tLObject, tL_error);
                }
            });
            this.adapter.update(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSharedAudio$3(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadSharedAudio$2(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSharedAudio$2(TLObject tLObject) {
        boolean z = false;
        this.willLoadSharedAudio = false;
        this.loadingSharedAudio = false;
        if (tLObject instanceof TLRPC.messages_Messages) {
            TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(messages_messages.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(messages_messages.chats, false);
            ArrayList<TLRPC.Message> arrayList = messages_messages.messages;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TLRPC.Message message = arrayList.get(i);
                i++;
                this.sharedAudio.add(new MessageObject(this.currentAccount, message, false, true));
            }
            if ((messages_messages instanceof TLRPC.TL_messages_messagesSlice) && this.sharedAudio.size() < messages_messages.count) {
                z = true;
            }
            this.sharedAudioHasMore = z;
            this.nextSearchRate = messages_messages.next_rate;
        } else {
            this.sharedAudioHasMore = false;
            this.nextSearchRate = 0;
        }
        this.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelLoadingGlobalAudio() {
        if (this.loadingGlobalAudioRequestId >= 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.loadingGlobalAudioRequestId, true);
        }
        this.loadingGlobalAudioRequestId = -1;
        this.globalAudioOffset = _UrlKt.FRAGMENT_ENCODE_SET;
        this.globalAudioHasMore = false;
        this.globalAudio.clear();
        this.loadingGlobalAudio = false;
        this.willLoadGlobalAudio = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadGlobalAudioDelayed() {
        AndroidUtilities.cancelRunOnUIThread(this.loadGlobalAudioRunnable);
        AndroidUtilities.runOnUIThread(this.loadGlobalAudioRunnable, 400L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadGlobalAudio() {
        String str;
        String str2 = MessagesController.getInstance(this.currentAccount).config.musicSearchUsername.get();
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        String str3 = this.lastLoadingGlobalAudioQuery;
        String str4 = this.query;
        String str5 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (str4 == null) {
            str4 = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (!TextUtils.equals(str3, str4)) {
            cancelLoadingGlobalAudio();
        }
        if (this.loadingGlobalAudio || TextUtils.isEmpty(this.query) || this.query.length() < 3) {
            return;
        }
        if (this.globalAudio.isEmpty() || this.globalAudioHasMore) {
            if (this.globalAudioBot == null) {
                this.globalAudioBot = MessagesController.getInstance(this.currentAccount).getUser(str2);
            }
            if (this.globalAudioBot == null) {
                if (this.resolvingGlobalAudioBot || this.failedToResolveGlobalAudioBot) {
                    return;
                }
                this.resolvingGlobalAudioBot = true;
                MessagesController.getInstance(this.currentAccount).getUserNameResolver().resolve(str2, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert$$ExternalSyntheticLambda5
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$loadGlobalAudio$4((Long) obj);
                    }
                });
                return;
            }
            this.loadingGlobalAudio = true;
            TLRPC.User currentUser = UserConfig.getInstance(this.currentAccount).getCurrentUser();
            TLRPC.TL_messages_getInlineBotResults tL_messages_getInlineBotResults = new TLRPC.TL_messages_getInlineBotResults();
            tL_messages_getInlineBotResults.bot = MessagesController.getInstance(this.currentAccount).getInputUser(this.globalAudioBot);
            tL_messages_getInlineBotResults.peer = MessagesController.getInputPeer(currentUser);
            if (this.globalAudio.isEmpty() || (str = this.globalAudioOffset) == null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            tL_messages_getInlineBotResults.offset = str;
            String str6 = this.query;
            if (str6 != null) {
                str5 = str6;
            }
            this.lastLoadingGlobalAudioQuery = str5;
            tL_messages_getInlineBotResults.query = str5;
            this.loadingGlobalAudioRequestId = ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(tL_messages_getInlineBotResults, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$loadGlobalAudio$5((TLRPC.messages_BotResults) obj, (TLRPC.TL_error) obj2);
                }
            });
            this.adapter.update(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadGlobalAudio$4(Long l) {
        this.resolvingGlobalAudioBot = false;
        TLRPC.User user = l == null ? null : MessagesController.getInstance(this.currentAccount).getUser(l);
        this.globalAudioBot = user;
        this.failedToResolveGlobalAudioBot = user == null;
        if (user != null) {
            loadGlobalAudio();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadGlobalAudio$5(TLRPC.messages_BotResults messages_botresults, TLRPC.TL_error tL_error) {
        boolean z = false;
        this.loadingGlobalAudio = false;
        this.willLoadGlobalAudio = false;
        if (messages_botresults != null) {
            MessagesController.getInstance(this.currentAccount).putUsers(messages_botresults.users, false);
            ArrayList<TLRPC.BotInlineResult> arrayList = messages_botresults.results;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TLRPC.BotInlineResult botInlineResult = arrayList.get(i);
                i++;
                TLRPC.BotInlineResult botInlineResult2 = botInlineResult;
                if (botInlineResult2 instanceof TLRPC.TL_botInlineMediaResult) {
                    TLRPC.TL_botInlineMediaResult tL_botInlineMediaResult = (TLRPC.TL_botInlineMediaResult) botInlineResult2;
                    if (tL_botInlineMediaResult.document != null) {
                        TLRPC.TL_message tL_message = new TLRPC.TL_message();
                        tL_message.out = true;
                        int i2 = this.globalAudioId;
                        this.globalAudioId = i2 - 1;
                        tL_message.id = i2;
                        tL_message.peer_id = new TLRPC.TL_peerUser();
                        TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                        tL_message.from_id = tL_peerUser;
                        TLRPC.Peer peer = tL_message.peer_id;
                        long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
                        tL_peerUser.user_id = clientUserId;
                        peer.user_id = clientUserId;
                        tL_message.date = (int) (System.currentTimeMillis() / 1000);
                        tL_message.message = _UrlKt.FRAGMENT_ENCODE_SET;
                        TLRPC.TL_messageMediaDocument tL_messageMediaDocument = new TLRPC.TL_messageMediaDocument();
                        tL_message.media = tL_messageMediaDocument;
                        tL_messageMediaDocument.flags |= 3;
                        tL_messageMediaDocument.document = tL_botInlineMediaResult.document;
                        tL_message.flags |= 768;
                        this.globalAudio.add(new MessageObject(this.currentAccount, tL_message, false, true));
                    }
                }
            }
            this.globalAudioOffset = messages_botresults.next_offset;
            if (!this.globalAudio.isEmpty() && !TextUtils.isEmpty(this.globalAudioOffset)) {
                z = true;
            }
            this.globalAudioHasMore = z;
            this.adapter.update(true);
            return;
        }
        this.adapter.update(true);
    }

    private void loadLocalAudio() {
        if (this.local && !this.loadingLocalAudio) {
            this.loadingLocalAudio = true;
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadLocalAudio$7();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLocalAudio$7() {
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
                    long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
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
                    MessageObject messageObject = new MessageObject(this.currentAccount, tL_message, false, true);
                    audioEntry.messageObject = messageObject;
                    arrayList.add(messageObject);
                    i--;
                } finally {
                }
            }
            cursorQuery.close();
        } catch (Exception e) {
            FileLog.m992e(e);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.SelectAudioAlert$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadLocalAudio$6(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLocalAudio$6(ArrayList arrayList) {
        this.loadingLocalAudio = false;
        this.localAudio.addAll(arrayList);
        this.adapter.update(true);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.musicListLoaded);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.musicListLoaded);
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onSuccessDownload(String str) {
        MessageObject messageObject = this.downloadingMessageObject;
        if (messageObject == null || !TextUtils.equals(messageObject.getFileName(), str)) {
            return;
        }
        done(this.downloadingMessageObject);
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public int getObserverTag() {
        return this.tag;
    }

    public void blur3_InvalidateBlur() {
        if (Build.VERSION.SDK_INT < 31 || this.scrollableViewNoiseSuppressor == null) {
            return;
        }
        this.iBlur3PositionActionBar.set(0.0f, ActionBar.getCurrentActionBarHeight() + AndroidUtilities.statusBarHeight, this.containerView.getMeasuredWidth(), ActionBar.getCurrentActionBarHeight() + AndroidUtilities.statusBarHeight + AndroidUtilities.dp(64.0f));
        this.scrollableViewNoiseSuppressor.setupRenderNodes(this.iBlur3PositionsMerged, RectFMergeBounding.mergeOverlapping(this.iBlur3Positions, 1, this.iBlur3PositionsMerged));
        this.scrollableViewNoiseSuppressor.invalidateResultRenderNodes(this.iBlur3Capture, this.containerView.getMeasuredWidth(), this.containerView.getMeasuredHeight());
    }
}
