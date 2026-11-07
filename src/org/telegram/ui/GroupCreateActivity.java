package org.telegram.ui;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.util.Property;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import me.vkryl.android.animator.BoolAnimator;
import me.vkryl.android.animator.FactorAnimator;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BackDrawable;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Adapters.SearchAdapterHelper;
import org.telegram.ui.Cells.CheckBoxCell;
import org.telegram.ui.Cells.GraySectionCell;
import org.telegram.ui.Cells.GroupCreateSectionCell;
import org.telegram.ui.Cells.GroupCreateUserCell;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.FlickerLoadingView;
import org.telegram.ui.Components.FragmentFloatingButton;
import org.telegram.ui.Components.FragmentSearchField;
import org.telegram.ui.Components.FragmentSpansContainer;
import org.telegram.ui.Components.GroupCreateSpan;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.PermanentLinkBottomSheet;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda16;
import org.telegram.ui.Components.StickerEmptyView;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.Components.blur3.DownscaleScrollableNoiseSuppressor;
import org.telegram.ui.Components.blur3.ViewGroupPartRenderer;
import org.telegram.ui.Components.blur3.capture.IBlur3Capture;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceRenderNode;
import org.telegram.ui.Components.inset.WindowAnimatedInsetsProvider;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes3.dex */
public class GroupCreateActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate, FactorAnimator.Target, View.OnClickListener, WindowAnimatedInsetsProvider.Listener {
    private final int ADDITIONAL_LIST_HEIGHT_DP;
    private View actionBarBackgroundView;
    private GroupCreateAdapter adapter;
    private final boolean addToGroup;
    private ArrayList<GroupCreateSpan> allSpans;
    private final boolean allowMiniApps;
    private final boolean allowPremium;
    private final BoolAnimator animatorCallButtonsVisible;
    private final FactorAnimator animatorSelectorContainerHeight;
    private FrameLayout buttonsContainer;
    private final long channelId;
    private final int chatAddType;
    private final long chatId;
    private final int chatType;
    private GroupCreateSpan currentDeletingSpan;
    private String customTitle;
    private GroupCreateActivityDelegate delegate;
    private ContactsAddActivityDelegate delegate2;
    private boolean doneButtonVisible;
    private StickerEmptyView emptyView;
    private FragmentFloatingButton floatingButton;
    private final boolean forImport;
    private HeaderShadowView headerShadowView;
    private IBlur3Capture iBlur3Capture;
    private boolean iBlur3Invalidated;
    private final RectF iBlur3PositionActionBar;
    private final RectF iBlur3PositionBottomBar;
    private final ArrayList<RectF> iBlur3Positions;
    private final BlurredBackgroundSourceRenderNode iBlur3SourceGlassFrosted;
    private LongSparseArray<TLObject> ignoreUsers;
    private int imeInsetAnimatedHeight;
    private TLRPC.ChatFull info;
    private final HashSet<Long> initialIds;
    private boolean initialMiniApps;
    private boolean initialPremium;
    private final boolean isAlwaysShare;
    private final boolean isCall;
    private final boolean isNeverShare;
    private LinearLayoutManager layoutManager;
    private RecyclerListView listView;
    private final int maxCount;
    int maxSize;
    private int navigationBarHeight;
    private final DownscaleScrollableNoiseSuppressor scrollableViewNoiseSuppressor;
    private FragmentSearchField searchField;
    private boolean searchWas;
    private boolean searching;
    private LongSparseArray<GroupCreateSpan> selectedContacts;
    private GroupCreateSpan selectedMiniApps;
    private GroupCreateSpan selectedPremium;
    private PermanentLinkBottomSheet sharedLinkBottomSheet;
    private int shiftDp;
    private boolean showDiscardConfirm;
    private FragmentSpansContainer spansContainer;
    private final Rect tmpClipRect;
    private ArrayList<Long> toSelectIds;
    private boolean toSelectMiniApps;
    private boolean toSelectPremium;

    public interface ContactsAddActivityDelegate {
        void didSelectUsers(ArrayList<TLRPC.User> arrayList, int i);

        default void needAddBot(TLRPC.User user) {
        }
    }

    public interface GroupCreateActivityDelegate {
        void didSelectUsers(boolean z, boolean z2, ArrayList<Long> arrayList);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean drawEdgeNavigationBar() {
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    public void onCallUsersSelected(HashSet<Long> hashSet, boolean z) {
    }

    public void setTitle(String str) {
        this.customTitle = str;
    }

    public void setShowDiscardConfirm(boolean z) {
        this.showDiscardConfirm = z;
    }

    public void select(ArrayList<Long> arrayList, boolean z, boolean z2) {
        GroupCreateSpan groupCreateSpan;
        GroupCreateSpan groupCreateSpan2;
        Object user;
        this.initialIds.clear();
        this.initialIds.addAll(arrayList);
        this.initialPremium = z;
        this.initialMiniApps = z2;
        FragmentSpansContainer fragmentSpansContainer = this.spansContainer;
        if (fragmentSpansContainer == null) {
            this.toSelectIds = arrayList;
            this.toSelectPremium = z;
            this.toSelectMiniApps = z2;
            return;
        }
        if (z && this.selectedPremium == null) {
            GroupCreateSpan groupCreateSpan3 = new GroupCreateSpan(getContext(), "premium");
            this.selectedPremium = groupCreateSpan3;
            this.spansContainer.addSpan(groupCreateSpan3);
            this.selectedPremium.setOnClickListener(this);
        } else if (!z && (groupCreateSpan = this.selectedPremium) != null) {
            fragmentSpansContainer.removeSpan(groupCreateSpan);
            this.selectedPremium = null;
        }
        if (z2 && this.selectedMiniApps == null) {
            GroupCreateSpan groupCreateSpan4 = new GroupCreateSpan(getContext(), "miniApps");
            this.selectedMiniApps = groupCreateSpan4;
            this.spansContainer.addSpan(groupCreateSpan4);
            this.selectedMiniApps.setOnClickListener(this);
        } else if (!z2 && (groupCreateSpan2 = this.selectedMiniApps) != null) {
            this.spansContainer.removeSpan(groupCreateSpan2);
            this.selectedMiniApps = null;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Long l = arrayList.get(i);
            i++;
            Long l2 = l;
            long jLongValue = l2.longValue();
            if (jLongValue < 0) {
                user = getMessagesController().getChat(Long.valueOf(-jLongValue));
            } else {
                user = getMessagesController().getUser(l2);
            }
            if (user != null) {
                GroupCreateSpan groupCreateSpan5 = new GroupCreateSpan(getContext(), user);
                this.spansContainer.addSpan(groupCreateSpan5);
                groupCreateSpan5.setOnClickListener(this);
            }
        }
        this.spansContainer.endAnimation();
        AndroidUtilities.updateVisibleRows(this.listView);
    }

    public GroupCreateActivity(Bundle bundle) {
        super(bundle);
        int i = Build.VERSION.SDK_INT;
        this.ADDITIONAL_LIST_HEIGHT_DP = i >= 31 ? 48 : 0;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.animatorSelectorContainerHeight = new FactorAnimator(3, this, cubicBezierInterpolator, 350L);
        this.animatorCallButtonsVisible = new BoolAnimator(4, this, cubicBezierInterpolator, 350L);
        this.selectedContacts = new LongSparseArray<>();
        this.allSpans = new ArrayList<>();
        this.initialIds = new HashSet<>();
        this.shiftDp = -4;
        this.tmpClipRect = new Rect();
        ArrayList<RectF> arrayList = new ArrayList<>(2);
        this.iBlur3Positions = arrayList;
        RectF rectF = new RectF();
        this.iBlur3PositionActionBar = rectF;
        RectF rectF2 = new RectF();
        this.iBlur3PositionBottomBar = rectF2;
        arrayList.add(rectF);
        arrayList.add(rectF2);
        int i2 = bundle.getInt("chatType", 0);
        this.chatType = i2;
        this.forImport = bundle.getBoolean("forImport", false);
        boolean z = bundle.getBoolean("isAlwaysShare", false);
        this.isAlwaysShare = z;
        boolean z2 = bundle.getBoolean("isNeverShare", false);
        this.isNeverShare = z2;
        boolean z3 = bundle.getBoolean("isCall", false);
        this.isCall = z3;
        boolean z4 = bundle.getBoolean("addToGroup", false);
        this.addToGroup = z4;
        this.chatAddType = bundle.getInt("chatAddType", 0);
        this.allowPremium = bundle.getBoolean("allowPremium", false);
        this.allowMiniApps = bundle.getBoolean("allowMiniapps", false);
        this.chatId = bundle.getLong("chatId");
        this.channelId = bundle.getLong("channelId");
        if (z || z2 || z4) {
            this.maxCount = 0;
        } else if (z3) {
            this.maxCount = getMessagesController().conferenceCallSizeLimit - 1;
        } else {
            this.maxCount = i2 == 0 ? getMessagesController().maxMegagroupCount : getMessagesController().maxBroadcastCount;
        }
        if (i >= 31) {
            this.scrollableViewNoiseSuppressor = new DownscaleScrollableNoiseSuppressor();
            this.iBlur3SourceGlassFrosted = new BlurredBackgroundSourceRenderNode(null);
        } else {
            this.scrollableViewNoiseSuppressor = null;
            this.iBlur3SourceGlassFrosted = null;
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.contactsDidLoad);
        getNotificationCenter().addObserver(this, NotificationCenter.updateInterfaces);
        getNotificationCenter().addObserver(this, NotificationCenter.chatDidCreated);
        getUserConfig().loadGlobalTTl();
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getNotificationCenter().removeObserver(this, NotificationCenter.contactsDidLoad);
        getNotificationCenter().removeObserver(this, NotificationCenter.updateInterfaces);
        getNotificationCenter().removeObserver(this, NotificationCenter.chatDidCreated);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        GroupCreateSpan groupCreateSpan = (GroupCreateSpan) view;
        if (groupCreateSpan.isDeleting()) {
            this.currentDeletingSpan = null;
            this.spansContainer.removeSpan(groupCreateSpan);
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
        this.searching = false;
        this.searchWas = false;
        this.allSpans.clear();
        this.selectedContacts.clear();
        this.currentDeletingSpan = null;
        if (this.chatType == 2) {
            this.doneButtonVisible = true;
        } else {
            this.doneButtonVisible = !this.addToGroup;
        }
        this.actionBar.setBackgroundColor(0);
        this.actionBar.setBackButtonImage(C2665R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        if (!TextUtils.isEmpty(this.customTitle)) {
            this.actionBar.setTitle(this.customTitle);
        } else {
            int i = this.chatType;
            if (i == 2) {
                this.actionBar.setTitle(LocaleController.getString(C2665R.string.ChannelAddSubscribers));
            } else if (this.isCall) {
                this.actionBar.setTitle(LocaleController.getString(C2665R.string.NewCall));
            } else if (this.addToGroup) {
                long j = this.channelId;
                ActionBar actionBar = this.actionBar;
                if (j != 0) {
                    actionBar.setTitle(LocaleController.getString(C2665R.string.ChannelAddSubscribers));
                } else {
                    actionBar.setTitle(LocaleController.getString(C2665R.string.GroupAddMembers));
                }
            } else if (this.isAlwaysShare) {
                int i2 = this.chatAddType;
                if (i2 == 2) {
                    this.actionBar.setTitle(LocaleController.getString(C2665R.string.FilterAlwaysShow));
                } else {
                    ActionBar actionBar2 = this.actionBar;
                    if (i2 == 1) {
                        actionBar2.setTitle(LocaleController.getString(C2665R.string.AlwaysAllow));
                    } else {
                        actionBar2.setTitle(LocaleController.getString(C2665R.string.AlwaysShareWithTitle));
                    }
                }
            } else if (this.isNeverShare) {
                int i3 = this.chatAddType;
                if (i3 == 2) {
                    this.actionBar.setTitle(LocaleController.getString(C2665R.string.FilterNeverShow));
                } else {
                    ActionBar actionBar3 = this.actionBar;
                    if (i3 == 1) {
                        actionBar3.setTitle(LocaleController.getString(C2665R.string.NeverAllow));
                    } else {
                        actionBar3.setTitle(LocaleController.getString(C2665R.string.NeverShareWithTitle));
                    }
                }
            } else {
                this.actionBar.setTitle(LocaleController.getString(i == 0 ? C2665R.string.NewGroup : C2665R.string.NewBroadcastList));
            }
        }
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.GroupCreateActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i4) {
                if (i4 == -1) {
                    if (GroupCreateActivity.this.checkDiscard(true)) {
                        GroupCreateActivity.this.finishFragment();
                    }
                } else if (i4 == 1) {
                    GroupCreateActivity.this.onDonePressed(true);
                }
            }
        });
        this.searchField = new FragmentSearchField(context, this.resourceProvider);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.GroupCreateActivity.2
            @Override // android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                if (Build.VERSION.SDK_INT >= 31 && GroupCreateActivity.this.scrollableViewNoiseSuppressor != null) {
                    GroupCreateActivity.this.blur3_InvalidateBlur();
                    int measuredWidth = getMeasuredWidth();
                    int measuredHeight = getMeasuredHeight();
                    if (GroupCreateActivity.this.iBlur3SourceGlassFrosted != null && !GroupCreateActivity.this.iBlur3SourceGlassFrosted.inRecording() && (GroupCreateActivity.this.iBlur3SourceGlassFrosted.needUpdateDisplayList(measuredWidth, measuredHeight) || GroupCreateActivity.this.iBlur3Invalidated)) {
                        GroupCreateActivity.this.scrollableViewNoiseSuppressor.draw(GroupCreateActivity.this.iBlur3SourceGlassFrosted.beginRecording(measuredWidth, measuredHeight), -3);
                        GroupCreateActivity.this.iBlur3SourceGlassFrosted.endRecording();
                    }
                    GroupCreateActivity.this.iBlur3Invalidated = false;
                }
                super.dispatchDraw(canvas);
                AndroidUtilities.drawNavigationBarProtection(canvas, this, GroupCreateActivity.this.getThemedColor(Theme.key_windowBackgroundWhite), GroupCreateActivity.this.navigationBarHeight);
            }

