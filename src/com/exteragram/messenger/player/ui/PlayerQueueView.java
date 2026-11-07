package com.exteragram.messenger.player.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.player.PlayerColors;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.GenericProvider;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"ViewConstructor"})
public class PlayerQueueView extends FrameLayout {
    private final Adapter adapter;
    private final ExpressiveStateDrawable addBackground;
    private final ImageView addButton;
    private final ExpressiveStateDrawable clearBackground;
    private final ImageView clearButton;
    private PlayerColors colors;
    private final int currentAccount;
    private Delegate delegate;
    private final TextView emptyView;
    private final GradientDrawable fieldBackground;
    private final LinearLayout header;
    private ItemTouchHelper itemTouchHelper;
    private final LinearLayoutManager layoutManager;
    private final RecyclerListView listView;
    private ArrayList<MessageObject> playlist;
    private final ExpressiveStateDrawable reverseBackground;
    private final ImageView reverseButton;
    private final EditTextBoldCursor searchEditText;
    private final FrameLayout searchField;
    private final ImageView searchIcon;
    private String searchQuery;
    private ArrayList<MessageObject> searchResult;
    private Runnable searchRunnable;
    private boolean searchWas;
    private int selectorColor;
    private int sideInset;

    public interface Delegate {
        MessagesController.SavedMusicList getSavedMusicList();

        boolean isMyList();

        boolean isNoForwards();

        void onAddToList();

        void onReverseOrder();

        void onSearchFocus(boolean z);

