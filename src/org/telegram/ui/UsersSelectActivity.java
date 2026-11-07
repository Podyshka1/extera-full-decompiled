package org.telegram.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.util.Property;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import androidx.annotation.Keep;
import androidx.collection.LongSparseArray;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Adapters.SearchAdapterHelper;
import org.telegram.ui.Cells.GraySectionCell;
import org.telegram.ui.Cells.GroupCreateUserCell;
import org.telegram.ui.Components.AnimatedAvatarContainer;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.FlickerLoadingView;
import org.telegram.ui.Components.FragmentFloatingButton;
import org.telegram.ui.Components.GroupCreateSpan;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.StickerEmptyView;

/* JADX INFO: loaded from: classes6.dex */
public class UsersSelectActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate, View.OnClickListener {
    private GroupCreateAdapter adapter;
    private ArrayList<GroupCreateSpan> allSpans;
    public boolean allowSelf;
    AnimatedAvatarContainer animatedAvatarContainer;
    private int containerHeight;
    private GroupCreateSpan currentDeletingSpan;
    private FilterUsersActivityDelegate delegate;
    public boolean doNotNewChats;
    private EditTextBoldCursor editText;
    private StickerEmptyView emptyView;
    private int fieldY;
    private int filterFlags;
    private FragmentFloatingButton floatingButton;
    private FrameLayout.LayoutParams floatingButtonLp;
    private boolean ignoreScrollEvent;
    private ArrayList<Long> initialIds;
    private boolean isInclude;
    private RecyclerListView listView;
    public boolean noChatTypes;
    private FlickerLoadingView progressView;
    private ScrollView scrollView;
    private boolean searchWas;
    private boolean searching;
    private LongSparseArray<GroupCreateSpan> selectedContacts;
    private int selectedCount;
    private SpansContainer spansContainer;
    private int ttlPeriod;
    private int type;

    public interface FilterUsersActivityDelegate {
        void didSelectChats(ArrayList<Long> arrayList, int i);
    }

    public void setTtlPeriod(int i) {
        this.ttlPeriod = i;
    }

    public static class ItemDecoration extends RecyclerView.ItemDecoration {
        private boolean single;
        private int skipRows;

