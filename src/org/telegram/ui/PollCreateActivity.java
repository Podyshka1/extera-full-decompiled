package org.telegram.ui;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import java.util.Arrays;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.PollEditTextCell;
import org.telegram.ui.Cells.ShadowSectionCell;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Cells.TextCheckCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.ChatActivityEnterViewAnimatedIconView;
import org.telegram.ui.Components.ChatAttachAlertPollLayout;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.EmojiView;
import org.telegram.ui.Components.HintView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Components.SuggestEmojiView;
import org.telegram.ui.PollCreateActivity;
import org.telegram.ui.Stories.recorder.KeyboardNotifier;

/* JADX INFO: loaded from: classes6.dex */
public class PollCreateActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate, SizeNotifierFrameLayout.SizeNotifierFrameLayoutDelegate {
    private int addAnswerRow;
    private int allowAddingRow;
    private int allowMarkingRow;
    private int anonymousRow;
    private int answerHeaderRow;
    private int[] answerIds;
    private int answerSectionRow;
    private int answerStartRow;
    private final CharSequence[] answers;
    private final boolean[] answersChecks;
    private PollEditTextCell currentCell;
    private PollCreateActivityDelegate delegate;
    private boolean destroyed;
    private ActionBarMenuItem doneItem;
    private TLRPC.MessageMedia editing;
    private int emojiPadding;
    private EmojiView emojiView;
    public boolean emojiViewVisible;
    public boolean emojiViewWasVisible;
    private boolean firstRequestField;
    private boolean hintShowed;
    private HintView hintView;
    private boolean isAnimatePopupClosing;
    boolean isEmojiSearchOpened;
    private boolean isPremium;
    private int keyboardHeight;
    private int keyboardHeightLand;
    private KeyboardNotifier keyboardNotifier;
    private boolean keyboardVisible;
    private int lastSizeChangeValue1;
    private boolean lastSizeChangeValue2;
    private RecyclerView.LayoutManager layoutManager;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private int maxAnswerId;
    private final int maxAnswersCount;
    private boolean multipleChoise;
    private int multipleRow;
    private int oldAnswersCount;
    private boolean onlyAdding;
    private ChatActivity parentFragment;
    private int questionHeaderRow;
    private int questionRow;
    private int questionSectionRow;
    private CharSequence questionString;
    private int quizOnly;
    private boolean quizPoll;
    private int quizRow;
    private int rowCount;
    private int settingsHeaderRow;
    private int settingsSectionRow;
    private SizeNotifierFrameLayout sizeNotifierFrameLayout;
    private int solutionInfoRow;
    private int solutionRow;
    private CharSequence solutionString;
    private SuggestEmojiView suggestEmojiPanel;
    private final boolean todo;
    private boolean waitingForKeyboardOpen;
    boolean wasEmojiSearchOpened;
    private int answersCount = 1;
    private boolean anonymousPoll = true;
    private boolean allowAdding = false;
    private boolean allowMarking = true;
    private int shiftDp = AndroidUtilities.dp(3.0f);
    private int requestFieldFocusAtPosition = -1;
    private Runnable openKeyboardRunnable = new Runnable() { // from class: org.telegram.ui.PollCreateActivity.1
        @Override // java.lang.Runnable
        public void run() {
            if (PollCreateActivity.this.currentCell != null) {
                EditTextBoldCursor editField = PollCreateActivity.this.currentCell.getEditField();
                if (PollCreateActivity.this.destroyed || editField == null || !PollCreateActivity.this.waitingForKeyboardOpen || PollCreateActivity.this.keyboardVisible || AndroidUtilities.usingHardwareInput || AndroidUtilities.isInMultiwindow || !AndroidUtilities.isTablet()) {
                    return;
                }
                editField.requestFocus();
                AndroidUtilities.showKeyboard(editField);
                AndroidUtilities.cancelRunOnUIThread(PollCreateActivity.this.openKeyboardRunnable);
                AndroidUtilities.runOnUIThread(PollCreateActivity.this.openKeyboardRunnable, 100L);
            }
        }
    };

    public interface PollCreateActivityDelegate {
        void sendPoll(TLRPC.MessageMedia messageMedia, ArrayList<Integer> arrayList, boolean z, int i);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        if (getLastStoryViewer() != null && getLastStoryViewer().isShown()) {
            return false;
        }
        int color = Theme.getColor(Theme.key_windowBackgroundWhite);
        if (this.actionBar.isActionModeShowed()) {
            color = Theme.getColor(Theme.key_actionBarActionModeDefault);
        }
        return ColorUtils.calculateLuminance(color) > 0.699999988079071d;
    }

    public class TouchHelperCallback extends ItemTouchHelper.Callback {
        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean isLongPressDragEnabled() {
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
        }

        public TouchHelperCallback() {
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getItemViewType() != 5 || !canMove(viewHolder.getAdapterPosition())) {
                return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
            }
            return ItemTouchHelper.Callback.makeMovementFlags(3, 0);
        }

