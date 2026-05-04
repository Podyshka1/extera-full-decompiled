package org.telegram.p029ui.Components;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.provider.MediaStore;
import android.text.Editable;
import android.text.TextUtils;
import android.util.LongSparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import java.io.File;
import java.util.ArrayList;
import me.vkryl.android.animator.BoolAnimator;
import me.vkryl.android.animator.FactorAnimator;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.utils.TextWatcherImpl;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ActionBar.ThemeDescription;
import org.telegram.p029ui.Cells.SharedAudioCell;
import org.telegram.p029ui.Components.ChatAttachAlert;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.p029ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class ChatAttachAlertAudioLayout extends ChatAttachAlert.AttachAlertLayout implements NotificationCenter.NotificationCenterDelegate, FactorAnimator.Target {
    private final BoolAnimator animatorFadeVisible;
    private ArrayList audioEntries;
    private View currentEmptyView;
    private float currentPanTranslationProgress;
    private AudioSelectDelegate delegate;
    private final ImageView emptyImageView;
    private final TextView emptySubtitleTextView;
    private final TextView emptyTitleTextView;
    private final LinearLayout emptyView;
    private final View fadeView;
    private final FrameLayout frameLayout;
    private final LinearLayoutManager layoutManager;
    private final ListAdapter listAdapter;
    private final RecyclerListView listView;
    private boolean loadingAudio;
    private int maxSelectedFiles;
    private MessageObject playingAudio;
    private final EmptyTextProgressView progressView;
    private final SearchAdapter searchAdapter;
    private final FragmentSearchField searchField;
    private final LongSparseArray selectedAudios;
    private final ArrayList selectedAudiosOrder;
    private boolean sendPressed;

    public interface AudioSelectDelegate {
        void didSelectAudio(ArrayList arrayList, CharSequence charSequence, boolean z, int i, int i2, long j, boolean z2, long j2);
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public /* synthetic */ void onFactorChangeFinished(int i, float f, FactorAnimator factorAnimator) {
        FactorAnimator.Target.CC.$default$onFactorChangeFinished(this, i, f, factorAnimator);
    }

    public ChatAttachAlertAudioLayout(ChatAttachAlert chatAttachAlert, Context context, Theme.ResourcesProvider resourcesProvider) {
        super(chatAttachAlert, context, resourcesProvider);
        this.animatorFadeVisible = new BoolAnimator(0, this, CubicBezierInterpolator.EASE_OUT_QUINT, 380L);
        this.maxSelectedFiles = -1;
        this.audioEntries = new ArrayList();
        this.selectedAudiosOrder = new ArrayList();
        this.selectedAudios = new LongSparseArray();
        NotificationCenter.getInstance(this.parentAlert.currentAccount).addObserver(this, NotificationCenter.messagePlayingDidReset);
        NotificationCenter.getInstance(this.parentAlert.currentAccount).addObserver(this, NotificationCenter.messagePlayingDidStart);
        NotificationCenter.getInstance(this.parentAlert.currentAccount).addObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
        loadAudio();
        ChatAttachAlert.SearchFadeView searchFadeView = new ChatAttachAlert.SearchFadeView(context, resourcesProvider);
        this.fadeView = searchFadeView;
        searchFadeView.setVisibility(4);
        FrameLayout frameLayout = new FrameLayout(context);
        this.frameLayout = frameLayout;
        ChatAttachAlert.AttachSearchField attachSearchField = new ChatAttachAlert.AttachSearchField(context, this.parentAlert, resourcesProvider);
        this.searchField = attachSearchField;
        attachSearchField.setPadding(AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f));
        attachSearchField.editText.addTextChangedListener(new TextWatcherImpl() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout.1
            @Override // android.text.TextWatcher
            public /* synthetic */ void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                TextWatcherImpl.CC.$default$beforeTextChanged(this, charSequence, i, i2, i3);
            }

            @Override // android.text.TextWatcher
            public /* synthetic */ void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                TextWatcherImpl.CC.$default$onTextChanged(this, charSequence, i, i2, i3);
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                String string = editable.toString();
                if (string.isEmpty() && ChatAttachAlertAudioLayout.this.listView.getAdapter() != ChatAttachAlertAudioLayout.this.listAdapter) {
                    ChatAttachAlertAudioLayout.this.listView.setAdapter(ChatAttachAlertAudioLayout.this.listAdapter);
                    ChatAttachAlertAudioLayout.this.listAdapter.notifyDataSetChanged();
                }
                if (ChatAttachAlertAudioLayout.this.searchAdapter != null) {
                    ChatAttachAlertAudioLayout.this.searchAdapter.search(string);
                }
            }
        });
        attachSearchField.editText.setHint(LocaleController.getString(C2888R.string.SearchMusic));
        frameLayout.addView(searchFadeView, LayoutHelper.createFrameMatchParent());
        FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(-1, 48.0f, 51, 7.0f, 8.0f, 7.0f, 4.0f);
        ((ViewGroup.MarginLayoutParams) layoutParamsCreateFrame).topMargin += AndroidUtilities.statusBarHeight;
        frameLayout.addView(attachSearchField, layoutParamsCreateFrame);
        EmptyTextProgressView emptyTextProgressView = new EmptyTextProgressView(context, null, resourcesProvider);
        this.progressView = emptyTextProgressView;
        emptyTextProgressView.showProgress();
        addView(emptyTextProgressView, LayoutHelper.createFrame(-1, -1.0f));
        LinearLayout linearLayout = new LinearLayout(context);
        this.emptyView = linearLayout;
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.setVisibility(8);
        addView(linearLayout, LayoutHelper.createFrame(-1, -1.0f));
        linearLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return ChatAttachAlertAudioLayout.m9292$r8$lambda$fjc8s4mVggCk6AtgvjaeJE56M(view, motionEvent);
            }
        });
        ImageView imageView = new ImageView(context);
        this.emptyImageView = imageView;
        imageView.setImageResource(C2888R.drawable.music_empty);
        imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_dialogEmptyImage), PorterDuff.Mode.MULTIPLY));
        linearLayout.addView(imageView, LayoutHelper.createLinear(-2, -2));
        TextView textView = new TextView(context);
        this.emptyTitleTextView = textView;
        int i = Theme.key_dialogEmptyText;
        textView.setTextColor(getThemedColor(i));
        textView.setGravity(17);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setTextSize(1, 17.0f);
        textView.setPadding(AndroidUtilities.m1124dp(40.0f), 0, AndroidUtilities.m1124dp(40.0f), 0);
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 17, 0, 11, 0, 0));
        TextView textView2 = new TextView(context);
        this.emptySubtitleTextView = textView2;
        textView2.setTextColor(getThemedColor(i));
        textView2.setGravity(17);
        textView2.setTextSize(1, 15.0f);
        textView2.setPadding(AndroidUtilities.m1124dp(40.0f), 0, AndroidUtilities.m1124dp(40.0f), 0);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-2, -2, 17, 0, 6, 0, 0));
        RecyclerListView recyclerListView = new RecyclerListView(context, resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout.2
            @Override // org.telegram.p029ui.Components.RecyclerListView
            protected boolean allowSelectChildAtPosition(float f, float f2) {
                return f2 >= ((float) ((ChatAttachAlertAudioLayout.this.parentAlert.scrollOffsetY[0] + AndroidUtilities.m1124dp(30.0f)) + (!ChatAttachAlertAudioLayout.this.parentAlert.inBubbleMode ? AndroidUtilities.statusBarHeight : 0)));
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setSections();
        this.iBlur3Capture = recyclerListView;
        this.iBlur3CaptureView = recyclerListView;
        this.occupyStatusBar = true;
        this.occupyNavigationBar = true;
        recyclerListView.setClipToPadding(false);
        FillLastLinearLayoutManager fillLastLinearLayoutManager = new FillLastLinearLayoutManager(getContext(), 1, false, AndroidUtilities.m1124dp(9.0f), recyclerListView) { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout.3
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i2) {
                LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout.3.1
                    @Override // androidx.recyclerview.widget.LinearSmoothScroller
                    public int calculateDyToMakeVisible(View view, int i3) {
                        return super.calculateDyToMakeVisible(view, i3) - ((ChatAttachAlertAudioLayout.this.listView.getPaddingTop() - AndroidUtilities.statusBarHeight) - AndroidUtilities.m1124dp(7.0f));
                    }

                    @Override // androidx.recyclerview.widget.LinearSmoothScroller
                    protected int calculateTimeForDeceleration(int i3) {
                        return super.calculateTimeForDeceleration(i3) * 2;
                    }
                };
                linearSmoothScroller.setTargetPosition(i2);
                startSmoothScroll(linearSmoothScroller);
            }
        };
        this.layoutManager = fillLastLinearLayoutManager;
        recyclerListView.setLayoutManager(fillLastLinearLayoutManager);
        recyclerListView.setHorizontalScrollBarEnabled(false);
        recyclerListView.setVerticalScrollBarEnabled(false);
        addView(recyclerListView, LayoutHelper.createFrame(-1, -1.0f, 51, 0.0f, 0.0f, 0.0f, 0.0f));
        ListAdapter listAdapter = new ListAdapter(context);
        this.listAdapter = listAdapter;
        recyclerListView.setAdapter(listAdapter);
        recyclerListView.setGlowColor(getThemedColor(Theme.key_dialogScrollGlow));
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                this.f$0.lambda$new$1(view, i2);
            }
        });
        recyclerListView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i2) {
                return this.f$0.lambda$new$2(view, i2);
            }
        });
        recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout.4
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                ChatAttachAlertAudioLayout chatAttachAlertAudioLayout = ChatAttachAlertAudioLayout.this;
                chatAttachAlertAudioLayout.parentAlert.updateLayout(chatAttachAlertAudioLayout, true, i3);
                ChatAttachAlertAudioLayout.this.updateEmptyViewPosition();
            }
        });
        this.searchAdapter = new SearchAdapter(context);
        FrameLayout.LayoutParams layoutParamsCreateFrame2 = LayoutHelper.createFrame(-1, 60, 51);
        ((ViewGroup.MarginLayoutParams) layoutParamsCreateFrame2).height += AndroidUtilities.statusBarHeight;
        addView(frameLayout, layoutParamsCreateFrame2);
        updateEmptyView();
    }

    /* JADX INFO: renamed from: $r8$lambda$fjc8s4mVggCk6Atgvja-eJE56-M, reason: not valid java name */
    public static /* synthetic */ boolean m9292$r8$lambda$fjc8s4mVggCk6AtgvjaeJE56M(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view, int i) {
        onItemClick(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$2(View view, int i) {
        onItemClick(view);
        return true;
    }

    public void setupBlurredSearchField(BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory) {
        FragmentSearchField fragmentSearchField = this.searchField;
        if (fragmentSearchField != null) {
            fragmentSearchField.setupBlurredBackground(blurredBackgroundDrawableViewFactory.create(fragmentSearchField, BlurredBackgroundProviderImpl.attachMenuSearch(this.resourcesProvider)));
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onDestroy() {
        onHide();
        NotificationCenter.getInstance(this.parentAlert.currentAccount).removeObserver(this, NotificationCenter.messagePlayingDidReset);
        NotificationCenter.getInstance(this.parentAlert.currentAccount).removeObserver(this, NotificationCenter.messagePlayingDidStart);
        NotificationCenter.getInstance(this.parentAlert.currentAccount).removeObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onHide() {
        if (this.playingAudio != null && MediaController.getInstance().isPlayingMessage(this.playingAudio)) {
            MediaController.getInstance().cleanupPlayer(true, true);
        }
        this.playingAudio = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmptyViewPosition() {
        View childAt;
        if (this.currentEmptyView.getVisibility() == 0 && (childAt = this.listView.getChildAt(0)) != null) {
            this.currentEmptyView.setTranslationY((((r1.getMeasuredHeight() - getMeasuredHeight()) + childAt.getTop()) / 2) - (this.currentPanTranslationProgress / 2.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmptyView() {
        boolean zIsEmpty;
        if (this.loadingAudio) {
            this.currentEmptyView = this.progressView;
            this.emptyView.setVisibility(8);
        } else {
            if (this.listView.getAdapter() == this.searchAdapter) {
                this.emptyTitleTextView.setText(LocaleController.getString(C2888R.string.NoAudioFound));
            } else {
                this.emptyTitleTextView.setText(LocaleController.getString(C2888R.string.NoAudioFiles));
                this.emptySubtitleTextView.setText(LocaleController.getString(C2888R.string.NoAudioFilesInfo));
            }
            this.currentEmptyView = this.emptyView;
            this.progressView.setVisibility(8);
        }
        RecyclerView.Adapter adapter = this.listView.getAdapter();
        SearchAdapter searchAdapter = this.searchAdapter;
        if (adapter == searchAdapter) {
            zIsEmpty = searchAdapter.searchResult.isEmpty();
        } else {
            zIsEmpty = this.audioEntries.isEmpty();
        }
        this.currentEmptyView.setVisibility(zIsEmpty ? 0 : 8);
        updateEmptyViewPosition();
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
        View childAt = this.listView.getChildAt(0);
        RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.findContainingViewHolder(childAt);
        int top = (childAt.getTop() - AndroidUtilities.statusBarHeight) - AndroidUtilities.m1124dp(8.0f);
        int i = (top <= 0 || holder == null || holder.getAdapterPosition() != 0) ? 0 : top;
        if (top >= 0 && holder != null && holder.getAdapterPosition() == 0) {
            this.animatorFadeVisible.setValue(false, true);
        } else {
            this.animatorFadeVisible.setValue(true, true);
            top = i;
        }
        this.frameLayout.setTranslationY(top);
        return top + AndroidUtilities.m1124dp(12.0f);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getFirstOffset() {
        return getListTopPadding() + AndroidUtilities.m1124dp(4.0f);
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
        return this.listView.getPaddingTop();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updateEmptyViewPosition();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0031  */
    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onPreMeasure(int i, int i2) {
        int iM1124dp;
        if (this.parentAlert.sizeNotifierFrameLayout.measureKeyboardHeight() > AndroidUtilities.m1124dp(20.0f)) {
            iM1124dp = AndroidUtilities.m1124dp(8.0f);
            this.parentAlert.setAllowNestedScroll(false);
        } else if (!AndroidUtilities.isTablet()) {
            Point point = AndroidUtilities.displaySize;
            iM1124dp = point.x > point.y ? (int) (i2 / 3.5f) : (i2 / 5) * 2;
            this.parentAlert.setAllowNestedScroll(true);
        }
        this.listView.setPaddingWithoutRequestLayout(0, iM1124dp + AndroidUtilities.statusBarHeight, 0, this.listPaddingBottom);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onShow(ChatAttachAlert.AttachAlertLayout attachAlertLayout) {
        this.layoutManager.scrollToPositionWithOffset(0, 0);
        this.listAdapter.notifyDataSetChanged();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onHidden() {
        this.selectedAudios.clear();
        this.selectedAudiosOrder.clear();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
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
            }
        }
    }

    private void showErrorBox(String str) {
        new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(LocaleController.getString(C2888R.string.AppName)).setMessage(str).setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null).show();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void onItemClick(View view) {
        boolean z;
        if (view instanceof SharedAudioCell) {
            SharedAudioCell sharedAudioCell = (SharedAudioCell) view;
            MediaController.AudioEntry audioEntry = (MediaController.AudioEntry) sharedAudioCell.getTag();
            if (this.parentAlert.isStoryAudioPicker) {
                this.sendPressed = true;
                ArrayList arrayList = new ArrayList();
                arrayList.add(audioEntry.messageObject);
                this.delegate.didSelectAudio(arrayList, this.parentAlert.getCommentView().getText(), false, 0, 0, 0L, false, 0L);
            } else {
                z = false;
                if (this.selectedAudios.indexOfKey(audioEntry.f1593id) >= 0) {
                    this.selectedAudios.remove(audioEntry.f1593id);
                    this.selectedAudiosOrder.remove(audioEntry);
                    sharedAudioCell.setChecked(false, true);
                    this.parentAlert.updateCountButton(z ? 1 : 2);
                }
                if (this.maxSelectedFiles >= 0) {
                    int size = this.selectedAudios.size();
                    int i = this.maxSelectedFiles;
                    if (size >= i) {
                        showErrorBox(LocaleController.formatString("PassportUploadMaxReached", C2888R.string.PassportUploadMaxReached, LocaleController.formatPluralString("Files", i, new Object[0])));
                        return;
                    }
                }
                this.selectedAudios.put(audioEntry.f1593id, audioEntry);
                this.selectedAudiosOrder.add(audioEntry);
                sharedAudioCell.setChecked(true, true);
            }
            z = true;
            this.parentAlert.updateCountButton(z ? 1 : 2);
        }
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
        for (int i3 = 0; i3 < this.selectedAudiosOrder.size(); i3++) {
            arrayList.add(((MediaController.AudioEntry) this.selectedAudiosOrder.get(i3)).messageObject);
        }
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        return AlertsCreator.ensurePaidMessageConfirmation(chatAttachAlert.currentAccount, chatAttachAlert.getDialogId(), arrayList.size() + this.parentAlert.getAdditionalMessagesCount(), new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$sendSelectedItems$3(arrayList, z, i, i2, j, z2, (Long) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSelectedItems$3(ArrayList arrayList, boolean z, int i, int i2, long j, boolean z2, Long l) {
        this.delegate.didSelectAudio(arrayList, this.parentAlert.getCommentView().getText(), z, i, i2, j, z2, l.longValue());
        this.parentAlert.dismiss(true);
    }

    public ArrayList<MessageObject> getSelected() {
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        for (int i = 0; i < this.selectedAudiosOrder.size(); i++) {
            arrayList.add(((MediaController.AudioEntry) this.selectedAudiosOrder.get(i)).messageObject);
        }
        return arrayList;
    }

    public void setDelegate(AudioSelectDelegate audioSelectDelegate) {
        this.delegate = audioSelectDelegate;
    }

    private void loadAudio() {
        this.loadingAudio = true;
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadAudio$5();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAudio$5() {
        String[] strArr = {"_id", "artist", "title", "_data", "duration", "album"};
        final ArrayList arrayList = new ArrayList();
        try {
            Cursor cursorQuery = ApplicationLoader.applicationContext.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, strArr, "is_music != 0", null, "title");
            int i = -2000000000;
            while (cursorQuery.moveToNext()) {
                try {
                    MediaController.AudioEntry audioEntry = new MediaController.AudioEntry();
                    audioEntry.f1593id = cursorQuery.getInt(0);
                    audioEntry.author = cursorQuery.getString(1);
                    audioEntry.title = cursorQuery.getString(2);
                    audioEntry.path = cursorQuery.getString(3);
                    audioEntry.duration = (int) (cursorQuery.getLong(4) / 1000);
                    audioEntry.genre = cursorQuery.getString(5);
                    File file = new File(audioEntry.path);
                    TLRPC.TL_message tL_message = new TLRPC.TL_message();
                    tL_message.out = true;
                    tL_message.f1686id = i;
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
                    document.f1668id = 0L;
                    document.access_hash = 0L;
                    document.file_reference = new byte[0];
                    document.date = tL_message.date;
                    StringBuilder sb = new StringBuilder();
                    sb.append("audio/");
                    if (fileExtension.length() <= 0) {
                        fileExtension = "mp3";
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
                    arrayList.add(audioEntry);
                    i--;
                } finally {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$loadAudio$4(arrayList);
                        }
                    });
                }
            }
            cursorQuery.close();
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadAudio$4(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAudio$4(ArrayList arrayList) {
        this.loadingAudio = false;
        this.audioEntries = arrayList;
        this.listAdapter.notifyDataSetChanged();
    }

    private class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return i;
        }

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ChatAttachAlertAudioLayout.this.audioEntries.size() + 1 + (!ChatAttachAlertAudioLayout.this.audioEntries.isEmpty() ? 1 : 0);
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View view;
            if (i == 0) {
                SharedAudioCell sharedAudioCell = new SharedAudioCell(this.mContext, ChatAttachAlertAudioLayout.this.resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout.ListAdapter.1
                    @Override // org.telegram.p029ui.Cells.SharedAudioCell
                    public boolean needPlayMessage(MessageObject messageObject) {
                        ChatAttachAlertAudioLayout.this.playingAudio = messageObject;
                        ArrayList<MessageObject> arrayList = new ArrayList<>();
                        arrayList.add(messageObject);
                        return MediaController.getInstance().setPlaylist(arrayList, messageObject, 0L);
                    }
                };
                sharedAudioCell.setCheckForButtonPress(true);
                view = sharedAudioCell;
            } else if (i == 1) {
                View view2 = new View(this.mContext);
                view2.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m1124dp(56.0f)));
                view2.setTag(-33024);
                view = view2;
            } else {
                View view3 = new View(this.mContext);
                view3.setTag(-33024);
                view = view3;
            }
            return new RecyclerListView.Holder(view);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder.getItemViewType() == 0) {
                int i2 = i - 1;
                MediaController.AudioEntry audioEntry = (MediaController.AudioEntry) ChatAttachAlertAudioLayout.this.audioEntries.get(i2);
                SharedAudioCell sharedAudioCell = (SharedAudioCell) viewHolder.itemView;
                sharedAudioCell.setTag(audioEntry);
                sharedAudioCell.setMessageObject(audioEntry.messageObject, i2 != ChatAttachAlertAudioLayout.this.audioEntries.size() - 1);
                sharedAudioCell.setChecked(ChatAttachAlertAudioLayout.this.selectedAudios.indexOfKey(audioEntry.f1593id) >= 0, false);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == getItemCount() - 1) {
                return 2;
            }
            return i == 0 ? 1 : 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            ChatAttachAlertAudioLayout.this.updateEmptyView();
        }
    }

    public class SearchAdapter extends RecyclerListView.SelectionAdapter {
        private int lastSearchId;
        private Context mContext;
        private Runnable searchRunnable;
        private ArrayList searchResult = new ArrayList();
        private int reqId = 0;

        public SearchAdapter(Context context) {
            this.mContext = context;
        }

        public void search(final String str) {
            Runnable runnable = this.searchRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.searchRunnable = null;
            }
            if (TextUtils.isEmpty(str)) {
                if (!this.searchResult.isEmpty()) {
                    this.searchResult.clear();
                }
                if (ChatAttachAlertAudioLayout.this.listView.getAdapter() != ChatAttachAlertAudioLayout.this.listAdapter) {
                    ChatAttachAlertAudioLayout.this.listView.setAdapter(ChatAttachAlertAudioLayout.this.listAdapter);
                }
                notifyDataSetChanged();
                return;
            }
            final int i = this.lastSearchId + 1;
            this.lastSearchId = i;
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$SearchAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$search$1(str, i);
                }
            };
            this.searchRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 300L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$search$1(final String str, final int i) {
            final ArrayList arrayList = new ArrayList(ChatAttachAlertAudioLayout.this.audioEntries);
            Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$SearchAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$search$0(str, arrayList, i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$search$0(String str, ArrayList arrayList, int i) {
            String str2;
            String lowerCase = str.trim().toLowerCase();
            if (lowerCase.length() == 0) {
                updateSearchResults(new ArrayList(), str, this.lastSearchId);
                return;
            }
            String translitString = LocaleController.getInstance().getTranslitString(lowerCase);
            if (lowerCase.equals(translitString) || translitString.length() == 0) {
                translitString = null;
            }
            int i2 = (translitString != null ? 1 : 0) + 1;
            String[] strArr = new String[i2];
            strArr[0] = lowerCase;
            if (translitString != null) {
                strArr[1] = translitString;
            }
            ArrayList arrayList2 = new ArrayList();
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                MediaController.AudioEntry audioEntry = (MediaController.AudioEntry) arrayList.get(i3);
                int i4 = 0;
                while (true) {
                    if (i4 < i2) {
                        String str3 = strArr[i4];
                        String str4 = audioEntry.author;
                        boolean zContains = str4 != null ? str4.toLowerCase().contains(str3) : false;
                        if (!zContains && (str2 = audioEntry.title) != null) {
                            zContains = str2.toLowerCase().contains(str3);
                        }
                        if (zContains) {
                            arrayList2.add(audioEntry);
                            break;
                        }
                        i4++;
                    }
                }
            }
            updateSearchResults(arrayList2, str, i);
        }

        private void updateSearchResults(final ArrayList arrayList, final String str, final int i) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout$SearchAdapter$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateSearchResults$2(i, str, arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateSearchResults$2(int i, String str, ArrayList arrayList) {
            if (i != this.lastSearchId) {
                return;
            }
            if (i != -1 && ChatAttachAlertAudioLayout.this.listView.getAdapter() != ChatAttachAlertAudioLayout.this.searchAdapter) {
                ChatAttachAlertAudioLayout.this.listView.setAdapter(ChatAttachAlertAudioLayout.this.searchAdapter);
            }
            if (ChatAttachAlertAudioLayout.this.listView.getAdapter() == ChatAttachAlertAudioLayout.this.searchAdapter) {
                ChatAttachAlertAudioLayout.this.emptySubtitleTextView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("NoAudioFoundInfo", C2888R.string.NoAudioFoundInfo, str)));
            }
            this.searchResult = arrayList;
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            ChatAttachAlertAudioLayout.this.updateEmptyView();
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.searchResult.size() + 1 + (!this.searchResult.isEmpty() ? 1 : 0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View view;
            if (i == 0) {
                SharedAudioCell sharedAudioCell = new SharedAudioCell(this.mContext, ChatAttachAlertAudioLayout.this.resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlertAudioLayout.SearchAdapter.1
                    @Override // org.telegram.p029ui.Cells.SharedAudioCell
                    public boolean needPlayMessage(MessageObject messageObject) {
                        ChatAttachAlertAudioLayout.this.playingAudio = messageObject;
                        ArrayList<MessageObject> arrayList = new ArrayList<>();
                        arrayList.add(messageObject);
                        return MediaController.getInstance().setPlaylist(arrayList, messageObject, 0L);
                    }
                };
                sharedAudioCell.setCheckForButtonPress(true);
                view = sharedAudioCell;
            } else if (i == 1) {
                View view2 = new View(this.mContext);
                view2.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m1124dp(56.0f)));
                view2.setTag(-33024);
                view = view2;
            } else {
                View view3 = new View(this.mContext);
                view3.setTag(-33024);
                view = view3;
            }
            return new RecyclerListView.Holder(view);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder.getItemViewType() == 0) {
                int i2 = i - 1;
                MediaController.AudioEntry audioEntry = (MediaController.AudioEntry) this.searchResult.get(i2);
                SharedAudioCell sharedAudioCell = (SharedAudioCell) viewHolder.itemView;
                sharedAudioCell.setTag(audioEntry);
                sharedAudioCell.setMessageObject(audioEntry.messageObject, i2 != this.searchResult.size() - 1);
                sharedAudioCell.setChecked(ChatAttachAlertAudioLayout.this.selectedAudios.indexOfKey(audioEntry.f1593id) >= 0, false);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == getItemCount() - 1) {
                return 2;
            }
            return i == 0 ? 1 : 0;
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onContainerTranslationUpdated(float f) {
        this.currentPanTranslationProgress = f;
        super.onContainerTranslationUpdated(f);
        updateEmptyViewPosition();
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
        if (i == 0) {
            this.fadeView.setAlpha(f);
            this.fadeView.setVisibility(f > 0.0f ? 0 : 4);
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.emptyImageView, ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, Theme.key_dialogEmptyImage));
        TextView textView = this.emptyTitleTextView;
        int i = ThemeDescription.FLAG_IMAGECOLOR;
        int i2 = Theme.key_dialogEmptyText;
        arrayList.add(new ThemeDescription(textView, i, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.emptySubtitleTextView, ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_dialogScrollGlow));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.progressView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_emptyListPlaceholder));
        arrayList.add(new ThemeDescription(this.progressView, ThemeDescription.FLAG_PROGRESSBAR, null, null, null, null, Theme.key_progressCircle));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKBOX, new Class[]{SharedAudioCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_checkbox));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{SharedAudioCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_checkboxCheck));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{SharedAudioCell.class}, Theme.chat_contextResult_titleTextPaint, null, null, Theme.key_windowBackgroundWhiteBlackText));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{SharedAudioCell.class}, Theme.chat_contextResult_descriptionTextPaint, null, null, Theme.key_windowBackgroundWhiteGrayText2));
        return arrayList;
    }
}