        void onShowOptions(PlayerQueueCell playerQueueCell, MessageObject messageObject);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public PlayerQueueView(Context context, int i) {
        super(context);
        this.fieldBackground = new GradientDrawable();
        this.sideInset = AndroidUtilities.dp(20.0f);
        this.playlist = new ArrayList<>();
        this.searchResult = new ArrayList<>();
        this.currentAccount = i;
        LinearLayout linearLayout = new LinearLayout(context);
        this.header = linearLayout;
        linearLayout.setOrientation(0);
        addView(linearLayout, LayoutHelper.createFrame(-1, 40, 48));
        FrameLayout frameLayout = new FrameLayout(context);
        this.searchField = frameLayout;
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(0, 40, 1.0f));
        ImageView imageView = new ImageView(context);
        this.searchIcon = imageView;
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        imageView.setScaleType(scaleType);
        imageView.setImageResource(C2807R.drawable.outline_header_search);
        frameLayout.addView(imageView, LayoutHelper.createFrame(40, 40, 19));
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
        this.searchEditText = editTextBoldCursor;
        editTextBoldCursor.setTextSize(1, 15.0f);
        editTextBoldCursor.setTypeface(AndroidUtilities.regular());
        editTextBoldCursor.setBackground(null);
        editTextBoldCursor.setSingleLine(true);
        editTextBoldCursor.setImeOptions(268435459);
        editTextBoldCursor.setHint(LocaleController.getString(C2807R.string.PlayerQueueSearch));
        editTextBoldCursor.setPadding(0, 0, 0, 0);
        editTextBoldCursor.setCursorSize(AndroidUtilities.dp(18.0f));
        editTextBoldCursor.setCursorWidth(1.5f);
        editTextBoldCursor.setGravity(19);
        frameLayout.addView(editTextBoldCursor, LayoutHelper.createFrame(-1, 40.0f, 19, 40.0f, 0.0f, 40.0f, 0.0f));
        editTextBoldCursor.addTextChangedListener(new TextWatcher() { // from class: com.exteragram.messenger.player.ui.PlayerQueueView.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                String string = editable.toString();
                PlayerQueueView.this.clearButton.setVisibility(string.isEmpty() ? 8 : 0);
                PlayerQueueView playerQueueView = PlayerQueueView.this;
                if (string.trim().isEmpty()) {
                    string = null;
                }
                playerQueueView.search(string);
            }
        });
        editTextBoldCursor.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.exteragram.messenger.player.ui.PlayerQueueView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                this.f$0.lambda$new$0(view, z);
            }
        });
        ImageView imageView2 = new ImageView(context);
        this.clearButton = imageView2;
        imageView2.setScaleType(scaleType);
        imageView2.setImageResource(C2807R.drawable.ic_close_white);
        ExpressiveStateDrawable expressiveStateDrawable = new ExpressiveStateDrawable(10.0f);
        this.clearBackground = expressiveStateDrawable;
        imageView2.setBackground(expressiveStateDrawable);
        imageView2.setContentDescription(LocaleController.getString(C2807R.string.ClearButton));
        imageView2.setVisibility(8);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.player.ui.PlayerQueueView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(view);
            }
        });
        frameLayout.addView(imageView2, LayoutHelper.createFrame(32, 32.0f, 21, 0.0f, 0.0f, 4.0f, 0.0f));
        ImageView imageView3 = new ImageView(context);
        this.addButton = imageView3;
        imageView3.setScaleType(scaleType);
        imageView3.setImageResource(C2807R.drawable.msg_add);
        ExpressiveStateDrawable selectedRadius = new ExpressiveStateDrawable(8.0f).setSelectedRadius(12.0f);
        this.addBackground = selectedRadius;
        imageView3.setBackground(selectedRadius);
        imageView3.setContentDescription(LocaleController.getString(C2807R.string.PlayerQueueAdd));
        imageView3.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.player.ui.PlayerQueueView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(view);
            }
        });
        imageView3.setVisibility(8);
        linearLayout.addView(imageView3, LayoutHelper.createLinear(40, 40, 16, 8, 0, 0, 0));
        ImageView imageView4 = new ImageView(context);
        this.reverseButton = imageView4;
        imageView4.setScaleType(scaleType);
        imageView4.setImageResource(C2807R.drawable.player_new_order);
        ExpressiveStateDrawable selectedRadius2 = new ExpressiveStateDrawable(8.0f).setSelectedRadius(12.0f);
        this.reverseBackground = selectedRadius2;
        imageView4.setBackground(selectedRadius2);
        imageView4.setContentDescription(LocaleController.getString(C2807R.string.ReverseOrder));
        imageView4.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.player.ui.PlayerQueueView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$3(view);
            }
        });
        linearLayout.addView(imageView4, LayoutHelper.createLinear(40, 40, 16, 8, 0, 0, 0));
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setVerticalScrollBarEnabled(false);
        recyclerListView.setVerticalFadingEdgeEnabled(true);
        recyclerListView.setFadingEdgeLength(AndroidUtilities.dp(16.0f));
        recyclerListView.setItemSelectorColorProvider(new GenericProvider() { // from class: com.exteragram.messenger.player.ui.PlayerQueueView$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.GenericProvider
            public final Object provide(Object obj) {
                return this.f$0.lambda$new$4((Integer) obj);
            }
        });
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 1, false);
        this.layoutManager = linearLayoutManager;
        recyclerListView.setLayoutManager(linearLayoutManager);
        Adapter adapter = new Adapter(context);
        this.adapter = adapter;
        recyclerListView.setAdapter(adapter);
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.exteragram.messenger.player.ui.PlayerQueueView$$ExternalSyntheticLambda5
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                PlayerQueueView.$r8$lambda$8epJuLSq3Ryz5mxAjilhofUP_Tc(view, i2);
            }
        });
        recyclerListView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: com.exteragram.messenger.player.ui.PlayerQueueView$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i2) {
                return this.f$0.lambda$new$6(view, i2);
            }
        });
        recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.exteragram.messenger.player.ui.PlayerQueueView.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
                if (i2 == 1) {
                    AndroidUtilities.hideKeyboard(PlayerQueueView.this.searchEditText);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                if (PlayerQueueView.this.searchWas) {
                    return;
                }
                int iFindFirstVisibleItemPosition = PlayerQueueView.this.layoutManager.findFirstVisibleItemPosition();
                int iFindLastVisibleItemPosition = PlayerQueueView.this.layoutManager.findLastVisibleItemPosition();
                int itemCount = PlayerQueueView.this.adapter.getItemCount();
                if (iFindFirstVisibleItemPosition == -1) {
                    return;
                }
                if (SharedConfig.playOrderReversed) {
                    if (iFindFirstVisibleItemPosition < 10) {
                        MediaController.getInstance().loadMoreMusic();
                    }
                } else if (iFindLastVisibleItemPosition > itemCount - 10) {
                    MediaController.getInstance().loadMoreMusic();
                }
            }
        });
        addView(recyclerListView, LayoutHelper.createFrame(-1, -1.0f, 48, 0.0f, 48.0f, 0.0f, 0.0f));
        TextView textView = new TextView(context);
        this.emptyView = textView;
        textView.setTextSize(1, 14.0f);
        textView.setTypeface(AndroidUtilities.regular());
        textView.setGravity(17);
        textView.setVisibility(8);
        addView(textView, LayoutHelper.createFrame(-1, -2.0f, 48, 0.0f, 48.0f, 0.0f, 0.0f));
        applySideInset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, boolean z) {
        Delegate delegate = this.delegate;
        if (delegate != null) {
            delegate.onSearchFocus(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        this.searchEditText.setText(_UrlKt.FRAGMENT_ENCODE_SET);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        Delegate delegate = this.delegate;
        if (delegate != null) {
            delegate.onAddToList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        Delegate delegate = this.delegate;
        if (delegate != null) {
            delegate.onReverseOrder();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer lambda$new$4(Integer num) {
        return Integer.valueOf(this.selectorColor);
    }

    public static /* synthetic */ void $r8$lambda$8epJuLSq3Ryz5mxAjilhofUP_Tc(View view, int i) {
        if (view instanceof PlayerQueueCell) {
            ((PlayerQueueCell) view).didPressedButton();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$6(View view, int i) {
        Delegate delegate;
        PlayerQueueCell playerQueueCell;
        MessageObject messageObject;
        if (!(view instanceof PlayerQueueCell) || (delegate = this.delegate) == null || delegate.isMyList() || (messageObject = (playerQueueCell = (PlayerQueueCell) view).getMessageObject()) == null || messageObject.getId() <= 0 || messageObject.isVoice()) {
            return false;
        }
        this.delegate.onShowOptions(playerQueueCell, messageObject);
        return true;
    }

    public void setDelegate(Delegate delegate) {
        this.delegate = delegate;
        setupReorder();
    }

    private void applySideInset() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.header.getLayoutParams();
        int i = this.sideInset;
        layoutParams.leftMargin = i;
        layoutParams.rightMargin = i;
        this.header.setLayoutParams(layoutParams);
        this.emptyView.setPadding(this.sideInset, AndroidUtilities.dp(14.0f), this.sideInset, AndroidUtilities.dp(14.0f));
        int childCount = this.listView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.listView.getChildAt(i2);
            if (childAt instanceof PlayerQueueCell) {
                ((PlayerQueueCell) childAt).setSideInset(this.sideInset);
            }
        }
    }

    private void setupReorder() {
        ItemTouchHelper itemTouchHelper = this.itemTouchHelper;
        if (itemTouchHelper != null) {
            itemTouchHelper.attachToRecyclerView(null);
            this.itemTouchHelper = null;
        }
        Delegate delegate = this.delegate;
        if (delegate == null || !delegate.isMyList()) {
            this.addButton.setVisibility(8);
            return;
        }
        this.addButton.setVisibility(0);
        ItemTouchHelper itemTouchHelper2 = new ItemTouchHelper(new ItemTouchHelper.Callback() { // from class: com.exteragram.messenger.player.ui.PlayerQueueView.3
            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
                if (PlayerQueueView.this.searchWas) {
                    return 0;
                }
                return ItemTouchHelper.Callback.makeMovementFlags(3, 0);
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
                MessagesController.SavedMusicList savedMusicList = PlayerQueueView.this.delegate != null ? PlayerQueueView.this.delegate.getSavedMusicList() : null;
                if (savedMusicList == null) {
                    return false;
                }
                int adapterPosition = viewHolder.getAdapterPosition();
                int adapterPosition2 = viewHolder2.getAdapterPosition();
                int size = savedMusicList.list.size();
                if (adapterPosition < 0 || adapterPosition2 < 0 || adapterPosition >= size || adapterPosition2 >= size) {
                    return false;
                }
                boolean zIsDirectOrder = PlayerQueueView.this.isDirectOrder();
                savedMusicList.move(zIsDirectOrder ? adapterPosition : (size - adapterPosition) - 1, zIsDirectOrder ? adapterPosition2 : (size - adapterPosition2) - 1);
                ArrayList<MessageObject> playlist = MediaController.getInstance().getPlaylist();
                playlist.clear();
                playlist.addAll(savedMusicList.list);
                PlayerQueueView.this.adapter.notifyItemMoved(adapterPosition, adapterPosition2);
                return true;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
                if (viewHolder != null) {
                    PlayerQueueView.this.listView.hideSelector(false);
                }
                if (i != 0) {
                    PlayerQueueView.this.listView.cancelClickRunnables(false);
                    if (viewHolder != null) {
                        View view = viewHolder.itemView;
                        if (view instanceof PlayerQueueCell) {
                            ((PlayerQueueCell) view).setLifted(true);
                        }
                    }
                }
                super.onSelectedChanged(viewHolder, i);
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
                super.clearView(recyclerView, viewHolder);
                View view = viewHolder.itemView;
                if (view instanceof PlayerQueueCell) {
                    ((PlayerQueueCell) view).setLifted(false);
                }
            }
        });
        this.itemTouchHelper = itemTouchHelper2;
        itemTouchHelper2.attachToRecyclerView(this.listView);
    }

    public void setColors(PlayerColors playerColors) {
        this.colors = playerColors;
        this.selectorColor = ColorUtils.setAlphaComponent(playerColors.text, 20);
        this.fieldBackground.setCornerRadius(AndroidUtilities.dp(20.0f));
        this.fieldBackground.setColor(playerColors.surfaceContainer);
        Drawable background = this.searchField.getBackground();
        GradientDrawable gradientDrawable = this.fieldBackground;
        if (background != gradientDrawable) {
            this.searchField.setBackground(gradientDrawable);
        }
        ImageView imageView = this.searchIcon;
        int i = playerColors.textSecondary;
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        imageView.setColorFilter(new PorterDuffColorFilter(i, mode));
        this.clearButton.setColorFilter(new PorterDuffColorFilter(playerColors.textSecondary, mode));
        this.clearBackground.setColors(playerColors.textSecondary, 0);
        this.searchEditText.setTextColor(playerColors.text);
        this.searchEditText.setHintTextColor(playerColors.textSecondary);
        this.searchEditText.setCursorColor(playerColors.text);
        updateReverseColors();
        this.addBackground.setColors(playerColors.icon, playerColors.tonal);
        this.addButton.setColorFilter(new PorterDuffColorFilter(playerColors.icon, mode));
        this.emptyView.setTextColor(playerColors.textSecondary);
        this.listView.setGlowColor(playerColors.textSecondary);
        int childCount = this.listView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.listView.getChildAt(i2);
            if (childAt instanceof PlayerQueueCell) {
                ((PlayerQueueCell) childAt).setColors(playerColors);
            }
        }
    }

    private void updateReverseColors() {
        if (this.colors == null) {
            return;
        }
        boolean zIsSelected = this.reverseBackground.isSelected();
        PlayerColors playerColors = this.colors;
        int i = zIsSelected ? playerColors.onTonal : playerColors.icon;
        this.reverseBackground.setColors(i, this.colors.tonal);
        this.reverseButton.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
    }

    public void setReversed(boolean z, boolean z2) {
        this.reverseBackground.setSelected(z, z2);
        this.reverseButton.setSelected(z);
        updateReverseColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDirectOrder() {
        Delegate delegate = this.delegate;
        return (delegate != null && delegate.getSavedMusicList() != null) != SharedConfig.playOrderReversed;
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public void update() {
        this.playlist = MediaController.getInstance().getPlaylist();
        this.adapter.notifyDataSetChanged();
        updateEmpty();
    }

    public void reverse() {
        if (this.searchWas || this.listView.getChildCount() == 0 || !this.listView.isLaidOut()) {
            update();
            scrollToCurrent(false);
            return;
        }
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        final HashMap map = new HashMap();
        float height = this.listView.getHeight() / 2.0f;
        int childCount = this.listView.getChildCount();
        MessageObject messageObject = null;
        float f = Float.MAX_VALUE;
        boolean z = false;
        int top = 0;
        for (int i = 0; i < childCount; i++) {
            View childAt = this.listView.getChildAt(i);
            if (childAt instanceof PlayerQueueCell) {
                PlayerQueueCell playerQueueCell = (PlayerQueueCell) childAt;
                if (playerQueueCell.getMessageObject() != null) {
                    MessageObject messageObject2 = playerQueueCell.getMessageObject();
                    playerQueueCell.animate().cancel();
                    map.put(messageObject2, Float.valueOf(playerQueueCell.getY()));
                    if (!z) {
                        if (isCurrent(messageObject2, playingMessageObject)) {
                            top = playerQueueCell.getTop();
                            z = true;
                            messageObject = messageObject2;
                        } else {
                            float fAbs = Math.abs((playerQueueCell.getTop() + (playerQueueCell.getHeight() / 2.0f)) - height);
                            if (fAbs < f) {
                                top = playerQueueCell.getTop();
                                messageObject = messageObject2;
                                f = fAbs;
                            }
                        }
                    }
                }
            }
        }
        update();
        int iPositionOf = messageObject != null ? this.adapter.positionOf(messageObject) : -1;
        if (iPositionOf < 0) {
            scrollToCurrent(false);
        } else {
            this.layoutManager.scrollToPositionWithOffset(iPositionOf, top - this.listView.getPaddingTop());
            this.listView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.exteragram.messenger.player.ui.PlayerQueueView.4
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    PlayerQueueView.this.listView.getViewTreeObserver().removeOnPreDrawListener(this);
                    int childCount2 = PlayerQueueView.this.listView.getChildCount();
                    for (int i2 = 0; i2 < childCount2; i2++) {
                        View childAt2 = PlayerQueueView.this.listView.getChildAt(i2);
                        if (childAt2 instanceof PlayerQueueCell) {
                            PlayerQueueCell playerQueueCell2 = (PlayerQueueCell) childAt2;
                            if (playerQueueCell2.getMessageObject() != null) {
                                Float f2 = (Float) map.get(playerQueueCell2.getMessageObject());
                                if (f2 != null) {
                                    playerQueueCell2.setTranslationY(f2.floatValue() - playerQueueCell2.getTop());
                                    playerQueueCell2.animate().translationY(0.0f).setDuration(420L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
                                } else {
                                    playerQueueCell2.setAlpha(0.0f);
                                    playerQueueCell2.animate().alpha(1.0f).setDuration(420L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
                                }
                            }
                        }
                    }
                    return true;
                }
            });
        }
    }

    public void updateCells() {
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        int childCount = this.listView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.listView.getChildAt(i);
            if (childAt instanceof PlayerQueueCell) {
                PlayerQueueCell playerQueueCell = (PlayerQueueCell) childAt;
                MessageObject messageObject = playerQueueCell.getMessageObject();
                if (messageObject != null && (messageObject.isVoice() || messageObject.isMusic())) {
                    playerQueueCell.updateButtonState(false, true);
                }
                playerQueueCell.setCurrent(isCurrent(messageObject, playingMessageObject), true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isCurrent(MessageObject messageObject, MessageObject messageObject2) {
        if (messageObject == null || messageObject2 == null) {
            return false;
        }
        if (messageObject != messageObject2) {
            return messageObject.getId() == messageObject2.getId() && messageObject.getDialogId() == messageObject2.getDialogId();
        }
        return true;
    }

    public void scrollToCurrent(boolean z) {
        int iPositionOf;
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject != null && (iPositionOf = this.adapter.positionOf(playingMessageObject)) >= 0) {
            if (z) {
                this.listView.smoothScrollToPosition(iPositionOf);
            } else {
                this.layoutManager.scrollToPositionWithOffset(iPositionOf, AndroidUtilities.dp(56.0f) * 2);
            }
        }
    }

    public void clearSearch() {
        if (this.searchEditText.length() > 0) {
            this.searchEditText.setText(_UrlKt.FRAGMENT_ENCODE_SET);
        }
        this.searchEditText.clearFocus();
        AndroidUtilities.hideKeyboard(this.searchEditText);
    }

    public boolean isSearchFocused() {
        return this.searchEditText.isFocused();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmpty() {
        boolean z = this.searchWas && this.searchResult.isEmpty();
        this.emptyView.setVisibility(z ? 0 : 8);
        if (z) {
            this.emptyView.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.NoAudioFoundPlayerInfo, this.searchQuery)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NotifyDataSetChanged"})
    public void search(String str) {
        if (this.searchRunnable != null) {
            Utilities.searchQueue.cancelRunnable(this.searchRunnable);
            this.searchRunnable = null;
        }
        if (str == null) {
            this.searchWas = false;
            this.searchQuery = null;
            this.searchResult = new ArrayList<>();
            this.adapter.notifyDataSetChanged();
            updateEmpty();
            return;
        }
        RunnableC14445 runnableC14445 = new RunnableC14445(str, new ArrayList(this.playlist));
        this.searchRunnable = runnableC14445;
        Utilities.searchQueue.postRunnable(runnableC14445, 300L);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.player.ui.PlayerQueueView$5 */
    public class RunnableC14445 implements Runnable {
        final /* synthetic */ ArrayList val$copy;
        final /* synthetic */ String val$query;

        public RunnableC14445(String str, ArrayList arrayList) {
            this.val$query = str;
            this.val$copy = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            String lowerCase = this.val$query.trim().toLowerCase(Locale.getDefault());
            String translitString = LocaleController.getInstance().getTranslitString(lowerCase);
            if (lowerCase.equals(translitString) || translitString == null || translitString.isEmpty()) {
                translitString = null;
            }
            int i = 0;
            String[] strArr = translitString != null ? new String[]{lowerCase, translitString} : new String[]{lowerCase};
            final ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = this.val$copy;
            int size = arrayList2.size();
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                MessageObject messageObject = (MessageObject) obj;
                if (PlayerQueueView.matches(messageObject, strArr)) {
                    arrayList.add(messageObject);
                }
            }
            final String str = this.val$query;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.player.ui.PlayerQueueView$5$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$run$0(this, str, arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(Runnable runnable, String str, ArrayList arrayList) {
            if (PlayerQueueView.this.searchRunnable != runnable) {
                return;
            }
            PlayerQueueView.this.searchRunnable = null;
            PlayerQueueView.this.searchWas = true;
            PlayerQueueView.this.searchQuery = str;
            PlayerQueueView.this.searchResult = arrayList;
            PlayerQueueView.this.adapter.notifyDataSetChanged();
            PlayerQueueView.this.layoutManager.scrollToPosition(0);
            PlayerQueueView.this.updateEmpty();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005d, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean matches(MessageObject messageObject, String[] strArr) {
        String str;
        for (String str2 : strArr) {
            String documentName = messageObject.getDocumentName();
            if (!TextUtils.isEmpty(documentName) && documentName.toLowerCase(Locale.getDefault()).contains(str2)) {
                return true;
            }
            TLRPC.Document document = messageObject.getDocument();
            if (document != null) {
                int i = 0;
                while (true) {
                    if (i < document.attributes.size()) {
                        TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                        if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                            String str3 = documentAttribute.performer;
                            if ((str3 != null && str3.toLowerCase().contains(str2)) || ((str = documentAttribute.title) != null && str.toLowerCase().contains(str2))) {
                                return true;
                            }
                        } else {
                            i++;
                        }
                    }
                }
            }
        }
        return false;
    }

    public class Adapter extends RecyclerListView.SelectionAdapter {
        private final Context context;

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public Adapter(Context context) {
            this.context = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            boolean z = PlayerQueueView.this.searchWas;
            PlayerQueueView playerQueueView = PlayerQueueView.this;
            return (z ? playerQueueView.searchResult : playerQueueView.playlist).size();
        }

        public int positionOf(MessageObject messageObject) {
            boolean z = PlayerQueueView.this.searchWas;
            PlayerQueueView playerQueueView = PlayerQueueView.this;
            if (z) {
                return playerQueueView.searchResult.indexOf(messageObject);
            }
            int iIndexOf = playerQueueView.playlist.indexOf(messageObject);
            if (iIndexOf < 0) {
                return -1;
            }
            return PlayerQueueView.this.isDirectOrder() ? iIndexOf : (PlayerQueueView.this.playlist.size() - iIndexOf) - 1;
        }

        public MessageObject getItem(int i) {
            if (PlayerQueueView.this.searchWas) {
                if (i < 0 || i >= PlayerQueueView.this.searchResult.size()) {
                    return null;
                }
                return (MessageObject) PlayerQueueView.this.searchResult.get(i);
            }
            if (i < 0 || i >= PlayerQueueView.this.playlist.size()) {
                return null;
            }
            boolean zIsDirectOrder = PlayerQueueView.this.isDirectOrder();
            PlayerQueueView playerQueueView = PlayerQueueView.this;
            return zIsDirectOrder ? (MessageObject) playerQueueView.playlist.get(i) : (MessageObject) playerQueueView.playlist.get((PlayerQueueView.this.playlist.size() - i) - 1);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            PlayerQueueCell playerQueueCell = new PlayerQueueCell(this.context, PlayerQueueView.this.currentAccount);
            playerQueueCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(playerQueueCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @SuppressLint({"ClickableViewAccessibility"})
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            final PlayerQueueCell playerQueueCell = (PlayerQueueCell) viewHolder.itemView;
            final MessageObject item = getItem(i);
            if (item == null) {
                return;
            }
            playerQueueCell.animate().cancel();
            playerQueueCell.setTranslationY(0.0f);
            playerQueueCell.setAlpha(1.0f);
            item.setQuery(PlayerQueueView.this.searchQuery);
            boolean z = PlayerQueueView.this.delegate != null && PlayerQueueView.this.delegate.isMyList();
            boolean z2 = PlayerQueueView.this.delegate != null && PlayerQueueView.this.delegate.isNoForwards();
            boolean z3 = z && !PlayerQueueView.this.searchWas;
            View.OnTouchListener onTouchListener = z3 ? new View.OnTouchListener() { // from class: com.exteragram.messenger.player.ui.PlayerQueueView$Adapter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return this.f$0.lambda$onBindViewHolder$0(playerQueueCell, view, motionEvent);
                }
            } : null;
            boolean z4 = (z || z2 || item.isVoice() || item.getId() <= 0) ? false : true;
            playerQueueCell.setSideInset(PlayerQueueView.this.sideInset);
            if (PlayerQueueView.this.colors != null) {
                playerQueueCell.setColors(PlayerQueueView.this.colors);
            }
            playerQueueCell.setGlobalSearch(MediaController.getInstance().currentPlaylistIsGlobalSearch());
            playerQueueCell.setMessageObject(item, z3, z4 ? new View.OnClickListener() { // from class: com.exteragram.messenger.player.ui.PlayerQueueView$Adapter$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$onBindViewHolder$1(playerQueueCell, item, view);
                }
            } : null, onTouchListener);
            playerQueueCell.setCurrent(PlayerQueueView.isCurrent(item, MediaController.getInstance().getPlayingMessageObject()), false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$onBindViewHolder$0(PlayerQueueCell playerQueueCell, View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || PlayerQueueView.this.itemTouchHelper == null) {
                return false;
            }
            PlayerQueueView.this.itemTouchHelper.startDrag(PlayerQueueView.this.listView.getChildViewHolder(playerQueueCell));
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$1(PlayerQueueCell playerQueueCell, MessageObject messageObject, View view) {
            if (PlayerQueueView.this.delegate != null) {
                PlayerQueueView.this.delegate.onShowOptions(playerQueueCell, messageObject);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (view instanceof PlayerQueueCell) {
                PlayerQueueCell playerQueueCell = (PlayerQueueCell) view;
                if (playerQueueCell.getMessageObject() != null) {
                    if (PlayerQueueView.this.colors != null) {
                        playerQueueCell.setColors(PlayerQueueView.this.colors);
                    }
                    playerQueueCell.updateButtonState(false, false);
                    playerQueueCell.setCurrent(PlayerQueueView.isCurrent(playerQueueCell.getMessageObject(), MediaController.getInstance().getPlayingMessageObject()), false);
                }
            }
        }
    }
}