        private ItemDecoration() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
            Canvas canvas2;
            int width = recyclerView.getWidth();
            int childCount = recyclerView.getChildCount() - (!this.single ? 1 : 0);
            int i = 0;
            while (i < childCount) {
                View childAt = recyclerView.getChildAt(i);
                View childAt2 = i < childCount + (-1) ? recyclerView.getChildAt(i + 1) : null;
                if (recyclerView.getChildAdapterPosition(childAt) < this.skipRows || (childAt instanceof GraySectionCell) || (childAt2 instanceof GraySectionCell)) {
                    canvas2 = canvas;
                } else {
                    float bottom = childAt.getBottom();
                    canvas2 = canvas;
                    canvas2.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.dp(72.0f), bottom, width - (LocaleController.isRTL ? AndroidUtilities.dp(72.0f) : 0), bottom, Theme.dividerPaint);
                }
                i++;
                canvas = canvas2;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            super.getItemOffsets(rect, view, recyclerView, state);
            rect.top = 1;
        }
    }

    public class SpansContainer extends ViewGroup {
        private View addingSpan;
        private boolean animationStarted;
        private ArrayList<Animator> animators;
        private AnimatorSet currentAnimation;
        private View removingSpan;

        public SpansContainer(Context context) {
            super(context);
            this.animators = new ArrayList<>();
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            Property property;
            Property property2;
            int iMin;
            int childCount = getChildCount();
            int size = View.MeasureSpec.getSize(i);
            int iDp = size - AndroidUtilities.dp(26.0f);
            int iDp2 = AndroidUtilities.dp(10.0f);
            int iDp3 = AndroidUtilities.dp(10.0f);
            int i3 = 0;
            int measuredWidth = 0;
            int measuredWidth2 = 0;
            while (true) {
                property = View.TRANSLATION_Y;
                property2 = View.TRANSLATION_X;
                if (i3 >= childCount) {
                    break;
                }
                View childAt = getChildAt(i3);
                if (childAt instanceof GroupCreateSpan) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(32.0f), TLObject.FLAG_30));
                    if (childAt != this.removingSpan && childAt.getMeasuredWidth() + measuredWidth > iDp) {
                        iDp2 += childAt.getMeasuredHeight() + AndroidUtilities.dp(8.0f);
                        measuredWidth = 0;
                    }
                    if (childAt.getMeasuredWidth() + measuredWidth2 > iDp) {
                        iDp3 += childAt.getMeasuredHeight() + AndroidUtilities.dp(8.0f);
                        measuredWidth2 = 0;
                    }
                    int iDp4 = AndroidUtilities.dp(13.0f) + measuredWidth;
                    if (!this.animationStarted) {
                        View view = this.removingSpan;
                        if (childAt == view) {
                            childAt.setTranslationX(AndroidUtilities.dp(13.0f) + measuredWidth2);
                            childAt.setTranslationY(iDp3);
                        } else if (view != null) {
                            float f = iDp4;
                            if (childAt.getTranslationX() != f) {
                                this.animators.add(ObjectAnimator.ofFloat(childAt, (Property<View, Float>) property2, f));
                            }
                            float f2 = iDp2;
                            if (childAt.getTranslationY() != f2) {
                                this.animators.add(ObjectAnimator.ofFloat(childAt, (Property<View, Float>) property, f2));
                            }
                        } else {
                            childAt.setTranslationX(iDp4);
                            childAt.setTranslationY(iDp2);
                        }
                    }
                    if (childAt != this.removingSpan) {
                        measuredWidth += childAt.getMeasuredWidth() + AndroidUtilities.dp(9.0f);
                    }
                    measuredWidth2 += childAt.getMeasuredWidth() + AndroidUtilities.dp(9.0f);
                }
                i3++;
            }
            if (AndroidUtilities.isTablet()) {
                iMin = AndroidUtilities.dp(372.0f) / 3;
            } else {
                Point point = AndroidUtilities.displaySize;
                iMin = (Math.min(point.x, point.y) - AndroidUtilities.dp(158.0f)) / 3;
            }
            if (iDp - measuredWidth < iMin) {
                iDp2 += AndroidUtilities.dp(40.0f);
                measuredWidth = 0;
            }
            if (iDp - measuredWidth2 < iMin) {
                iDp3 += AndroidUtilities.dp(40.0f);
            }
            UsersSelectActivity.this.editText.measure(View.MeasureSpec.makeMeasureSpec(iDp - measuredWidth, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(32.0f), TLObject.FLAG_30));
            if (!this.animationStarted) {
                int iDp5 = iDp3 + AndroidUtilities.dp(42.0f);
                int iDp6 = measuredWidth + AndroidUtilities.dp(16.0f);
                UsersSelectActivity.this.fieldY = iDp2;
                if (this.currentAnimation != null) {
                    int iDp7 = iDp2 + AndroidUtilities.dp(42.0f);
                    if (UsersSelectActivity.this.containerHeight != iDp7) {
                        this.animators.add(ObjectAnimator.ofInt(UsersSelectActivity.this, "containerHeight", iDp7));
                    }
                    float f3 = iDp6;
                    if (UsersSelectActivity.this.editText.getTranslationX() != f3) {
                        this.animators.add(ObjectAnimator.ofFloat(UsersSelectActivity.this.editText, (Property<EditTextBoldCursor, Float>) property2, f3));
                    }
                    if (UsersSelectActivity.this.editText.getTranslationY() != UsersSelectActivity.this.fieldY) {
                        this.animators.add(ObjectAnimator.ofFloat(UsersSelectActivity.this.editText, (Property<EditTextBoldCursor, Float>) property, UsersSelectActivity.this.fieldY));
                    }
                    UsersSelectActivity.this.editText.setAllowDrawCursor(false);
                    this.currentAnimation.playTogether(this.animators);
                    this.currentAnimation.start();
                    this.animationStarted = true;
                } else {
                    UsersSelectActivity.this.containerHeight = iDp5;
                    UsersSelectActivity.this.editText.setTranslationX(iDp6);
                    UsersSelectActivity.this.editText.setTranslationY(UsersSelectActivity.this.fieldY);
                }
            } else if (this.currentAnimation != null && !UsersSelectActivity.this.ignoreScrollEvent && this.removingSpan == null) {
                UsersSelectActivity.this.editText.bringPointIntoView(UsersSelectActivity.this.editText.getSelectionStart());
            }
            setMeasuredDimension(size, UsersSelectActivity.this.containerHeight);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                childAt.layout(0, 0, childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
            }
        }

        public void addSpan(GroupCreateSpan groupCreateSpan, boolean z) {
            UsersSelectActivity.this.allSpans.add(groupCreateSpan);
            long uid = groupCreateSpan.getUid();
            if (uid > -9223372036854775801L) {
                UsersSelectActivity.this.selectedCount++;
            }
            UsersSelectActivity.this.selectedContacts.put(uid, groupCreateSpan);
            UsersSelectActivity.this.editText.setHintVisible(false, TextUtils.isEmpty(UsersSelectActivity.this.editText.getText()));
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null && animatorSet.isRunning()) {
                this.currentAnimation.setupEndValues();
                this.currentAnimation.cancel();
            }
            this.animationStarted = false;
            if (z) {
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.currentAnimation = animatorSet2;
                animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.UsersSelectActivity.SpansContainer.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        SpansContainer.this.addingSpan = null;
                        SpansContainer.this.currentAnimation = null;
                        SpansContainer.this.animationStarted = false;
                        UsersSelectActivity.this.editText.setAllowDrawCursor(true);
                    }
                });
                this.currentAnimation.setDuration(150L);
                this.addingSpan = groupCreateSpan;
                this.animators.clear();
                this.animators.add(ObjectAnimator.ofFloat(this.addingSpan, (Property<View, Float>) View.SCALE_X, 0.01f, 1.0f));
                this.animators.add(ObjectAnimator.ofFloat(this.addingSpan, (Property<View, Float>) View.SCALE_Y, 0.01f, 1.0f));
                this.animators.add(ObjectAnimator.ofFloat(this.addingSpan, (Property<View, Float>) View.ALPHA, 0.0f, 1.0f));
            }
            addView(groupCreateSpan);
        }

        public void removeSpan(final GroupCreateSpan groupCreateSpan) {
            UsersSelectActivity.this.ignoreScrollEvent = true;
            long uid = groupCreateSpan.getUid();
            if (uid > -9223372036854775801L) {
                UsersSelectActivity.this.selectedCount--;
            }
            UsersSelectActivity.this.selectedContacts.remove(uid);
            UsersSelectActivity.this.allSpans.remove(groupCreateSpan);
            groupCreateSpan.setOnClickListener(null);
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.setupEndValues();
                this.currentAnimation.cancel();
            }
            this.animationStarted = false;
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.currentAnimation = animatorSet2;
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.UsersSelectActivity.SpansContainer.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SpansContainer.this.removeView(groupCreateSpan);
                    SpansContainer.this.removingSpan = null;
                    SpansContainer.this.currentAnimation = null;
                    SpansContainer.this.animationStarted = false;
                    UsersSelectActivity.this.editText.setAllowDrawCursor(true);
                    if (UsersSelectActivity.this.allSpans.isEmpty()) {
                        UsersSelectActivity.this.editText.setHintVisible(true, true);
                    }
                }
            });
            this.currentAnimation.setDuration(150L);
            this.removingSpan = groupCreateSpan;
            this.animators.clear();
            this.animators.add(ObjectAnimator.ofFloat(this.removingSpan, (Property<View, Float>) View.SCALE_X, 1.0f, 0.01f));
            this.animators.add(ObjectAnimator.ofFloat(this.removingSpan, (Property<View, Float>) View.SCALE_Y, 1.0f, 0.01f));
            this.animators.add(ObjectAnimator.ofFloat(this.removingSpan, (Property<View, Float>) View.ALPHA, 1.0f, 0.0f));
            requestLayout();
        }
    }

    public UsersSelectActivity(boolean z, ArrayList<Long> arrayList, int i) {
        this.selectedContacts = new LongSparseArray<>();
        this.allSpans = new ArrayList<>();
        this.isInclude = z;
        this.filterFlags = i;
        this.initialIds = arrayList;
        this.type = 0;
        this.allowSelf = true;
    }

    public UsersSelectActivity asPrivateChats() {
        this.type = 2;
        this.allowSelf = false;
        return this;
    }

    public UsersSelectActivity(int i) {
        this.selectedContacts = new LongSparseArray<>();
        this.allSpans = new ArrayList<>();
        this.type = i;
        this.allowSelf = i != 1;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.contactsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.updateInterfaces);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.chatDidCreated);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.contactsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.updateInterfaces);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.chatDidCreated);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        GroupCreateSpan groupCreateSpan = (GroupCreateSpan) view;
        if (groupCreateSpan.isDeleting()) {
            this.currentDeletingSpan = null;
            this.spansContainer.removeSpan(groupCreateSpan);
            if (this.type == 2) {
                if (groupCreateSpan.getUid() == -9223372036854775800L) {
                    this.filterFlags &= -2;
                } else if (groupCreateSpan.getUid() == -9223372036854775799L) {
                    this.filterFlags &= -3;
                } else if (groupCreateSpan.getUid() == Long.MIN_VALUE) {
                    this.filterFlags &= -5;
                } else if (groupCreateSpan.getUid() == -9223372036854775807L) {
                    this.filterFlags &= -9;
                }
            } else if (groupCreateSpan.getUid() == Long.MIN_VALUE) {
                this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_CONTACTS;
            } else if (groupCreateSpan.getUid() == -9223372036854775807L) {
                this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS;
            } else if (groupCreateSpan.getUid() == -9223372036854775806L) {
                this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_GROUPS;
            } else if (groupCreateSpan.getUid() == -9223372036854775805L) {
                this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_CHANNELS;
            } else if (groupCreateSpan.getUid() == -9223372036854775804L) {
                this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_BOTS;
            } else if (groupCreateSpan.getUid() == -9223372036854775803L) {
                this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_MUTED;
            } else if (groupCreateSpan.getUid() == -9223372036854775802L) {
                this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ;
            } else if (groupCreateSpan.getUid() == -9223372036854775801L) {
                this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED;
            }
            updateHint();
            checkVisibleRows();
            return;
        }
        GroupCreateSpan groupCreateSpan2 = this.currentDeletingSpan;
        if (groupCreateSpan2 != null) {
            groupCreateSpan2.cancelDeleteAnimation();
        }
        this.currentDeletingSpan = groupCreateSpan;
        groupCreateSpan.startDeleteAnimation();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        Object chat;
        this.searching = false;
        this.searchWas = false;
        this.allSpans.clear();
        this.selectedContacts.clear();
        this.currentDeletingSpan = null;
        int i = 1;
        if (this.type == 1) {
            AnimatedAvatarContainer animatedAvatarContainer = new AnimatedAvatarContainer(getContext());
            this.animatedAvatarContainer = animatedAvatarContainer;
            ActionBar actionBar = this.actionBar;
            boolean z = LocaleController.isRTL;
            actionBar.addView(animatedAvatarContainer, LayoutHelper.createFrame(-1, -1.0f, 0, z ? 0.0f : 64.0f, 0.0f, z ? 64.0f : 0.0f, 0.0f));
            this.actionBar.setAllowOverlayTitle(false);
        }
        this.actionBar.setBackButtonImage(C2665R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        int i2 = this.type;
        if (i2 == 0 || i2 == 2) {
            boolean z2 = this.isInclude;
            ActionBar actionBar2 = this.actionBar;
            if (z2) {
                actionBar2.setTitle(LocaleController.getString(C2665R.string.FilterAlwaysShow));
            } else {
                actionBar2.setTitle(LocaleController.getString(C2665R.string.FilterNeverShow));
            }
        } else if (i2 == 1) {
            updateHint();
        }
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.UsersSelectActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i3) {
                if (i3 == -1) {
                    UsersSelectActivity.this.finishFragment();
                } else if (i3 == 1) {
                    UsersSelectActivity.this.onDonePressed(true);
                }
            }
        });
        ViewGroup viewGroup = new ViewGroup(context) { // from class: org.telegram.ui.UsersSelectActivity.2
            @Override // android.view.View
            public void onMeasure(int i3, int i4) {
                int iDp;
                int size = View.MeasureSpec.getSize(i3);
                int size2 = View.MeasureSpec.getSize(i4);
                setMeasuredDimension(size, size2);
                if (AndroidUtilities.isTablet() || size2 > size) {
                    iDp = AndroidUtilities.dp(144.0f);
                } else {
                    iDp = AndroidUtilities.dp(56.0f);
                }
                UsersSelectActivity.this.scrollView.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(iDp, Integer.MIN_VALUE));
                UsersSelectActivity.this.listView.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2 - UsersSelectActivity.this.scrollView.getMeasuredHeight(), TLObject.FLAG_30));
                UsersSelectActivity.this.emptyView.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2 - UsersSelectActivity.this.scrollView.getMeasuredHeight(), TLObject.FLAG_30));
                UsersSelectActivity.this.progressView.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2 - UsersSelectActivity.this.scrollView.getMeasuredHeight(), TLObject.FLAG_30));
                if (UsersSelectActivity.this.floatingButton != null) {
                    int i5 = UsersSelectActivity.this.floatingButtonLp.width;
                    UsersSelectActivity.this.floatingButton.measure(View.MeasureSpec.makeMeasureSpec(i5, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(i5, TLObject.FLAG_30));
                }
            }

            @Override // android.view.ViewGroup, android.view.View
            public void onLayout(boolean z3, int i3, int i4, int i5, int i6) {
                UsersSelectActivity.this.scrollView.layout(0, 0, UsersSelectActivity.this.scrollView.getMeasuredWidth(), UsersSelectActivity.this.scrollView.getMeasuredHeight());
                UsersSelectActivity.this.listView.layout(0, UsersSelectActivity.this.scrollView.getMeasuredHeight(), UsersSelectActivity.this.listView.getMeasuredWidth(), UsersSelectActivity.this.scrollView.getMeasuredHeight() + UsersSelectActivity.this.listView.getMeasuredHeight());
                UsersSelectActivity.this.emptyView.layout(0, UsersSelectActivity.this.scrollView.getMeasuredHeight(), UsersSelectActivity.this.emptyView.getMeasuredWidth(), UsersSelectActivity.this.scrollView.getMeasuredHeight() + UsersSelectActivity.this.emptyView.getMeasuredHeight());
                UsersSelectActivity.this.progressView.layout(0, UsersSelectActivity.this.scrollView.getMeasuredHeight(), UsersSelectActivity.this.emptyView.getMeasuredWidth(), UsersSelectActivity.this.scrollView.getMeasuredHeight() + UsersSelectActivity.this.progressView.getMeasuredHeight());
                if (UsersSelectActivity.this.floatingButton != null) {
                    boolean z4 = LocaleController.isRTL;
                    UsersSelectActivity usersSelectActivity = UsersSelectActivity.this;
                    int measuredWidth = z4 ? usersSelectActivity.floatingButtonLp.leftMargin : ((i5 - i3) - usersSelectActivity.floatingButtonLp.rightMargin) - UsersSelectActivity.this.floatingButton.getMeasuredWidth();
                    int measuredHeight = ((i6 - i4) - UsersSelectActivity.this.floatingButtonLp.bottomMargin) - UsersSelectActivity.this.floatingButton.getMeasuredHeight();
                    UsersSelectActivity.this.floatingButton.layout(measuredWidth, measuredHeight, UsersSelectActivity.this.floatingButton.getMeasuredWidth() + measuredWidth, UsersSelectActivity.this.floatingButton.getMeasuredHeight() + measuredHeight);
                }
            }

            @Override // android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                boolean zDrawChild = super.drawChild(canvas, view, j);
                if (view != UsersSelectActivity.this.listView && view != UsersSelectActivity.this.emptyView) {
                    return zDrawChild;
                }
                ((BaseFragment) UsersSelectActivity.this).parentLayout.drawHeaderShadow(canvas, UsersSelectActivity.this.scrollView.getMeasuredHeight());
                return zDrawChild;
            }
        };
        this.fragmentView = viewGroup;
        ViewGroup viewGroup2 = viewGroup;
        ScrollView scrollView = new ScrollView(context) { // from class: org.telegram.ui.UsersSelectActivity.3
            @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.ViewParent
            public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z3) {
                if (UsersSelectActivity.this.ignoreScrollEvent) {
                    UsersSelectActivity.this.ignoreScrollEvent = false;
                    return false;
                }
                rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
                rect.top += UsersSelectActivity.this.fieldY + AndroidUtilities.dp(20.0f);
                rect.bottom += UsersSelectActivity.this.fieldY + AndroidUtilities.dp(50.0f);
                return super.requestChildRectangleOnScreen(view, rect, z3);
            }
        };
        this.scrollView = scrollView;
        scrollView.setVerticalScrollBarEnabled(false);
        AndroidUtilities.setScrollViewEdgeEffectColor(this.scrollView, Theme.getColor(Theme.key_windowBackgroundWhite));
        viewGroup2.addView(this.scrollView);
        SpansContainer spansContainer = new SpansContainer(context);
        this.spansContainer = spansContainer;
        this.scrollView.addView(spansContainer, LayoutHelper.createFrame(-1, -2.0f));
        this.spansContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.UsersSelectActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$0(view);
            }
        });
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context) { // from class: org.telegram.ui.UsersSelectActivity.4
            @Override // org.telegram.ui.Components.EditTextBoldCursor, com.exteragram.messenger.components.ReceiveContentEditText, android.widget.TextView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (UsersSelectActivity.this.currentDeletingSpan != null) {
                    UsersSelectActivity.this.currentDeletingSpan.cancelDeleteAnimation();
                    UsersSelectActivity.this.currentDeletingSpan = null;
                }
                if (motionEvent.getAction() == 0 && !AndroidUtilities.showKeyboard(this)) {
                    clearFocus();
                    requestFocus();
                }
                return super.onTouchEvent(motionEvent);
            }
        };
        this.editText = editTextBoldCursor;
        editTextBoldCursor.setTextSize(1, 16.0f);
        this.editText.setHintColor(Theme.getColor(Theme.key_groupcreate_hintText));
        this.editText.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        this.editText.setCursorColor(Theme.getColor(Theme.key_groupcreate_cursor));
        this.editText.setCursorWidth(1.5f);
        EditTextBoldCursor editTextBoldCursor2 = this.editText;
        editTextBoldCursor2.setInputType(editTextBoldCursor2.getInputType() | 176);
        this.editText.setSingleLine(true);
        this.editText.setBackgroundDrawable(null);
        this.editText.setVerticalScrollBarEnabled(false);
        this.editText.setHorizontalScrollBarEnabled(false);
        this.editText.setTextIsSelectable(false);
        this.editText.setPadding(0, 0, 0, 0);
        this.editText.setImeOptions(268435462);
        this.editText.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        this.spansContainer.addView(this.editText);
        this.editText.setHintText(LocaleController.getString(C2665R.string.SearchForPeopleAndGroups));
        this.editText.setCustomSelectionActionModeCallback(new ActionMode.Callback() { // from class: org.telegram.ui.UsersSelectActivity.5
            @Override // android.view.ActionMode.Callback
            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                return false;
            }

            @Override // android.view.ActionMode.Callback
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                return false;
            }

            @Override // android.view.ActionMode.Callback
            public void onDestroyActionMode(ActionMode actionMode) {
            }

            @Override // android.view.ActionMode.Callback
            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                return false;
            }
        });
        this.editText.setOnKeyListener(new View.OnKeyListener() { // from class: org.telegram.ui.UsersSelectActivity.6
            private boolean wasEmpty;

            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i3, KeyEvent keyEvent) {
                if (i3 == 67) {
                    if (keyEvent.getAction() == 0) {
                        this.wasEmpty = UsersSelectActivity.this.editText.length() == 0;
                    } else if (keyEvent.getAction() == 1 && this.wasEmpty && !UsersSelectActivity.this.allSpans.isEmpty()) {
                        GroupCreateSpan groupCreateSpan = (GroupCreateSpan) UsersSelectActivity.this.allSpans.get(UsersSelectActivity.this.allSpans.size() - 1);
                        UsersSelectActivity.this.spansContainer.removeSpan(groupCreateSpan);
                        if (UsersSelectActivity.this.type == 2) {
                            if (groupCreateSpan.getUid() == -9223372036854775800L) {
                                UsersSelectActivity.this.filterFlags &= -2;
                            } else if (groupCreateSpan.getUid() == -9223372036854775799L) {
                                UsersSelectActivity.this.filterFlags &= -3;
                            } else if (groupCreateSpan.getUid() == Long.MIN_VALUE) {
                                UsersSelectActivity.this.filterFlags &= -5;
                            } else if (groupCreateSpan.getUid() == -9223372036854775807L) {
                                UsersSelectActivity.this.filterFlags &= -9;
                            }
                        } else if (groupCreateSpan.getUid() == Long.MIN_VALUE) {
                            UsersSelectActivity.this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_CONTACTS;
                        } else if (groupCreateSpan.getUid() == -9223372036854775807L) {
                            UsersSelectActivity.this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS;
                        } else if (groupCreateSpan.getUid() == -9223372036854775806L) {
                            UsersSelectActivity.this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_GROUPS;
                        } else if (groupCreateSpan.getUid() == -9223372036854775805L) {
                            UsersSelectActivity.this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_CHANNELS;
                        } else if (groupCreateSpan.getUid() == -9223372036854775804L) {
                            UsersSelectActivity.this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_BOTS;
                        } else if (groupCreateSpan.getUid() == -9223372036854775803L) {
                            UsersSelectActivity.this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_MUTED;
                        } else if (groupCreateSpan.getUid() == -9223372036854775802L) {
                            UsersSelectActivity.this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ;
                        } else if (groupCreateSpan.getUid() == -9223372036854775801L) {
                            UsersSelectActivity.this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED;
                        }
                        UsersSelectActivity.this.updateHint();
                        UsersSelectActivity.this.checkVisibleRows();
                        return true;
                    }
                }
                return false;
            }
        });
        this.editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.UsersSelectActivity.7
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                int length = UsersSelectActivity.this.editText.length();
                UsersSelectActivity usersSelectActivity = UsersSelectActivity.this;
                if (length != 0) {
                    if (!usersSelectActivity.adapter.searching) {
                        UsersSelectActivity.this.searching = true;
                        UsersSelectActivity.this.searchWas = true;
                        UsersSelectActivity.this.adapter.setSearching(true);
                        UsersSelectActivity.this.listView.setFastScrollVisible(false);
                        UsersSelectActivity.this.listView.setVerticalScrollBarEnabled(true);
                        UsersSelectActivity.this.emptyView.title.setText(LocaleController.getString(C2665R.string.NoResult));
                    }
                    UsersSelectActivity.this.emptyView.showProgress(true);
                    UsersSelectActivity.this.adapter.searchDialogs(UsersSelectActivity.this.editText.getText().toString());
                    return;
                }
                usersSelectActivity.closeSearch();
            }
        });
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context);
        this.progressView = flickerLoadingView;
        flickerLoadingView.setViewType(10);
        this.progressView.showDate(false);
        this.progressView.setItemsCount(3);
        FlickerLoadingView flickerLoadingView2 = this.progressView;
        int i3 = Theme.key_actionBarDefaultSubmenuBackground;
        int i4 = Theme.key_listSelector;
        flickerLoadingView2.setColors(i3, i4, i4);
        viewGroup2.addView(this.progressView);
        StickerEmptyView stickerEmptyView = new StickerEmptyView(context, this.progressView, i) { // from class: org.telegram.ui.UsersSelectActivity.8
            @Override // org.telegram.ui.Components.StickerEmptyView, android.view.View
            public void setVisibility(int i5) {
                super.setVisibility(i5);
                if (i5 != 0) {
                    showProgress(false, false);
                }
            }
        };
        this.emptyView = stickerEmptyView;
        stickerEmptyView.showProgress(ContactsController.getInstance(this.currentAccount).isLoadingContacts());
        this.emptyView.title.setText(LocaleController.getString(C2665R.string.NoContacts));
        viewGroup2.addView(this.emptyView);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 1, false);
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setFastScrollEnabled(0);
        this.listView.setEmptyView(this.emptyView);
        RecyclerListView recyclerListView2 = this.listView;
        GroupCreateAdapter groupCreateAdapter = new GroupCreateAdapter(context);
        this.adapter = groupCreateAdapter;
        recyclerListView2.setAdapter(groupCreateAdapter);
        this.listView.setLayoutManager(linearLayoutManager);
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setVerticalScrollbarPosition(LocaleController.isRTL ? 1 : 2);
        this.listView.addItemDecoration(new ItemDecoration());
        viewGroup2.addView(this.listView);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.UsersSelectActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i5) {
                this.f$0.lambda$createView$1(context, view, i5);
            }
        });
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.UsersSelectActivity.9
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i5) {
                if (i5 == 1) {
                    AndroidUtilities.hideKeyboard(UsersSelectActivity.this.editText);
                }
            }
        });
        this.floatingButtonLp = FragmentFloatingButton.createDefaultLayoutParams();
        FragmentFloatingButton fragmentFloatingButton = new FragmentFloatingButton(context, this.resourceProvider);
        this.floatingButton = fragmentFloatingButton;
        fragmentFloatingButton.setImageResource(C2665R.drawable.floating_check);
        viewGroup2.addView(this.floatingButton, this.floatingButtonLp);
        this.floatingButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.UsersSelectActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$2(view);
            }
        });
        this.floatingButton.setContentDescription(LocaleController.getString(C2665R.string.Next));
        int i5 = this.isInclude ? 5 : 3;
        for (int i6 = 1; i6 <= i5; i6++) {
            String str = "non_contacts";
            int i7 = 4;
            if (this.type == 2) {
                if (i6 == 1) {
                    str = "existing_chats";
                    i7 = 1;
                } else if (i6 == 2 && !this.doNotNewChats) {
                    str = "new_chats";
                    i7 = 2;
                } else if (i6 == (!this.doNotNewChats ? 1 : 0) + 2) {
                    str = "contacts";
                } else {
                    i7 = 8;
                }
            } else if (this.isInclude) {
                if (i6 == 1) {
                    i7 = MessagesController.DIALOG_FILTER_FLAG_CONTACTS;
                    str = "contacts";
                } else if (i6 == 2) {
                    i7 = MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS;
                } else if (i6 == 3) {
                    i7 = MessagesController.DIALOG_FILTER_FLAG_GROUPS;
                    str = "groups";
                } else if (i6 == 4) {
                    i7 = MessagesController.DIALOG_FILTER_FLAG_CHANNELS;
                    str = "channels";
                } else {
                    i7 = MessagesController.DIALOG_FILTER_FLAG_BOTS;
                    str = "bots";
                }
            } else if (i6 == 1) {
                i7 = MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_MUTED;
                str = "muted";
            } else if (i6 == 2) {
                i7 = MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ;
                str = "read";
            } else {
                i7 = MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED;
                str = "archived";
            }
            if ((this.filterFlags & i7) != 0) {
                GroupCreateSpan groupCreateSpan = new GroupCreateSpan(this.editText.getContext(), str);
                this.spansContainer.addSpan(groupCreateSpan, false);
                groupCreateSpan.setOnClickListener(this);
            }
        }
        ArrayList<Long> arrayList = this.initialIds;
        if (arrayList != null && !arrayList.isEmpty()) {
            int size = this.initialIds.size();
            for (int i8 = 0; i8 < size; i8++) {
                Long l = this.initialIds.get(i8);
                if (l.longValue() > 0) {
                    chat = getMessagesController().getUser(l);
                } else {
                    chat = getMessagesController().getChat(Long.valueOf(-l.longValue()));
                }
                if (chat != null) {
                    GroupCreateSpan groupCreateSpan2 = new GroupCreateSpan(this.editText.getContext(), chat);
                    this.spansContainer.addSpan(groupCreateSpan2, false);
                    groupCreateSpan2.setOnClickListener(this);
                }
            }
        }
        updateHint();
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(View view) {
        this.editText.clearFocus();
        this.editText.requestFocus();
        AndroidUtilities.showKeyboard(this.editText);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0091  */
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$createView$1(Context context, View view, int i) {
        long j;
        UsersSelectActivity usersSelectActivity;
        boolean zIsChecked;
        if (view instanceof GroupCreateUserCell) {
            GroupCreateUserCell groupCreateUserCell = (GroupCreateUserCell) view;
            Object object = groupCreateUserCell.getObject();
            boolean z = object instanceof String;
            if (z) {
                j = -9223372036854775807L;
                int i2 = 4;
                if (this.type != 2) {
                    if (this.isInclude) {
                        if (i == 1) {
                            i2 = MessagesController.DIALOG_FILTER_FLAG_CONTACTS;
                            j = Long.MIN_VALUE;
                        } else if (i == 2) {
                            i2 = MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS;
                        } else if (i == 3) {
                            i2 = MessagesController.DIALOG_FILTER_FLAG_GROUPS;
                            j = -9223372036854775806L;
                        } else if (i == 4) {
                            i2 = MessagesController.DIALOG_FILTER_FLAG_CHANNELS;
                            j = -9223372036854775805L;
                        } else {
                            i2 = MessagesController.DIALOG_FILTER_FLAG_BOTS;
                            j = -9223372036854775804L;
                        }
                    } else if (i == 1) {
                        i2 = MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_MUTED;
                        j = -9223372036854775803L;
                    } else if (i == 2) {
                        i2 = MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ;
                        j = -9223372036854775802L;
                    } else {
                        i2 = MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED;
                        j = -9223372036854775801L;
                    }
                    zIsChecked = groupCreateUserCell.isChecked();
                    int i3 = this.filterFlags;
                    if (!zIsChecked) {
                    }
                } else {
                    if (i == 1) {
                        j = -9223372036854775800L;
                        i2 = 1;
                    } else if (i == 2 && !this.doNotNewChats) {
                        j = -9223372036854775799L;
                        i2 = 2;
                    } else if (i == (!this.doNotNewChats ? 1 : 0) + 2) {
                        j = Long.MIN_VALUE;
                    } else {
                        i2 = 8;
                    }
                    zIsChecked = groupCreateUserCell.isChecked();
                    int i32 = this.filterFlags;
                    if (!zIsChecked) {
                        this.filterFlags = (~i2) & i32;
                    } else {
                        this.filterFlags = i32 | i2;
                    }
                }
            } else if (object instanceof TLRPC.User) {
                j = ((TLRPC.User) object).id;
            } else {
                if (!(object instanceof TLRPC.Chat)) {
                    return;
                }
                TLRPC.Chat chat = (TLRPC.Chat) object;
                j = -chat.id;
                if (this.type == 1 && !ChatObject.canUserDoAdminAction(chat, 13)) {
                    BulletinFactory.of(this).createErrorBulletin(LocaleController.getString(C2665R.string.NeedAdminRightForSetAutoDeleteTimer)).show();
                    return;
                }
            }
            boolean z2 = this.selectedContacts.indexOfKey(j) >= 0;
            if (z2) {
                this.spansContainer.removeSpan(this.selectedContacts.get(j));
                usersSelectActivity = this;
            } else {
                if ((!z && !getUserConfig().isPremium() && this.selectedCount >= MessagesController.getInstance(this.currentAccount).dialogFiltersChatsLimitDefault) || this.selectedCount >= MessagesController.getInstance(this.currentAccount).dialogFiltersChatsLimitPremium) {
                    LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(this, context, 4, this.currentAccount, null);
                    limitReachedBottomSheet.setCurrentValue(this.selectedCount);
                    showDialog(limitReachedBottomSheet);
                    return;
                }
                usersSelectActivity = this;
                if (object instanceof TLRPC.User) {
                    MessagesController.getInstance(usersSelectActivity.currentAccount).putUser((TLRPC.User) object, !usersSelectActivity.searching);
                } else if (object instanceof TLRPC.Chat) {
                    MessagesController.getInstance(usersSelectActivity.currentAccount).putChat((TLRPC.Chat) object, !usersSelectActivity.searching);
                }
                GroupCreateSpan groupCreateSpan = new GroupCreateSpan(usersSelectActivity.editText.getContext(), object);
                usersSelectActivity.spansContainer.addSpan(groupCreateSpan, true);
                groupCreateSpan.setOnClickListener(usersSelectActivity);
            }
            usersSelectActivity.updateHint();
            if (usersSelectActivity.searching || usersSelectActivity.searchWas) {
                AndroidUtilities.showKeyboard(usersSelectActivity.editText);
            } else {
                groupCreateUserCell.setChecked(!z2, true);
            }
            if (usersSelectActivity.editText.length() > 0) {
                usersSelectActivity.editText.setText((CharSequence) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(View view) {
        onDonePressed(true);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        EditTextBoldCursor editTextBoldCursor = this.editText;
        if (editTextBoldCursor != null) {
            editTextBoldCursor.requestFocus();
        }
        AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.contactsDidLoad) {
            StickerEmptyView stickerEmptyView = this.emptyView;
            if (stickerEmptyView != null) {
                stickerEmptyView.showProgress(false);
            }
            GroupCreateAdapter groupCreateAdapter = this.adapter;
            if (groupCreateAdapter != null) {
                groupCreateAdapter.notifyDataSetChanged();
                return;
            }
            return;
        }
        if (i == NotificationCenter.updateInterfaces) {
            if (this.listView != null) {
                int iIntValue = ((Integer) objArr[0]).intValue();
                int childCount = this.listView.getChildCount();
                if ((MessagesController.UPDATE_MASK_AVATAR & iIntValue) == 0 && (MessagesController.UPDATE_MASK_NAME & iIntValue) == 0 && (MessagesController.UPDATE_MASK_STATUS & iIntValue) == 0) {
                    return;
                }
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = this.listView.getChildAt(i3);
                    if (childAt instanceof GroupCreateUserCell) {
                        ((GroupCreateUserCell) childAt).update(iIntValue);
                    }
                }
                return;
            }
            return;
        }
        if (i == NotificationCenter.chatDidCreated) {
            removeSelfFromStack();
        }
    }

    @Keep
    public void setContainerHeight(int i) {
        this.containerHeight = i;
        SpansContainer spansContainer = this.spansContainer;
        if (spansContainer != null) {
            spansContainer.requestLayout();
        }
    }

    @Keep
    public int getContainerHeight() {
        return this.containerHeight;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00aa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void checkVisibleRows() {
        long j;
        int childCount = this.listView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.listView.getChildAt(i);
            if (childAt instanceof GroupCreateUserCell) {
                GroupCreateUserCell groupCreateUserCell = (GroupCreateUserCell) childAt;
                Object object = groupCreateUserCell.getObject();
                if (object instanceof String) {
                    String str = (String) object;
                    j = -9223372036854775800L;
                    switch (str.hashCode()) {
                        case -1716307998:
                            str.equals("archived");
                            break;
                        case -1237460524:
                            j = str.equals("groups") ? -9223372036854775806L : -9223372036854775801L;
                            break;
                        case -1197490811:
                            if (str.equals("non_contacts")) {
                                j = -9223372036854775807L;
                                break;
                            }
                            break;
                        case -567451565:
                            if (str.equals("contacts")) {
                                j = Long.MIN_VALUE;
                                break;
                            }
                            break;
                        case -268161860:
                            if (!str.equals("new_chats")) {
                            }
                            break;
                        case 3029900:
                            if (str.equals("bots")) {
                                j = -9223372036854775804L;
                                break;
                            }
                            break;
                        case 3496342:
                            if (str.equals("read")) {
                                j = -9223372036854775802L;
                                break;
                            }
                            break;
                        case 104264043:
                            if (str.equals("muted")) {
                                j = -9223372036854775803L;
                                break;
                            }
                            break;
                        case 151051367:
                            if (!str.equals("existing_chats")) {
                            }
                            break;
                        case 1432626128:
                            if (str.equals("channels")) {
                                j = -9223372036854775805L;
                                break;
                            }
                            break;
                    }
                } else if (object instanceof TLRPC.User) {
                    j = ((TLRPC.User) object).id;
                } else {
                    j = object instanceof TLRPC.Chat ? -((TLRPC.Chat) object).id : 0L;
                }
                if (j != 0) {
                    groupCreateUserCell.setChecked(this.selectedContacts.indexOfKey(j) >= 0, true);
                    groupCreateUserCell.setCheckBoxEnabled(true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onDonePressed(boolean z) {
        ArrayList<Long> arrayList = new ArrayList<>();
        for (int i = 0; i < this.selectedContacts.size(); i++) {
            if (this.selectedContacts.keyAt(i) > -9223372036854775799L) {
                arrayList.add(Long.valueOf(this.selectedContacts.keyAt(i)));
            }
        }
        FilterUsersActivityDelegate filterUsersActivityDelegate = this.delegate;
        if (filterUsersActivityDelegate != null) {
            filterUsersActivityDelegate.didSelectChats(arrayList, this.filterFlags);
        }
        finishFragment();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeSearch() {
        this.searching = false;
        this.searchWas = false;
        this.adapter.setSearching(false);
        this.adapter.searchDialogs(null);
        this.listView.setFastScrollVisible(true);
        this.listView.setVerticalScrollBarEnabled(false);
        this.emptyView.title.setText(LocaleController.getString(C2665R.string.NoContacts));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHint() {
        int i = this.type;
        if (i == 0) {
            int i2 = getUserConfig().isPremium() ? getMessagesController().dialogFiltersChatsLimitPremium : getMessagesController().dialogFiltersChatsLimitDefault;
            int i3 = this.selectedCount;
            ActionBar actionBar = this.actionBar;
            if (i3 == 0) {
                actionBar.setSubtitle(LocaleController.formatString("MembersCountZero", C2665R.string.MembersCountZero, LocaleController.formatPluralString("Chats", i2, new Object[0])));
                return;
            } else {
                actionBar.setSubtitle(String.format(LocaleController.getPluralString("MembersCountSelected", i3), Integer.valueOf(this.selectedCount), Integer.valueOf(i2)));
                return;
            }
        }
        if (i == 1) {
            this.actionBar.setTitle(_UrlKt.FRAGMENT_ENCODE_SET);
            this.actionBar.setSubtitle(_UrlKt.FRAGMENT_ENCODE_SET);
            int i4 = this.selectedCount;
            AnimatedAvatarContainer animatedAvatarContainer = this.animatedAvatarContainer;
            if (i4 == 0) {
                animatedAvatarContainer.getTitle().setText(LocaleController.getString(C2665R.string.SelectChats), true);
                int i5 = this.ttlPeriod;
                AnimatedAvatarContainer animatedAvatarContainer2 = this.animatedAvatarContainer;
                if (i5 > 0) {
                    animatedAvatarContainer2.getSubtitleTextView().setText(LocaleController.getString(C2665R.string.SelectChatsForAutoDelete), true);
                    return;
                } else {
                    animatedAvatarContainer2.getSubtitleTextView().setText(LocaleController.getString(C2665R.string.SelectChatsForDisableAutoDelete), true);
                    return;
                }
            }
            AnimatedTextView title = animatedAvatarContainer.getTitle();
            int i6 = this.selectedCount;
            title.setText(LocaleController.formatPluralString("Chats", i6, Integer.valueOf(i6)));
            int i7 = this.ttlPeriod;
            AnimatedAvatarContainer animatedAvatarContainer3 = this.animatedAvatarContainer;
            if (i7 > 0) {
                animatedAvatarContainer3.getSubtitleTextView().setText(LocaleController.getString(C2665R.string.SelectChatsForAutoDelete2));
            } else {
                animatedAvatarContainer3.getSubtitleTextView().setText(LocaleController.getString(C2665R.string.SelectChatsForDisableAutoDelete2));
            }
        }
    }

    public void setDelegate(FilterUsersActivityDelegate filterUsersActivityDelegate) {
        this.delegate = filterUsersActivityDelegate;
    }

    public class GroupCreateAdapter extends RecyclerListView.FastScrollAdapter {
        private Context context;
        private SearchAdapterHelper searchAdapterHelper;
        private Runnable searchRunnable;
        private boolean searching;
        private final int usersStartRow;
        private ArrayList<Object> searchResult = new ArrayList<>();
        private ArrayList<CharSequence> searchResultNames = new ArrayList<>();
        private ArrayList<TLObject> contacts = new ArrayList<>();

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public String getLetter(int i) {
            return null;
        }

        public GroupCreateAdapter(Context context) {
            this.context = context;
            if (UsersSelectActivity.this.noChatTypes) {
                this.usersStartRow = 0;
            } else if (UsersSelectActivity.this.type == 2) {
                this.usersStartRow = (!UsersSelectActivity.this.doNotNewChats ? 1 : 0) + 5;
            } else if (UsersSelectActivity.this.type == 0) {
                if (UsersSelectActivity.this.isInclude) {
                    this.usersStartRow = 7;
                } else {
                    this.usersStartRow = 5;
                }
            } else {
                this.usersStartRow = 0;
            }
            boolean z = UsersSelectActivity.this.type != 2;
            boolean z2 = UsersSelectActivity.this.type != 2;
            ArrayList<TLRPC.Dialog> allDialogs = UsersSelectActivity.this.getMessagesController().getAllDialogs();
            int size = allDialogs.size();
            int i = 0;
            boolean z3 = false;
            while (i < size) {
                TLRPC.Dialog dialog = allDialogs.get(i);
                if (!DialogObject.isEncryptedDialog(dialog.id)) {
                    if (DialogObject.isUserDialog(dialog.id)) {
                        TLRPC.User user = UsersSelectActivity.this.getMessagesController().getUser(Long.valueOf(dialog.id));
                        if (user != null && ((UsersSelectActivity.this.allowSelf || !UserObject.isUserSelf(user)) && (!user.bot || z))) {
                            this.contacts.add(user);
                            if (UserObject.isUserSelf(user)) {
                                z3 = true;
                            }
                        }
                    } else {
                        TLRPC.Chat chat = UsersSelectActivity.this.getMessagesController().getChat(Long.valueOf(-dialog.id));
                        if (z2 && chat != null) {
                            this.contacts.add(chat);
                        }
                    }
                }
                i++;
                z3 = z3;
            }
            if (!z3 && UsersSelectActivity.this.allowSelf) {
                this.contacts.add(0, UsersSelectActivity.this.getMessagesController().getUser(Long.valueOf(UsersSelectActivity.this.getUserConfig().clientUserId)));
            }
            SearchAdapterHelper searchAdapterHelper = new SearchAdapterHelper(false);
            this.searchAdapterHelper = searchAdapterHelper;
            searchAdapterHelper.setAllowGlobalResults(false);
            this.searchAdapterHelper.setDelegate(new SearchAdapterHelper.SearchAdapterHelperDelegate() { // from class: org.telegram.ui.UsersSelectActivity$GroupCreateAdapter$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public final void onDataSetChanged(int i2) {
                    this.f$0.lambda$new$0(i2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(int i) {
            if (this.searchRunnable == null && !this.searchAdapterHelper.isSearchInProgress()) {
                UsersSelectActivity.this.emptyView.showProgress(false);
            }
            notifyDataSetChanged();
        }

        public void setSearching(boolean z) {
            if (this.searching == z) {
                return;
            }
            this.searching = z;
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.searching) {
                return this.searchResult.size() + this.searchAdapterHelper.getLocalServerSearch().size() + this.searchAdapterHelper.getGlobalSearch().size();
            }
            UsersSelectActivity usersSelectActivity = UsersSelectActivity.this;
            int i = 0;
            if (!usersSelectActivity.noChatTypes) {
                int i2 = usersSelectActivity.type;
                UsersSelectActivity usersSelectActivity2 = UsersSelectActivity.this;
                if (i2 == 2) {
                    i = (!usersSelectActivity2.doNotNewChats ? 1 : 0) + 3;
                } else if (usersSelectActivity2.type == 0) {
                    i = UsersSelectActivity.this.isInclude ? 7 : 5;
                }
            }
            return i + this.contacts.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View groupCreateUserCell;
            if (i == 1) {
                groupCreateUserCell = new GroupCreateUserCell(this.context, 1, 0, true);
            } else {
                groupCreateUserCell = new GraySectionCell(this.context);
            }
            return new RecyclerListView.Holder(groupCreateUserCell);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:101:0x01f3  */
        /* JADX WARN: Removed duplicated region for block: B:102:0x01f9  */
        /* JADX WARN: Removed duplicated region for block: B:109:0x020f  */
        /* JADX WARN: Removed duplicated region for block: B:122:0x0271 A[PHI: r6
  0x0271: PHI (r6v2 ??) = (r6v1 ??), (r6v1 ??), (r6v8 ??) binds: [B:107:0x020c, B:112:0x0219, B:152:0x0271] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:136:0x02f4  */
        /* JADX WARN: Removed duplicated region for block: B:137:0x02fa  */
        /* JADX WARN: Removed duplicated region for block: B:140:0x0308  */
        /* JADX WARN: Removed duplicated region for block: B:141:0x030b  */
        /* JADX WARN: Removed duplicated region for block: B:144:0x0318  */
        /* JADX WARN: Removed duplicated region for block: B:155:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r1v2, types: [android.view.View, org.telegram.ui.Cells.GroupCreateUserCell] */
        /* JADX WARN: Type inference failed for: r6v0 */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v10 */
        /* JADX WARN: Type inference failed for: r6v11 */
        /* JADX WARN: Type inference failed for: r6v12 */
        /* JADX WARN: Type inference failed for: r6v13 */
        /* JADX WARN: Type inference failed for: r6v14 */
        /* JADX WARN: Type inference failed for: r6v16 */
        /* JADX WARN: Type inference failed for: r6v17 */
        /* JADX WARN: Type inference failed for: r6v18 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.CharSequence] */
        /* JADX WARN: Type inference failed for: r6v8, types: [android.text.SpannableStringBuilder] */
        /* JADX WARN: Type inference failed for: r6v9 */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            Object obj;
            String string;
            CharSequence charSequence;
            long j;
            long j2;
            boolean zCanUserDoAdminAction;
            boolean z;
            ?? r6;
            SpannableStringBuilder spannableStringBuilder;
            boolean z2;
            String publicUsername;
            int itemViewType = viewHolder.getItemViewType();
            int i2 = 2;
            if (itemViewType != 1) {
                if (itemViewType != 2) {
                    return;
                }
                GraySectionCell graySectionCell = (GraySectionCell) viewHolder.itemView;
                if (i == 0 && !UsersSelectActivity.this.noChatTypes) {
                    graySectionCell.setText(LocaleController.getString(C2665R.string.FilterChatTypes));
                    return;
                } else {
                    graySectionCell.setText(LocaleController.getString(C2665R.string.FilterChats));
                    return;
                }
            }
            ?? r1 = (GroupCreateUserCell) viewHolder.itemView;
            ?? spannableStringBuilder2 = 0;
            spannableStringBuilder2 = 0;
            spannableStringBuilder2 = 0;
            spannableStringBuilder2 = 0;
            if (this.searching) {
                int size = this.searchResult.size();
                int size2 = this.searchAdapterHelper.getGlobalSearch().size();
                int size3 = this.searchAdapterHelper.getLocalServerSearch().size();
                if (i >= 0 && i < size) {
                    obj = this.searchResult.get(i);
                } else if (i >= size && i < size3 + size) {
                    obj = this.searchAdapterHelper.getLocalServerSearch().get(i - size);
                } else {
                    obj = (i <= size + size3 || i >= (size2 + size) + size3) ? null : this.searchAdapterHelper.getGlobalSearch().get((i - size) - size3);
                }
                if (obj != null) {
                    if (obj instanceof TLRPC.User) {
                        publicUsername = ((TLRPC.User) obj).username;
                    } else {
                        publicUsername = ChatObject.getPublicUsername((TLRPC.Chat) obj);
                    }
                    if (i < size) {
                        charSequence = this.searchResultNames.get(i);
                        if (charSequence != null && !TextUtils.isEmpty(publicUsername)) {
                            if (charSequence.toString().startsWith("@" + publicUsername)) {
                                spannableStringBuilder2 = charSequence;
                                charSequence = null;
                            }
                        }
                    } else if (i > size && !TextUtils.isEmpty(publicUsername)) {
                        String lastFoundUsername = this.searchAdapterHelper.getLastFoundUsername();
                        if (lastFoundUsername.startsWith("@")) {
                            lastFoundUsername = lastFoundUsername.substring(1);
                        }
                        try {
                            SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder();
                            spannableStringBuilder3.append((CharSequence) "@");
                            spannableStringBuilder3.append((CharSequence) publicUsername);
                            int iIndexOfIgnoreCase = AndroidUtilities.indexOfIgnoreCase(publicUsername, lastFoundUsername);
                            if (iIndexOfIgnoreCase != -1) {
                                int length = lastFoundUsername.length();
                                if (iIndexOfIgnoreCase == 0) {
                                    length++;
                                } else {
                                    iIndexOfIgnoreCase++;
                                }
                                spannableStringBuilder3.setSpan(new ForegroundColorSpan(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4)), iIndexOfIgnoreCase, length + iIndexOfIgnoreCase, 33);
                            }
                            charSequence = null;
                            spannableStringBuilder2 = spannableStringBuilder3;
                        } catch (Exception unused) {
                            charSequence = null;
                            spannableStringBuilder2 = publicUsername;
                        }
                    }
                }
                if (!(obj instanceof TLRPC.User)) {
                    j = ((TLRPC.User) obj).id;
                } else {
                    j = obj instanceof TLRPC.Chat ? -((TLRPC.Chat) obj).id : 0L;
                }
                if (UsersSelectActivity.this.type == 2) {
                    j2 = 0;
                    zCanUserDoAdminAction = true;
                    z = false;
                    r6 = spannableStringBuilder2;
                } else if (UsersSelectActivity.this.type == 0) {
                    if (!this.searching) {
                        Paint.FontMetricsInt fontMetricsInt = r1.getStatusTextView().getPaint().getFontMetricsInt();
                        spannableStringBuilder2 = new SpannableStringBuilder();
                        ArrayList<MessagesController.DialogFilter> arrayList = UsersSelectActivity.this.getMessagesController().dialogFilters;
                        int size4 = arrayList.size();
                        for (int i3 = 0; i3 < size4; i3++) {
                            MessagesController.DialogFilter dialogFilter = arrayList.get(i3);
                            if (dialogFilter.includesDialog(UsersSelectActivity.this.getAccountInstance(), j)) {
                                if (spannableStringBuilder2.length() > 0) {
                                    spannableStringBuilder2.append(", ");
                                }
                                spannableStringBuilder2.append(MessageObject.replaceAnimatedEmoji(Emoji.replaceEmoji(new SpannableStringBuilder(dialogFilter.name), fontMetricsInt, false), dialogFilter.entities, fontMetricsInt));
                            }
                        }
                    }
                    j2 = 0;
                    zCanUserDoAdminAction = true;
                    z = false;
                    r6 = spannableStringBuilder2;
                } else {
                    j2 = 0;
                    int i4 = UsersSelectActivity.this.getMessagesController().dialogs_dict.get(j) != null ? UsersSelectActivity.this.getMessagesController().dialogs_dict.get(j).ttl_period : 0;
                    if (i4 > 0) {
                        SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder();
                        spannableStringBuilder4.append((CharSequence) "d");
                        spannableStringBuilder4.setSpan(new ColoredImageSpan(C2665R.drawable.msg_mini_fireon), 0, 1, 0);
                        spannableStringBuilder4.append((CharSequence) LocaleController.formatString(C2665R.string.AutoDeleteAfter, LocaleController.formatTTLString(i4)).toLowerCase());
                        z2 = true;
                        spannableStringBuilder = spannableStringBuilder4;
                    } else {
                        SpannableStringBuilder spannableStringBuilder5 = new SpannableStringBuilder();
                        spannableStringBuilder5.append((CharSequence) "d");
                        spannableStringBuilder5.setSpan(new ColoredImageSpan(C2665R.drawable.msg_mini_fireoff), 0, 1, 0);
                        spannableStringBuilder5.append((CharSequence) LocaleController.getString(C2665R.string.AutoDeleteDisabled));
                        spannableStringBuilder = spannableStringBuilder5;
                        z2 = false;
                    }
                    if (obj instanceof TLRPC.Chat) {
                        zCanUserDoAdminAction = ChatObject.canUserDoAdminAction((TLRPC.Chat) obj, 13);
                        z = z2;
                        r6 = spannableStringBuilder;
                    } else {
                        zCanUserDoAdminAction = true;
                        z = z2;
                        r6 = spannableStringBuilder;
                    }
                }
                if (!zCanUserDoAdminAction) {
                    r1.setAlpha(1.0f);
                } else {
                    r1.setAlpha(0.5f);
                }
                r1.setObject(obj, charSequence, r6);
                r1.getStatusTextView().setTextColor(Theme.getColor(!z ? Theme.key_windowBackgroundWhiteBlueText : Theme.key_windowBackgroundWhiteGrayText));
                if (j == j2) {
                    r1.setChecked(UsersSelectActivity.this.selectedContacts.indexOfKey(j) >= 0, false);
                    r1.setCheckBoxEnabled(true);
                    return;
                }
                return;
            }
            int i5 = this.usersStartRow;
            if (i < i5) {
                String str = "non_contacts";
                if (UsersSelectActivity.this.type == 2) {
                    if (i == 1) {
                        string = LocaleController.getString(C2665R.string.FilterExistingChats);
                        str = "existing_chats";
                        i2 = 1;
                    } else if (i == 2 && !UsersSelectActivity.this.doNotNewChats) {
                        string = LocaleController.getString(C2665R.string.FilterNewChats);
                        str = "new_chats";
                    } else if (i == (!UsersSelectActivity.this.doNotNewChats ? 1 : 0) + 2) {
                        string = LocaleController.getString(C2665R.string.FilterContacts);
                        i2 = 4;
                        str = "contacts";
                    } else {
                        string = LocaleController.getString(C2665R.string.FilterNonContacts);
                        i2 = 8;
                    }
                } else if (UsersSelectActivity.this.isInclude) {
                    if (i == 1) {
                        string = LocaleController.getString(C2665R.string.FilterContacts);
                        i2 = MessagesController.DIALOG_FILTER_FLAG_CONTACTS;
                        str = "contacts";
                    } else if (i == 2) {
                        string = LocaleController.getString(C2665R.string.FilterNonContacts);
                        i2 = MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS;
                    } else if (i == 3) {
                        string = LocaleController.getString(C2665R.string.FilterGroups);
                        i2 = MessagesController.DIALOG_FILTER_FLAG_GROUPS;
                        str = "groups";
                    } else if (i == 4) {
                        string = LocaleController.getString(C2665R.string.FilterChannels);
                        i2 = MessagesController.DIALOG_FILTER_FLAG_CHANNELS;
                        str = "channels";
                    } else {
                        string = LocaleController.getString(C2665R.string.FilterBots);
                        i2 = MessagesController.DIALOG_FILTER_FLAG_BOTS;
                        str = "bots";
                    }
                } else if (i == 1) {
                    string = LocaleController.getString(C2665R.string.FilterMuted);
                    i2 = MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_MUTED;
                    str = "muted";
                } else if (i == 2) {
                    string = LocaleController.getString(C2665R.string.FilterRead);
                    i2 = MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ;
                    str = "read";
                } else {
                    string = LocaleController.getString(C2665R.string.FilterArchived);
                    i2 = MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED;
                    str = "archived";
                }
                r1.setObject(str, string, null);
                r1.setChecked((UsersSelectActivity.this.filterFlags & i2) == i2, false);
                r1.setCheckBoxEnabled(true);
                return;
            }
            obj = this.contacts.get(i - i5);
            charSequence = null;
            if (!(obj instanceof TLRPC.User)) {
            }
            if (UsersSelectActivity.this.type == 2) {
            }
            if (!zCanUserDoAdminAction) {
            }
            r1.setObject(obj, charSequence, r6);
            r1.getStatusTextView().setTextColor(Theme.getColor(!z ? Theme.key_windowBackgroundWhiteBlueText : Theme.key_windowBackgroundWhiteGrayText));
            if (j == j2) {
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (this.searching) {
                return 1;
            }
            UsersSelectActivity usersSelectActivity = UsersSelectActivity.this;
            if (usersSelectActivity.noChatTypes) {
                if (i == 0) {
                    return 2;
                }
            } else if (usersSelectActivity.type == 2) {
                if (i == 0 || i == (!UsersSelectActivity.this.doNotNewChats ? 1 : 0) + 4) {
                    return 2;
                }
            } else if (UsersSelectActivity.this.type == 0) {
                if (UsersSelectActivity.this.isInclude) {
                    if (i == 0 || i == 6) {
                        return 2;
                    }
                } else if (i == 0 || i == 4) {
                    return 2;
                }
            }
            return 1;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public void getPositionForScrollProgress(RecyclerListView recyclerListView, float f, int[] iArr) {
            iArr[0] = (int) (getItemCount() * f);
            iArr[1] = 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (view instanceof GroupCreateUserCell) {
                ((GroupCreateUserCell) view).recycle();
            }
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 1;
        }

        public void searchDialogs(final String str) {
            if (this.searchRunnable != null) {
                Utilities.searchQueue.cancelRunnable(this.searchRunnable);
                this.searchRunnable = null;
            }
            final boolean z = UsersSelectActivity.this.type != 2;
            final boolean z2 = UsersSelectActivity.this.type != 2;
            if (str == null) {
                this.searchResult.clear();
                this.searchResultNames.clear();
                this.searchAdapterHelper.mergeResults(null);
                this.searchAdapterHelper.queryServerSearch(null, true, false, false, false, false, 0L, false, 0, 0);
                notifyDataSetChanged();
                return;
            }
            DispatchQueue dispatchQueue = Utilities.searchQueue;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.UsersSelectActivity$GroupCreateAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$searchDialogs$3(str, z2, z);
                }
            };
            this.searchRunnable = runnable;
            dispatchQueue.postRunnable(runnable, 300L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$searchDialogs$3(final String str, final boolean z, final boolean z2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.UsersSelectActivity$GroupCreateAdapter$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$searchDialogs$2(str, z, z2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$searchDialogs$2(final String str, final boolean z, final boolean z2) {
            this.searchAdapterHelper.queryServerSearch(str, true, z, z, UsersSelectActivity.this.allowSelf, false, 0L, false, 0, 0);
            DispatchQueue dispatchQueue = Utilities.searchQueue;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.UsersSelectActivity$GroupCreateAdapter$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$searchDialogs$1(str, z2, z);
                }
            };
            this.searchRunnable = runnable;
            dispatchQueue.postRunnable(runnable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:30:0x009d A[PHI: r4 r5 r19
  0x009d: PHI (r4v2 java.lang.String) = (r4v1 java.lang.String), (r4v6 java.lang.String), (r4v1 java.lang.String), (r4v1 java.lang.String) binds: [B:37:0x00c4, B:76:0x009d, B:34:0x00b2, B:29:0x009b] A[DONT_GENERATE, DONT_INLINE]
  0x009d: PHI (r5v2 char) = (r5v1 char), (r5v4 char), (r5v1 char), (r5v1 char) binds: [B:37:0x00c4, B:76:0x009d, B:34:0x00b2, B:29:0x009b] A[DONT_GENERATE, DONT_INLINE]
  0x009d: PHI (r19v2 int) = (r19v1 int), (r19v4 int), (r19v5 int), (r19v5 int) binds: [B:37:0x00c4, B:76:0x009d, B:34:0x00b2, B:29:0x009b] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00db  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00e2  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$searchDialogs$1(String str, boolean z, boolean z2) {
            int i;
            String publicUsername;
            String str2;
            char c2;
            String translitString;
            int i2;
            int i3;
            String lowerCase = str.trim().toLowerCase();
            if (lowerCase.length() == 0) {
                updateSearchResults(new ArrayList<>(), new ArrayList<>());
                return;
            }
            String translitString2 = LocaleController.getInstance().getTranslitString(lowerCase);
            String str3 = null;
            if (lowerCase.equals(translitString2) || translitString2.length() == 0) {
                translitString2 = null;
            }
            int i4 = 0;
            char c3 = 1;
            int i5 = (translitString2 != null ? 1 : 0) + 1;
            String[] strArr = new String[i5];
            strArr[0] = lowerCase;
            if (translitString2 != null) {
                strArr[1] = translitString2;
            }
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList<CharSequence> arrayList2 = new ArrayList<>();
            int i6 = 0;
            while (i6 < this.contacts.size()) {
                TLObject tLObject = this.contacts.get(i6);
                int i7 = 3;
                String[] strArr2 = new String[3];
                boolean z3 = tLObject instanceof TLRPC.User;
                if (z3) {
                    TLRPC.User user = (TLRPC.User) tLObject;
                    i = i4;
                    strArr2[i] = ContactsController.formatName(user.first_name, user.last_name).toLowerCase();
                    publicUsername = UserObject.getPublicUsername(user);
                    if (UserObject.isReplyUser(user)) {
                        strArr2[2] = LocaleController.getString(C2665R.string.RepliesTitle).toLowerCase();
                    } else if (UserObject.isUserSelf(user)) {
                        if (UsersSelectActivity.this.allowSelf) {
                            strArr2[2] = LocaleController.getString(C2665R.string.SavedMessages).toLowerCase();
                        }
                        str2 = str3;
                        c2 = c3;
                    } else if (user.bot && !z) {
                        str2 = str3;
                        c2 = c3;
                    }
                    translitString = LocaleController.getInstance().getTranslitString(strArr2[i]);
                    strArr2[c3] = translitString;
                    if (strArr2[i].equals(translitString)) {
                        strArr2[c3] = str3;
                    }
                    i2 = i;
                    int i8 = i2;
                    while (i2 < i5) {
                        String str4 = strArr[i2];
                        int i9 = i;
                        while (i9 < i7) {
                            String str5 = strArr2[i9];
                            if (str5 != null) {
                                if (!str5.startsWith(str4)) {
                                    i3 = i9;
                                    if (str5.contains(" " + str4)) {
                                    }
                                }
                                i8 = 1;
                                break;
                            }
                            i3 = i9;
                            i9 = i3 + 1;
                            i7 = 3;
                        }
                        if (i8 == 0 && publicUsername != null && publicUsername.toLowerCase().startsWith(str4)) {
                            i8 = 2;
                        }
                        if (i8 != 0) {
                            c2 = 1;
                            if (i8 == 1) {
                                if (z3) {
                                    TLRPC.User user2 = (TLRPC.User) tLObject;
                                    arrayList2.add(AndroidUtilities.generateSearchName(user2.first_name, user2.last_name, str4));
                                } else {
                                    arrayList2.add(AndroidUtilities.generateSearchName(((TLRPC.Chat) tLObject).title, null, str4));
                                }
                                str2 = null;
                            } else {
                                str2 = null;
                                arrayList2.add(AndroidUtilities.generateSearchName("@" + publicUsername, null, "@" + str4));
                            }
                            arrayList.add(tLObject);
                        } else {
                            i2++;
                            c3 = 1;
                            str3 = null;
                            i7 = 3;
                        }
                    }
                    str2 = str3;
                    c2 = c3;
                } else {
                    i = i4;
                    TLRPC.Chat chat = (TLRPC.Chat) tLObject;
                    strArr2[i] = chat.title.toLowerCase();
                    publicUsername = chat.username;
                    if (z2) {
                        translitString = LocaleController.getInstance().getTranslitString(strArr2[i]);
                        strArr2[c3] = translitString;
                        if (strArr2[i].equals(translitString)) {
                        }
                        i2 = i;
                        int i82 = i2;
                        while (i2 < i5) {
                        }
                        str2 = str3;
                        c2 = c3;
                    }
                }
                i6++;
                i4 = i;
                c3 = c2;
                str3 = str2;
            }
            updateSearchResults(arrayList, arrayList2);
        }

        private void updateSearchResults(final ArrayList<Object> arrayList, final ArrayList<CharSequence> arrayList2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.UsersSelectActivity$GroupCreateAdapter$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateSearchResults$4(arrayList, arrayList2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateSearchResults$4(ArrayList arrayList, ArrayList arrayList2) {
            if (this.searching) {
                this.searchRunnable = null;
                this.searchResult = arrayList;
                this.searchResultNames = arrayList2;
                this.searchAdapterHelper.mergeResults(arrayList);
                if (this.searching && !this.searchAdapterHelper.isSearchInProgress()) {
                    UsersSelectActivity.this.emptyView.showProgress(false);
                }
                notifyDataSetChanged();
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.UsersSelectActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.lambda$getThemeDescriptions$3();
            }
        };
        View view = this.fragmentView;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(view, i, null, null, null, null, i2));
        ActionBar actionBar = this.actionBar;
        int i3 = ThemeDescription.FLAG_BACKGROUND;
        int i4 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(actionBar, i3, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.scrollView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_FASTSCROLL, null, null, null, null, Theme.key_fastScrollActive));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_FASTSCROLL, null, null, null, null, Theme.key_fastScrollInactive));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_FASTSCROLL, null, null, null, null, Theme.key_fastScrollText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.emptyView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_emptyListPlaceholder));
        arrayList.add(new ThemeDescription(this.emptyView, ThemeDescription.FLAG_PROGRESSBAR, null, null, null, null, Theme.key_progressCircle));
        arrayList.add(new ThemeDescription(this.editText, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteBlackText));
        arrayList.add(new ThemeDescription(this.editText, ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, Theme.key_groupcreate_hintText));
        arrayList.add(new ThemeDescription(this.editText, ThemeDescription.FLAG_CURSORCOLOR, null, null, null, null, Theme.key_groupcreate_cursor));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{GraySectionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_graySectionText));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{GraySectionCell.class}, null, null, null, Theme.key_graySection));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{GroupCreateUserCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_groupcreate_sectionText));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{GroupCreateUserCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_checkbox));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{GroupCreateUserCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_checkboxDisabled));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{GroupCreateUserCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_checkboxCheck));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{GroupCreateUserCell.class}, new String[]{"statusTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueText));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{GroupCreateUserCell.class}, new String[]{"statusTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{GroupCreateUserCell.class}, null, Theme.avatarDrawables, null, Theme.key_avatar_text));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundRed));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundOrange));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundViolet));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundGreen));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundCyan));
        int i5 = Theme.key_avatar_backgroundBlue;
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, i5));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundPink));
        arrayList.add(new ThemeDescription(this.spansContainer, 0, new Class[]{GroupCreateSpan.class}, null, null, null, Theme.key_groupcreate_spanBackground));
        arrayList.add(new ThemeDescription(this.spansContainer, 0, new Class[]{GroupCreateSpan.class}, null, null, null, Theme.key_groupcreate_spanText));
        arrayList.add(new ThemeDescription(this.spansContainer, 0, new Class[]{GroupCreateSpan.class}, null, null, null, Theme.key_groupcreate_spanDelete));
        arrayList.add(new ThemeDescription(this.spansContainer, 0, new Class[]{GroupCreateSpan.class}, null, null, null, i5));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$3() {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            int childCount = recyclerListView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.listView.getChildAt(i);
                if (childAt instanceof GroupCreateUserCell) {
                    ((GroupCreateUserCell) childAt).update(0);
                }
            }
        }
    }
}