            @Override // android.widget.FrameLayout, android.view.View
            public void onMeasure(int i4, int i5) {
                int size = View.MeasureSpec.getSize(i4);
                int size2 = View.MeasureSpec.getSize(i5);
                if (AndroidUtilities.isTablet() || size2 > size) {
                    GroupCreateActivity.this.maxSize = AndroidUtilities.dp(144.0f);
                } else {
                    GroupCreateActivity.this.maxSize = AndroidUtilities.dp(56.0f);
                }
                measureChildWithMargins(((BaseFragment) GroupCreateActivity.this).actionBar, i4, 0, i5, 0);
                ((ViewGroup.MarginLayoutParams) GroupCreateActivity.this.emptyView.getLayoutParams()).topMargin = ((BaseFragment) GroupCreateActivity.this).actionBar.getMeasuredHeight() + AndroidUtilities.dp(48.0f);
                ((ViewGroup.MarginLayoutParams) GroupCreateActivity.this.headerShadowView.getLayoutParams()).topMargin = ((BaseFragment) GroupCreateActivity.this).actionBar.getMeasuredHeight();
                ((ViewGroup.MarginLayoutParams) GroupCreateActivity.this.searchField.getLayoutParams()).topMargin = ((BaseFragment) GroupCreateActivity.this).actionBar.getMeasuredHeight();
                ((ViewGroup.MarginLayoutParams) GroupCreateActivity.this.spansContainer.getLayoutParams()).topMargin = ((BaseFragment) GroupCreateActivity.this).actionBar.getMeasuredHeight();
                ViewGroup.LayoutParams layoutParams = GroupCreateActivity.this.spansContainer.getLayoutParams();
                GroupCreateActivity groupCreateActivity = GroupCreateActivity.this;
                layoutParams.height = groupCreateActivity.maxSize;
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) groupCreateActivity.actionBarBackgroundView.getLayoutParams();
                int measuredHeight = ((BaseFragment) GroupCreateActivity.this).actionBar.getMeasuredHeight() + AndroidUtilities.dp(53.0f);
                GroupCreateActivity groupCreateActivity2 = GroupCreateActivity.this;
                marginLayoutParams.height = measuredHeight + groupCreateActivity2.maxSize;
                groupCreateActivity2.checkUi_listViewPadding();
                super.onMeasure(i4, i5);
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i4, int i5, int i6, int i7) {
                super.onLayout(z, i4, i5, i6, i7);
                GroupCreateActivity.this.checkUi_bottomButtons();
                GroupCreateActivity.this.checkUi_floatingButton();
                GroupCreateActivity.this.checkUi_searchFieldY();
                GroupCreateActivity.this.checkUi_listClip();
                GroupCreateActivity.this.checkUi_headerShadowY();
            }
        };
        this.fragmentView = frameLayout;
        frameLayout.setFocusableInTouchMode(true);
        frameLayout.setDescendantFocusability(131072);
        FragmentSpansContainer fragmentSpansContainer = new FragmentSpansContainer(context, this.currentAccount) { // from class: org.telegram.ui.GroupCreateActivity.3
            @Override // org.telegram.ui.Components.FragmentSpansContainer
            public void addSpan(GroupCreateSpan groupCreateSpan) {
                super.addSpan(groupCreateSpan);
                GroupCreateActivity.this.updateButtonsVisibility();
            }

            @Override // org.telegram.ui.Components.FragmentSpansContainer
            public void removeSpan(GroupCreateSpan groupCreateSpan) {
                if (groupCreateSpan == GroupCreateActivity.this.selectedPremium) {
                    GroupCreateActivity.this.selectedPremium = null;
                }
                if (groupCreateSpan == GroupCreateActivity.this.selectedMiniApps) {
                    GroupCreateActivity.this.selectedMiniApps = null;
                }
                super.removeSpan(groupCreateSpan);
                GroupCreateActivity.this.updateButtonsVisibility();
            }

            @Override // org.telegram.ui.Components.FragmentSpansContainer
            public void removeAllSpans(boolean z) {
                super.removeAllSpans(z);
                GroupCreateActivity.this.updateButtonsVisibility();
            }
        };
        this.spansContainer = fragmentSpansContainer;
        fragmentSpansContainer.setDelegate(new FragmentSpansContainer.Delegate() { // from class: org.telegram.ui.GroupCreateActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.FragmentSpansContainer.Delegate
            public final void onAfterMeasure(int i4) {
                this.f$0.lambda$createView$0(i4);
            }
        });
        this.spansContainer.getSpansContainer().setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.GroupCreateActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$1(view);
            }
        });
        FragmentSpansContainer fragmentSpansContainer2 = this.spansContainer;
        this.selectedContacts = fragmentSpansContainer2.selectedContacts;
        this.allSpans = fragmentSpansContainer2.allSpans;
        updateEditTextHint();
        this.searchField.editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.GroupCreateActivity$$ExternalSyntheticLambda2
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$2(textView, i4, keyEvent);
            }
        });
        this.searchField.editText.setOnKeyListener(new View.OnKeyListener() { // from class: org.telegram.ui.GroupCreateActivity.4
            private boolean wasEmpty;

            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i4, KeyEvent keyEvent) {
                if (i4 == 67) {
                    if (keyEvent.getAction() == 0) {
                        this.wasEmpty = GroupCreateActivity.this.searchField.editText.length() == 0;
                    } else if (keyEvent.getAction() == 1 && this.wasEmpty && !GroupCreateActivity.this.allSpans.isEmpty()) {
                        GroupCreateActivity.this.spansContainer.removeSpan((GroupCreateSpan) GroupCreateActivity.this.allSpans.get(GroupCreateActivity.this.allSpans.size() - 1));
                        GroupCreateActivity.this.updateHint();
                        GroupCreateActivity.this.checkVisibleRows();
                        return true;
                    }
                }
                return false;
            }
        });
        this.searchField.editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.GroupCreateActivity.5
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                int length = GroupCreateActivity.this.searchField.editText.length();
                GroupCreateActivity groupCreateActivity = GroupCreateActivity.this;
                if (length != 0) {
                    if (!groupCreateActivity.adapter.searching) {
                        GroupCreateActivity.this.searching = true;
                        GroupCreateActivity.this.searchWas = true;
                        GroupCreateActivity.this.adapter.setSearching(true);
                        GroupCreateActivity.this.listView.setFastScrollVisible(false);
                        GroupCreateActivity.this.listView.setVerticalScrollBarEnabled(true);
                    }
                    GroupCreateActivity.this.adapter.searchDialogs(GroupCreateActivity.this.searchField.editText.getText().toString());
                    GroupCreateActivity.this.emptyView.showProgress(true, false);
                    return;
                }
                groupCreateActivity.closeSearch();
            }
        });
        ArrayList<Long> arrayList = this.toSelectIds;
        if (arrayList != null) {
            select(arrayList, this.toSelectPremium, this.toSelectMiniApps);
        }
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context);
        flickerLoadingView.setViewType(6);
        flickerLoadingView.showDate(false);
        StickerEmptyView stickerEmptyView = new StickerEmptyView(context, flickerLoadingView, 1);
        this.emptyView = stickerEmptyView;
        stickerEmptyView.addView(flickerLoadingView);
        this.emptyView.showProgress(true, false);
        this.emptyView.title.setText(LocaleController.getString(C2665R.string.NoResult));
        frameLayout.addView(this.emptyView);
        this.layoutManager = new LinearLayoutManager(context, 1, false);
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setFastScrollEnabled(0);
        this.listView.setEmptyView(this.emptyView);
        RecyclerListView recyclerListView2 = this.listView;
        GroupCreateAdapter groupCreateAdapter = new GroupCreateAdapter(context);
        this.adapter = groupCreateAdapter;
        recyclerListView2.setAdapter(groupCreateAdapter);
        this.listView.setLayoutManager(this.layoutManager);
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setClipToPadding(false);
        this.listView.setVerticalScrollbarPosition(LocaleController.isRTL ? 1 : 2);
        RecyclerListView recyclerListView3 = this.listView;
        int i4 = this.ADDITIONAL_LIST_HEIGHT_DP;
        frameLayout.addView(recyclerListView3, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, -i4, 0.0f, -i4));
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.GroupCreateActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i5) {
                this.f$0.lambda$createView$4(context, view, i5);
            }
        });
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.GroupCreateActivity.6
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i5, int i6) {
                int iFindFirstVisibleItemPosition = GroupCreateActivity.this.layoutManager.findFirstVisibleItemPosition();
                View childAt = GroupCreateActivity.this.listView.getChildAt(0);
                GroupCreateActivity.this.headerShadowView.setShadowVisible(iFindFirstVisibleItemPosition != 0 || (childAt != null ? childAt.getTop() : 0) < GroupCreateActivity.this.listView.getPaddingTop(), true);
                if (Build.VERSION.SDK_INT < 31 || GroupCreateActivity.this.scrollableViewNoiseSuppressor == null) {
                    return;
                }
                GroupCreateActivity.this.scrollableViewNoiseSuppressor.onScrolled(i5, i6);
                GroupCreateActivity.this.blur3_InvalidateBlur();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i5) {
                if (i5 == 1) {
                    GroupCreateActivity.this.searchField.editText.hideActionMode();
                    AndroidUtilities.hideKeyboard(GroupCreateActivity.this.searchField.editText);
                }
            }
        });
        this.listView.setAnimateEmptyView(true, 0);
        FragmentFloatingButton fragmentFloatingButton = new FragmentFloatingButton(context, this.resourceProvider);
        this.floatingButton = fragmentFloatingButton;
        if (this.isNeverShare || this.isAlwaysShare || this.addToGroup) {
            fragmentFloatingButton.imageView.setImageResource(C2665R.drawable.floating_check);
        } else {
            BackDrawable backDrawable = new BackDrawable(false);
            backDrawable.setArrowRotation(180);
            this.floatingButton.imageView.setImageDrawable(backDrawable);
        }
        if (!this.isCall) {
            frameLayout.addView(this.floatingButton, FragmentFloatingButton.createDefaultLayoutParams());
        }
        this.floatingButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.GroupCreateActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$5(view);
            }
        });
        this.floatingButton.setButtonVisible(this.doneButtonVisible, false);
        this.floatingButton.setContentDescription(LocaleController.getString(C2665R.string.Next));
        if (this.isCall) {
            this.buttonsContainer = new FrameLayout(context) { // from class: org.telegram.ui.GroupCreateActivity.7
                private final RectF rectTmp = new RectF();
                private final Paint paint = new Paint(1);

                @Override // android.view.ViewGroup, android.view.View
                public void dispatchDraw(Canvas canvas) {
                    this.paint.setColor(GroupCreateActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    canvas.save();
                    canvas.translate(0.0f, -getTop());
                    this.rectTmp.set(0.0f, 0.0f, getWidth(), getHeight());
                    this.rectTmp.offset(0.0f, getTop());
                    GroupCreateActivity.this.drawBlurRect(canvas, this.rectTmp, this.paint);
                    canvas.restore();
                    super.dispatchDraw(canvas);
                }
            };
            View view = new View(context);
            view.setBackgroundColor(Theme.getColor(Theme.key_divider, this.resourceProvider));
            this.buttonsContainer.addView(view, LayoutHelper.createFrame(-1, 1.0f / AndroidUtilities.density, 55, 0.0f, 0.0f, 0.0f, 0.0f));
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(0);
            linearLayout.setPadding(AndroidUtilities.dp(14.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(14.0f));
            this.buttonsContainer.addView(linearLayout, LayoutHelper.createFrame(-1, -2, 87));
            ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, this.resourceProvider);
            buttonWithCounterView.setRound();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) "x  ");
            spannableStringBuilder.setSpan(new ColoredImageSpan(C2665R.drawable.profile_phone), 0, 1, 33);
            spannableStringBuilder.append((CharSequence) LocaleController.getString(C2665R.string.GroupCallCreateVoice));
            buttonWithCounterView.setText(spannableStringBuilder, false);
            linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 1.0f, 119, 0, 0, 6, 0));
            buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.GroupCreateActivity$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$createView$6(view2);
                }
            });
            ButtonWithCounterView buttonWithCounterView2 = new ButtonWithCounterView(context, this.resourceProvider);
            buttonWithCounterView2.setRound();
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
            spannableStringBuilder2.append((CharSequence) "x  ");
            spannableStringBuilder2.setSpan(new ColoredImageSpan(C2665R.drawable.profile_video), 0, 1, 33);
            spannableStringBuilder2.append((CharSequence) LocaleController.getString(C2665R.string.GroupCallCreateVideo));
            buttonWithCounterView2.setText(spannableStringBuilder2, false);
            linearLayout.addView(buttonWithCounterView2, LayoutHelper.createLinear(-1, 48, 1.0f, 119, 6, 0, 0, 0));
            buttonWithCounterView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.GroupCreateActivity$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$createView$7(view2);
                }
            });
            frameLayout.addView(this.buttonsContainer, LayoutHelper.createFrame(-1, -2, 87));
            checkUi_bottomButtons();
        }
        updateHint();
        View view2 = new View(context) { // from class: org.telegram.ui.GroupCreateActivity.8
            private final RectF rectTmp = new RectF();
            private final Paint paint = new Paint(1);

            @Override // android.view.View
            public void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                int iDp = AndroidUtilities.dp(48.0f) + ((int) GroupCreateActivity.this.animatorSelectorContainerHeight.getFactor());
                this.paint.setColor(GroupCreateActivity.this.getThemedColor(Theme.key_actionBarDefault));
                this.rectTmp.set(0.0f, 0.0f, getMeasuredWidth(), ((BaseFragment) GroupCreateActivity.this).actionBar.getMeasuredHeight() + iDp);
                GroupCreateActivity.this.drawBlurRect(canvas, this.rectTmp, this.paint);
            }
        };
        this.actionBarBackgroundView = view2;
        frameLayout.addView(view2, LayoutHelper.createFrame(-1, 0, 48));
        frameLayout.addView(this.actionBar);
        frameLayout.addView(this.searchField, LayoutHelper.createFrame(-1, 40.0f, 48, 11.0f, 0.0f, 11.0f, 0.0f));
        frameLayout.addView(this.spansContainer);
        RecyclerListView recyclerListView4 = this.listView;
        Objects.requireNonNull(recyclerListView4);
        this.iBlur3Capture = new ViewGroupPartRenderer(recyclerListView4, frameLayout, new ShareAlert$$ExternalSyntheticLambda16(recyclerListView4));
        this.listView.addEdgeEffectListener(new Runnable() { // from class: org.telegram.ui.GroupCreateActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$9();
            }
        });
        HeaderShadowView headerShadowView = new HeaderShadowView(context, this.parentLayout);
        this.headerShadowView = headerShadowView;
        headerShadowView.setShadowVisible(false, false);
        frameLayout.addView(this.headerShadowView, LayoutHelper.createFrame(-1, 5, 48));
        LaunchActivity launchActivity = LaunchActivity.instance;
        if (launchActivity != null) {
            launchActivity.getRootAnimatedInsetsListener().subscribeToWindowInsetsAnimation(this);
        }
        ViewCompat.setOnApplyWindowInsetsListener(this.fragmentView, new OnApplyWindowInsetsListener() { // from class: org.telegram.ui.GroupCreateActivity$$ExternalSyntheticLambda8
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view3, WindowInsetsCompat windowInsetsCompat) {
                return this.f$0.onApplyWindowInsets(view3, windowInsetsCompat);
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(int i) {
        this.animatorSelectorContainerHeight.animateTo(Math.min(i, this.maxSize));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view) {
        this.searchField.editText.clearFocus();
        this.searchField.editText.requestFocus();
        AndroidUtilities.showKeyboard(this.searchField.editText);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$2(TextView textView, int i, KeyEvent keyEvent) {
        return i == 6 && onDonePressed(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(Context context, View view, int i) {
        long j;
        if (i == this.adapter.createCallLinkRow) {
            CallLogActivity.createCallLink(context, this.currentAccount, this.resourceProvider, new Runnable() { // from class: org.telegram.ui.GroupCreateActivity$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.finishFragment();
                }
            });
            return;
        }
        if (i == 0 && this.adapter.inviteViaLink != 0 && !this.adapter.searching) {
            PermanentLinkBottomSheet permanentLinkBottomSheet = new PermanentLinkBottomSheet(context, false, this, this.info, this.chatId, this.channelId != 0);
            this.sharedLinkBottomSheet = permanentLinkBottomSheet;
            showDialog(permanentLinkBottomSheet);
            return;
        }
        if (view instanceof GroupCreateUserCell) {
            GroupCreateUserCell groupCreateUserCell = (GroupCreateUserCell) view;
            if (groupCreateUserCell.currentPremium) {
                GroupCreateSpan groupCreateSpan = this.selectedPremium;
                if (groupCreateSpan == null) {
                    GroupCreateSpan groupCreateSpan2 = new GroupCreateSpan(this.searchField.editText.getContext(), "premium");
                    this.selectedPremium = groupCreateSpan2;
                    this.spansContainer.addSpan(groupCreateSpan2);
                    this.selectedPremium.setOnClickListener(this);
                } else {
                    this.spansContainer.removeSpan(groupCreateSpan);
                    this.selectedPremium = null;
                }
                checkVisibleRows();
                return;
            }
            if (groupCreateUserCell.currentMiniapps) {
                GroupCreateSpan groupCreateSpan3 = this.selectedMiniApps;
                if (groupCreateSpan3 == null) {
                    GroupCreateSpan groupCreateSpan4 = new GroupCreateSpan(this.searchField.editText.getContext(), "miniapps");
                    this.selectedMiniApps = groupCreateSpan4;
                    this.spansContainer.addSpan(groupCreateSpan4);
                    this.selectedMiniApps.setOnClickListener(this);
                } else {
                    this.spansContainer.removeSpan(groupCreateSpan3);
                    this.selectedMiniApps = null;
                }
                checkVisibleRows();
                return;
            }
            Object object = groupCreateUserCell.getObject();
            boolean z = object instanceof TLRPC.User;
            if (z) {
                j = ((TLRPC.User) object).id;
            } else if (!(object instanceof TLRPC.Chat)) {
                return;
            } else {
                j = -((TLRPC.Chat) object).id;
            }
            LongSparseArray<TLObject> longSparseArray = this.ignoreUsers;
            if (longSparseArray == null || longSparseArray.indexOfKey(j) < 0) {
                if (groupCreateUserCell.isBlocked()) {
                    showPremiumBlockedToast(groupCreateUserCell, j);
                    return;
                }
                GroupCreateSpan groupCreateSpan5 = this.selectedContacts.get(j);
                if (groupCreateSpan5 != null) {
                    this.spansContainer.removeSpan(groupCreateSpan5);
                } else {
                    if (this.maxCount != 0 && this.selectedContacts.size() == this.maxCount) {
                        return;
                    }
                    if (this.chatType == 0 && this.selectedContacts.size() == getMessagesController().maxGroupCount) {
                        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                        builder.setTitle(LocaleController.getString(C2665R.string.AppName));
                        builder.setMessage(LocaleController.getString(C2665R.string.SoftUserLimitAlert));
                        builder.setPositiveButton(LocaleController.getString(C2665R.string.OK), null);
                        showDialog(builder.create());
                        return;
                    }
                    if (z) {
                        final TLRPC.User user = (TLRPC.User) object;
                        if (this.addToGroup && user.bot) {
                            long j2 = this.channelId;
                            if (j2 == 0 && user.bot_nochats) {
                                try {
                                    BulletinFactory.of(this).createErrorBulletin(LocaleController.getString(C2665R.string.BotCantJoinGroups)).show();
                                    return;
                                } catch (Exception e) {
                                    FileLog.m992e(e);
                                    return;
                                }
                            }
                            if (j2 != 0) {
                                TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.channelId));
                                AlertDialog.Builder builder2 = new AlertDialog.Builder(getParentActivity());
                                if (ChatObject.canAddAdmins(chat)) {
                                    builder2.setTitle(LocaleController.getString(C2665R.string.AddBotAdminAlert));
                                    builder2.setMessage(LocaleController.getString(C2665R.string.AddBotAsAdmin));
                                    builder2.setPositiveButton(LocaleController.getString(C2665R.string.AddAsAdmin), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.GroupCreateActivity$$ExternalSyntheticLambda14
                                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                        public final void onClick(AlertDialog alertDialog, int i2) {
                                            this.f$0.lambda$createView$3(user, alertDialog, i2);
                                        }
                                    });
                                    builder2.setNegativeButton(LocaleController.getString(C2665R.string.Cancel), null);
                                } else {
                                    builder2.setMessage(LocaleController.getString(C2665R.string.CantAddBotAsAdmin));
                                    builder2.setPositiveButton(LocaleController.getString(C2665R.string.OK), null);
                                }
                                showDialog(builder2.create());
                                return;
                            }
                        }
                        getMessagesController().putUser(user, true ^ this.searching);
                    } else if (object instanceof TLRPC.Chat) {
                        getMessagesController().putChat((TLRPC.Chat) object, true ^ this.searching);
                    }
                    GroupCreateSpan groupCreateSpan6 = new GroupCreateSpan(this.searchField.editText.getContext(), object);
                    this.spansContainer.addSpan(groupCreateSpan6);
                    groupCreateSpan6.setOnClickListener(this);
                }
                updateHint();
                if (this.searching || this.searchWas) {
                    AndroidUtilities.showKeyboard(this.searchField.editText);
                } else {
                    checkVisibleRows();
                }
                if (this.searchField.editText.length() > 0) {
                    this.searchField.editText.setText((CharSequence) null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(TLRPC.User user, AlertDialog alertDialog, int i) {
        this.delegate2.needAddBot(user);
        if (this.searchField.editText.length() > 0) {
            this.searchField.editText.setText((CharSequence) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(View view) {
        onDonePressed(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(View view) {
        onCallUsersSelected(getSelectedUsers(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7(View view) {
        onCallUsersSelected(getSelectedUsers(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$9() {
        this.listView.postOnAnimation(new Runnable() { // from class: org.telegram.ui.GroupCreateActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$8();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8() {
        checkUi_listClip();
        blur3_InvalidateBlur();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drawBlurRect(Canvas canvas, RectF rectF, Paint paint) {
        BlurredBackgroundSourceRenderNode blurredBackgroundSourceRenderNode;
        canvas.drawRect(rectF, paint);
        if (Build.VERSION.SDK_INT < 29 || !SharedConfig.chatBlurEnabled() || (blurredBackgroundSourceRenderNode = this.iBlur3SourceGlassFrosted) == null) {
            return;
        }
        blurredBackgroundSourceRenderNode.draw(canvas, rectF.left, rectF.top, rectF.right, rectF.bottom);
        int alpha = paint.getAlpha();
        paint.setAlpha(178);
        canvas.drawRect(rectF, paint);
        paint.setAlpha(alpha);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ActionBar createActionBar(Context context) {
        ActionBar actionBarCreateActionBar = super.createActionBar(context);
        actionBarCreateActionBar.setAddToContainer(false);
        return actionBarCreateActionBar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateButtonsVisibility() {
        if (this.buttonsContainer == null) {
            return;
        }
        this.animatorCallButtonsVisible.setValue(!this.selectedContacts.isEmpty(), true);
    }

    private void showPremiumBlockedToast(View view, long j) {
        String userName;
        Bulletin bulletinCreateSimpleBulletin;
        int i = -this.shiftDp;
        this.shiftDp = i;
        AndroidUtilities.shakeViewSpring(view, i);
        BotWebViewVibrationEffect.APP_ERROR.vibrate();
        if (j < 0) {
            userName = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            userName = UserObject.getUserName(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j)));
        }
        if (MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked()) {
            bulletinCreateSimpleBulletin = BulletinFactory.of(this).createSimpleBulletin(C2665R.raw.star_premium_2, AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.UserBlockedNonPremium, userName)));
        } else {
            bulletinCreateSimpleBulletin = BulletinFactory.of(this).createSimpleBulletin(C2665R.raw.star_premium_2, AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.UserBlockedNonPremium, userName)), LocaleController.getString(C2665R.string.UserBlockedNonPremiumButton), new Runnable() { // from class: org.telegram.ui.GroupCreateActivity$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showPremiumBlockedToast$10();
                }
            });
        }
        bulletinCreateSimpleBulletin.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPremiumBlockedToast$10() {
        presentFragment(new PremiumPreviewFragment("noncontacts"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEditTextHint() {
        GroupCreateAdapter groupCreateAdapter;
        EditTextBoldCursor editTextBoldCursor = this.searchField.editText;
        if (editTextBoldCursor == null) {
            return;
        }
        if (this.chatType == 2) {
            editTextBoldCursor.setHint(LocaleController.getString(C2665R.string.AddMutual));
            return;
        }
        if (this.addToGroup || ((groupCreateAdapter = this.adapter) != null && groupCreateAdapter.noContactsStubRow == 0)) {
            this.searchField.editText.setHint(LocaleController.getString(C2665R.string.SearchForPeople));
            return;
        }
        if (this.isAlwaysShare || this.isNeverShare) {
            this.searchField.editText.setHint(LocaleController.getString(C2665R.string.SearchForPeopleAndGroups));
            return;
        }
        boolean z = this.isCall;
        FragmentSearchField fragmentSearchField = this.searchField;
        if (z) {
            fragmentSearchField.editText.setHint(LocaleController.getString(C2665R.string.NewCallSearch));
        } else {
            fragmentSearchField.editText.setHint(LocaleController.getString(C2665R.string.SendMessageTo));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showItemsAnimated(final int i) {
        if (this.isPaused) {
            return;
        }
        AndroidUtilities.doOnPreDraw(this.listView, new Runnable() { // from class: org.telegram.ui.GroupCreateActivity$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showItemsAnimated$11(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showItemsAnimated$11(int i) {
        AnimatorSet animatorSet = new AnimatorSet();
        int childCount = this.listView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.listView.getChildAt(i2);
            if (this.listView.getChildAdapterPosition(childAt) >= i) {
                childAt.setAlpha(0.0f);
                int iMin = (int) ((Math.min(this.listView.getMeasuredHeight(), Math.max(0, childAt.getTop())) / this.listView.getMeasuredHeight()) * 100.0f);
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(childAt, (Property<View, Float>) View.ALPHA, 0.0f, 1.0f);
                objectAnimatorOfFloat.setStartDelay(iMin);
                objectAnimatorOfFloat.setDuration(200L);
                animatorSet.playTogether(objectAnimatorOfFloat);
            }
        }
        animatorSet.start();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.contactsDidLoad) {
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

    public void setIgnoreUsers(LongSparseArray<TLObject> longSparseArray) {
        this.ignoreUsers = longSparseArray;
    }

    public void setInfo(TLRPC.ChatFull chatFull) {
        this.info = chatFull;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkVisibleRows() {
        long j;
        int childCount = this.listView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.listView.getChildAt(i);
            if (childAt instanceof GroupCreateUserCell) {
                GroupCreateUserCell groupCreateUserCell = (GroupCreateUserCell) childAt;
                Object object = groupCreateUserCell.getObject();
                if (object instanceof TLRPC.User) {
                    j = ((TLRPC.User) object).id;
                } else if (object instanceof TLRPC.Chat) {
                    j = -((TLRPC.Chat) object).id;
                } else {
                    boolean z = object instanceof String;
                    if (z && "premium".equalsIgnoreCase((String) object)) {
                        groupCreateUserCell.setChecked(this.selectedPremium != null, true);
                        groupCreateUserCell.setCheckBoxEnabled(true);
                    } else if (z && "miniapps".equalsIgnoreCase((String) object)) {
                        groupCreateUserCell.setChecked(this.selectedMiniApps != null, true);
                        groupCreateUserCell.setCheckBoxEnabled(true);
                    } else {
                        j = 0;
                    }
                }
                if (j != 0) {
                    LongSparseArray<TLObject> longSparseArray = this.ignoreUsers;
                    if (longSparseArray != null && longSparseArray.indexOfKey(j) >= 0) {
                        groupCreateUserCell.setChecked(true, false);
                        groupCreateUserCell.setCheckBoxEnabled(false);
                    } else {
                        groupCreateUserCell.setChecked(this.selectedContacts.indexOfKey(j) >= 0, true);
                        groupCreateUserCell.setCheckBoxEnabled(true);
                    }
                }
            } else if ((childAt instanceof GraySectionCell) && this.listView.getChildAdapterPosition(childAt) == this.adapter.firstSectionRow) {
                ((GraySectionCell) childAt).setRightText((this.selectedPremium == null && this.selectedContacts.isEmpty()) ? _UrlKt.FRAGMENT_ENCODE_SET : LocaleController.getString(C2665R.string.DeselectAll), true, new View.OnClickListener() { // from class: org.telegram.ui.GroupCreateActivity$$ExternalSyntheticLambda9
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$checkVisibleRows$12(view);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkVisibleRows$12(View view) {
        this.selectedPremium = null;
        this.selectedContacts.clear();
        this.spansContainer.removeAllSpans(true);
        checkVisibleRows();
        updateEditTextHint();
        updateHint();
    }

    private void onAddToGroupDone(int i) {
        ArrayList<TLRPC.User> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < this.selectedContacts.size(); i2++) {
            arrayList.add(getMessagesController().getUser(Long.valueOf(this.selectedContacts.keyAt(i2))));
        }
        ContactsAddActivityDelegate contactsAddActivityDelegate = this.delegate2;
        if (contactsAddActivityDelegate != null) {
            contactsAddActivityDelegate.didSelectUsers(arrayList, i);
        }
        finishFragment();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean canBeginSlide() {
        return checkDiscard(true);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        if (checkDiscard(z)) {
            return super.onBackPressed(z);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean checkDiscard(boolean z) {
        boolean z2;
        if (!this.showDiscardConfirm) {
            return true;
        }
        HashSet hashSet = new HashSet();
        for (int i = 0; i < this.selectedContacts.size(); i++) {
            hashSet.add(Long.valueOf(this.selectedContacts.keyAt(i)));
        }
        if (this.initialPremium != (this.selectedPremium == null)) {
            z2 = this.initialMiniApps == (this.selectedMiniApps == null) || hashSet.size() != this.initialIds.size();
        }
        if (!z2) {
            Iterator it = hashSet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Long l = (Long) it.next();
                l.longValue();
                if (!this.initialIds.contains(l)) {
                    z2 = true;
                    break;
                }
            }
        }
        if (!z2) {
            return true;
        }
        if (z) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.getString(C2665R.string.UserRestrictionsApplyChanges));
            builder.setMessage(LocaleController.getString(C2665R.string.PrivacySettingsChangedAlert));
            builder.setPositiveButton(LocaleController.getString(C2665R.string.ApplyTheme), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.GroupCreateActivity$$ExternalSyntheticLambda10
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    this.f$0.lambda$checkDiscard$13(alertDialog, i2);
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2665R.string.PassportDiscard), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.GroupCreateActivity$$ExternalSyntheticLambda11
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    this.f$0.lambda$checkDiscard$14(alertDialog, i2);
                }
            });
            showDialog(builder.create());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$13(AlertDialog alertDialog, int i) {
        onDonePressed(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$14(AlertDialog alertDialog, int i) {
        finishFragment();
    }

    private HashSet<Long> getSelectedUsers() {
        HashSet<Long> hashSet = new HashSet<>();
        for (int i = 0; i < this.selectedContacts.size(); i++) {
            hashSet.add(Long.valueOf(this.selectedContacts.keyAt(i)));
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public boolean onDonePressed(boolean z) {
        if (this.selectedContacts.isEmpty() && this.chatType != 2 && this.addToGroup) {
            return false;
        }
        if (z && this.addToGroup) {
            if (getParentActivity() == null) {
                return false;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.formatPluralString("AddManyMembersAlertTitle", this.selectedContacts.size(), new Object[0]));
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < this.selectedContacts.size(); i++) {
                TLRPC.User user = getMessagesController().getUser(Long.valueOf(this.selectedContacts.keyAt(i)));
                if (user != null) {
                    if (sb.length() > 0) {
                        sb.append(", ");
                    }
                    sb.append("**");
                    sb.append(ContactsController.formatName(user.first_name, user.last_name));
                    sb.append("**");
                }
            }
            MessagesController messagesController = getMessagesController();
            long j = this.chatId;
            if (j == 0) {
                j = this.channelId;
            }
            TLRPC.Chat chat = messagesController.getChat(Long.valueOf(j));
            if (this.selectedContacts.size() > 5) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(LocaleController.formatPluralString("AddManyMembersAlertNamesText", this.selectedContacts.size(), chat == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat.title)));
                String str = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(this.selectedContacts.size()));
                int iIndexOf = TextUtils.indexOf(spannableStringBuilder, str);
                if (iIndexOf >= 0) {
                    spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold()), iIndexOf, str.length() + iIndexOf, 33);
                }
                builder.setMessage(spannableStringBuilder);
            } else {
                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.AddMembersAlertNamesText, sb, chat == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat.title)));
            }
            final CheckBoxCell[] checkBoxCellArr = new CheckBoxCell[1];
            if (!ChatObject.isChannel(chat)) {
                LinearLayout linearLayout = new LinearLayout(getParentActivity());
                linearLayout.setOrientation(1);
                CheckBoxCell checkBoxCell = new CheckBoxCell(getParentActivity(), 1, this.resourceProvider);
                checkBoxCellArr[0] = checkBoxCell;
                checkBoxCell.setBackground(Theme.getSelectorDrawable(false));
                checkBoxCellArr[0].setMultiline(true);
                if (this.selectedContacts.size() == 1) {
                    checkBoxCellArr[0].setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.AddOneMemberForwardMessages, UserObject.getFirstName(getMessagesController().getUser(Long.valueOf(this.selectedContacts.keyAt(0)))))), _UrlKt.FRAGMENT_ENCODE_SET, true, false);
                } else {
                    checkBoxCellArr[0].setText(LocaleController.getString(C2665R.string.AddMembersForwardMessages), _UrlKt.FRAGMENT_ENCODE_SET, true, false);
                }
                checkBoxCellArr[0].setPadding(LocaleController.isRTL ? AndroidUtilities.dp(16.0f) : AndroidUtilities.dp(8.0f), 0, LocaleController.isRTL ? AndroidUtilities.dp(8.0f) : AndroidUtilities.dp(16.0f), 0);
                linearLayout.addView(checkBoxCellArr[0], LayoutHelper.createLinear(-1, -2));
                checkBoxCellArr[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.GroupCreateActivity$$ExternalSyntheticLambda16
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        checkBoxCellArr[0].setChecked(!r0.isChecked(), true);
                    }
                });
                builder.setView(linearLayout);
            }
            builder.setPositiveButton(LocaleController.getString(C2665R.string.Add), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.GroupCreateActivity$$ExternalSyntheticLambda17
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    this.f$0.lambda$onDonePressed$16(checkBoxCellArr, alertDialog, i2);
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2665R.string.Cancel), null);
            showDialog(builder.create());
        } else if (this.chatType == 2) {
            ArrayList<TLRPC.InputUser> arrayList = new ArrayList<>();
            for (int i2 = 0; i2 < this.selectedContacts.size(); i2++) {
                TLRPC.InputUser inputUser = getMessagesController().getInputUser(getMessagesController().getUser(Long.valueOf(this.selectedContacts.keyAt(i2))));
                if (inputUser != null) {
                    arrayList.add(inputUser);
                }
            }
            getMessagesController().addUsersToChannel(this.chatId, arrayList, null);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeChats, new Object[0]);
            Bundle bundle = new Bundle();
            bundle.putLong("chat_id", this.chatId);
            bundle.putBoolean("just_created_chat", true);
            presentFragment(new ChatActivity(bundle), true);
        } else {
            if (!this.doneButtonVisible) {
                return false;
            }
            if (this.addToGroup) {
                onAddToGroupDone(0);
            } else {
                ArrayList<Long> arrayList2 = new ArrayList<>();
                for (int i3 = 0; i3 < this.selectedContacts.size(); i3++) {
                    arrayList2.add(Long.valueOf(this.selectedContacts.keyAt(i3)));
                }
                if (this.isAlwaysShare || this.isNeverShare) {
                    GroupCreateActivityDelegate groupCreateActivityDelegate = this.delegate;
                    if (groupCreateActivityDelegate != null) {
                        groupCreateActivityDelegate.didSelectUsers(this.selectedPremium != null, this.selectedMiniApps != null, arrayList2);
                    }
                    finishFragment();
                } else {
                    Bundle bundle2 = new Bundle();
                    int size = arrayList2.size();
                    long[] jArr = new long[size];
                    for (int i4 = 0; i4 < size; i4++) {
                        jArr[i4] = arrayList2.get(i4).longValue();
                    }
                    bundle2.putLongArray("result", jArr);
                    bundle2.putInt("chatType", this.chatType);
                    bundle2.putBoolean("forImport", this.forImport);
                    presentFragment(new GroupCreateFinalActivity(bundle2));
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDonePressed$16(CheckBoxCell[] checkBoxCellArr, AlertDialog alertDialog, int i) {
        int i2 = 0;
        CheckBoxCell checkBoxCell = checkBoxCellArr[0];
        if (checkBoxCell != null && checkBoxCell.isChecked()) {
            i2 = 100;
        }
        onAddToGroupDone(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeSearch() {
        this.searching = false;
        this.searchWas = false;
        this.adapter.setSearching(false);
        this.adapter.searchDialogs(null);
        this.listView.setFastScrollVisible(true);
        this.listView.setVerticalScrollBarEnabled(false);
        showItemsAnimated(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHint() {
        if (!this.isAlwaysShare && !this.isNeverShare && !this.addToGroup) {
            if (this.chatType == 2) {
                this.actionBar.setSubtitle(LocaleController.formatPluralString("Members", this.selectedContacts.size(), new Object[0]));
            } else if (this.selectedContacts.isEmpty()) {
                this.actionBar.setSubtitle(LocaleController.formatString(C2665R.string.MembersCountZero, LocaleController.formatPluralString("Members", this.maxCount + (this.isCall ? 1 : 0), new Object[0])));
            } else {
                this.actionBar.setSubtitle(String.format(LocaleController.getPluralString("MembersCountSelected", this.selectedContacts.size()), Integer.valueOf(this.selectedContacts.size()), Integer.valueOf(this.maxCount)));
            }
        }
        if (this.chatType == 2 || !this.addToGroup) {
            return;
        }
        if (this.doneButtonVisible && this.allSpans.isEmpty()) {
            this.floatingButton.setButtonVisible(false, true);
            this.doneButtonVisible = false;
        } else {
            if (this.doneButtonVisible || this.allSpans.isEmpty()) {
                return;
            }
            this.floatingButton.setButtonVisible(true, true);
            this.doneButtonVisible = true;
        }
    }

    public void setDelegate(GroupCreateActivityDelegate groupCreateActivityDelegate) {
        this.delegate = groupCreateActivityDelegate;
    }

    public void setDelegate2(ContactsAddActivityDelegate contactsAddActivityDelegate) {
        this.delegate2 = contactsAddActivityDelegate;
    }

    public static class Comparator implements java.util.Comparator<TLObject> {
        /* JADX INFO: Access modifiers changed from: private */
        public static String getName(TLObject tLObject) {
            if (tLObject instanceof TLRPC.User) {
                TLRPC.User user = (TLRPC.User) tLObject;
                return ContactsController.formatName(user.first_name, user.last_name);
            }
            if (tLObject instanceof TLRPC.Chat) {
                return ((TLRPC.Chat) tLObject).title;
            }
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }

        @Override // java.util.Comparator
        public int compare(TLObject tLObject, TLObject tLObject2) {
            return getName(tLObject).compareTo(getName(tLObject2));
        }
    }

    public class GroupCreateAdapter extends RecyclerListView.FastScrollAdapter {
        private final Context context;
        private int createCallLinkRow;
        private int currentItemsCount;
        private int firstSectionRow;
        private int inviteViaLink;
        private int miniAppsRow;
        private int noContactsStubRow;
        private int premiumRow;
        private final SearchAdapterHelper searchAdapterHelper;
        private Runnable searchRunnable;
        private boolean searching;
        private int userTypesHeaderRow;
        private int usersStartRow;
        private ArrayList<Object> searchResult = new ArrayList<>();
        private ArrayList<CharSequence> searchResultNames = new ArrayList<>();
        private final ArrayList<TLObject> contacts = new ArrayList<>();

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            GroupCreateActivity.this.updateEditTextHint();
        }

        public GroupCreateAdapter(Context context) {
            TLRPC.Chat chat;
            TLRPC.User user;
            this.context = context;
            HashSet hashSet = new HashSet();
            ArrayList<TLRPC.TL_contact> arrayList = GroupCreateActivity.this.getContactsController().contacts;
            for (int i = 0; i < arrayList.size(); i++) {
                TLRPC.User user2 = GroupCreateActivity.this.getMessagesController().getUser(Long.valueOf(arrayList.get(i).user_id));
                if (user2 != null && !user2.self && !user2.deleted) {
                    this.contacts.add(user2);
                    hashSet.add(Long.valueOf(user2.id));
                }
            }
            if (GroupCreateActivity.this.isNeverShare || GroupCreateActivity.this.isAlwaysShare || GroupCreateActivity.this.isCall) {
                ArrayList<TLRPC.Dialog> allDialogs = GroupCreateActivity.this.getMessagesController().getAllDialogs();
                if (GroupCreateActivity.this.isCall) {
                    int size = allDialogs.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        TLRPC.Dialog dialog = allDialogs.get(i2);
                        if (DialogObject.isUserDialog(dialog.id) && !hashSet.contains(Long.valueOf(dialog.id)) && (user = GroupCreateActivity.this.getMessagesController().getUser(Long.valueOf(dialog.id))) != null && !UserObject.isDeleted(user) && !UserObject.isUserSelf(user) && !UserObject.isBot(user) && !UserObject.isService(dialog.id) && !MessagesController.isSupportUser(user)) {
                            this.contacts.add(user);
                            hashSet.add(Long.valueOf(user.id));
                        }
                    }
                } else {
                    int size2 = allDialogs.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        TLRPC.Dialog dialog2 = allDialogs.get(i3);
                        if (DialogObject.isChatDialog(dialog2.id) && (chat = GroupCreateActivity.this.getMessagesController().getChat(Long.valueOf(-dialog2.id))) != null && chat.migrated_to == null && (!ChatObject.isChannel(chat) || chat.megagroup)) {
                            this.contacts.add(chat);
                        }
                    }
                }
                Collections.sort(this.contacts, new Comparator());
                TLObject tLObject = null;
                int i4 = 0;
                while (i4 < this.contacts.size()) {
                    TLObject tLObject2 = this.contacts.get(i4);
                    if (tLObject == null || !firstLetter(Comparator.getName(tLObject)).equals(firstLetter(Comparator.getName(tLObject2)))) {
                        this.contacts.add(i4, new Letter(firstLetter(Comparator.getName(tLObject2))));
                    }
                    i4++;
                    tLObject = tLObject2;
                }
            }
            SearchAdapterHelper searchAdapterHelper = new SearchAdapterHelper(false);
            this.searchAdapterHelper = searchAdapterHelper;
            searchAdapterHelper.setDelegate(new SearchAdapterHelper.SearchAdapterHelperDelegate() { // from class: org.telegram.ui.GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda1
                @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public final void onDataSetChanged(int i5) {
                    this.f$0.lambda$new$0(i5);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(int i) {
            GroupCreateActivity.this.showItemsAnimated(this.currentItemsCount);
            if (this.searchRunnable == null && !this.searchAdapterHelper.isSearchInProgress() && getItemCount() == 0) {
                GroupCreateActivity.this.emptyView.showProgress(false, true);
            }
            notifyDataSetChanged();
        }

        private String firstLetter(String str) {
            return TextUtils.isEmpty(str) ? _UrlKt.FRAGMENT_ENCODE_SET : str.substring(0, 1);
        }

        public void setSearching(boolean z) {
            if (this.searching == z) {
                return;
            }
            this.searching = z;
            notifyDataSetChanged();
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public String getLetter(int i) {
            String str;
            String str2;
            if (this.searching || i < this.usersStartRow) {
                return null;
            }
            int size = this.contacts.size();
            int i2 = this.usersStartRow;
            if (i >= size + i2) {
                return null;
            }
            TLObject tLObject = this.contacts.get(i - i2);
            if (tLObject instanceof Letter) {
                return ((Letter) tLObject).letter;
            }
            if (tLObject instanceof TLRPC.User) {
                TLRPC.User user = (TLRPC.User) tLObject;
                str = user.first_name;
                str2 = user.last_name;
            } else {
                str = ((TLRPC.Chat) tLObject).title;
                str2 = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            if (LocaleController.nameDisplayOrder == 1) {
                if (!TextUtils.isEmpty(str)) {
                    return str.substring(0, 1).toUpperCase();
                }
                if (!TextUtils.isEmpty(str2)) {
                    return str2.substring(0, 1).toUpperCase();
                }
            } else {
                if (!TextUtils.isEmpty(str2)) {
                    return str2.substring(0, 1).toUpperCase();
                }
                if (!TextUtils.isEmpty(str)) {
                    return str.substring(0, 1).toUpperCase();
                }
            }
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int i;
            this.noContactsStubRow = -1;
            this.userTypesHeaderRow = -1;
            this.createCallLinkRow = -1;
            this.firstSectionRow = -1;
            this.premiumRow = -1;
            this.miniAppsRow = -1;
            if (this.searching) {
                int size = this.searchResult.size();
                int size2 = this.searchAdapterHelper.getLocalServerSearch().size();
                int size3 = this.searchAdapterHelper.getGlobalSearch().size();
                int i2 = size + size2;
                if (size3 != 0) {
                    i2 += size3 + 1;
                }
                this.currentItemsCount = i2;
                return i2;
            }
            if (GroupCreateActivity.this.isCall) {
                this.createCallLinkRow = 0;
                i = 1;
            } else {
                i = 0;
            }
            if (GroupCreateActivity.this.allowPremium) {
                int i3 = i + 1;
                this.firstSectionRow = i;
                this.userTypesHeaderRow = i;
                i += 2;
                this.premiumRow = i3;
            } else if (GroupCreateActivity.this.allowMiniApps) {
                int i4 = i + 1;
                this.firstSectionRow = i;
                this.userTypesHeaderRow = i;
                i += 2;
                this.miniAppsRow = i4;
            } else {
                this.firstSectionRow = i;
            }
            this.usersStartRow = i;
            int size4 = i + this.contacts.size();
            if (GroupCreateActivity.this.addToGroup) {
                long j = GroupCreateActivity.this.chatId;
                GroupCreateActivity groupCreateActivity = GroupCreateActivity.this;
                if (j != 0) {
                    this.inviteViaLink = ChatObject.canUserDoAdminAction(groupCreateActivity.getMessagesController().getChat(Long.valueOf(GroupCreateActivity.this.chatId)), 3) ? 1 : 0;
                } else if (groupCreateActivity.channelId != 0) {
                    TLRPC.Chat chat = GroupCreateActivity.this.getMessagesController().getChat(Long.valueOf(GroupCreateActivity.this.channelId));
                    this.inviteViaLink = (!ChatObject.canUserDoAdminAction(chat, 3) || ChatObject.isPublic(chat)) ? 0 : 2;
                } else {
                    this.inviteViaLink = 0;
                }
                if (this.inviteViaLink != 0) {
                    this.usersStartRow++;
                    size4++;
                }
            }
            if (size4 == 0) {
                this.noContactsStubRow = 0;
                size4++;
            }
            this.currentItemsCount = size4;
            return size4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View graySectionCell;
            View groupCreateUserCell;
            if (i != 0) {
                int i2 = 0;
                if (i == 1) {
                    groupCreateUserCell = new GroupCreateUserCell(this.context, 1, 0, false);
                } else if (i == 3) {
                    StickerEmptyView stickerEmptyView = new StickerEmptyView(this.context, null, i2) { // from class: org.telegram.ui.GroupCreateActivity.GroupCreateAdapter.1
                        @Override // org.telegram.ui.Components.StickerEmptyView, android.view.ViewGroup, android.view.View
                        public void onAttachedToWindow() {
                            super.onAttachedToWindow();
                            this.stickerView.getImageReceiver().startAnimation();
                        }
                    };
                    stickerEmptyView.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
                    stickerEmptyView.subtitle.setVisibility(8);
                    stickerEmptyView.title.setText(LocaleController.getString(C2665R.string.NoContacts));
                    stickerEmptyView.setAnimateLayoutChange(true);
                    groupCreateUserCell = stickerEmptyView;
                } else {
                    graySectionCell = new TextCell(this.context);
                }
                graySectionCell = groupCreateUserCell;
            } else {
                graySectionCell = new GraySectionCell(this.context);
            }
            return new RecyclerListView.Holder(graySectionCell);
        }

        /* JADX WARN: Removed duplicated region for block: B:66:0x0144  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            TLObject tLObject;
            CharSequence charSequence;
            long j;
            CharSequence charSequence2;
            String publicUsername;
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                GraySectionCell graySectionCell = (GraySectionCell) viewHolder.itemView;
                if (this.searching) {
                    graySectionCell.setText(LocaleController.getString(C2665R.string.GlobalSearch));
                } else if (i == this.userTypesHeaderRow) {
                    graySectionCell.setText(LocaleController.getString(C2665R.string.PrivacyUserTypes));
                } else {
                    int i2 = this.usersStartRow;
                    if (i - i2 >= 0 && i - i2 < this.contacts.size()) {
                        TLObject tLObject2 = this.contacts.get(i - this.usersStartRow);
                        if (tLObject2 instanceof Letter) {
                            graySectionCell.setText(((Letter) tLObject2).letter.toUpperCase());
                        }
                    }
                }
                if (i == this.firstSectionRow) {
                    graySectionCell.setRightText((GroupCreateActivity.this.selectedPremium == null && GroupCreateActivity.this.selectedContacts.isEmpty()) ? _UrlKt.FRAGMENT_ENCODE_SET : LocaleController.getString(C2665R.string.DeselectAll), true, new View.OnClickListener() { // from class: org.telegram.ui.GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$onBindViewHolder$1(view);
                        }
                    });
                    return;
                }
                return;
            }
            if (itemViewType != 1) {
                if (itemViewType != 2) {
                    return;
                }
                TextCell textCell = (TextCell) viewHolder.itemView;
                if (i == this.createCallLinkRow) {
                    textCell.setTextAndIcon((CharSequence) LocaleController.getString(C2665R.string.GroupCallCreateLink), C2665R.drawable.menu_link_create2, false);
                    textCell.setColors(Theme.key_windowBackgroundWhiteBlueIcon, Theme.key_windowBackgroundWhiteBlueButton);
                    return;
                } else if (this.inviteViaLink == 2) {
                    textCell.setTextAndIcon((CharSequence) LocaleController.getString(C2665R.string.ChannelInviteViaLink), C2665R.drawable.msg_link2, false);
                    textCell.setColors(Theme.key_windowBackgroundWhiteGrayIcon, Theme.key_windowBackgroundWhiteBlackText);
                    return;
                } else {
                    textCell.setTextAndIcon((CharSequence) LocaleController.getString(C2665R.string.InviteToGroupByLink), C2665R.drawable.msg_link2, false);
                    textCell.setColors(Theme.key_windowBackgroundWhiteGrayIcon, Theme.key_windowBackgroundWhiteBlackText);
                    return;
                }
            }
            GroupCreateUserCell groupCreateUserCell = (GroupCreateUserCell) viewHolder.itemView;
            CharSequence charSequence3 = null;
            if (this.searching) {
                int size = this.searchResult.size();
                int size2 = this.searchAdapterHelper.getGlobalSearch().size();
                int size3 = this.searchAdapterHelper.getLocalServerSearch().size();
                if (i >= 0 && i < size) {
                    tLObject = (TLObject) this.searchResult.get(i);
                } else if (i >= size && i < size3 + size) {
                    tLObject = this.searchAdapterHelper.getLocalServerSearch().get(i - size);
                } else {
                    tLObject = (i <= size + size3 || i > (size2 + size) + size3) ? null : this.searchAdapterHelper.getGlobalSearch().get(((i - size) - size3) - 1);
                }
                if (tLObject == null) {
                    charSequence2 = null;
                    CharSequence charSequence4 = charSequence3;
                    charSequence3 = charSequence2;
                    charSequence = charSequence4;
                } else {
                    if (tLObject instanceof TLRPC.User) {
                        publicUsername = ((TLRPC.User) tLObject).username;
                    } else if (!(tLObject instanceof TLRPC.Chat)) {
                        return;
                    } else {
                        publicUsername = ChatObject.getPublicUsername((TLRPC.Chat) tLObject);
                    }
                    if (i < size) {
                        charSequence2 = this.searchResultNames.get(i);
                        if (charSequence2 != null && !TextUtils.isEmpty(publicUsername)) {
                            if (charSequence2.toString().startsWith("@" + publicUsername)) {
                                charSequence3 = charSequence2;
                                charSequence2 = null;
                            }
                        }
                    } else if (i > size && !TextUtils.isEmpty(publicUsername)) {
                        String lastFoundUsername = this.searchAdapterHelper.getLastFoundUsername();
                        if (lastFoundUsername.startsWith("@")) {
                            lastFoundUsername = lastFoundUsername.substring(1);
                        }
                        try {
                            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                            spannableStringBuilder.append((CharSequence) "@");
                            spannableStringBuilder.append((CharSequence) publicUsername);
                            int iIndexOfIgnoreCase = AndroidUtilities.indexOfIgnoreCase(publicUsername, lastFoundUsername);
                            if (iIndexOfIgnoreCase != -1) {
                                int length = lastFoundUsername.length();
                                if (iIndexOfIgnoreCase == 0) {
                                    length++;
                                } else {
                                    iIndexOfIgnoreCase++;
                                }
                                spannableStringBuilder.setSpan(new ForegroundColorSpan(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4)), iIndexOfIgnoreCase, length + iIndexOfIgnoreCase, 33);
                            }
                            charSequence2 = null;
                            charSequence3 = spannableStringBuilder;
                        } catch (Exception unused) {
                            charSequence2 = null;
                            charSequence3 = publicUsername;
                        }
                    }
                    CharSequence charSequence42 = charSequence3;
                    charSequence3 = charSequence2;
                    charSequence = charSequence42;
                }
            } else if (i == this.premiumRow) {
                groupCreateUserCell.setPremium();
                groupCreateUserCell.setChecked(GroupCreateActivity.this.selectedPremium != null, false);
                return;
            } else if (i == this.miniAppsRow) {
                groupCreateUserCell.setMiniapps();
                groupCreateUserCell.setChecked(GroupCreateActivity.this.selectedMiniApps != null, false);
                return;
            } else {
                tLObject = this.contacts.get(i - this.usersStartRow);
                charSequence = null;
            }
            groupCreateUserCell.setObject(tLObject, charSequence3, charSequence);
            if (tLObject instanceof TLRPC.User) {
                j = ((TLRPC.User) tLObject).id;
            } else {
                j = tLObject instanceof TLRPC.Chat ? -((TLRPC.Chat) tLObject).id : 0L;
            }
            if (j != 0) {
                if (GroupCreateActivity.this.ignoreUsers != null && GroupCreateActivity.this.ignoreUsers.indexOfKey(j) >= 0) {
                    groupCreateUserCell.setChecked(true, false);
                    groupCreateUserCell.setCheckBoxEnabled(false);
                } else {
                    groupCreateUserCell.setChecked(GroupCreateActivity.this.selectedContacts.indexOfKey(j) >= 0, false);
                    groupCreateUserCell.setCheckBoxEnabled(true);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$1(View view) {
            GroupCreateActivity.this.selectedPremium = null;
            GroupCreateActivity.this.selectedContacts.clear();
            GroupCreateActivity.this.spansContainer.removeAllSpans(true);
            GroupCreateActivity.this.checkVisibleRows();
            GroupCreateActivity.this.updateEditTextHint();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (this.searching) {
                return i == this.searchResult.size() + this.searchAdapterHelper.getLocalServerSearch().size() ? 0 : 1;
            }
            if (i == this.createCallLinkRow) {
                return 2;
            }
            if (i == this.userTypesHeaderRow) {
                return 0;
            }
            if (i != this.premiumRow && i != this.miniAppsRow) {
                if (this.inviteViaLink != 0 && i == 0) {
                    return 2;
                }
                if (this.noContactsStubRow == i) {
                    return 3;
                }
                int i2 = this.usersStartRow;
                if (i - i2 >= 0 && i - i2 < this.contacts.size() && (this.contacts.get(i - this.usersStartRow) instanceof Letter)) {
                    return 0;
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
            if (viewHolder.getItemViewType() == 0) {
                return false;
            }
            if (GroupCreateActivity.this.ignoreUsers != null) {
                View view = viewHolder.itemView;
                if (view instanceof GroupCreateUserCell) {
                    Object object = ((GroupCreateUserCell) view).getObject();
                    return !(object instanceof TLRPC.User) || GroupCreateActivity.this.ignoreUsers.indexOfKey(((TLRPC.User) object).id) < 0;
                }
            }
            return true;
        }

        public void searchDialogs(final String str) {
            if (this.searchRunnable != null) {
                Utilities.searchQueue.cancelRunnable(this.searchRunnable);
                this.searchRunnable = null;
            }
            this.searchResult.clear();
            this.searchResultNames.clear();
            this.searchAdapterHelper.mergeResults(null);
            this.searchAdapterHelper.queryServerSearch(null, true, GroupCreateActivity.this.isAlwaysShare || GroupCreateActivity.this.isNeverShare, false, false, false, 0L, false, 0, 0);
            notifyDataSetChanged();
            if (TextUtils.isEmpty(str)) {
                return;
            }
            DispatchQueue dispatchQueue = Utilities.searchQueue;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$searchDialogs$4(str);
                }
            };
            this.searchRunnable = runnable;
            dispatchQueue.postRunnable(runnable, 300L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$searchDialogs$4(final String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$searchDialogs$3(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$searchDialogs$3(final String str) {
            this.searchAdapterHelper.queryServerSearch(str, true, GroupCreateActivity.this.isAlwaysShare || GroupCreateActivity.this.isNeverShare, true, false, false, 0L, false, 0, 0);
            DispatchQueue dispatchQueue = Utilities.searchQueue;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$searchDialogs$2(str);
                }
            };
            this.searchRunnable = runnable;
            dispatchQueue.postRunnable(runnable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00d7  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0129 A[LOOP:1: B:31:0x0094->B:58:0x0129, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:66:0x00da A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$searchDialogs$2(String str) {
            String lowerCase;
            String publicUsername;
            boolean z;
            Object obj;
            String lowerCase2 = str.trim().toLowerCase();
            if (lowerCase2.isEmpty()) {
                updateSearchResults(new ArrayList<>(), new ArrayList<>());
                return;
            }
            String translitString = LocaleController.getInstance().getTranslitString(lowerCase2);
            if (lowerCase2.equals(translitString) || translitString.isEmpty()) {
                translitString = null;
            }
            int i = 0;
            boolean z2 = true;
            int i2 = (translitString != null ? 1 : 0) + 1;
            String[] strArr = new String[i2];
            strArr[0] = lowerCase2;
            if (translitString != null) {
                strArr[1] = translitString;
            }
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList<CharSequence> arrayList2 = new ArrayList<>();
            int i3 = 0;
            while (i3 < this.contacts.size()) {
                TLObject tLObject = this.contacts.get(i3);
                boolean z3 = tLObject instanceof TLRPC.User;
                if (z3) {
                    TLRPC.User user = (TLRPC.User) tLObject;
                    lowerCase = ContactsController.formatName(user.first_name, user.last_name).toLowerCase();
                    publicUsername = UserObject.getPublicUsername(user);
                } else {
                    if (tLObject instanceof TLRPC.Chat) {
                        TLRPC.Chat chat = (TLRPC.Chat) tLObject;
                        lowerCase = chat.title;
                        publicUsername = ChatObject.getPublicUsername(chat);
                    }
                    z = z2;
                    i3++;
                    z2 = z;
                    i = 0;
                }
                String translitString2 = LocaleController.getInstance().getTranslitString(lowerCase);
                if (lowerCase.equals(translitString2)) {
                    translitString2 = null;
                }
                int i4 = i;
                int i5 = i4;
                while (i4 < i2) {
                    String str2 = strArr[i4];
                    if (!lowerCase.startsWith(str2)) {
                        if (lowerCase.contains(" " + str2)) {
                            i5 = 1;
                            if (i5 == 0) {
                                z = true;
                                if (i5 == 1) {
                                    if (z3) {
                                        TLRPC.User user2 = (TLRPC.User) tLObject;
                                        arrayList2.add(AndroidUtilities.generateSearchName(user2.first_name, user2.last_name, str2));
                                    } else if (tLObject instanceof TLRPC.Chat) {
                                        arrayList2.add(AndroidUtilities.generateSearchName(((TLRPC.Chat) tLObject).title, null, str2));
                                    }
                                    obj = null;
                                } else {
                                    obj = null;
                                    arrayList2.add(AndroidUtilities.generateSearchName("@" + publicUsername, null, "@" + str2));
                                }
                                arrayList.add(tLObject);
                            } else {
                                i4++;
                                z2 = true;
                            }
                        } else {
                            if (translitString2 != null) {
                                if (!translitString2.startsWith(str2)) {
                                    if (translitString2.contains(" " + str2)) {
                                    }
                                    if (i5 == 0) {
                                    }
                                }
                                i5 = 1;
                                if (i5 == 0) {
                                }
                            }
                            if (publicUsername != null && publicUsername.startsWith(str2)) {
                                i5 = 2;
                            }
                            if (i5 == 0) {
                            }
                        }
                    }
                    i3++;
                    z2 = z;
                    i = 0;
                }
                z = z2;
                i3++;
                z2 = z;
                i = 0;
            }
            updateSearchResults(arrayList, arrayList2);
        }

        private void updateSearchResults(final ArrayList<Object> arrayList, final ArrayList<CharSequence> arrayList2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateSearchResults$5(arrayList, arrayList2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateSearchResults$5(ArrayList arrayList, ArrayList arrayList2) {
            if (this.searching) {
                this.searchRunnable = null;
                this.searchResult = arrayList;
                this.searchResultNames = arrayList2;
                this.searchAdapterHelper.mergeResults(arrayList);
                GroupCreateActivity.this.showItemsAnimated(this.currentItemsCount);
                notifyDataSetChanged();
                if (this.searching && !this.searchAdapterHelper.isSearchInProgress() && getItemCount() == 0) {
                    GroupCreateActivity.this.emptyView.showProgress(false, true);
                }
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.GroupCreateActivity$$ExternalSyntheticLambda12
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.lambda$getThemeDescriptions$17();
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
        arrayList.add(new ThemeDescription(this.spansContainer, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_FASTSCROLL, null, null, null, null, Theme.key_fastScrollActive));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_FASTSCROLL, null, null, null, null, Theme.key_fastScrollInactive));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_FASTSCROLL, null, null, null, null, Theme.key_fastScrollText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.emptyView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_emptyListPlaceholder));
        arrayList.add(new ThemeDescription(this.emptyView, ThemeDescription.FLAG_PROGRESSBAR, null, null, null, null, Theme.key_progressCircle));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{GroupCreateSectionCell.class}, null, null, null, Theme.key_graySection));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{GroupCreateSectionCell.class}, new String[]{"drawable"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_groupcreate_sectionShadow));
        int i5 = Theme.key_groupcreate_sectionText;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{GroupCreateSectionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{GroupCreateUserCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{GroupCreateUserCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_checkbox));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{GroupCreateUserCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_checkboxDisabled));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{GroupCreateUserCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_checkboxCheck));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{GroupCreateUserCell.class}, new String[]{"statusTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueText));
        int i6 = Theme.key_windowBackgroundWhiteGrayText;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{GroupCreateUserCell.class}, new String[]{"statusTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i6));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{GroupCreateUserCell.class}, null, Theme.avatarDrawables, null, Theme.key_avatar_text));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundRed));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundOrange));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundViolet));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundGreen));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundCyan));
        int i7 = Theme.key_avatar_backgroundBlue;
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, i7));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundPink));
        arrayList.add(new ThemeDescription(this.spansContainer.getSpansContainer(), 0, new Class[]{GroupCreateSpan.class}, null, null, null, Theme.key_groupcreate_spanBackground));
        arrayList.add(new ThemeDescription(this.spansContainer.getSpansContainer(), 0, new Class[]{GroupCreateSpan.class}, null, null, null, Theme.key_groupcreate_spanText));
        arrayList.add(new ThemeDescription(this.spansContainer.getSpansContainer(), 0, new Class[]{GroupCreateSpan.class}, null, null, null, Theme.key_groupcreate_spanDelete));
        arrayList.add(new ThemeDescription(this.spansContainer.getSpansContainer(), 0, new Class[]{GroupCreateSpan.class}, null, null, null, i7));
        arrayList.add(new ThemeDescription(this.emptyView.title, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteBlackText));
        arrayList.add(new ThemeDescription(this.emptyView.subtitle, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i6));
        PermanentLinkBottomSheet permanentLinkBottomSheet = this.sharedLinkBottomSheet;
        if (permanentLinkBottomSheet != null) {
            arrayList.addAll(permanentLinkBottomSheet.getThemeDescriptions());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$17() {
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
        FragmentSearchField fragmentSearchField = this.searchField;
        if (fragmentSearchField != null) {
            fragmentSearchField.updateColors();
        }
        FragmentFloatingButton fragmentFloatingButton = this.floatingButton;
        if (fragmentFloatingButton != null) {
            fragmentFloatingButton.updateColors();
        }
    }

    public static class Letter extends TLRPC.TL_contact {
        public final String letter;

        public Letter(String str) {
            this.letter = str;
        }
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
        if (i != 3) {
            if (i == 4) {
                checkUi_bottomButtons();
                checkUi_listClip();
                return;
            }
            return;
        }
        int paddingTop = this.listView.getPaddingTop();
        checkUi_listViewPadding();
        checkUi_searchFieldY();
        checkUi_listClip();
        checkUi_headerShadowY();
        this.actionBarBackgroundView.invalidate();
        int paddingTop2 = this.listView.getPaddingTop();
        if (paddingTop2 == paddingTop || this.headerShadowView.isShadowVisible()) {
            return;
        }
        this.listView.scrollBy(0, paddingTop - paddingTop2);
    }

    @Override // org.telegram.ui.Components.inset.WindowAnimatedInsetsProvider.Listener
    public View getAnimatedInsetsTargetView() {
        return this.fragmentView;
    }

    @Override // org.telegram.ui.Components.inset.WindowAnimatedInsetsProvider.Listener
    public void onAnimatedInsetsChanged(View view, WindowInsetsCompat windowInsetsCompat) {
        this.imeInsetAnimatedHeight = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime()).bottom;
        checkUi_floatingButton();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        int i = AndroidUtilities.getDefaultWindowInsets(windowInsetsCompat, false).bottom;
        this.navigationBarHeight = i;
        FrameLayout frameLayout = this.buttonsContainer;
        if (frameLayout != null) {
            frameLayout.setPadding(0, 0, 0, i);
        }
        checkUi_listViewPadding();
        checkUi_floatingButton();
        return WindowInsetsCompat.CONSUMED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_listViewPadding() {
        this.listView.setPadding(0, AndroidUtilities.dp(this.ADDITIONAL_LIST_HEIGHT_DP + 48) + this.actionBar.getMeasuredHeight() + ((int) this.animatorSelectorContainerHeight.getFactor()), 0, AndroidUtilities.dp(this.ADDITIONAL_LIST_HEIGHT_DP) + this.navigationBarHeight + (this.isCall ? AndroidUtilities.dp(76.0f) : 0));
        this.emptyView.setPadding(0, 0, 0, this.navigationBarHeight);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_searchFieldY() {
        this.searchField.setTranslationY(this.animatorSelectorContainerHeight.getFactor());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_headerShadowY() {
        this.headerShadowView.setTranslationY(AndroidUtilities.dp(48.0f) + this.animatorSelectorContainerHeight.getFactor());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_bottomButtons() {
        if (this.buttonsContainer == null) {
            return;
        }
        float floatValue = this.animatorCallButtonsVisible.getFloatValue();
        this.buttonsContainer.setTranslationY(AndroidUtilities.dp(12.0f) * (1.0f - floatValue));
        this.buttonsContainer.setAlpha(floatValue);
        this.buttonsContainer.setVisibility(floatValue > 0.0f ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_floatingButton() {
        FragmentFloatingButton fragmentFloatingButton = this.floatingButton;
        if (fragmentFloatingButton != null) {
            fragmentFloatingButton.setTranslationY(-Math.max(this.navigationBarHeight, this.imeInsetAnimatedHeight));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_listClip() {
        if (this.listView.hasActiveEdgeEffects()) {
            this.listView.setClipBounds(null);
            return;
        }
        this.tmpClipRect.set(0, AndroidUtilities.dp(this.ADDITIONAL_LIST_HEIGHT_DP + 48) + this.actionBar.getMeasuredHeight() + ((int) this.animatorSelectorContainerHeight.getFactor()), this.listView.getMeasuredWidth(), (this.listView.getMeasuredHeight() - AndroidUtilities.dp(this.ADDITIONAL_LIST_HEIGHT_DP)) - ((int) ((this.navigationBarHeight + AndroidUtilities.dp(76.0f)) * this.animatorCallButtonsVisible.getFloatValue())));
        this.listView.setClipBounds(this.tmpClipRect);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void blur3_InvalidateBlur() {
        if (Build.VERSION.SDK_INT < 31 || this.scrollableViewNoiseSuppressor == null) {
            return;
        }
        int iDp = AndroidUtilities.dp(48.0f);
        this.iBlur3PositionActionBar.set(0.0f, 0.0f, this.fragmentView.getMeasuredWidth(), this.actionBar.getMeasuredHeight() + AndroidUtilities.dp(48.0f) + this.maxSize);
        float f = -iDp;
        this.iBlur3PositionActionBar.inset(0.0f, f);
        if (this.buttonsContainer != null) {
            this.iBlur3PositionBottomBar.set(0.0f, this.fragmentView.getMeasuredHeight() - this.buttonsContainer.getMeasuredHeight(), this.fragmentView.getMeasuredWidth(), this.fragmentView.getMeasuredHeight());
            this.iBlur3PositionBottomBar.inset(0.0f, f);
        }
        this.scrollableViewNoiseSuppressor.setupRenderNodes(this.iBlur3Positions, (this.buttonsContainer == null || this.animatorCallButtonsVisible.getFloatValue() <= 0.0f) ? 1 : 2);
        this.scrollableViewNoiseSuppressor.invalidateResultRenderNodes(this.iBlur3Capture, this.fragmentView.getMeasuredWidth(), this.fragmentView.getMeasuredHeight());
    }
}