        private boolean canMove(int i) {
            return !PollCreateActivity.this.onlyAdding || i - PollCreateActivity.this.answerStartRow >= PollCreateActivity.this.oldAnswersCount;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            if (viewHolder.getItemViewType() != viewHolder2.getItemViewType() || !canMove(viewHolder.getAdapterPosition()) || !canMove(viewHolder2.getAdapterPosition())) {
                return false;
            }
            PollCreateActivity.this.listAdapter.swapElements(viewHolder.getAdapterPosition(), viewHolder2.getAdapterPosition());
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
            super.onChildDraw(canvas, recyclerView, viewHolder, f, f2, i, z);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
            if (i != 0) {
                PollCreateActivity.this.listView.cancelClickRunnables(false);
                viewHolder.itemView.setPressed(true);
            }
            super.onSelectedChanged(viewHolder, i);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            super.clearView(recyclerView, viewHolder);
            viewHolder.itemView.setPressed(false);
        }
    }

    public PollCreateActivity(ChatActivity chatActivity, boolean z, Boolean bool) {
        this.todo = z;
        int i = z ? getMessagesController().todoItemsMax : getMessagesController().config.pollAnswersMax.get();
        this.maxAnswersCount = i;
        this.answers = new CharSequence[i];
        this.answersChecks = new boolean[i];
        this.parentFragment = chatActivity;
        this.isPremium = AccountInstance.getInstance(this.currentAccount).getUserConfig().isPremium();
        if (bool != null) {
            boolean zBooleanValue = bool.booleanValue();
            this.quizPoll = zBooleanValue;
            this.quizOnly = zBooleanValue ? 1 : 2;
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        updateRows();
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onBecomeFullyVisible() {
        View childAt;
        super.onBecomeFullyVisible();
        if (!this.firstRequestField || this.requestFieldFocusAtPosition < 0) {
            return;
        }
        int i = 0;
        while (true) {
            if (i >= this.listView.getChildCount()) {
                childAt = null;
                break;
            }
            childAt = this.listView.getChildAt(i);
            if (this.listView.getChildAdapterPosition(childAt) == this.requestFieldFocusAtPosition) {
                break;
            } else {
                i++;
            }
        }
        if (childAt instanceof PollEditTextCell) {
            final EditTextBoldCursor textView = ((PollEditTextCell) childAt).getTextView();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PollCreateActivity$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    PollCreateActivity.$r8$lambda$EdmxrXuzb7SBQM9xD_eK2M4liAs(textView);
                }
            }, 300L);
            this.requestFieldFocusAtPosition = -1;
        }
        this.firstRequestField = false;
    }

    public static /* synthetic */ void $r8$lambda$EdmxrXuzb7SBQM9xD_eK2M4liAs(EditTextBoldCursor editTextBoldCursor) {
        editTextBoldCursor.requestFocus();
        AndroidUtilities.showKeyboard(editTextBoldCursor);
    }

    public void setEditing(TLRPC.MessageMedia messageMedia, boolean z) {
        setEditing(messageMedia, z, -1);
    }

    public void setEditing(TLRPC.MessageMedia messageMedia, boolean z, int i) {
        int i2;
        TLRPC.TodoList todoList;
        this.editing = messageMedia;
        this.onlyAdding = z;
        if (messageMedia instanceof TLRPC.TL_messageMediaToDo) {
            TLRPC.TL_messageMediaToDo tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) messageMedia;
            TextPaint textPaint = new TextPaint(1);
            textPaint.setTextSize(AndroidUtilities.dp(16.0f));
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(tL_messageMediaToDo.todo.title.text);
            this.questionString = spannableStringBuilder;
            CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(spannableStringBuilder, textPaint.getFontMetricsInt(), false);
            this.questionString = charSequenceReplaceEmoji;
            Spannable spannableReplaceAnimatedEmoji = MessageObject.replaceAnimatedEmoji(charSequenceReplaceEmoji, tL_messageMediaToDo.todo.title.entities, textPaint.getFontMetricsInt());
            this.questionString = spannableReplaceAnimatedEmoji;
            MessageObject.addEntitiesToText(spannableReplaceAnimatedEmoji, tL_messageMediaToDo.todo.title.entities, false, false, false, false);
            int size = tL_messageMediaToDo.todo.list.size();
            this.answersCount = size;
            this.oldAnswersCount = size;
            this.maxAnswerId = 0;
            this.answerIds = new int[size];
            int i3 = 0;
            while (true) {
                i2 = this.answersCount;
                todoList = tL_messageMediaToDo.todo;
                if (i3 >= i2) {
                    break;
                }
                TLRPC.TL_textWithEntities tL_textWithEntities = todoList.list.get(i3).title;
                this.answers[i3] = new SpannableStringBuilder(tL_textWithEntities.text);
                CharSequence[] charSequenceArr = this.answers;
                charSequenceArr[i3] = Emoji.replaceEmoji(charSequenceArr[i3], textPaint.getFontMetricsInt(), false);
                CharSequence[] charSequenceArr2 = this.answers;
                charSequenceArr2[i3] = MessageObject.replaceAnimatedEmoji(charSequenceArr2[i3], tL_textWithEntities.entities, textPaint.getFontMetricsInt());
                MessageObject.addEntitiesToText(this.answers[i3], tL_textWithEntities.entities, false, false, false, false);
                this.answerIds[i3] = tL_messageMediaToDo.todo.list.get(i3).id;
                this.maxAnswerId = Math.max(this.maxAnswerId, this.answerIds[i3]);
                i3++;
            }
            this.allowMarking = todoList.others_can_complete;
            this.allowAdding = todoList.others_can_append;
            if (this.onlyAdding) {
                this.answersCount = i2 + 1;
                updateRows();
                this.firstRequestField = true;
                int i4 = this.answerStartRow;
                if (i < 0) {
                    i = this.answersCount - 1;
                }
                this.requestFieldFocusAtPosition = i4 + i;
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        String upperCase;
        this.actionBar.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
        ActionBar actionBar = this.actionBar;
        int i = Theme.key_windowBackgroundWhiteBlackText;
        actionBar.setItemsColor(getThemedColor(i), false);
        this.actionBar.setItemsColor(getThemedColor(i), true);
        this.actionBar.setItemsBackgroundColor(getThemedColor(Theme.key_actionBarActionModeDefaultSelector), false);
        this.actionBar.setTitleColor(getThemedColor(i));
        this.actionBar.setBackButtonImage(C2573R.drawable.ic_ab_back);
        if (this.todo) {
            this.actionBar.setTitle(LocaleController.getString(this.onlyAdding ? C2573R.string.TodoAddTasksTitle : C2573R.string.TodoEditTitle));
        } else {
            int i2 = this.quizOnly;
            ActionBar actionBar2 = this.actionBar;
            if (i2 == 1) {
                actionBar2.setTitle(LocaleController.getString(C2573R.string.NewQuiz));
            } else {
                actionBar2.setTitle(LocaleController.getString(C2573R.string.NewPoll));
            }
        }
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null && iNavigationLayout.isLayersLayout()) {
            this.actionBar.setOccupyStatusBar(false);
        }
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new C54102());
        ActionBarMenu actionBarMenuCreateMenu = this.actionBar.createMenu();
        if (this.todo) {
            upperCase = LocaleController.getString(this.onlyAdding ? C2573R.string.TodoAddTasksButton : C2573R.string.TodoEditTasksButton);
        } else {
            upperCase = LocaleController.getString(C2573R.string.Create).toUpperCase();
        }
        this.doneItem = actionBarMenuCreateMenu.addItem(1, upperCase);
        this.listAdapter = new ListAdapter(context);
        SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.PollCreateActivity.3
            private boolean ignoreLayout;

            @Override // android.widget.FrameLayout, android.view.View
            public void onMeasure(int i3, int i4) {
                int size = View.MeasureSpec.getSize(i3);
                int size2 = View.MeasureSpec.getSize(i4);
                setMeasuredDimension(size, size2);
                int paddingTop = size2 - getPaddingTop();
                measureChildWithMargins(((BaseFragment) PollCreateActivity.this).actionBar, i3, 0, i4, 0);
                int iMeasureKeyboardHeight = measureKeyboardHeight();
                if (iMeasureKeyboardHeight > AndroidUtilities.dp(20.0f)) {
                    PollCreateActivity pollCreateActivity = PollCreateActivity.this;
                    if (!pollCreateActivity.emojiViewVisible && !pollCreateActivity.isEmojiSearchOpened) {
                        this.ignoreLayout = true;
                        pollCreateActivity.hideEmojiView();
                        this.ignoreLayout = false;
                    }
                }
                int emojiPadding = (iMeasureKeyboardHeight > AndroidUtilities.dp(20.0f) || AndroidUtilities.isInMultiwindow || AndroidUtilities.isTablet()) ? 0 : PollCreateActivity.this.getEmojiPadding();
                if (iMeasureKeyboardHeight > AndroidUtilities.dp(20.0f) && PollCreateActivity.this.isEmojiSearchOpened) {
                    emojiPadding = AndroidUtilities.dp(120.0f);
                }
                int i5 = emojiPadding;
                int childCount = getChildCount();
                for (int i6 = 0; i6 < childCount; i6++) {
                    View childAt = getChildAt(i6);
                    if (childAt != null && childAt.getVisibility() != 8 && childAt != ((BaseFragment) PollCreateActivity.this).actionBar) {
                        if (PollCreateActivity.this.emojiView != null && PollCreateActivity.this.emojiView == childAt) {
                            if (AndroidUtilities.isInMultiwindow || AndroidUtilities.isTablet()) {
                                if (AndroidUtilities.isTablet()) {
                                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.dp(AndroidUtilities.isTablet() ? 200.0f : 320.0f), (paddingTop - AndroidUtilities.statusBarHeight) + getPaddingTop()), TLObject.FLAG_30));
                                } else {
                                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((paddingTop - AndroidUtilities.statusBarHeight) + getPaddingTop(), TLObject.FLAG_30));
                                }
                            } else {
                                childAt.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(childAt.getLayoutParams().height, TLObject.FLAG_30));
                            }
                        } else if (PollCreateActivity.this.listView == childAt) {
                            childAt.measure(i3, View.MeasureSpec.makeMeasureSpec(paddingTop - i5, TLObject.FLAG_30));
                        } else {
                            measureChildWithMargins(childAt, i3, 0, i4, 0);
                        }
                    }
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:28:0x006d  */
            /* JADX WARN: Removed duplicated region for block: B:36:0x0089  */
            /* JADX WARN: Removed duplicated region for block: B:39:0x009d  */
            /* JADX WARN: Removed duplicated region for block: B:43:0x00ab  */
            /* JADX WARN: Removed duplicated region for block: B:45:0x00b5  */
            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onLayout(boolean z, int i3, int i4, int i5, int i6) {
                int i7;
                int i8;
                int i9;
                int i10;
                int i11;
                int paddingTop;
                int measuredHeight;
                int measuredHeight2;
                int childCount = getChildCount();
                int iMeasureKeyboardHeight = measureKeyboardHeight();
                int emojiPadding = (iMeasureKeyboardHeight > AndroidUtilities.dp(20.0f) || AndroidUtilities.isInMultiwindow || AndroidUtilities.isTablet()) ? 0 : PollCreateActivity.this.getEmojiPadding();
                setBottomClip(emojiPadding);
                for (int i12 = 0; i12 < childCount; i12++) {
                    View childAt = getChildAt(i12);
                    if (childAt.getVisibility() != 8) {
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                        int measuredWidth = childAt.getMeasuredWidth();
                        int measuredHeight3 = childAt.getMeasuredHeight();
                        int i13 = layoutParams.gravity;
                        if (i13 == -1) {
                            i13 = 51;
                        }
                        int i14 = i13 & 112;
                        int i15 = i13 & 7;
                        if (i15 == 1) {
                            i7 = (((i5 - i3) - measuredWidth) / 2) + layoutParams.leftMargin;
                            i8 = layoutParams.rightMargin;
                        } else if (i15 == 5) {
                            i7 = i5 - measuredWidth;
                            i8 = layoutParams.rightMargin;
                        } else {
                            i9 = layoutParams.leftMargin;
                            if (i14 != 16) {
                                i10 = ((((i6 - emojiPadding) - i4) - measuredHeight3) / 2) + layoutParams.topMargin;
                                i11 = layoutParams.bottomMargin;
                            } else {
                                if (i14 == 48) {
                                    paddingTop = layoutParams.topMargin + getPaddingTop();
                                } else if (i14 == 80) {
                                    i10 = ((i6 - emojiPadding) - i4) - measuredHeight3;
                                    i11 = layoutParams.bottomMargin;
                                } else {
                                    paddingTop = layoutParams.topMargin;
                                }
                                if (PollCreateActivity.this.emojiView != null && PollCreateActivity.this.emojiView == childAt) {
                                    if (!AndroidUtilities.isTablet()) {
                                        measuredHeight = getMeasuredHeight();
                                        measuredHeight2 = childAt.getMeasuredHeight();
                                    } else {
                                        measuredHeight = getMeasuredHeight() + iMeasureKeyboardHeight;
                                        measuredHeight2 = childAt.getMeasuredHeight();
                                    }
                                    paddingTop = measuredHeight - measuredHeight2;
                                }
                                childAt.layout(i9, paddingTop, measuredWidth + i9, measuredHeight3 + paddingTop);
                            }
                            paddingTop = i10 - i11;
                            if (PollCreateActivity.this.emojiView != null) {
                                if (!AndroidUtilities.isTablet()) {
                                }
                                paddingTop = measuredHeight - measuredHeight2;
                            }
                            childAt.layout(i9, paddingTop, measuredWidth + i9, measuredHeight3 + paddingTop);
                        }
                        i9 = i7 - i8;
                        if (i14 != 16) {
                        }
                        paddingTop = i10 - i11;
                        if (PollCreateActivity.this.emojiView != null) {
                        }
                        childAt.layout(i9, paddingTop, measuredWidth + i9, measuredHeight3 + paddingTop);
                    }
                }
                notifyHeightChanged();
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        this.sizeNotifierFrameLayout = sizeNotifierFrameLayout;
        sizeNotifierFrameLayout.setDelegate(this);
        SizeNotifierFrameLayout sizeNotifierFrameLayout2 = this.sizeNotifierFrameLayout;
        this.fragmentView = sizeNotifierFrameLayout2;
        sizeNotifierFrameLayout2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        FrameLayout frameLayout = (FrameLayout) this.fragmentView;
        this.listView = new RecyclerListView(context) { // from class: org.telegram.ui.PollCreateActivity.4
            @Override // androidx.recyclerview.widget.RecyclerView
            public void requestChildOnScreen(View view, View view2) {
                if (view instanceof PollEditTextCell) {
                    super.requestChildOnScreen(view, view2);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.ViewParent
            public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
                rect.bottom += AndroidUtilities.dp(60.0f);
                return super.requestChildRectangleOnScreen(view, rect, z);
            }
        };
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDurations(350L);
        this.listView.setItemAnimator(defaultItemAnimator);
        this.listView.setVerticalScrollBarEnabled(false);
        ((DefaultItemAnimator) this.listView.getItemAnimator()).setDelayAnimations(false);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 1, false);
        this.layoutManager = linearLayoutManager;
        this.listView.setLayoutManager(linearLayoutManager);
        new ItemTouchHelper(new TouchHelperCallback()).attachToRecyclerView(this.listView);
        frameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1, 51));
        this.listView.setAdapter(this.listAdapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.PollCreateActivity$$ExternalSyntheticLambda5
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i3) {
                this.f$0.lambda$createView$1(view, i3);
            }
        });
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.PollCreateActivity.5
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i3) {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                if (i4 != 0 && PollCreateActivity.this.hintView != null) {
                    PollCreateActivity.this.hintView.hide();
                }
                if (PollCreateActivity.this.suggestEmojiPanel == null || !PollCreateActivity.this.suggestEmojiPanel.isShown()) {
                    return;
                }
                SuggestEmojiView.AnchorViewDelegate delegate = PollCreateActivity.this.suggestEmojiPanel.getDelegate();
                boolean z = delegate instanceof PollEditTextCell;
                PollCreateActivity pollCreateActivity = PollCreateActivity.this;
                if (z) {
                    RecyclerView.ViewHolder viewHolderFindContainingViewHolder = pollCreateActivity.listView.findContainingViewHolder((PollEditTextCell) delegate);
                    PollCreateActivity pollCreateActivity2 = PollCreateActivity.this;
                    if (viewHolderFindContainingViewHolder != null) {
                        int direction = pollCreateActivity2.suggestEmojiPanel.getDirection();
                        PollCreateActivity pollCreateActivity3 = PollCreateActivity.this;
                        if (direction == 0) {
                            pollCreateActivity3.suggestEmojiPanel.setTranslationY((viewHolderFindContainingViewHolder.itemView.getY() - AndroidUtilities.dp(166.0f)) + viewHolderFindContainingViewHolder.itemView.getMeasuredHeight());
                        } else {
                            pollCreateActivity3.suggestEmojiPanel.setTranslationY(viewHolderFindContainingViewHolder.itemView.getY());
                        }
                        if (PollCreateActivity.this.layoutManager.isViewPartiallyVisible(viewHolderFindContainingViewHolder.itemView, true, true)) {
                            return;
                        }
                        PollCreateActivity.this.suggestEmojiPanel.forceClose();
                        return;
                    }
                    pollCreateActivity2.suggestEmojiPanel.forceClose();
                    return;
                }
                pollCreateActivity.suggestEmojiPanel.forceClose();
            }
        });
        HintView hintView = new HintView(context, 4);
        this.hintView = hintView;
        hintView.setText(LocaleController.getString(C2573R.string.PollTapToSelect));
        this.hintView.setAlpha(0.0f);
        this.hintView.setVisibility(4);
        frameLayout.addView(this.hintView, LayoutHelper.createFrame(-2, -2.0f, 51, 19.0f, 0.0f, 19.0f, 0.0f));
        if (this.isPremium) {
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
            SuggestEmojiView suggestEmojiView = new SuggestEmojiView(context, this.currentAccount, null, this.resourceProvider);
            this.suggestEmojiPanel = suggestEmojiView;
            suggestEmojiView.forbidCopy();
            this.suggestEmojiPanel.forbidSetAsStatus();
            this.suggestEmojiPanel.setHorizontalPadding(AndroidUtilities.dp(24.0f));
            frameLayout.addView(this.suggestEmojiPanel, LayoutHelper.createFrame(-2, 160, 51));
        }
        this.keyboardNotifier = new KeyboardNotifier(this.sizeNotifierFrameLayout, null);
        checkDoneButton();
        return this.fragmentView;
    }

    /* JADX INFO: renamed from: org.telegram.ui.PollCreateActivity$2 */
    public class C54102 extends ActionBar.ActionBarMenuOnItemClick {
        public C54102() {
        }

        @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
        public void onItemClick(int i) {
            int iMax;
            PollCreateActivity pollCreateActivity;
            if (i == -1) {
                if (PollCreateActivity.this.checkDiscard(true)) {
                    PollCreateActivity.this.finishFragment();
                    return;
                }
                return;
            }
            if (i == 1) {
                boolean z = PollCreateActivity.this.todo;
                PollCreateActivity pollCreateActivity2 = PollCreateActivity.this;
                if (z) {
                    CharSequence[] charSequenceArr = {ChatAttachAlertPollLayout.getFixedString(pollCreateActivity2.questionString)};
                    ArrayList<TLRPC.MessageEntity> entities = MediaDataController.getInstance(((BaseFragment) PollCreateActivity.this).currentAccount).getEntities(charSequenceArr, true);
                    CharSequence charSequence = charSequenceArr[0];
                    int size = entities.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        TLRPC.MessageEntity messageEntity = entities.get(i2);
                        if (messageEntity.offset + messageEntity.length > charSequence.length()) {
                            messageEntity.length = charSequence.length() - messageEntity.offset;
                        }
                    }
                    final TLRPC.TL_messageMediaToDo tL_messageMediaToDo = new TLRPC.TL_messageMediaToDo();
                    TLRPC.TodoList todoList = new TLRPC.TodoList();
                    tL_messageMediaToDo.todo = todoList;
                    todoList.others_can_append = PollCreateActivity.this.allowAdding;
                    tL_messageMediaToDo.todo.others_can_complete = PollCreateActivity.this.allowMarking;
                    tL_messageMediaToDo.todo.title = new TLRPC.TL_textWithEntities();
                    tL_messageMediaToDo.todo.title.text = charSequence.toString();
                    tL_messageMediaToDo.todo.title.entities = entities;
                    if (PollCreateActivity.this.answerIds != null) {
                        iMax = 0;
                        for (int i3 = 0; i3 < PollCreateActivity.this.answerIds.length; i3++) {
                            iMax = Math.max(iMax, PollCreateActivity.this.answerIds[i3]);
                        }
                    } else {
                        iMax = 0;
                    }
                    int i4 = 0;
                    while (true) {
                        int length = PollCreateActivity.this.answers.length;
                        pollCreateActivity = PollCreateActivity.this;
                        if (i4 >= length) {
                            break;
                        }
                        if (!TextUtils.isEmpty(ChatAttachAlertPollLayout.getFixedString(pollCreateActivity.answers[i4]))) {
                            CharSequence[] charSequenceArr2 = {ChatAttachAlertPollLayout.getFixedString(PollCreateActivity.this.answers[i4])};
                            ArrayList<TLRPC.MessageEntity> entities2 = MediaDataController.getInstance(((BaseFragment) PollCreateActivity.this).currentAccount).getEntities(charSequenceArr2, true);
                            CharSequence charSequence2 = charSequenceArr2[0];
                            int size2 = entities2.size();
                            for (int i5 = 0; i5 < size2; i5++) {
                                TLRPC.MessageEntity messageEntity2 = entities2.get(i5);
                                if (messageEntity2.offset + messageEntity2.length > charSequence2.length()) {
                                    messageEntity2.length = charSequence2.length() - messageEntity2.offset;
                                }
                            }
                            TLRPC.TodoItem todoItem = new TLRPC.TodoItem();
                            TLRPC.TL_textWithEntities tL_textWithEntities = new TLRPC.TL_textWithEntities();
                            todoItem.title = tL_textWithEntities;
                            tL_textWithEntities.text = charSequence2.toString();
                            todoItem.title.entities = entities2;
                            if (PollCreateActivity.this.answerIds != null && i4 < PollCreateActivity.this.answerIds.length) {
                                todoItem.id = PollCreateActivity.this.answerIds[i4];
                            } else {
                                iMax++;
                                todoItem.id = iMax;
                            }
                            tL_messageMediaToDo.todo.list.add(todoItem);
                        }
                        i4++;
                    }
                    boolean zIsInScheduleMode = pollCreateActivity.parentFragment.isInScheduleMode();
                    PollCreateActivity pollCreateActivity3 = PollCreateActivity.this;
                    if (zIsInScheduleMode) {
                        AlertsCreator.createScheduleDatePickerDialog(pollCreateActivity3.parentFragment.getParentActivity(), PollCreateActivity.this.parentFragment.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.PollCreateActivity$2$$ExternalSyntheticLambda0
                            @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                            public final void didSelectDate(boolean z2, int i6, int i7) {
                                this.f$0.lambda$onItemClick$0(tL_messageMediaToDo, z2, i6, i7);
                            }
                        });
                        return;
                    } else {
                        pollCreateActivity3.delegate.sendPoll(tL_messageMediaToDo, null, true, 0);
                        PollCreateActivity.this.finishFragment();
                        return;
                    }
                }
                if (pollCreateActivity2.quizPoll && PollCreateActivity.this.doneItem.getAlpha() != 1.0f) {
                    int i6 = 0;
                    for (int i7 = 0; i7 < PollCreateActivity.this.answersChecks.length; i7++) {
                        if (!TextUtils.isEmpty(ChatAttachAlertPollLayout.getFixedString(PollCreateActivity.this.answers[i7])) && PollCreateActivity.this.answersChecks[i7]) {
                            i6++;
                        }
                    }
                    if (i6 <= 0) {
                        PollCreateActivity.this.showQuizHint();
                        return;
                    }
                    return;
                }
                CharSequence[] charSequenceArr3 = {ChatAttachAlertPollLayout.getFixedString(PollCreateActivity.this.questionString)};
                ArrayList<TLRPC.MessageEntity> entities3 = MediaDataController.getInstance(((BaseFragment) PollCreateActivity.this).currentAccount).getEntities(charSequenceArr3, true);
                CharSequence charSequence3 = charSequenceArr3[0];
                int size3 = entities3.size();
                for (int i8 = 0; i8 < size3; i8++) {
                    TLRPC.MessageEntity messageEntity3 = entities3.get(i8);
                    if (messageEntity3.offset + messageEntity3.length > charSequence3.length()) {
                        messageEntity3.length = charSequence3.length() - messageEntity3.offset;
                    }
                }
                final TLRPC.TL_messageMediaPoll tL_messageMediaPoll = new TLRPC.TL_messageMediaPoll();
                TLRPC.TL_poll tL_poll = new TLRPC.TL_poll();
                tL_messageMediaPoll.poll = tL_poll;
                tL_poll.multiple_choice = PollCreateActivity.this.multipleChoise;
                tL_messageMediaPoll.poll.quiz = PollCreateActivity.this.quizPoll;
                tL_messageMediaPoll.poll.public_voters = !PollCreateActivity.this.anonymousPoll;
                tL_messageMediaPoll.poll.question = new TLRPC.TL_textWithEntities();
                tL_messageMediaPoll.poll.question.text = charSequence3.toString();
                tL_messageMediaPoll.poll.question.entities = entities3;
                final ArrayList<Integer> arrayList = new ArrayList<>(PollCreateActivity.this.maxAnswersCount);
                for (int i9 = 0; i9 < PollCreateActivity.this.answers.length; i9++) {
                    if (!TextUtils.isEmpty(ChatAttachAlertPollLayout.getFixedString(PollCreateActivity.this.answers[i9]))) {
                        CharSequence[] charSequenceArr4 = {ChatAttachAlertPollLayout.getFixedString(PollCreateActivity.this.answers[i9])};
                        ArrayList<TLRPC.MessageEntity> entities4 = MediaDataController.getInstance(((BaseFragment) PollCreateActivity.this).currentAccount).getEntities(charSequenceArr4, true);
                        CharSequence charSequence4 = charSequenceArr4[0];
                        int size4 = entities4.size();
                        for (int i10 = 0; i10 < size4; i10++) {
                            TLRPC.MessageEntity messageEntity4 = entities4.get(i10);
                            if (messageEntity4.offset + messageEntity4.length > charSequence4.length()) {
                                messageEntity4.length = charSequence4.length() - messageEntity4.offset;
                            }
                        }
                        TLRPC.TL_pollAnswer tL_pollAnswer = new TLRPC.TL_pollAnswer();
                        TLRPC.TL_textWithEntities tL_textWithEntities2 = new TLRPC.TL_textWithEntities();
                        tL_pollAnswer.text = tL_textWithEntities2;
                        tL_textWithEntities2.text = charSequence4.toString();
                        tL_pollAnswer.text.entities = entities4;
                        tL_pollAnswer.option = new byte[]{(byte) (tL_messageMediaPoll.poll.answers.size() + 48)};
                        if ((PollCreateActivity.this.multipleChoise || PollCreateActivity.this.quizPoll) && PollCreateActivity.this.answersChecks[i9]) {
                            arrayList.add(Integer.valueOf(tL_messageMediaPoll.poll.answers.size()));
                        }
                        tL_messageMediaPoll.poll.answers.add(tL_pollAnswer);
                    }
                }
                tL_messageMediaPoll.results = new TLRPC.TL_pollResults();
                CharSequence fixedString = ChatAttachAlertPollLayout.getFixedString(PollCreateActivity.this.solutionString);
                if (fixedString != null) {
                    tL_messageMediaPoll.results.solution = fixedString.toString();
                    ArrayList<TLRPC.MessageEntity> entities5 = MediaDataController.getInstance(((BaseFragment) PollCreateActivity.this).currentAccount).getEntities(new CharSequence[]{fixedString}, true);
                    if (entities5 != null && !entities5.isEmpty()) {
                        tL_messageMediaPoll.results.solution_entities = entities5;
                    }
                    if (!TextUtils.isEmpty(tL_messageMediaPoll.results.solution)) {
                        tL_messageMediaPoll.results.flags |= 16;
                    }
                }
                boolean zIsInScheduleMode2 = PollCreateActivity.this.parentFragment.isInScheduleMode();
                PollCreateActivity pollCreateActivity4 = PollCreateActivity.this;
                if (zIsInScheduleMode2) {
                    AlertsCreator.createScheduleDatePickerDialog(pollCreateActivity4.parentFragment.getParentActivity(), PollCreateActivity.this.parentFragment.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.PollCreateActivity$2$$ExternalSyntheticLambda1
                        @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                        public final void didSelectDate(boolean z2, int i11, int i12) {
                            this.f$0.lambda$onItemClick$1(tL_messageMediaPoll, arrayList, z2, i11, i12);
                        }
                    });
                } else {
                    pollCreateActivity4.delegate.sendPoll(tL_messageMediaPoll, arrayList, true, 0);
                    PollCreateActivity.this.finishFragment();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0(TLRPC.TL_messageMediaToDo tL_messageMediaToDo, boolean z, int i, int i2) {
            PollCreateActivity.this.delegate.sendPoll(tL_messageMediaToDo, null, z, i);
            PollCreateActivity.this.finishFragment();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$1(TLRPC.TL_messageMediaPoll tL_messageMediaPoll, ArrayList arrayList, boolean z, int i, int i2) {
            PollCreateActivity.this.delegate.sendPoll(tL_messageMediaPoll, arrayList, z, i);
            PollCreateActivity.this.finishFragment();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view, int i) {
        boolean z;
        if (i == this.addAnswerRow) {
            addNewField();
            return;
        }
        if (view instanceof TextCheckCell) {
            TextCheckCell textCheckCell = (TextCheckCell) view;
            boolean z2 = this.quizPoll;
            SuggestEmojiView suggestEmojiView = this.suggestEmojiPanel;
            if (suggestEmojiView != null) {
                suggestEmojiView.forceClose();
            }
            if (this.onlyAdding) {
                int i2 = -this.shiftDp;
                this.shiftDp = i2;
                AndroidUtilities.shakeViewSpring(textCheckCell, i2);
                BotWebViewVibrationEffect.APP_ERROR.vibrate();
                return;
            }
            if (i == this.anonymousRow) {
                z = !this.anonymousPoll;
                this.anonymousPoll = z;
            } else {
                int i3 = this.allowAddingRow;
                if (i == i3) {
                    z = !this.allowAdding;
                    this.allowAdding = z;
                } else if (i == this.allowMarkingRow) {
                    boolean z3 = !this.allowMarking;
                    this.allowMarking = z3;
                    updateRows();
                    int i4 = this.allowAddingRow;
                    if (i4 >= 0 && i3 < 0) {
                        this.listAdapter.notifyItemInserted(i4);
                    } else if (i3 >= 0 && i4 < 0) {
                        this.listAdapter.notifyItemRemoved(i3);
                    }
                    z = z3;
                } else if (i == this.multipleRow) {
                    boolean z4 = this.multipleChoise;
                    boolean z5 = !z4;
                    this.multipleChoise = z5;
                    if (!z4 && this.quizPoll) {
                        int i5 = this.solutionRow;
                        this.quizPoll = false;
                        updateRows();
                        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = this.listView.findViewHolderForAdapterPosition(this.quizRow);
                        if (viewHolderFindViewHolderForAdapterPosition != null) {
                            ((TextCheckCell) viewHolderFindViewHolderForAdapterPosition.itemView).setChecked(false);
                        } else {
                            this.listAdapter.notifyItemChanged(this.quizRow);
                        }
                        this.listAdapter.notifyItemRangeRemoved(i5, 2);
                    }
                    z = z5;
                } else {
                    if (this.quizOnly != 0) {
                        return;
                    }
                    z = !this.quizPoll;
                    this.quizPoll = z;
                    int i6 = this.solutionRow;
                    updateRows();
                    boolean z6 = this.quizPoll;
                    ListAdapter listAdapter = this.listAdapter;
                    if (z6) {
                        listAdapter.notifyItemRangeInserted(this.solutionRow, 2);
                    } else {
                        listAdapter.notifyItemRangeRemoved(i6, 2);
                    }
                    if (this.quizPoll && this.multipleChoise) {
                        this.multipleChoise = false;
                        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition2 = this.listView.findViewHolderForAdapterPosition(this.multipleRow);
                        if (viewHolderFindViewHolderForAdapterPosition2 != null) {
                            ((TextCheckCell) viewHolderFindViewHolderForAdapterPosition2.itemView).setChecked(false);
                        } else {
                            this.listAdapter.notifyItemChanged(this.multipleRow);
                        }
                    }
                    if (this.quizPoll) {
                        int i7 = 0;
                        boolean z7 = false;
                        while (true) {
                            boolean[] zArr = this.answersChecks;
                            if (i7 >= zArr.length) {
                                break;
                            }
                            if (z7) {
                                zArr[i7] = false;
                            } else if (zArr[i7]) {
                                z7 = true;
                            }
                            i7++;
                        }
                    }
                }
            }
            if (this.hintShowed && !this.quizPoll) {
                this.hintView.hide();
            }
            this.listView.getChildCount();
            for (int i8 = this.answerStartRow; i8 < this.answerStartRow + this.answersCount; i8++) {
                RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition3 = this.listView.findViewHolderForAdapterPosition(i8);
                if (viewHolderFindViewHolderForAdapterPosition3 != null) {
                    View view2 = viewHolderFindViewHolderForAdapterPosition3.itemView;
                    if (view2 instanceof PollEditTextCell) {
                        PollEditTextCell pollEditTextCell = (PollEditTextCell) view2;
                        pollEditTextCell.setShowCheckBox(this.quizPoll, true);
                        pollEditTextCell.setChecked(this.answersChecks[i8 - this.answerStartRow], z2);
                        if (pollEditTextCell.getTop() > AndroidUtilities.dp(40.0f) && i == this.quizRow && !this.hintShowed) {
                            this.hintView.showForView(pollEditTextCell.getCheckBox(), true);
                            this.hintShowed = true;
                        }
                    }
                }
            }
            textCheckCell.setChecked(z);
            checkDoneButton();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        if (this.isPremium) {
            hideEmojiPopup(false);
            SuggestEmojiView suggestEmojiView = this.suggestEmojiPanel;
            if (suggestEmojiView != null) {
                suggestEmojiView.forceClose();
            }
            PollEditTextCell pollEditTextCell = this.currentCell;
            if (pollEditTextCell != null) {
                pollEditTextCell.setEmojiButtonVisibility(false);
                this.currentCell.getTextView().clearFocus();
                AndroidUtilities.hideKeyboard(this.currentCell.getEditField());
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
        AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        this.destroyed = true;
        if (this.isPremium) {
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
            EmojiView emojiView = this.emojiView;
            if (emojiView != null) {
                this.sizeNotifierFrameLayout.removeView(emojiView);
            }
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.emojiLoaded) {
            EmojiView emojiView = this.emojiView;
            if (emojiView != null) {
                emojiView.invalidateViews();
            }
            PollEditTextCell pollEditTextCell = this.currentCell;
            if (pollEditTextCell != null) {
                int currentTextColor = pollEditTextCell.getEditField().getCurrentTextColor();
                this.currentCell.getEditField().setTextColor(-1);
                this.currentCell.getEditField().setTextColor(currentTextColor);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showQuizHint() {
        this.listView.getChildCount();
        for (int i = this.answerStartRow; i < this.answerStartRow + this.answersCount; i++) {
            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = this.listView.findViewHolderForAdapterPosition(i);
            if (viewHolderFindViewHolderForAdapterPosition != null) {
                View view = viewHolderFindViewHolderForAdapterPosition.itemView;
                if (view instanceof PollEditTextCell) {
                    PollEditTextCell pollEditTextCell = (PollEditTextCell) view;
                    if (pollEditTextCell.getTop() > AndroidUtilities.dp(40.0f)) {
                        this.hintView.showForView(pollEditTextCell.getCheckBox(), true);
                        return;
                    }
                } else {
                    continue;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void checkDoneButton() {
        int i;
        boolean z;
        if (this.quizPoll) {
            i = 0;
            for (int i2 = 0; i2 < this.answersChecks.length; i2++) {
                if (!TextUtils.isEmpty(ChatAttachAlertPollLayout.getFixedString(this.answers[i2])) && this.answersChecks[i2]) {
                    i++;
                }
            }
        } else {
            i = 0;
        }
        int i3 = this.todo ? getMessagesController().todoTitleLengthMax : 255;
        int i4 = this.todo ? getMessagesController().todoItemLengthMax : 100;
        if ((TextUtils.isEmpty(ChatAttachAlertPollLayout.getFixedString(this.solutionString)) || this.solutionString.length() <= 200) && !TextUtils.isEmpty(ChatAttachAlertPollLayout.getFixedString(this.questionString)) && this.questionString.length() <= i3) {
            int i5 = 0;
            int i6 = 0;
            while (true) {
                CharSequence[] charSequenceArr = this.answers;
                if (i5 >= charSequenceArr.length) {
                    break;
                }
                if (!TextUtils.isEmpty(ChatAttachAlertPollLayout.getFixedString(charSequenceArr[i5]))) {
                    if (this.answers[i5].length() > i4) {
                        i6 = 0;
                        break;
                    }
                    i6++;
                }
                i5++;
            }
            z = i6 >= (this.todo ? 1 : 2) && (!this.quizPoll || i >= 1);
        }
        this.doneItem.setEnabled((this.quizPoll && i == 0) || z);
        this.doneItem.setAlpha(z ? 1.0f : 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRows() {
        this.questionHeaderRow = -1;
        this.questionRow = -1;
        this.questionSectionRow = -1;
        this.answerHeaderRow = -1;
        this.solutionRow = -1;
        this.solutionInfoRow = -1;
        this.answerStartRow = -1;
        this.addAnswerRow = -1;
        this.anonymousRow = -1;
        this.multipleRow = -1;
        this.allowAddingRow = -1;
        this.allowMarkingRow = -1;
        this.quizRow = -1;
        this.settingsSectionRow = -1;
        this.settingsHeaderRow = -1;
        this.rowCount = 0;
        boolean z = this.todo;
        if (!z || !this.onlyAdding) {
            this.questionHeaderRow = 0;
            int i = 1 + 1;
            this.questionRow = 1;
            this.questionSectionRow = i;
            this.rowCount = i + 2;
            this.answerHeaderRow = i + 1;
        }
        int i2 = this.answersCount;
        if (i2 != 0) {
            int i3 = this.rowCount;
            this.answerStartRow = i3;
            this.rowCount = i3 + i2;
        }
        if (i2 != this.answers.length) {
            int i4 = this.rowCount;
            this.rowCount = i4 + 1;
            this.addAnswerRow = i4;
        }
        int i5 = this.rowCount;
        int i6 = i5 + 1;
        this.rowCount = i6;
        this.answerSectionRow = i5;
        if (z && this.onlyAdding) {
            return;
        }
        int i7 = i5 + 2;
        this.rowCount = i7;
        this.settingsHeaderRow = i6;
        if (z) {
            int i8 = i5 + 3;
            this.rowCount = i8;
            this.allowMarkingRow = i7;
            if (this.allowMarking) {
                this.rowCount = i5 + 4;
                this.allowAddingRow = i8;
                return;
            }
            return;
        }
        TLRPC.Chat currentChat = this.parentFragment.getCurrentChat();
        if (!ChatObject.isChannel(currentChat) || currentChat.megagroup) {
            int i9 = this.rowCount;
            this.rowCount = i9 + 1;
            this.anonymousRow = i9;
        }
        int i10 = this.quizOnly;
        if (i10 != 1) {
            int i11 = this.rowCount;
            this.rowCount = i11 + 1;
            this.multipleRow = i11;
        }
        if (i10 == 0) {
            int i12 = this.rowCount;
            this.rowCount = i12 + 1;
            this.quizRow = i12;
        }
        int i13 = this.rowCount;
        int i14 = i13 + 1;
        this.rowCount = i14;
        this.settingsSectionRow = i13;
        if (this.quizPoll) {
            this.solutionRow = i14;
            this.rowCount = i13 + 3;
            this.solutionInfoRow = i13 + 2;
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        if (!this.emojiViewVisible) {
            return checkDiscard(z);
        }
        if (!z) {
            return false;
        }
        hideEmojiPopup(true);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkDiscard(boolean z) {
        TLRPC.MessageMedia messageMedia = this.editing;
        boolean z2 = false;
        if (messageMedia instanceof TLRPC.TL_messageMediaToDo) {
            TLRPC.TodoList todoList = ((TLRPC.TL_messageMediaToDo) messageMedia).todo;
            int i = 0;
            for (int i2 = 0; i2 < Math.min(this.answersCount, this.answers.length); i2++) {
                if (!TextUtils.isEmpty(this.answers[i2])) {
                    i++;
                }
            }
            boolean z3 = (this.onlyAdding || TextUtils.equals(todoList.title.text, ChatAttachAlertPollLayout.getFixedString(this.questionString))) && i == todoList.list.size();
            if (z3) {
                for (int i3 = 0; i3 < i; i3++) {
                    if (!TextUtils.equals(this.answers[i3].toString(), todoList.list.get(i3).title.text)) {
                        break;
                    }
                }
                z2 = z3;
            } else {
                z2 = z3;
            }
        } else {
            boolean zIsEmpty = TextUtils.isEmpty(ChatAttachAlertPollLayout.getFixedString(this.questionString));
            if (zIsEmpty) {
                for (int i4 = 0; i4 < this.answersCount && (zIsEmpty = TextUtils.isEmpty(ChatAttachAlertPollLayout.getFixedString(this.answers[i4]))); i4++) {
                }
            }
            z2 = zIsEmpty;
        }
        if (z && !z2) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.getString(this.todo ? C2573R.string.CancelTodoAlertTitle : C2573R.string.CancelPollAlertTitle));
            builder.setMessage(LocaleController.getString(this.todo ? C2573R.string.CancelTodoAlertText : C2573R.string.CancelPollAlertText));
            builder.setPositiveButton(LocaleController.getString(C2573R.string.PassportDiscard), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.PollCreateActivity$$ExternalSyntheticLambda3
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i5) {
                    this.f$0.lambda$checkDiscard$2(alertDialog, i5);
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
            showDialog(builder.create());
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$2(AlertDialog alertDialog, int i) {
        finishFragment();
    }

    public void setDelegate(PollCreateActivityDelegate pollCreateActivityDelegate) {
        this.delegate = pollCreateActivityDelegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTextLeft(View view, int i) {
        int length;
        int i2;
        if (view instanceof PollEditTextCell) {
            PollEditTextCell pollEditTextCell = (PollEditTextCell) view;
            if (i == this.questionRow) {
                i2 = this.todo ? getMessagesController().todoTitleLengthMax : 255;
                CharSequence charSequence = this.questionString;
                length = i2 - (charSequence != null ? charSequence.length() : 0);
            } else if (i == this.solutionRow) {
                CharSequence charSequence2 = this.solutionString;
                i2 = 200;
                length = 200 - (charSequence2 != null ? charSequence2.length() : 0);
            } else {
                int i3 = this.answerStartRow;
                if (i < i3 || i >= this.answersCount + i3) {
                    return;
                }
                int i4 = i - i3;
                int i5 = this.todo ? getMessagesController().todoItemLengthMax : 100;
                CharSequence charSequence3 = this.answers[i4];
                length = i5 - (charSequence3 != null ? charSequence3.length() : 0);
                i2 = i5;
            }
            float f = i2;
            if (length <= f - (0.7f * f)) {
                pollEditTextCell.setText2(String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(length)));
                SimpleTextView textView2 = pollEditTextCell.getTextView2();
                int i6 = length < 0 ? Theme.key_text_RedRegular : Theme.key_windowBackgroundWhiteGrayText3;
                textView2.setTextColor(Theme.getColor(i6));
                textView2.setTag(Integer.valueOf(i6));
                return;
            }
            pollEditTextCell.setText2(_UrlKt.FRAGMENT_ENCODE_SET);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addNewField() {
        int i;
        resetSuggestEmojiPanel();
        boolean[] zArr = this.answersChecks;
        int i2 = this.answersCount;
        zArr[i2] = false;
        int i3 = i2 + 1;
        this.answersCount = i3;
        if (this.answerIds != null) {
            int[] iArr = new int[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                int[] iArr2 = this.answerIds;
                if (i4 < iArr2.length) {
                    i = iArr2[i4];
                } else {
                    i = this.maxAnswerId + 1;
                    this.maxAnswerId = i;
                }
                iArr[i4] = i;
            }
            this.answerIds = iArr;
        }
        if (this.answersCount == this.answers.length) {
            this.listAdapter.notifyItemRemoved(this.addAnswerRow);
        }
        this.listAdapter.notifyItemInserted(this.addAnswerRow);
        updateRows();
        this.firstRequestField = false;
        this.requestFieldFocusAtPosition = (this.answerStartRow + this.answersCount) - 1;
        this.listAdapter.notifyItemChanged(this.answerSectionRow);
    }

    private void updateSuggestEmojiPanelDelegate(RecyclerView.ViewHolder viewHolder) {
        SuggestEmojiView suggestEmojiView = this.suggestEmojiPanel;
        if (suggestEmojiView != null) {
            suggestEmojiView.forceClose();
            SuggestEmojiView suggestEmojiView2 = this.suggestEmojiPanel;
            if (suggestEmojiView2 == null || viewHolder == null || !(viewHolder.itemView instanceof PollEditTextCell)) {
                return;
            }
            SuggestEmojiView.AnchorViewDelegate delegate = suggestEmojiView2.getDelegate();
            View view = viewHolder.itemView;
            if (delegate != view) {
                this.suggestEmojiPanel.setDelegate((PollEditTextCell) view);
            }
        }
    }

    private void resetSuggestEmojiPanel() {
        SuggestEmojiView suggestEmojiView = this.suggestEmojiPanel;
        if (suggestEmojiView != null) {
            suggestEmojiView.setDelegate(null);
            this.suggestEmojiPanel.forceClose();
        }
    }

    @Override // org.telegram.ui.Components.SizeNotifierFrameLayout.SizeNotifierFrameLayoutDelegate
    public void onSizeChanged(int i, boolean z) {
        boolean z2;
        if (this.isPremium) {
            if (i > AndroidUtilities.dp(50.0f) && this.keyboardVisible && !AndroidUtilities.isInMultiwindow && !AndroidUtilities.isTablet()) {
                if (z) {
                    this.keyboardHeightLand = i;
                    MessagesController.getGlobalEmojiSettings().edit().putInt("kbd_height_land3", this.keyboardHeightLand).commit();
                } else {
                    this.keyboardHeight = i;
                    MessagesController.getGlobalEmojiSettings().edit().putInt("kbd_height", this.keyboardHeight).commit();
                }
            }
            if (this.emojiViewVisible) {
                int iDp = z ? this.keyboardHeightLand : this.keyboardHeight;
                if (this.isEmojiSearchOpened) {
                    iDp += AndroidUtilities.dp(120.0f);
                }
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.emojiView.getLayoutParams();
                int i2 = layoutParams.width;
                int i3 = AndroidUtilities.displaySize.x;
                if (i2 != i3 || layoutParams.height != iDp || this.wasEmojiSearchOpened != this.isEmojiSearchOpened) {
                    layoutParams.width = i3;
                    layoutParams.height = iDp;
                    this.emojiView.setLayoutParams(layoutParams);
                    this.emojiPadding = layoutParams.height;
                    this.keyboardNotifier.fire();
                    this.sizeNotifierFrameLayout.requestLayout();
                    boolean z3 = this.wasEmojiSearchOpened;
                    if (z3 != this.isEmojiSearchOpened) {
                        animateEmojiViewTranslationY(z3 ? -AndroidUtilities.dp(120.0f) : AndroidUtilities.dp(120.0f), 0.0f);
                    }
                    this.wasEmojiSearchOpened = this.isEmojiSearchOpened;
                }
            }
            if (this.lastSizeChangeValue1 == i && this.lastSizeChangeValue2 == z) {
                return;
            }
            this.lastSizeChangeValue1 = i;
            this.lastSizeChangeValue2 = z;
            boolean z4 = this.keyboardVisible;
            PollEditTextCell pollEditTextCell = this.currentCell;
            if (pollEditTextCell != null) {
                this.keyboardVisible = pollEditTextCell.getEditField().isFocused() && this.keyboardNotifier.keyboardVisible() && i > 0;
            } else {
                this.keyboardVisible = false;
            }
            if (this.keyboardVisible && this.emojiViewVisible) {
                showEmojiPopup(0);
            }
            if (this.emojiPadding != 0 && !(z2 = this.keyboardVisible) && z2 != z4 && !this.emojiViewVisible) {
                this.emojiPadding = 0;
                this.keyboardNotifier.fire();
                this.sizeNotifierFrameLayout.requestLayout();
            }
            if (this.keyboardVisible && this.waitingForKeyboardOpen) {
                this.waitingForKeyboardOpen = false;
                AndroidUtilities.cancelRunOnUIThread(this.openKeyboardRunnable);
            }
        }
    }

    private void animateEmojiViewTranslationY(final float f, final float f2) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PollCreateActivity$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$animateEmojiViewTranslationY$3(f, f2, valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PollCreateActivity.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PollCreateActivity.this.emojiView.setTranslationY(f2);
            }
        });
        valueAnimatorOfFloat.setDuration(250L);
        valueAnimatorOfFloat.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
        valueAnimatorOfFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateEmojiViewTranslationY$3(float f, float f2, ValueAnimator valueAnimator) {
        this.emojiView.setTranslationY(AndroidUtilities.lerp(f, f2, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onEmojiClicked(PollEditTextCell pollEditTextCell) {
        this.currentCell = pollEditTextCell;
        if (this.emojiViewVisible) {
            collapseSearchEmojiView();
            openKeyboardInternal();
        } else {
            showEmojiPopup(1);
        }
    }

    private void collapseSearchEmojiView() {
        if (this.isEmojiSearchOpened) {
            this.emojiView.closeSearch(false);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.emojiView.getLayoutParams();
            layoutParams.height -= AndroidUtilities.dp(120.0f);
            this.emojiView.setLayoutParams(layoutParams);
            this.emojiPadding = layoutParams.height;
            this.wasEmojiSearchOpened = this.isEmojiSearchOpened;
            this.isEmojiSearchOpened = false;
            animateEmojiViewTranslationY(-AndroidUtilities.dp(120.0f), 0.0f);
        }
    }

    private void openKeyboardInternal() {
        this.keyboardNotifier.awaitKeyboard();
        EditTextBoldCursor editField = this.currentCell.getEditField();
        editField.requestFocus();
        AndroidUtilities.showKeyboard(editField);
        showEmojiPopup(AndroidUtilities.usingHardwareInput ? 0 : 2);
        if (AndroidUtilities.usingHardwareInput || this.keyboardVisible || AndroidUtilities.isInMultiwindow || AndroidUtilities.isTablet()) {
            return;
        }
        this.waitingForKeyboardOpen = true;
        AndroidUtilities.cancelRunOnUIThread(this.openKeyboardRunnable);
        AndroidUtilities.runOnUIThread(this.openKeyboardRunnable, 100L);
    }

    private void showEmojiPopup(int i) {
        PollEditTextCell pollEditTextCell;
        if (this.isPremium) {
            if (i == 1) {
                EmojiView emojiView = this.emojiView;
                boolean z = emojiView != null && emojiView.getVisibility() == 0;
                createEmojiView();
                this.emojiView.setVisibility(0);
                this.emojiViewWasVisible = this.emojiViewVisible;
                this.emojiViewVisible = true;
                EmojiView emojiView2 = this.emojiView;
                if (this.keyboardHeight <= 0) {
                    if (AndroidUtilities.isTablet()) {
                        this.keyboardHeight = AndroidUtilities.dp(150.0f);
                    } else {
                        this.keyboardHeight = MessagesController.getGlobalEmojiSettings().getInt("kbd_height", AndroidUtilities.dp(200.0f));
                    }
                }
                if (this.keyboardHeightLand <= 0) {
                    if (AndroidUtilities.isTablet()) {
                        this.keyboardHeightLand = AndroidUtilities.dp(150.0f);
                    } else {
                        this.keyboardHeightLand = MessagesController.getGlobalEmojiSettings().getInt("kbd_height_land3", AndroidUtilities.dp(200.0f));
                    }
                }
                Point point = AndroidUtilities.displaySize;
                int i2 = point.x > point.y ? this.keyboardHeightLand : this.keyboardHeight;
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) emojiView2.getLayoutParams();
                layoutParams.height = i2;
                emojiView2.setLayoutParams(layoutParams);
                if (!AndroidUtilities.isInMultiwindow && !AndroidUtilities.isTablet() && (pollEditTextCell = this.currentCell) != null) {
                    AndroidUtilities.hideKeyboard(pollEditTextCell.getEditField());
                }
                this.emojiPadding = i2;
                this.keyboardNotifier.fire();
                this.sizeNotifierFrameLayout.requestLayout();
                ChatActivityEnterViewAnimatedIconView emojiButton = this.currentCell.getEmojiButton();
                if (emojiButton != null) {
                    emojiButton.setState(ChatActivityEnterViewAnimatedIconView.State.KEYBOARD, true);
                }
                if (z || this.keyboardVisible) {
                    return;
                }
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.emojiPadding, 0.0f);
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PollCreateActivity$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$showEmojiPopup$4(valueAnimator);
                    }
                });
                valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PollCreateActivity.7
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        PollCreateActivity.this.emojiView.setTranslationY(0.0f);
                    }
                });
                valueAnimatorOfFloat.setDuration(250L);
                valueAnimatorOfFloat.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
                valueAnimatorOfFloat.start();
                return;
            }
            ChatActivityEnterViewAnimatedIconView emojiButton2 = this.currentCell.getEmojiButton();
            if (emojiButton2 != null) {
                emojiButton2.setState(ChatActivityEnterViewAnimatedIconView.State.SMILE, true);
            }
            EmojiView emojiView3 = this.emojiView;
            if (emojiView3 != null) {
                this.emojiViewWasVisible = this.emojiViewVisible;
                this.emojiViewVisible = false;
                this.isEmojiSearchOpened = false;
                if (AndroidUtilities.usingHardwareInput || AndroidUtilities.isInMultiwindow) {
                    emojiView3.setVisibility(8);
                }
            }
            if (i == 0) {
                this.emojiPadding = 0;
            }
            this.keyboardNotifier.fire();
            this.sizeNotifierFrameLayout.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showEmojiPopup$4(ValueAnimator valueAnimator) {
        this.emojiView.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCellFocusChanges(PollEditTextCell pollEditTextCell, boolean z) {
        if (this.isPremium && z) {
            if (this.currentCell == pollEditTextCell && this.emojiViewVisible && this.isEmojiSearchOpened) {
                collapseSearchEmojiView();
                this.emojiViewVisible = false;
            }
            PollEditTextCell pollEditTextCell2 = this.currentCell;
            this.currentCell = pollEditTextCell;
            pollEditTextCell.setEmojiButtonVisibility(true);
            ChatActivityEnterViewAnimatedIconView emojiButton = pollEditTextCell.getEmojiButton();
            ChatActivityEnterViewAnimatedIconView.State state = ChatActivityEnterViewAnimatedIconView.State.SMILE;
            emojiButton.setState(state, false);
            updateSuggestEmojiPanelDelegate(this.listView.findContainingViewHolder(pollEditTextCell));
            if (pollEditTextCell2 == null || pollEditTextCell2 == pollEditTextCell) {
                return;
            }
            if (this.emojiViewVisible) {
                collapseSearchEmojiView();
                hideEmojiPopup(false);
                openKeyboardInternal();
            }
            pollEditTextCell2.setEmojiButtonVisibility(false);
            pollEditTextCell2.getEmojiButton().setState(state, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideEmojiPopup(boolean z) {
        if (this.isPremium) {
            if (this.emojiViewVisible) {
                this.emojiView.scrollEmojiToTop();
                this.emojiView.closeSearch(false);
                if (z) {
                    this.emojiView.hideSearchKeyboard();
                }
                this.isEmojiSearchOpened = false;
                showEmojiPopup(0);
            }
            if (z) {
                EmojiView emojiView = this.emojiView;
                if (emojiView != null && emojiView.getVisibility() == 0) {
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, this.emojiView.getMeasuredHeight());
                    valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PollCreateActivity$$ExternalSyntheticLambda1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.f$0.lambda$hideEmojiPopup$5(valueAnimator);
                        }
                    });
                    this.isAnimatePopupClosing = true;
                    valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PollCreateActivity.8
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            PollCreateActivity.this.isAnimatePopupClosing = false;
                            PollCreateActivity.this.emojiView.setTranslationY(0.0f);
                            PollCreateActivity.this.hideEmojiView();
                        }
                    });
                    valueAnimatorOfFloat.setDuration(250L);
                    valueAnimatorOfFloat.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
                    valueAnimatorOfFloat.start();
                    return;
                }
                hideEmojiView();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideEmojiPopup$5(ValueAnimator valueAnimator) {
        this.emojiView.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public void hideEmojiView() {
        EmojiView emojiView;
        ChatActivityEnterViewAnimatedIconView emojiButton;
        if (!this.emojiViewVisible && (emojiView = this.emojiView) != null && emojiView.getVisibility() != 8) {
            PollEditTextCell pollEditTextCell = this.currentCell;
            if (pollEditTextCell != null && (emojiButton = pollEditTextCell.getEmojiButton()) != null) {
                emojiButton.setState(ChatActivityEnterViewAnimatedIconView.State.SMILE, false);
            }
            this.emojiView.setVisibility(8);
        }
        int i = this.emojiPadding;
        this.emojiPadding = 0;
        if (i != 0) {
            this.keyboardNotifier.fire();
        }
    }

    public int getEmojiPadding() {
        return this.emojiPadding;
    }

    private void createEmojiView() {
        EmojiView emojiView = this.emojiView;
        if (emojiView != null && emojiView.currentAccount != UserConfig.selectedAccount) {
            this.sizeNotifierFrameLayout.removeView(emojiView);
            this.emojiView = null;
        }
        if (this.emojiView != null) {
            return;
        }
        EmojiView emojiView2 = new EmojiView(null, true, false, false, getContext(), true, null, null, true, this.resourceProvider, false);
        this.emojiView = emojiView2;
        emojiView2.fixBottomTabContainerTranslation = false;
        emojiView2.allowEmojisForNonPremium(false);
        this.emojiView.setVisibility(8);
        if (AndroidUtilities.isTablet()) {
            this.emojiView.setForseMultiwindowLayout(true);
        }
        this.emojiView.setDelegate(new C54179());
        this.sizeNotifierFrameLayout.addView(this.emojiView);
    }

    /* JADX INFO: renamed from: org.telegram.ui.PollCreateActivity$9 */
    public class C54179 implements EmojiView.EmojiViewDelegate {
        public C54179() {
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public boolean onBackspace() {
            EditTextBoldCursor editField = PollCreateActivity.this.currentCell.getEditField();
            if (editField == null) {
                return false;
            }
            editField.dispatchKeyEvent(new KeyEvent(0, 67));
            return true;
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onEmojiSelected(String str) {
            EditTextBoldCursor editField = PollCreateActivity.this.currentCell.getEditField();
            if (editField == null) {
                return;
            }
            int selectionEnd = editField.getSelectionEnd();
            if (selectionEnd < 0) {
                selectionEnd = 0;
            }
            try {
                CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(str, editField.getPaint().getFontMetricsInt(), false);
                editField.setText(editField.getText().insert(selectionEnd, charSequenceReplaceEmoji));
                int length = selectionEnd + charSequenceReplaceEmoji.length();
                editField.setSelection(length, length);
            } catch (Exception e) {
                FileLog.m898e(e);
            }
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onCustomEmojiSelected(long j, TLRPC.Document document, String str, boolean z) {
            AnimatedEmojiSpan animatedEmojiSpan;
            EditTextBoldCursor editField = PollCreateActivity.this.currentCell.getEditField();
            if (editField == null) {
                return;
            }
            int selectionEnd = editField.getSelectionEnd();
            if (selectionEnd < 0) {
                selectionEnd = 0;
            }
            try {
                SpannableString spannableString = new SpannableString(str);
                if (document != null) {
                    animatedEmojiSpan = new AnimatedEmojiSpan(document, editField.getPaint().getFontMetricsInt());
                } else {
                    animatedEmojiSpan = new AnimatedEmojiSpan(j, editField.getPaint().getFontMetricsInt());
                }
                animatedEmojiSpan.cacheType = PollCreateActivity.this.emojiView.emojiCacheType;
                spannableString.setSpan(animatedEmojiSpan, 0, spannableString.length(), 33);
                editField.setText(editField.getText().insert(selectionEnd, spannableString));
                int length = selectionEnd + spannableString.length();
                editField.setSelection(length, length);
            } catch (Exception e) {
                FileLog.m898e(e);
            }
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onClearEmojiRecent() {
            AlertDialog.Builder builder = new AlertDialog.Builder(PollCreateActivity.this.getContext(), ((BaseFragment) PollCreateActivity.this).resourceProvider);
            builder.setTitle(LocaleController.getString(C2573R.string.ClearRecentEmojiTitle));
            builder.setMessage(LocaleController.getString(C2573R.string.ClearRecentEmojiText));
            builder.setPositiveButton(LocaleController.getString(C2573R.string.ClearButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.PollCreateActivity$9$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$onClearEmojiRecent$0(alertDialog, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
            builder.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClearEmojiRecent$0(AlertDialog alertDialog, int i) {
            PollCreateActivity.this.emojiView.clearRecentEmoji();
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onSearchOpenClose(int i) {
            PollCreateActivity pollCreateActivity = PollCreateActivity.this;
            pollCreateActivity.isEmojiSearchOpened = i != 0;
            pollCreateActivity.sizeNotifierFrameLayout.requestLayout();
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public boolean isSearchOpened() {
            return PollCreateActivity.this.isEmojiSearchOpened;
        }
    }

    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return PollCreateActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                int i2 = PollCreateActivity.this.questionHeaderRow;
                PollCreateActivity pollCreateActivity = PollCreateActivity.this;
                if (i == i2) {
                    headerCell.setText(LocaleController.getString(pollCreateActivity.todo ? PollCreateActivity.this.editing != null ? C2573R.string.TodoEditTitle : C2573R.string.TodoTitle : C2573R.string.PollQuestion2));
                    return;
                }
                int i3 = pollCreateActivity.answerHeaderRow;
                PollCreateActivity pollCreateActivity2 = PollCreateActivity.this;
                if (i == i3) {
                    if (pollCreateActivity2.quizOnly == 1) {
                        headerCell.setText(LocaleController.getString(C2573R.string.QuizAnswers));
                        return;
                    } else {
                        headerCell.setText(LocaleController.getString(PollCreateActivity.this.todo ? C2573R.string.TodoItemsTitle : C2573R.string.AnswerOptions2));
                        return;
                    }
                }
                if (i == pollCreateActivity2.settingsHeaderRow) {
                    headerCell.setText(LocaleController.getString(C2573R.string.Settings));
                    return;
                }
                return;
            }
            if (itemViewType == 6) {
                TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                textCheckCell.setEnabled(!PollCreateActivity.this.onlyAdding);
                textCheckCell.getCheckBox().setAlpha(!PollCreateActivity.this.onlyAdding ? 1.0f : 0.6f);
                if (i == PollCreateActivity.this.allowAddingRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getString(C2573R.string.TodoAllowAddingTasks), PollCreateActivity.this.allowAdding, true);
                    textCheckCell.setEnabled(true, null);
                    return;
                }
                if (i == PollCreateActivity.this.allowMarkingRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getString(C2573R.string.TodoAllowMarkingDone), PollCreateActivity.this.allowMarking, false);
                    textCheckCell.setEnabled(true, null);
                    return;
                }
                if (i == PollCreateActivity.this.anonymousRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getString(C2573R.string.PollAnonymous), PollCreateActivity.this.anonymousPoll, (PollCreateActivity.this.multipleRow == -1 && PollCreateActivity.this.quizRow == -1) ? false : true);
                    textCheckCell.setEnabled(true, null);
                    return;
                } else if (i == PollCreateActivity.this.multipleRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getString(C2573R.string.PollMultiple), PollCreateActivity.this.multipleChoise, PollCreateActivity.this.quizRow != -1);
                    textCheckCell.setEnabled(true, null);
                    return;
                } else {
                    if (i == PollCreateActivity.this.quizRow) {
                        textCheckCell.setTextAndCheck(LocaleController.getString(C2573R.string.PollQuiz), PollCreateActivity.this.quizPoll, false);
                        textCheckCell.setEnabled(PollCreateActivity.this.quizOnly == 0, null);
                        return;
                    }
                    return;
                }
            }
            if (itemViewType != 2) {
                if (itemViewType != 3) {
                    return;
                }
                TextCell textCell = (TextCell) viewHolder.itemView;
                textCell.setColors(-1, Theme.key_windowBackgroundWhiteBlueText4);
                Drawable drawable = this.mContext.getResources().getDrawable(C2573R.drawable.poll_add_circle);
                Drawable drawable2 = this.mContext.getResources().getDrawable(C2573R.drawable.poll_add_plus);
                int color = Theme.getColor(Theme.key_switchTrackChecked);
                PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
                drawable.setColorFilter(new PorterDuffColorFilter(color, mode));
                drawable2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_checkboxCheck), mode));
                textCell.setTextAndIcon((CharSequence) LocaleController.getString(PollCreateActivity.this.todo ? C2573R.string.TodoNewTask : C2573R.string.AddAnOption), (Drawable) new CombinedDrawable(drawable, drawable2), false);
                return;
            }
            TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
            textInfoPrivacyCell.setFixedSize(0);
            textInfoPrivacyCell.setBackground(Theme.getThemedDrawableByKey(this.mContext, C2573R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
            if (i == PollCreateActivity.this.solutionInfoRow) {
                textInfoPrivacyCell.setText(LocaleController.getString(C2573R.string.AddAnExplanationInfo));
                return;
            }
            if (i == PollCreateActivity.this.settingsSectionRow) {
                textInfoPrivacyCell.setFixedSize(12);
                textInfoPrivacyCell.setText(null);
                return;
            }
            int i4 = PollCreateActivity.this.maxAnswersCount - PollCreateActivity.this.answersCount;
            PollCreateActivity pollCreateActivity3 = PollCreateActivity.this;
            if (i4 <= 0) {
                textInfoPrivacyCell.setText(LocaleController.getString(pollCreateActivity3.todo ? C2573R.string.TodoAddTaskInfoMax : C2573R.string.AddAnOptionInfoMax));
                return;
            }
            boolean z = pollCreateActivity3.todo;
            PollCreateActivity pollCreateActivity4 = PollCreateActivity.this;
            if (z) {
                textInfoPrivacyCell.setText(LocaleController.formatPluralStringComma("TodoNewTaskInfo", pollCreateActivity4.maxAnswersCount - PollCreateActivity.this.answersCount));
            } else {
                textInfoPrivacyCell.setText(LocaleController.formatString("AddAnOptionInfo", C2573R.string.AddAnOptionInfo, LocaleController.formatPluralString("Option", pollCreateActivity4.maxAnswersCount - PollCreateActivity.this.answersCount, new Object[0])));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            CharSequence charSequence = _UrlKt.FRAGMENT_ENCODE_SET;
            if (itemViewType == 4) {
                PollEditTextCell pollEditTextCell = (PollEditTextCell) viewHolder.itemView;
                pollEditTextCell.setTag(1);
                if (PollCreateActivity.this.questionString != null) {
                    charSequence = PollCreateActivity.this.questionString;
                }
                pollEditTextCell.setTextAndHint(charSequence, LocaleController.getString(PollCreateActivity.this.todo ? C2573R.string.TodoTitlePlaceholder : C2573R.string.QuestionHint), false);
                pollEditTextCell.setTag(null);
                pollEditTextCell.setEnabled(!PollCreateActivity.this.onlyAdding);
                pollEditTextCell.textView.setEnabled(true ^ PollCreateActivity.this.onlyAdding);
                pollEditTextCell.textView.setTextColor(Theme.multAlpha(PollCreateActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteBlackText), PollCreateActivity.this.onlyAdding ? 0.6f : 1.0f));
                PollCreateActivity.this.setTextLeft(viewHolder.itemView, viewHolder.getAdapterPosition());
                return;
            }
            if (itemViewType != 5) {
                if (itemViewType == 7) {
                    PollEditTextCell pollEditTextCell2 = (PollEditTextCell) viewHolder.itemView;
                    pollEditTextCell2.setTag(1);
                    if (PollCreateActivity.this.solutionString != null) {
                        charSequence = PollCreateActivity.this.solutionString;
                    }
                    pollEditTextCell2.setTextAndHint(charSequence, LocaleController.getString(C2573R.string.AddAnExplanation), false);
                    pollEditTextCell2.setTag(null);
                    PollCreateActivity.this.setTextLeft(viewHolder.itemView, viewHolder.getAdapterPosition());
                    return;
                }
                return;
            }
            int adapterPosition = viewHolder.getAdapterPosition();
            PollEditTextCell pollEditTextCell3 = (PollEditTextCell) viewHolder.itemView;
            pollEditTextCell3.setTag(1);
            int i = adapterPosition - PollCreateActivity.this.answerStartRow;
            boolean z = !PollCreateActivity.this.onlyAdding || i >= PollCreateActivity.this.oldAnswersCount;
            pollEditTextCell3.textView.setEnabled(z);
            pollEditTextCell3.textView.setTextColor(Theme.multAlpha(PollCreateActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteBlackText), z ? 1.0f : 0.6f));
            pollEditTextCell3.setTextAndHint(PollCreateActivity.this.answers[i], LocaleController.getString(PollCreateActivity.this.todo ? C2573R.string.TodoTaskPlaceholder : C2573R.string.OptionHint), true);
            pollEditTextCell3.setTag(null);
            ImageView imageView = pollEditTextCell3.deleteImageView;
            if (imageView != null) {
                imageView.setVisibility(z ? 0 : 8);
            }
            ImageView imageView2 = pollEditTextCell3.moveImageView;
            if (imageView2 != null) {
                imageView2.setAlpha(z ? 1.0f : 0.45f);
            }
            if (!PollCreateActivity.this.firstRequestField && PollCreateActivity.this.requestFieldFocusAtPosition == adapterPosition) {
                EditTextBoldCursor textView = pollEditTextCell3.getTextView();
                textView.requestFocus();
                AndroidUtilities.showKeyboard(textView);
                PollCreateActivity.this.firstRequestField = false;
                PollCreateActivity.this.requestFieldFocusAtPosition = -1;
            }
            PollCreateActivity.this.setTextLeft(viewHolder.itemView, adapterPosition);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getItemViewType() == 4 || viewHolder.getItemViewType() == 5) {
                EditTextBoldCursor textView = ((PollEditTextCell) viewHolder.itemView).getTextView();
                if (textView.isFocused()) {
                    if (PollCreateActivity.this.isPremium) {
                        if (PollCreateActivity.this.suggestEmojiPanel != null) {
                            PollCreateActivity.this.suggestEmojiPanel.forceClose();
                        }
                        PollCreateActivity.this.hideEmojiPopup(true);
                    }
                    PollCreateActivity.this.currentCell = null;
                    textView.clearFocus();
                    AndroidUtilities.hideKeyboard(textView);
                }
            }
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int adapterPosition = viewHolder.getAdapterPosition();
            if (adapterPosition == PollCreateActivity.this.questionRow || adapterPosition == PollCreateActivity.this.allowAddingRow || adapterPosition == PollCreateActivity.this.allowMarkingRow) {
                return !PollCreateActivity.this.onlyAdding;
            }
            return (!PollCreateActivity.this.onlyAdding || adapterPosition < PollCreateActivity.this.answerStartRow || adapterPosition >= PollCreateActivity.this.answerStartRow + PollCreateActivity.this.answersCount) ? adapterPosition == PollCreateActivity.this.addAnswerRow || adapterPosition == PollCreateActivity.this.anonymousRow || adapterPosition == PollCreateActivity.this.multipleRow || (PollCreateActivity.this.quizOnly == 0 && adapterPosition == PollCreateActivity.this.quizRow) : adapterPosition - PollCreateActivity.this.answerStartRow >= PollCreateActivity.this.oldAnswersCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View view;
            View shadowSectionCell;
            if (i == 0) {
                HeaderCell headerCell = new HeaderCell(this.mContext, Theme.key_windowBackgroundWhiteBlueHeader, 21, 15, false);
                headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                view = headerCell;
            } else {
                if (i == 1) {
                    shadowSectionCell = new ShadowSectionCell(this.mContext);
                } else if (i == 2) {
                    shadowSectionCell = new TextInfoPrivacyCell(this.mContext);
                } else if (i == 3) {
                    TextCell textCell = new TextCell(this.mContext);
                    textCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    shadowSectionCell = textCell;
                } else if (i == 4) {
                    final PollEditTextCell pollEditTextCell = new PollEditTextCell(this.mContext, false, PollCreateActivity.this.isPremium ? 1 : 0, null) { // from class: org.telegram.ui.PollCreateActivity.ListAdapter.1
                        @Override // org.telegram.ui.Cells.PollEditTextCell
                        public void onActionModeStart(EditTextBoldCursor editTextBoldCursor, ActionMode actionMode) {
                        }

                        @Override // org.telegram.ui.Cells.PollEditTextCell
                        public void onEditTextFocusChanged(boolean z) {
                            PollCreateActivity.this.onCellFocusChanges(this, z);
                        }

                        @Override // org.telegram.ui.Cells.PollEditTextCell
                        /* JADX INFO: renamed from: onEmojiButtonClicked */
                        public void lambda$new$1(PollEditTextCell pollEditTextCell2) {
                            PollCreateActivity.this.onEmojiClicked(pollEditTextCell2);
                        }

                        @Override // org.telegram.ui.Cells.PollEditTextCell
                        public boolean onPastedMultipleLines(ArrayList<CharSequence> arrayList) {
                            ListAdapter listAdapter;
                            if (arrayList.isEmpty()) {
                                return false;
                            }
                            this.textView.getText().replace(this.textView.getSelectionStart(), this.textView.getSelectionEnd(), arrayList.remove(0));
                            int i2 = 0;
                            while (!arrayList.isEmpty() && i2 < PollCreateActivity.this.maxAnswersCount) {
                                int length = PollCreateActivity.this.answers.length - 1;
                                while (true) {
                                    listAdapter = ListAdapter.this;
                                    if (length > i2) {
                                        PollCreateActivity.this.answers[length] = PollCreateActivity.this.answers[length - 1];
                                        length--;
                                    }
                                }
                                PollCreateActivity.this.answers[i2] = arrayList.remove(0);
                                PollCreateActivity.this.answersCount++;
                                i2++;
                            }
                            PollCreateActivity.this.updateRows();
                            PollCreateActivity pollCreateActivity = PollCreateActivity.this;
                            pollCreateActivity.requestFieldFocusAtPosition = (pollCreateActivity.answerStartRow + i2) - 1;
                            PollCreateActivity.this.listAdapter.notifyDataSetChanged();
                            return true;
                        }
                    };
                    pollEditTextCell.createErrorTextView();
                    pollEditTextCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    pollEditTextCell.addTextWatcher(new TextWatcher() { // from class: org.telegram.ui.PollCreateActivity.ListAdapter.2
                        @Override // android.text.TextWatcher
                        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                        }

                        @Override // android.text.TextWatcher
                        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                        }

                        @Override // android.text.TextWatcher
                        public void afterTextChanged(Editable editable) {
                            if (pollEditTextCell.getTag() != null) {
                                return;
                            }
                            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = PollCreateActivity.this.listView.findViewHolderForAdapterPosition(PollCreateActivity.this.questionRow);
                            if (viewHolderFindViewHolderForAdapterPosition != null && PollCreateActivity.this.suggestEmojiPanel != null) {
                                for (ImageSpan imageSpan : (ImageSpan[]) editable.getSpans(0, editable.length(), ImageSpan.class)) {
                                    editable.removeSpan(imageSpan);
                                }
                                Emoji.replaceEmoji(editable, pollEditTextCell.getEditField().getPaint().getFontMetricsInt(), false);
                                PollCreateActivity.this.suggestEmojiPanel.setDirection(1);
                                PollCreateActivity.this.suggestEmojiPanel.setDelegate(pollEditTextCell);
                                PollCreateActivity.this.suggestEmojiPanel.setTranslationY(viewHolderFindViewHolderForAdapterPosition.itemView.getY());
                                PollCreateActivity.this.suggestEmojiPanel.fireUpdate();
                            }
                            PollCreateActivity.this.questionString = editable;
                            if (viewHolderFindViewHolderForAdapterPosition != null) {
                                PollCreateActivity pollCreateActivity = PollCreateActivity.this;
                                pollCreateActivity.setTextLeft(viewHolderFindViewHolderForAdapterPosition.itemView, pollCreateActivity.questionRow);
                            }
                            PollCreateActivity.this.checkDoneButton();
                        }
                    });
                    view = pollEditTextCell;
                } else if (i == 6) {
                    TextCheckCell textCheckCell = new TextCheckCell(this.mContext);
                    textCheckCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    shadowSectionCell = textCheckCell;
                } else if (i == 7) {
                    final PollEditTextCell pollEditTextCell2 = new PollEditTextCell(this.mContext, false, PollCreateActivity.this.isPremium ? 1 : 0, null) { // from class: org.telegram.ui.PollCreateActivity.ListAdapter.3
                        @Override // org.telegram.ui.Cells.PollEditTextCell
                        public void onActionModeStart(EditTextBoldCursor editTextBoldCursor, ActionMode actionMode) {
                            if (editTextBoldCursor.isFocused() && editTextBoldCursor.hasSelection()) {
                                Menu menu = actionMode.getMenu();
                                if (menu.findItem(R.id.copy) == null) {
                                    return;
                                }
                                ChatActivity.fillActionModeMenu(menu, PollCreateActivity.this.parentFragment.getCurrentEncryptedChat(), false, true);
                            }
                        }

                        @Override // org.telegram.ui.Cells.PollEditTextCell
                        /* JADX INFO: renamed from: onEmojiButtonClicked */
                        public void lambda$new$1(PollEditTextCell pollEditTextCell3) {
                            PollCreateActivity.this.onEmojiClicked(pollEditTextCell3);
                        }

                        @Override // org.telegram.ui.Cells.PollEditTextCell
                        public void onEditTextFocusChanged(boolean z) {
                            PollCreateActivity.this.onCellFocusChanges(this, z);
                        }
                    };
                    pollEditTextCell2.createErrorTextView();
                    pollEditTextCell2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    pollEditTextCell2.addTextWatcher(new TextWatcher() { // from class: org.telegram.ui.PollCreateActivity.ListAdapter.4
                        @Override // android.text.TextWatcher
                        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                        }

                        @Override // android.text.TextWatcher
                        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                        }

                        @Override // android.text.TextWatcher
                        public void afterTextChanged(Editable editable) {
                            if (pollEditTextCell2.getTag() != null) {
                                return;
                            }
                            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = PollCreateActivity.this.listView.findViewHolderForAdapterPosition(PollCreateActivity.this.questionRow);
                            if (viewHolderFindViewHolderForAdapterPosition != null && PollCreateActivity.this.suggestEmojiPanel != null) {
                                for (ImageSpan imageSpan : (ImageSpan[]) editable.getSpans(0, editable.length(), ImageSpan.class)) {
                                    editable.removeSpan(imageSpan);
                                }
                                Emoji.replaceEmoji(editable, pollEditTextCell2.getEditField().getPaint().getFontMetricsInt(), false);
                                PollCreateActivity.this.suggestEmojiPanel.setDirection(1);
                                PollCreateActivity.this.suggestEmojiPanel.setDelegate(pollEditTextCell2);
                                PollCreateActivity.this.suggestEmojiPanel.setTranslationY(viewHolderFindViewHolderForAdapterPosition.itemView.getY());
                                PollCreateActivity.this.suggestEmojiPanel.fireUpdate();
                            }
                            PollCreateActivity.this.solutionString = editable;
                            if (viewHolderFindViewHolderForAdapterPosition != null) {
                                PollCreateActivity pollCreateActivity = PollCreateActivity.this;
                                pollCreateActivity.setTextLeft(viewHolderFindViewHolderForAdapterPosition.itemView, pollCreateActivity.solutionRow);
                            }
                            PollCreateActivity.this.checkDoneButton();
                        }
                    });
                    view = pollEditTextCell2;
                } else {
                    Context context = this.mContext;
                    boolean z = PollCreateActivity.this.isPremium;
                    final PollCreateActivity pollCreateActivity = PollCreateActivity.this;
                    final PollEditTextCell pollEditTextCell3 = new PollEditTextCell(context, false, z ? 1 : 0, new View.OnClickListener() { // from class: org.telegram.ui.PollCreateActivity$ListAdapter$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            pollCreateActivity.deleteItem(view2);
                        }
                    }) { // from class: org.telegram.ui.PollCreateActivity.ListAdapter.5
                        @Override // org.telegram.ui.Cells.PollEditTextCell
                        public void onActionModeStart(EditTextBoldCursor editTextBoldCursor, ActionMode actionMode) {
                            if (editTextBoldCursor.isFocused() && editTextBoldCursor.hasSelection()) {
                                Menu menu = actionMode.getMenu();
                                if (menu.findItem(R.id.copy) == null) {
                                    return;
                                }
                                ChatActivity.fillActionModeMenu(menu, PollCreateActivity.this.parentFragment.getCurrentEncryptedChat(), false, true);
                            }
                        }

                        @Override // org.telegram.ui.Cells.PollEditTextCell
                        public void onEditTextFocusChanged(boolean z2) {
                            PollCreateActivity.this.onCellFocusChanges(this, z2);
                        }

                        @Override // org.telegram.ui.Cells.PollEditTextCell
                        public boolean drawDivider() {
                            RecyclerView.ViewHolder viewHolderFindContainingViewHolder = PollCreateActivity.this.listView.findContainingViewHolder(this);
                            if (viewHolderFindContainingViewHolder != null) {
                                int adapterPosition = viewHolderFindContainingViewHolder.getAdapterPosition();
                                if (PollCreateActivity.this.answersCount == PollCreateActivity.this.maxAnswersCount && adapterPosition == (PollCreateActivity.this.answerStartRow + PollCreateActivity.this.answersCount) - 1) {
                                    return false;
                                }
                            }
                            return true;
                        }

                        @Override // org.telegram.ui.Cells.PollEditTextCell
                        public boolean shouldShowCheckBox() {
                            return PollCreateActivity.this.quizPoll;
                        }

                        @Override // org.telegram.ui.Cells.PollEditTextCell
                        public void onCheckBoxClick(PollEditTextCell pollEditTextCell4, boolean z2) {
                            int adapterPosition;
                            if (z2 && PollCreateActivity.this.quizPoll) {
                                Arrays.fill(PollCreateActivity.this.answersChecks, false);
                                PollCreateActivity.this.listView.getChildCount();
                                for (int i2 = PollCreateActivity.this.answerStartRow; i2 < PollCreateActivity.this.answerStartRow + PollCreateActivity.this.answersCount; i2++) {
                                    RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = PollCreateActivity.this.listView.findViewHolderForAdapterPosition(i2);
                                    if (viewHolderFindViewHolderForAdapterPosition != null) {
                                        View view2 = viewHolderFindViewHolderForAdapterPosition.itemView;
                                        if (view2 instanceof PollEditTextCell) {
                                            ((PollEditTextCell) view2).setChecked(false, true);
                                        }
                                    }
                                }
                            }
                            super.onCheckBoxClick(pollEditTextCell4, z2);
                            RecyclerView.ViewHolder viewHolderFindContainingViewHolder = PollCreateActivity.this.listView.findContainingViewHolder(pollEditTextCell4);
                            if (viewHolderFindContainingViewHolder != null && (adapterPosition = viewHolderFindContainingViewHolder.getAdapterPosition()) != -1) {
                                PollCreateActivity.this.answersChecks[adapterPosition - PollCreateActivity.this.answerStartRow] = z2;
                            }
                            PollCreateActivity.this.checkDoneButton();
                        }

                        @Override // org.telegram.ui.Cells.PollEditTextCell
                        public boolean isChecked(PollEditTextCell pollEditTextCell4) {
                            int adapterPosition;
                            RecyclerView.ViewHolder viewHolderFindContainingViewHolder = PollCreateActivity.this.listView.findContainingViewHolder(pollEditTextCell4);
                            if (viewHolderFindContainingViewHolder == null || (adapterPosition = viewHolderFindContainingViewHolder.getAdapterPosition()) == -1) {
                                return false;
                            }
                            return PollCreateActivity.this.answersChecks[adapterPosition - PollCreateActivity.this.answerStartRow];
                        }

                        @Override // org.telegram.ui.Cells.PollEditTextCell
                        /* JADX INFO: renamed from: onEmojiButtonClicked */
                        public void lambda$new$1(PollEditTextCell pollEditTextCell4) {
                            PollCreateActivity.this.onEmojiClicked(pollEditTextCell4);
                        }

                        @Override // org.telegram.ui.Cells.PollEditTextCell
                        public boolean onPastedMultipleLines(ArrayList<CharSequence> arrayList) {
                            int childAdapterPosition;
                            ListAdapter listAdapter;
                            if (arrayList.isEmpty() || (childAdapterPosition = PollCreateActivity.this.listView.getChildAdapterPosition(this) - PollCreateActivity.this.answerStartRow) < 0) {
                                return false;
                            }
                            this.textView.getText().replace(this.textView.getSelectionStart(), this.textView.getSelectionEnd(), arrayList.remove(0));
                            int i2 = childAdapterPosition + 1;
                            while (!arrayList.isEmpty() && i2 < PollCreateActivity.this.maxAnswersCount) {
                                int length = PollCreateActivity.this.answers.length - 1;
                                while (true) {
                                    listAdapter = ListAdapter.this;
                                    if (length > i2) {
                                        PollCreateActivity.this.answers[length] = PollCreateActivity.this.answers[length - 1];
                                        length--;
                                    }
                                }
                                PollCreateActivity.this.answers[i2] = arrayList.remove(0);
                                PollCreateActivity.this.answersCount++;
                                i2++;
                            }
                            PollCreateActivity.this.updateRows();
                            PollCreateActivity pollCreateActivity2 = PollCreateActivity.this;
                            pollCreateActivity2.requestFieldFocusAtPosition = (pollCreateActivity2.answerStartRow + i2) - 1;
                            PollCreateActivity.this.listAdapter.notifyDataSetChanged();
                            return true;
                        }
                    };
                    pollEditTextCell3.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    pollEditTextCell3.addTextWatcher(new TextWatcher() { // from class: org.telegram.ui.PollCreateActivity.ListAdapter.6
                        @Override // android.text.TextWatcher
                        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                        }

                        @Override // android.text.TextWatcher
                        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                        }

                        @Override // android.text.TextWatcher
                        public void afterTextChanged(Editable editable) {
                            int adapterPosition;
                            RecyclerView.ViewHolder viewHolderFindContainingViewHolder = PollCreateActivity.this.listView.findContainingViewHolder(pollEditTextCell3);
                            if (viewHolderFindContainingViewHolder == null || (adapterPosition = viewHolderFindContainingViewHolder.getAdapterPosition() - PollCreateActivity.this.answerStartRow) < 0 || adapterPosition >= PollCreateActivity.this.answers.length) {
                                return;
                            }
                            if (PollCreateActivity.this.suggestEmojiPanel != null) {
                                for (ImageSpan imageSpan : (ImageSpan[]) editable.getSpans(0, editable.length(), ImageSpan.class)) {
                                    editable.removeSpan(imageSpan);
                                }
                                Emoji.replaceEmoji(editable, pollEditTextCell3.getEditField().getPaint().getFontMetricsInt(), false);
                                float y = (viewHolderFindContainingViewHolder.itemView.getY() - AndroidUtilities.dp(166.0f)) + viewHolderFindContainingViewHolder.itemView.getMeasuredHeight();
                                ListAdapter listAdapter = ListAdapter.this;
                                if (y > 0.0f) {
                                    PollCreateActivity.this.suggestEmojiPanel.setDirection(0);
                                    PollCreateActivity.this.suggestEmojiPanel.setTranslationY(y);
                                } else {
                                    PollCreateActivity.this.suggestEmojiPanel.setDirection(1);
                                    PollCreateActivity.this.suggestEmojiPanel.setTranslationY(viewHolderFindContainingViewHolder.itemView.getY());
                                }
                                PollCreateActivity.this.suggestEmojiPanel.setDelegate(pollEditTextCell3);
                                PollCreateActivity.this.suggestEmojiPanel.fireUpdate();
                            }
                            PollCreateActivity.this.answers[adapterPosition] = editable;
                            PollCreateActivity.this.setTextLeft(pollEditTextCell3, adapterPosition);
                            PollCreateActivity.this.checkDoneButton();
                        }
                    });
                    pollEditTextCell3.setShowNextButton(true);
                    EditTextBoldCursor textView = pollEditTextCell3.getTextView();
                    textView.setImeOptions(textView.getImeOptions() | 5);
                    textView.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.PollCreateActivity$ListAdapter$$ExternalSyntheticLambda1
                        @Override // android.widget.TextView.OnEditorActionListener
                        public final boolean onEditorAction(TextView textView2, int i2, KeyEvent keyEvent) {
                            return this.f$0.lambda$onCreateViewHolder$0(pollEditTextCell3, textView2, i2, keyEvent);
                        }
                    });
                    textView.setOnKeyListener(new View.OnKeyListener() { // from class: org.telegram.ui.PollCreateActivity$ListAdapter$$ExternalSyntheticLambda2
                        @Override // android.view.View.OnKeyListener
                        public final boolean onKey(View view2, int i2, KeyEvent keyEvent) {
                            return PollCreateActivity.ListAdapter.m18550$r8$lambda$dNeJEm63DShYxRjXrpacmFzg4(pollEditTextCell3, view2, i2, keyEvent);
                        }
                    });
                    shadowSectionCell = pollEditTextCell3;
                }
                shadowSectionCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                return new RecyclerListView.Holder(shadowSectionCell);
            }
            shadowSectionCell = view;
            shadowSectionCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(shadowSectionCell);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$onCreateViewHolder$0(PollEditTextCell pollEditTextCell, TextView textView, int i, KeyEvent keyEvent) {
            int adapterPosition;
            if (i != 5) {
                return false;
            }
            RecyclerView.ViewHolder viewHolderFindContainingViewHolder = PollCreateActivity.this.listView.findContainingViewHolder(pollEditTextCell);
            if (viewHolderFindContainingViewHolder != null && (adapterPosition = viewHolderFindContainingViewHolder.getAdapterPosition()) != -1) {
                int i2 = adapterPosition - PollCreateActivity.this.answerStartRow;
                if (i2 == PollCreateActivity.this.answersCount - 1 && PollCreateActivity.this.answersCount < PollCreateActivity.this.maxAnswersCount) {
                    PollCreateActivity.this.addNewField();
                } else if (i2 == PollCreateActivity.this.answersCount - 1) {
                    AndroidUtilities.hideKeyboard(pollEditTextCell.getTextView());
                } else {
                    RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = PollCreateActivity.this.listView.findViewHolderForAdapterPosition(adapterPosition + 1);
                    if (viewHolderFindViewHolderForAdapterPosition != null) {
                        View view = viewHolderFindViewHolderForAdapterPosition.itemView;
                        if (view instanceof PollEditTextCell) {
                            ((PollEditTextCell) view).getTextView().requestFocus();
                        }
                    }
                }
            }
            return true;
        }

        /* JADX INFO: renamed from: $r8$lambda$dN-eJEm63DShYxRjXrpacmFzg-4, reason: not valid java name */
        public static /* synthetic */ boolean m18550$r8$lambda$dNeJEm63DShYxRjXrpacmFzg4(PollEditTextCell pollEditTextCell, View view, int i, KeyEvent keyEvent) {
            EditTextBoldCursor editTextBoldCursor = (EditTextBoldCursor) view;
            if (i != 67 || keyEvent.getAction() != 0 || editTextBoldCursor.length() != 0) {
                return false;
            }
            pollEditTextCell.callOnDelete();
            return true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == PollCreateActivity.this.questionHeaderRow || i == PollCreateActivity.this.answerHeaderRow || i == PollCreateActivity.this.settingsHeaderRow) {
                return 0;
            }
            if (i == PollCreateActivity.this.questionSectionRow) {
                return 1;
            }
            if (i == PollCreateActivity.this.answerSectionRow || i == PollCreateActivity.this.settingsSectionRow || i == PollCreateActivity.this.solutionInfoRow) {
                return 2;
            }
            if (i == PollCreateActivity.this.addAnswerRow) {
                return 3;
            }
            if (i == PollCreateActivity.this.questionRow) {
                return 4;
            }
            if (i == PollCreateActivity.this.solutionRow) {
                return 7;
            }
            return (i == PollCreateActivity.this.anonymousRow || i == PollCreateActivity.this.multipleRow || i == PollCreateActivity.this.quizRow || i == PollCreateActivity.this.allowAddingRow || i == PollCreateActivity.this.allowMarkingRow) ? 6 : 5;
        }

        public void swapElements(int i, int i2) {
            int i3 = i - PollCreateActivity.this.answerStartRow;
            int i4 = i2 - PollCreateActivity.this.answerStartRow;
            if (i3 < 0 || i4 < 0 || i3 >= PollCreateActivity.this.answersCount || i4 >= PollCreateActivity.this.answersCount) {
                return;
            }
            CharSequence charSequence = PollCreateActivity.this.answers[i3];
            PollCreateActivity.this.answers[i3] = PollCreateActivity.this.answers[i4];
            PollCreateActivity.this.answers[i4] = charSequence;
            if (PollCreateActivity.this.answerIds != null) {
                int i5 = PollCreateActivity.this.answerIds[i3];
                PollCreateActivity.this.answerIds[i3] = PollCreateActivity.this.answerIds[i4];
                PollCreateActivity.this.answerIds[i4] = i5;
            }
            boolean z = PollCreateActivity.this.answersChecks[i3];
            PollCreateActivity.this.answersChecks[i3] = PollCreateActivity.this.answersChecks[i4];
            PollCreateActivity.this.answersChecks[i4] = z;
            notifyItemMoved(i, i2);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{HeaderCell.class, TextCell.class, PollEditTextCell.class, TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        ActionBar actionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(actionBar, i, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        int i3 = Theme.key_text_RedRegular;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{HeaderCell.class}, new String[]{"textView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{HeaderCell.class}, new String[]{"textView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText3));
        int i4 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{PollEditTextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_HINTTEXTCOLOR, new Class[]{PollEditTextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteHintText));
        int i5 = Theme.key_windowBackgroundWhiteGrayIcon;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_HINTTEXTCOLOR, new Class[]{PollEditTextCell.class}, new String[]{"deleteImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_HINTTEXTCOLOR, new Class[]{PollEditTextCell.class}, new String[]{"moveImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, new Class[]{PollEditTextCell.class}, new String[]{"deleteImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_stickers_menuSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{PollEditTextCell.class}, new String[]{"textView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{PollEditTextCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        int i6 = Theme.key_checkboxCheck;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{PollEditTextCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i6));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrack));
        int i7 = Theme.key_switchTrackChecked;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i7));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueText4));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i7));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i6));
        return arrayList;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean hideKeyboardOnShow() {
        return this.requestFieldFocusAtPosition < 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void deleteItem(View view) {
        int adapterPosition;
        if (view.getTag() != null) {
            return;
        }
        view.setTag(1);
        PollEditTextCell pollEditTextCell = (PollEditTextCell) view.getParent();
        RecyclerView.ViewHolder viewHolderFindContainingViewHolder = this.listView.findContainingViewHolder(pollEditTextCell);
        if (viewHolderFindContainingViewHolder == null || (adapterPosition = viewHolderFindContainingViewHolder.getAdapterPosition()) == -1) {
            return;
        }
        int i = adapterPosition - this.answerStartRow;
        if (this.onlyAdding && i < this.oldAnswersCount) {
            int i2 = -this.shiftDp;
            this.shiftDp = i2;
            AndroidUtilities.shakeViewSpring(pollEditTextCell, i2);
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
            return;
        }
        this.listAdapter.notifyItemRemoved(adapterPosition);
        CharSequence[] charSequenceArr = this.answers;
        int i3 = i + 1;
        System.arraycopy(charSequenceArr, i3, charSequenceArr, i, (charSequenceArr.length - 1) - i);
        boolean[] zArr = this.answersChecks;
        System.arraycopy(zArr, i3, zArr, i, (zArr.length - 1) - i);
        CharSequence[] charSequenceArr2 = this.answers;
        charSequenceArr2[charSequenceArr2.length - 1] = null;
        boolean[] zArr2 = this.answersChecks;
        int i4 = 0;
        zArr2[zArr2.length - 1] = false;
        int i5 = this.answersCount - 1;
        this.answersCount = i5;
        if (this.answerIds != null) {
            int[] iArr = new int[i5];
            while (i4 < i5) {
                iArr[i4] = this.answerIds[i4 >= i ? i4 + 1 : i4];
                i4++;
            }
            this.answerIds = iArr;
        }
        int i6 = this.answersCount;
        CharSequence[] charSequenceArr3 = this.answers;
        if (i6 == charSequenceArr3.length - 1) {
            this.listAdapter.notifyItemInserted((this.answerStartRow + charSequenceArr3.length) - 1);
        }
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = this.listView.findViewHolderForAdapterPosition(adapterPosition - 1);
        EditTextBoldCursor textView = pollEditTextCell.getTextView();
        if (viewHolderFindViewHolderForAdapterPosition != null) {
            View view2 = viewHolderFindViewHolderForAdapterPosition.itemView;
            if (view2 instanceof PollEditTextCell) {
                ((PollEditTextCell) view2).getTextView().requestFocus();
            } else if (textView.isFocused()) {
                AndroidUtilities.hideKeyboard(textView);
                hideEmojiPopup(true);
            } else if (this.isEmojiSearchOpened) {
                hideEmojiPopup(true);
            }
        }
        textView.clearFocus();
        checkDoneButton();
        updateRows();
        SuggestEmojiView suggestEmojiView = this.suggestEmojiPanel;
        if (suggestEmojiView != null) {
            suggestEmojiView.forceClose();
            this.suggestEmojiPanel.setDelegate(null);
        }
        this.listAdapter.notifyItemChanged(this.answerSectionRow);
    }
}
