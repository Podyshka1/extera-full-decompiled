package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import kotlin.time.DurationKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.AvatarSpan;
import org.telegram.ui.Cells.GraySectionCell;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.ShadowSectionCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Cells.UserCell;
import org.telegram.ui.Components.LinkActionView;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.LinkEditActivity;
import org.telegram.ui.ManageLinksActivity;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Stories.recorder.HintView2;

/* JADX INFO: loaded from: classes7.dex */
public class InviteLinkBottomSheet extends BottomSheet {
    Adapter adapter;
    private boolean canEdit;
    private long chatId;
    int creatorHeaderRow;
    int creatorRow;
    int divider2Row;
    int divider3Row;
    int dividerRow;
    int emptyHintRow;
    int emptyView;
    int emptyView2;
    int emptyView3;
    int expiredEndRow;
    int expiredHeaderRow;
    int expiredStartRow;
    ArrayList<TLRPC.TL_chatInviteImporter> expiredUsers;
    BaseFragment fragment;
    boolean hasMore;
    private boolean ignoreLayout;
    TLRPC.ChatFull info;
    TLRPC.TL_chatInviteExported invite;
    InviteDelegate inviteDelegate;
    private boolean isChannel;
    public boolean isNeedReopen;
    int joinedEndRow;
    int joinedHeaderRow;
    int joinedStartRow;
    ArrayList<TLRPC.TL_chatInviteImporter> joinedUsers;
    int linkActionRow;
    int linkInfoRow;
    private RecyclerListView listView;
    int loadingRow;
    private boolean permanent;
    int requestedEndRow;
    int requestedHeaderRow;
    int requestedStartRow;
    ArrayList<TLRPC.TL_chatInviteImporter> requestedUsers;
    int revenueHeaderRow;
    int revenueRow;
    int rowCount;
    private int scrollOffsetY;
    private View shadow;
    private AnimatorSet shadowAnimation;
    private final long timeDif;
    private TextView titleTextView;
    private boolean titleVisible;
    HashMap<Long, TLRPC.User> users;
    boolean usersLoading;

    public interface InviteDelegate {
        void linkRevoked(TLRPC.TL_chatInviteExported tL_chatInviteExported);

        void onLinkDeleted(TLRPC.TL_chatInviteExported tL_chatInviteExported);

        void onLinkEdited(TLRPC.TL_chatInviteExported tL_chatInviteExported);

        void permanentLinkReplaced(TLRPC.TL_chatInviteExported tL_chatInviteExported, TLRPC.TL_chatInviteExported tL_chatInviteExported2);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public boolean canDismissWithSwipe() {
        return false;
    }

    public InviteLinkBottomSheet(final Context context, final TLRPC.TL_chatInviteExported tL_chatInviteExported, final TLRPC.ChatFull chatFull, final HashMap<Long, TLRPC.User> map, final BaseFragment baseFragment, final long j, boolean z, boolean z2) {
        float f;
        super(context, false);
        this.joinedUsers = new ArrayList<>();
        this.expiredUsers = new ArrayList<>();
        this.requestedUsers = new ArrayList<>();
        this.canEdit = true;
        this.isNeedReopen = false;
        this.invite = tL_chatInviteExported;
        this.users = map;
        this.fragment = baseFragment;
        this.info = chatFull;
        this.chatId = j;
        this.permanent = z;
        this.isChannel = z2;
        int i = Theme.key_windowBackgroundGray;
        setBackgroundColor(getThemedColor(i));
        fixNavigationBar(getThemedColor(i));
        this.behindKeyboardColorKey = -1;
        if (this.users == null) {
            this.users = new HashMap<>();
        }
        this.timeDif = ((long) ConnectionsManager.getInstance(this.currentAccount).getCurrentTime()) - (System.currentTimeMillis() / 1000);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.InviteLinkBottomSheet.1
            private boolean fullHeight;
            private RectF rect = new RectF();
            private Boolean statusBarOpen;

            @Override // android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0 && InviteLinkBottomSheet.this.scrollOffsetY != 0 && motionEvent.getY() < InviteLinkBottomSheet.this.scrollOffsetY) {
                    InviteLinkBottomSheet.this.lambda$new$0();
                    return true;
                }
                return super.onInterceptTouchEvent(motionEvent);
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return !InviteLinkBottomSheet.this.isDismissed() && super.onTouchEvent(motionEvent);
            }

            @Override // android.widget.FrameLayout, android.view.View
            public void onMeasure(int i2, int i3) {
                int size = View.MeasureSpec.getSize(i3);
                InviteLinkBottomSheet.this.ignoreLayout = true;
                setPadding(((BottomSheet) InviteLinkBottomSheet.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, ((BottomSheet) InviteLinkBottomSheet.this).backgroundPaddingLeft, 0);
                InviteLinkBottomSheet.this.ignoreLayout = false;
                super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30));
                this.fullHeight = true;
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z3, int i2, int i3, int i4, int i5) {
                super.onLayout(z3, i2, i3, i4, i5);
                InviteLinkBottomSheet.this.updateLayout();
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (InviteLinkBottomSheet.this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }

            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                int iMin;
                float fMin;
                int iDp = (InviteLinkBottomSheet.this.scrollOffsetY - ((BottomSheet) InviteLinkBottomSheet.this).backgroundPaddingTop) - AndroidUtilities.dp(8.0f);
                int measuredHeight = getMeasuredHeight() + AndroidUtilities.dp(36.0f) + ((BottomSheet) InviteLinkBottomSheet.this).backgroundPaddingTop;
                int i2 = AndroidUtilities.statusBarHeight;
                int i3 = iDp + i2;
                int i4 = measuredHeight - i2;
                if (this.fullHeight) {
                    int i5 = ((BottomSheet) InviteLinkBottomSheet.this).backgroundPaddingTop + i3;
                    int i6 = AndroidUtilities.statusBarHeight;
                    if (i5 < i6 * 2) {
                        int iMin2 = Math.min(i6, ((i6 * 2) - i3) - ((BottomSheet) InviteLinkBottomSheet.this).backgroundPaddingTop);
                        i3 -= iMin2;
                        i4 += iMin2;
                        fMin = 1.0f - Math.min(1.0f, (iMin2 * 2) / AndroidUtilities.statusBarHeight);
                    } else {
                        fMin = 1.0f;
                    }
                    int i7 = ((BottomSheet) InviteLinkBottomSheet.this).backgroundPaddingTop + i3;
                    int i8 = AndroidUtilities.statusBarHeight;
                    iMin = i7 < i8 ? Math.min(i8, (i8 - i3) - ((BottomSheet) InviteLinkBottomSheet.this).backgroundPaddingTop) : 0;
                } else {
                    iMin = 0;
                    fMin = 1.0f;
                }
                ((BottomSheet) InviteLinkBottomSheet.this).shadowDrawable.setBounds(0, i3, getMeasuredWidth(), i4 + AndroidUtilities.dp(10.0f) + AndroidUtilities.navigationBarHeight);
                ((BottomSheet) InviteLinkBottomSheet.this).shadowDrawable.draw(canvas);
                if (fMin != 1.0f) {
                    Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(Theme.key_dialogBackground));
                    this.rect.set(((BottomSheet) InviteLinkBottomSheet.this).backgroundPaddingLeft, ((BottomSheet) InviteLinkBottomSheet.this).backgroundPaddingTop + i3, getMeasuredWidth() - ((BottomSheet) InviteLinkBottomSheet.this).backgroundPaddingLeft, ((BottomSheet) InviteLinkBottomSheet.this).backgroundPaddingTop + i3 + AndroidUtilities.dp(24.0f));
                    canvas.drawRoundRect(this.rect, AndroidUtilities.dp(12.0f) * fMin, AndroidUtilities.dp(12.0f) * fMin, Theme.dialogs_onlineCirclePaint);
                }
                if (iMin > 0) {
                    Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(Theme.key_dialogBackground));
                    canvas.drawRect(((BottomSheet) InviteLinkBottomSheet.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight - iMin, getMeasuredWidth() - ((BottomSheet) InviteLinkBottomSheet.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, Theme.dialogs_onlineCirclePaint);
                }
                updateLightStatusBar(iMin > AndroidUtilities.statusBarHeight / 2);
            }

            private void updateLightStatusBar(boolean z3) {
                Boolean bool = this.statusBarOpen;
                if (bool == null || bool.booleanValue() != z3) {
                    boolean z4 = AndroidUtilities.computePerceivedBrightness(InviteLinkBottomSheet.this.getThemedColor(Theme.key_dialogBackground)) > 0.721f;
                    boolean z5 = AndroidUtilities.computePerceivedBrightness(Theme.blendOver(InviteLinkBottomSheet.this.getThemedColor(Theme.key_actionBarDefault), 855638016)) > 0.721f;
                    this.statusBarOpen = Boolean.valueOf(z3);
                    if (!z3) {
                        z4 = z5;
                    }
                    AndroidUtilities.setLightStatusBar(InviteLinkBottomSheet.this.getWindow(), z4);
                }
            }
        };
        this.containerView = frameLayout;
        frameLayout.setWillNotDraw(false);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, AndroidUtilities.getShadowHeight(), 51);
        layoutParams.topMargin = AndroidUtilities.dp(48.0f);
        View view = new View(context);
        this.shadow = view;
        view.setAlpha(0.0f);
        this.shadow.setVisibility(4);
        this.shadow.setTag(1);
        this.containerView.addView(this.shadow, layoutParams);
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.Components.InviteLinkBottomSheet.2
            int lastH;

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (InviteLinkBottomSheet.this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            public void onMeasure(int i2, int i3) {
                if (this.lastH != View.MeasureSpec.getSize(i3)) {
                    this.lastH = View.MeasureSpec.getSize(i3);
                    InviteLinkBottomSheet.this.ignoreLayout = true;
                    InviteLinkBottomSheet.this.listView.setPadding(0, 0, 0, 0);
                    InviteLinkBottomSheet.this.ignoreLayout = false;
                    measure(i2, View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE));
                    int measuredHeight = getMeasuredHeight();
                    int i4 = this.lastH;
                    int i5 = (int) ((i4 / 5.0f) * 2.0f);
                    if (i5 < (i4 - measuredHeight) + AndroidUtilities.dp(60.0f)) {
                        i5 = this.lastH - measuredHeight;
                    }
                    InviteLinkBottomSheet.this.ignoreLayout = true;
                    InviteLinkBottomSheet.this.listView.setPadding(0, i5, 0, 0);
                    InviteLinkBottomSheet.this.ignoreLayout = false;
                    measure(i2, View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE));
                }
                super.onMeasure(i2, i3);
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setSections();
        this.listView.setTag(14);
        final LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext(), 1, false);
        this.listView.setLayoutManager(linearLayoutManager);
        RecyclerListView recyclerListView2 = this.listView;
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        recyclerListView2.setAdapter(adapter);
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setClipToPadding(false);
        this.listView.setNestedScrollingEnabled(true);
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.InviteLinkBottomSheet.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                InviteLinkBottomSheet.this.updateLayout();
                InviteLinkBottomSheet inviteLinkBottomSheet = InviteLinkBottomSheet.this;
                if (!inviteLinkBottomSheet.hasMore || inviteLinkBottomSheet.usersLoading) {
                    return;
                }
                int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
                InviteLinkBottomSheet inviteLinkBottomSheet2 = InviteLinkBottomSheet.this;
                if (inviteLinkBottomSheet2.rowCount - iFindLastVisibleItemPosition < 10) {
                    inviteLinkBottomSheet2.loadUsers();
                }
            }
        });
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.InviteLinkBottomSheet$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view2, int i2) {
                this.f$0.lambda$new$3(tL_chatInviteExported, map, chatFull, context, j, baseFragment, view2, i2);
            }
        });
        TextView textView = new TextView(context);
        this.titleTextView = textView;
        textView.setLines(1);
        this.titleTextView.setSingleLine(true);
        this.titleTextView.setTextSize(1, 20.0f);
        this.titleTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.titleTextView.setPadding(AndroidUtilities.dp(23.0f), 0, AndroidUtilities.dp(23.0f), 0);
        this.titleTextView.setGravity(16);
        this.titleTextView.setTypeface(AndroidUtilities.bold());
        if (!z) {
            if (tL_chatInviteExported.expired) {
                this.titleTextView.setText(LocaleController.getString(C2665R.string.ExpiredLink));
            } else {
                boolean z3 = tL_chatInviteExported.revoked;
                TextView textView2 = this.titleTextView;
                if (z3) {
                    textView2.setText(LocaleController.getString(C2665R.string.RevokedLink));
                } else {
                    textView2.setText(LocaleController.getString(C2665R.string.InviteLink));
                }
            }
            this.titleVisible = true;
            f = 0.0f;
        } else {
            this.titleTextView.setText(LocaleController.getString(C2665R.string.InviteLink));
            this.titleVisible = false;
            this.titleTextView.setVisibility(4);
            f = 0.0f;
            this.titleTextView.setAlpha(0.0f);
        }
        if (!TextUtils.isEmpty(tL_chatInviteExported.title)) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(tL_chatInviteExported.title);
            Emoji.replaceEmoji(spannableStringBuilder, this.titleTextView.getPaint().getFontMetricsInt(), false);
            this.titleTextView.setText(spannableStringBuilder);
        }
        this.containerView.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f, 51, 0.0f, !this.titleVisible ? f : 44.0f, 0.0f, 0.0f));
        this.containerView.addView(this.titleTextView, LayoutHelper.createFrame(-1, this.titleVisible ? 50.0f : 44.0f, 51, 0.0f, 0.0f, 0.0f, 0.0f));
        updateRows();
        loadUsers();
        if (map == null || map.get(Long.valueOf(tL_chatInviteExported.admin_id)) == null) {
            loadCreator();
        }
        updateColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$new$3(final TLRPC.TL_chatInviteExported tL_chatInviteExported, HashMap map, TLRPC.ChatFull chatFull, final Context context, final long j, final BaseFragment baseFragment, View view, int i) {
        TLRPC.TL_chatInviteImporter tL_chatInviteImporter;
        TLRPC.TL_chatInviteImporter tL_chatInviteImporter2;
        final TLRPC.User user;
        if (i == this.creatorRow && tL_chatInviteExported.admin_id == UserConfig.getInstance(this.currentAccount).clientUserId) {
            return;
        }
        int i2 = this.joinedStartRow;
        int i3 = 0;
        boolean z = i >= i2 && i < this.joinedEndRow;
        int i4 = this.expiredStartRow;
        boolean z2 = i >= i4 && i < this.expiredEndRow;
        int i5 = this.requestedStartRow;
        boolean z3 = i >= i5 && i < this.requestedEndRow;
        if ((i != this.creatorRow && !z && !z3) || map == null) {
            return;
        }
        long j2 = tL_chatInviteExported.admin_id;
        TLRPC.ChannelParticipant channelParticipant = null;
        if (z) {
            tL_chatInviteImporter2 = this.joinedUsers.get(i - i2);
            j2 = tL_chatInviteImporter2.user_id;
        } else if (z2) {
            tL_chatInviteImporter2 = this.expiredUsers.get(i - i4);
            j2 = tL_chatInviteImporter2.user_id;
        } else if (z3) {
            tL_chatInviteImporter2 = this.requestedUsers.get(i - i5);
            j2 = tL_chatInviteImporter2.user_id;
        } else {
            tL_chatInviteImporter = null;
            user = (TLRPC.User) map.get(Long.valueOf(j2));
            if (user == null) {
                MessagesController.getInstance(UserConfig.selectedAccount).putUser(user, false);
                if (z && tL_chatInviteExported.subscription_pricing != null) {
                    if (chatFull != null && chatFull.participants != null) {
                        while (true) {
                            if (i3 < chatFull.participants.participants.size()) {
                                if (chatFull.participants.participants.get(i3).user_id == j2 && (chatFull.participants.participants.get(i3) instanceof TLRPC.TL_chatChannelParticipant)) {
                                    channelParticipant = ((TLRPC.TL_chatChannelParticipant) chatFull.participants.participants.get(i3)).channelParticipant;
                                    break;
                                }
                                i3++;
                            } else {
                                break;
                            }
                        }
                    }
                    TLRPC.ChannelParticipant channelParticipant2 = channelParticipant;
                    if (channelParticipant2 == null) {
                        final AlertDialog alertDialog = new AlertDialog(context, 3);
                        alertDialog.showDelayed(120L);
                        final TLRPC.TL_chatInviteImporter tL_chatInviteImporter3 = tL_chatInviteImporter;
                        MessagesController.getInstance(this.currentAccount).getChannelParticipant(MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j)), user, new Utilities.Callback() { // from class: org.telegram.ui.Components.InviteLinkBottomSheet$$ExternalSyntheticLambda3
                            @Override // org.telegram.messenger.Utilities.Callback
                            public final void run(Object obj) {
                                this.f$0.lambda$new$1(alertDialog, context, j, tL_chatInviteExported, tL_chatInviteImporter3, (TLRPC.ChannelParticipant) obj);
                            }
                        });
                        return;
                    }
                    showSubscriptionSheet(context, this.currentAccount, -j, tL_chatInviteExported.subscription_pricing, tL_chatInviteImporter, channelParticipant2, this.resourcesProvider);
                    return;
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InviteLinkBottomSheet$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$2(user, baseFragment);
                    }
                }, 100L);
                lambda$new$0();
                return;
            }
            return;
        }
        tL_chatInviteImporter = tL_chatInviteImporter2;
        user = (TLRPC.User) map.get(Long.valueOf(j2));
        if (user == null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(final AlertDialog alertDialog, final Context context, final long j, final TLRPC.TL_chatInviteExported tL_chatInviteExported, final TLRPC.TL_chatInviteImporter tL_chatInviteImporter, final TLRPC.ChannelParticipant channelParticipant) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InviteLinkBottomSheet$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0(alertDialog, context, j, tL_chatInviteExported, tL_chatInviteImporter, channelParticipant);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(AlertDialog alertDialog, Context context, long j, TLRPC.TL_chatInviteExported tL_chatInviteExported, TLRPC.TL_chatInviteImporter tL_chatInviteImporter, TLRPC.ChannelParticipant channelParticipant) {
        alertDialog.dismissUnless(400L);
        showSubscriptionSheet(context, this.currentAccount, -j, tL_chatInviteExported.subscription_pricing, tL_chatInviteImporter, channelParticipant, this.resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(TLRPC.User user, BaseFragment baseFragment) {
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", user.id);
        baseFragment.presentFragment(new ProfileActivity(bundle));
        this.isNeedReopen = true;
    }

    public void updateColors() {
        RecyclerListView recyclerListView;
        RecyclerListView recyclerListView2;
        TextView textView = this.titleTextView;
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
            this.titleTextView.setLinkTextColor(Theme.getColor(Theme.key_dialogTextLink));
            this.titleTextView.setHighlightColor(Theme.getColor(Theme.key_dialogLinkSelection));
            if (!this.titleVisible) {
                this.titleTextView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            }
        }
        this.listView.setGlowColor(Theme.getColor(Theme.key_dialogScrollGlow));
        this.shadow.setBackgroundColor(Theme.getColor(Theme.key_dialogShadowLine));
        setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        int hiddenChildCount = this.listView.getHiddenChildCount();
        for (int i = 0; i < this.listView.getChildCount(); i++) {
            updateColorForView(this.listView.getChildAt(i));
        }
        int i2 = 0;
        while (true) {
            recyclerListView = this.listView;
            if (i2 >= hiddenChildCount) {
                break;
            }
            updateColorForView(recyclerListView.getHiddenChildAt(i2));
            i2++;
        }
        int cachedChildCount = recyclerListView.getCachedChildCount();
        int i3 = 0;
        while (true) {
            recyclerListView2 = this.listView;
            if (i3 >= cachedChildCount) {
                break;
            }
            updateColorForView(recyclerListView2.getCachedChildAt(i3));
            i3++;
        }
        int attachedScrapChildCount = recyclerListView2.getAttachedScrapChildCount();
        for (int i4 = 0; i4 < attachedScrapChildCount; i4++) {
            updateColorForView(this.listView.getAttachedScrapChildAt(i4));
        }
        this.containerView.invalidate();
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        this.isNeedReopen = false;
    }

    private void updateColorForView(View view) {
        if (view instanceof HeaderCell) {
            ((HeaderCell) view).getTextView().setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader));
            return;
        }
        if (view instanceof LinkActionView) {
            ((LinkActionView) view).updateColors();
        } else if (view instanceof TextInfoPrivacyCell) {
            ((TextInfoPrivacyCell) view).setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4));
        } else if (view instanceof UserCell) {
            ((UserCell) view).update(0);
        }
    }

    private void loadCreator() {
        TLRPC.TL_users_getUsers tL_users_getUsers = new TLRPC.TL_users_getUsers();
        tL_users_getUsers.id.add(MessagesController.getInstance(UserConfig.selectedAccount).getInputUser(this.invite.admin_id));
        ConnectionsManager.getInstance(UserConfig.selectedAccount).sendRequest(tL_users_getUsers, new RequestDelegate() { // from class: org.telegram.ui.Components.InviteLinkBottomSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadCreator$5(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadCreator$5(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InviteLinkBottomSheet$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadCreator$4(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadCreator$4(TLObject tLObject) {
        if (tLObject instanceof Vector) {
            Vector vector = (Vector) tLObject;
            if (vector.objects.isEmpty()) {
                return;
            }
            this.users.put(Long.valueOf(this.invite.admin_id), (TLRPC.User) vector.objects.get(0));
            this.adapter.notifyDataSetChanged();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0092  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateRows() {
        boolean z;
        boolean z2 = false;
        this.rowCount = 0;
        this.dividerRow = -1;
        this.divider2Row = -1;
        this.divider3Row = -1;
        this.joinedHeaderRow = -1;
        this.joinedStartRow = -1;
        this.joinedEndRow = -1;
        this.emptyView2 = -1;
        this.emptyView3 = -1;
        this.linkActionRow = -1;
        this.linkInfoRow = -1;
        this.emptyHintRow = -1;
        this.requestedHeaderRow = -1;
        this.requestedStartRow = -1;
        this.requestedEndRow = -1;
        this.loadingRow = -1;
        this.revenueHeaderRow = -1;
        this.revenueRow = -1;
        this.expiredHeaderRow = -1;
        this.expiredStartRow = -1;
        this.expiredEndRow = -1;
        boolean z3 = true;
        if (!this.permanent) {
            this.linkActionRow = 0;
            this.rowCount = 1 + 1;
            this.linkInfoRow = 1;
        }
        TLRPC.TL_chatInviteExported tL_chatInviteExported = this.invite;
        if (tL_chatInviteExported.subscription_pricing != null) {
            int i = this.rowCount;
            this.revenueHeaderRow = i;
            this.rowCount = i + 2;
            this.revenueRow = i + 1;
        }
        int i2 = this.rowCount;
        this.creatorHeaderRow = i2;
        this.rowCount = i2 + 2;
        this.creatorRow = i2 + 1;
        int i3 = tL_chatInviteExported.usage;
        boolean z4 = i3 > 0 || tL_chatInviteExported.usage_limit > 0 || tL_chatInviteExported.requested > 0 || tL_chatInviteExported.subscription_expired > 0;
        if (i3 > this.joinedUsers.size() || this.invite.subscription_expired > this.expiredUsers.size()) {
            z = true;
        } else {
            TLRPC.TL_chatInviteExported tL_chatInviteExported2 = this.invite;
            if (!tL_chatInviteExported2.request_needed || tL_chatInviteExported2.requested <= this.requestedUsers.size()) {
                z = false;
            }
        }
        if (!this.joinedUsers.isEmpty()) {
            int i4 = this.rowCount;
            int i5 = i4 + 1;
            this.rowCount = i5;
            this.joinedHeaderRow = i4;
            this.joinedStartRow = i5;
            int size = i5 + this.joinedUsers.size();
            this.rowCount = size;
            this.joinedEndRow = size;
            z2 = true;
        }
        if (!this.expiredUsers.isEmpty()) {
            int i6 = this.rowCount;
            int i7 = i6 + 1;
            this.rowCount = i7;
            this.expiredHeaderRow = i6;
            this.expiredStartRow = i7;
            int size2 = i7 + this.expiredUsers.size();
            this.rowCount = size2;
            this.expiredEndRow = size2;
            z2 = true;
        }
        if (this.requestedUsers.isEmpty()) {
            z3 = z2;
        } else {
            int i8 = this.rowCount;
            int i9 = i8 + 1;
            this.rowCount = i9;
            this.requestedHeaderRow = i8;
            this.requestedStartRow = i9;
            int size3 = i9 + this.requestedUsers.size();
            this.rowCount = size3;
            this.requestedEndRow = size3;
        }
        if ((z4 || z) && !z3) {
            int i10 = this.rowCount;
            this.dividerRow = i10;
            this.loadingRow = i10 + 1;
            this.rowCount = i10 + 3;
            this.emptyView2 = i10 + 2;
        }
        this.adapter.notifyDataSetChanged();
    }

    public class Adapter extends RecyclerListView.SelectionAdapter {
        private Adapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            InviteLinkBottomSheet inviteLinkBottomSheet = InviteLinkBottomSheet.this;
            if (i == inviteLinkBottomSheet.creatorHeaderRow || i == inviteLinkBottomSheet.requestedHeaderRow || i == inviteLinkBottomSheet.joinedHeaderRow || i == inviteLinkBottomSheet.revenueHeaderRow) {
                return 0;
            }
            if (i == inviteLinkBottomSheet.creatorRow) {
                return 1;
            }
            if (i >= inviteLinkBottomSheet.requestedStartRow && i < inviteLinkBottomSheet.requestedEndRow) {
                return 1;
            }
            if (i >= inviteLinkBottomSheet.joinedStartRow && i < inviteLinkBottomSheet.joinedEndRow) {
                return 1;
            }
            if (i == inviteLinkBottomSheet.dividerRow || i == inviteLinkBottomSheet.divider2Row) {
                return 2;
            }
            if (i == inviteLinkBottomSheet.linkActionRow) {
                return 3;
            }
            if (i == inviteLinkBottomSheet.linkInfoRow) {
                return 4;
            }
            if (i == inviteLinkBottomSheet.loadingRow) {
                return 5;
            }
            if (i == inviteLinkBottomSheet.emptyView || i == inviteLinkBottomSheet.emptyView2 || i == inviteLinkBottomSheet.emptyView3) {
                return 6;
            }
            if (i == inviteLinkBottomSheet.divider3Row) {
                return 7;
            }
            if (i == inviteLinkBottomSheet.emptyHintRow) {
                return 8;
            }
            return i == inviteLinkBottomSheet.revenueRow ? 9 : 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View revenueUserCell;
            Context context = viewGroup.getContext();
            switch (i) {
                case 1:
                    revenueUserCell = InviteLinkBottomSheet.this.new RevenueUserCell(context);
                    break;
                case 2:
                    revenueUserCell = new ShadowSectionCell(context, 12, Theme.getColor(Theme.key_windowBackgroundGray));
                    break;
                case 3:
                    InviteLinkBottomSheet inviteLinkBottomSheet = InviteLinkBottomSheet.this;
                    LinkActionView linkActionView = new LinkActionView(context, inviteLinkBottomSheet.fragment, inviteLinkBottomSheet, inviteLinkBottomSheet.chatId, false, InviteLinkBottomSheet.this.isChannel) { // from class: org.telegram.ui.Components.InviteLinkBottomSheet.Adapter.1
                        @Override // org.telegram.ui.Components.LinkActionView
                        public void showBulletin(int i2, CharSequence charSequence) {
                            InviteLinkBottomSheet inviteLinkBottomSheet2 = InviteLinkBottomSheet.this;
                            Bulletin bulletinCreateSimpleBulletin = BulletinFactory.of(inviteLinkBottomSheet2.container, ((BottomSheet) inviteLinkBottomSheet2).resourcesProvider).createSimpleBulletin(i2, charSequence);
                            bulletinCreateSimpleBulletin.hideAfterBottomSheet = false;
                            bulletinCreateSimpleBulletin.show(true);
                        }
                    };
                    linkActionView.setDelegate(new C39292());
                    linkActionView.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                    revenueUserCell = linkActionView;
                    break;
                case 4:
                    revenueUserCell = InviteLinkBottomSheet.this.new TimerPrivacyCell(context);
                    break;
                case 5:
                    FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context);
                    flickerLoadingView.setIsSingleCell(true);
                    flickerLoadingView.setViewType(10);
                    flickerLoadingView.showDate(false);
                    flickerLoadingView.setPaddingLeft(AndroidUtilities.dp(10.0f));
                    revenueUserCell = flickerLoadingView;
                    break;
                case 6:
                    revenueUserCell = new View(context) { // from class: org.telegram.ui.Components.InviteLinkBottomSheet.Adapter.3
                        @Override // android.view.View
                        public void onMeasure(int i2, int i3) {
                            super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(5.0f), TLObject.FLAG_30));
                        }
                    };
                    break;
                case 7:
                    revenueUserCell = new ShadowSectionCell(context, 12);
                    break;
                case 8:
                    revenueUserCell = InviteLinkBottomSheet.this.new EmptyHintRow(context);
                    break;
                case 9:
                    revenueUserCell = InviteLinkBottomSheet.this.new RevenueCell(context);
                    break;
                default:
                    revenueUserCell = new GraySectionCell(context, ((BottomSheet) InviteLinkBottomSheet.this).resourcesProvider);
                    break;
            }
            revenueUserCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(revenueUserCell);
        }

        /* JADX INFO: renamed from: org.telegram.ui.Components.InviteLinkBottomSheet$Adapter$2 */
        public class C39292 implements LinkActionView.Delegate {
            public C39292() {
            }

            @Override // org.telegram.ui.Components.LinkActionView.Delegate
            public void revokeLink() {
                InviteLinkBottomSheet inviteLinkBottomSheet = InviteLinkBottomSheet.this;
                BaseFragment baseFragment = inviteLinkBottomSheet.fragment;
                if (baseFragment instanceof ManageLinksActivity) {
                    ((ManageLinksActivity) baseFragment).revokeLink(inviteLinkBottomSheet.invite);
                } else {
                    TLRPC.TL_messages_editExportedChatInvite tL_messages_editExportedChatInvite = new TLRPC.TL_messages_editExportedChatInvite();
                    InviteLinkBottomSheet inviteLinkBottomSheet2 = InviteLinkBottomSheet.this;
                    tL_messages_editExportedChatInvite.link = inviteLinkBottomSheet2.invite.link;
                    tL_messages_editExportedChatInvite.revoked = true;
                    tL_messages_editExportedChatInvite.peer = MessagesController.getInstance(((BottomSheet) inviteLinkBottomSheet2).currentAccount).getInputPeer(-InviteLinkBottomSheet.this.chatId);
                    ConnectionsManager.getInstance(((BottomSheet) InviteLinkBottomSheet.this).currentAccount).sendRequest(tL_messages_editExportedChatInvite, new RequestDelegate() { // from class: org.telegram.ui.Components.InviteLinkBottomSheet$Adapter$2$$ExternalSyntheticLambda0
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$revokeLink$1(tLObject, tL_error);
                        }
                    });
                }
                InviteLinkBottomSheet.this.lambda$new$0();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$revokeLink$1(final TLObject tLObject, final TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InviteLinkBottomSheet$Adapter$2$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$revokeLink$0(tL_error, tLObject);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$revokeLink$0(TLRPC.TL_error tL_error, TLObject tLObject) {
                if (tL_error == null) {
                    boolean z = tLObject instanceof TLRPC.TL_messages_exportedChatInviteReplaced;
                    Adapter adapter = Adapter.this;
                    if (z) {
                        TLRPC.TL_messages_exportedChatInviteReplaced tL_messages_exportedChatInviteReplaced = (TLRPC.TL_messages_exportedChatInviteReplaced) tLObject;
                        InviteLinkBottomSheet inviteLinkBottomSheet = InviteLinkBottomSheet.this;
                        TLRPC.ChatFull chatFull = inviteLinkBottomSheet.info;
                        if (chatFull != null) {
                            chatFull.exported_invite = (TLRPC.TL_chatInviteExported) tL_messages_exportedChatInviteReplaced.new_invite;
                        }
                        InviteDelegate inviteDelegate = inviteLinkBottomSheet.inviteDelegate;
                        if (inviteDelegate != null) {
                            inviteDelegate.permanentLinkReplaced(inviteLinkBottomSheet.invite, chatFull.exported_invite);
                            return;
                        }
                        return;
                    }
                    InviteLinkBottomSheet inviteLinkBottomSheet2 = InviteLinkBottomSheet.this;
                    TLRPC.ChatFull chatFull2 = inviteLinkBottomSheet2.info;
                    if (chatFull2 != null) {
                        int i = chatFull2.invitesCount - 1;
                        chatFull2.invitesCount = i;
                        if (i < 0) {
                            chatFull2.invitesCount = 0;
                        }
                        MessagesStorage.getInstance(((BottomSheet) inviteLinkBottomSheet2).currentAccount).saveChatLinksCount(InviteLinkBottomSheet.this.chatId, InviteLinkBottomSheet.this.info.invitesCount);
                    }
                    InviteLinkBottomSheet inviteLinkBottomSheet3 = InviteLinkBottomSheet.this;
                    InviteDelegate inviteDelegate2 = inviteLinkBottomSheet3.inviteDelegate;
                    if (inviteDelegate2 != null) {
                        inviteDelegate2.linkRevoked(inviteLinkBottomSheet3.invite);
                    }
                }
            }

            @Override // org.telegram.ui.Components.LinkActionView.Delegate
            public void editLink() {
                InviteLinkBottomSheet inviteLinkBottomSheet = InviteLinkBottomSheet.this;
                BaseFragment baseFragment = inviteLinkBottomSheet.fragment;
                if (baseFragment instanceof ManageLinksActivity) {
                    ((ManageLinksActivity) baseFragment).editLink(inviteLinkBottomSheet.invite);
                } else {
                    LinkEditActivity linkEditActivity = new LinkEditActivity(1, inviteLinkBottomSheet.chatId);
                    linkEditActivity.setInviteToEdit(InviteLinkBottomSheet.this.invite);
                    linkEditActivity.setCallback(new LinkEditActivity.Callback() { // from class: org.telegram.ui.Components.InviteLinkBottomSheet.Adapter.2.1
                        @Override // org.telegram.ui.LinkEditActivity.Callback
                        public void onLinkCreated(TLObject tLObject) {
                        }

                        @Override // org.telegram.ui.LinkEditActivity.Callback
                        public void onLinkRemoved(TLRPC.TL_chatInviteExported tL_chatInviteExported) {
                        }

                        @Override // org.telegram.ui.LinkEditActivity.Callback
                        public void revokeLink(TLRPC.TL_chatInviteExported tL_chatInviteExported) {
                        }

                        @Override // org.telegram.ui.LinkEditActivity.Callback
                        public void onLinkEdited(TLRPC.TL_chatInviteExported tL_chatInviteExported, TLObject tLObject) {
                            InviteDelegate inviteDelegate = InviteLinkBottomSheet.this.inviteDelegate;
                            if (inviteDelegate != null) {
                                inviteDelegate.onLinkEdited(tL_chatInviteExported);
                            }
                        }
                    });
                    InviteLinkBottomSheet.this.fragment.presentFragment(linkEditActivity);
                }
                InviteLinkBottomSheet.this.lambda$new$0();
            }

            @Override // org.telegram.ui.Components.LinkActionView.Delegate
            public void removeLink() {
                InviteLinkBottomSheet inviteLinkBottomSheet = InviteLinkBottomSheet.this;
                BaseFragment baseFragment = inviteLinkBottomSheet.fragment;
                if (baseFragment instanceof ManageLinksActivity) {
                    ((ManageLinksActivity) baseFragment).deleteLink(inviteLinkBottomSheet.invite);
                } else {
                    TLRPC.TL_messages_deleteExportedChatInvite tL_messages_deleteExportedChatInvite = new TLRPC.TL_messages_deleteExportedChatInvite();
                    InviteLinkBottomSheet inviteLinkBottomSheet2 = InviteLinkBottomSheet.this;
                    tL_messages_deleteExportedChatInvite.link = inviteLinkBottomSheet2.invite.link;
                    tL_messages_deleteExportedChatInvite.peer = MessagesController.getInstance(((BottomSheet) inviteLinkBottomSheet2).currentAccount).getInputPeer(-InviteLinkBottomSheet.this.chatId);
                    ConnectionsManager.getInstance(((BottomSheet) InviteLinkBottomSheet.this).currentAccount).sendRequest(tL_messages_deleteExportedChatInvite, new RequestDelegate() { // from class: org.telegram.ui.Components.InviteLinkBottomSheet$Adapter$2$$ExternalSyntheticLambda1
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$removeLink$3(tLObject, tL_error);
                        }
                    });
                }
                InviteLinkBottomSheet.this.lambda$new$0();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$removeLink$3(TLObject tLObject, final TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InviteLinkBottomSheet$Adapter$2$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$removeLink$2(tL_error);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$removeLink$2(TLRPC.TL_error tL_error) {
                InviteLinkBottomSheet inviteLinkBottomSheet;
                InviteDelegate inviteDelegate;
                if (tL_error != null || (inviteDelegate = (inviteLinkBottomSheet = InviteLinkBottomSheet.this).inviteDelegate) == null) {
                    return;
                }
                inviteDelegate.onLinkDeleted(inviteLinkBottomSheet.invite);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:83:0x023b A[PHI: r0
  0x023b: PHI (r0v12 org.telegram.tgnet.TLRPC$User) = (r0v11 org.telegram.tgnet.TLRPC$User), (r0v55 org.telegram.tgnet.TLRPC$User) binds: [B:77:0x0203, B:81:0x022b] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int i2;
            int i3;
            long j;
            TLRPC.TL_chatInviteImporter tL_chatInviteImporter;
            TLRPC.ChatParticipant chatParticipant;
            TLRPC.User user;
            String dateAudio;
            boolean z;
            final boolean z2;
            boolean z3;
            TL_stars.TL_starsSubscriptionPricing tL_starsSubscriptionPricing;
            boolean z4;
            int itemViewType = viewHolder.getItemViewType();
            final String str = null;
            if (itemViewType == 0) {
                GraySectionCell graySectionCell = (GraySectionCell) viewHolder.itemView;
                InviteLinkBottomSheet inviteLinkBottomSheet = InviteLinkBottomSheet.this;
                if (i == inviteLinkBottomSheet.creatorHeaderRow) {
                    graySectionCell.setText(LocaleController.getString(C2665R.string.LinkCreatedeBy));
                    graySectionCell.setRightText(null);
                    return;
                }
                if (i == inviteLinkBottomSheet.revenueHeaderRow) {
                    graySectionCell.setText(LocaleController.getString(C2665R.string.LinkRevenue));
                    graySectionCell.setRightText(null);
                    return;
                }
                if (i == inviteLinkBottomSheet.joinedHeaderRow) {
                    TLRPC.TL_chatInviteExported tL_chatInviteExported = inviteLinkBottomSheet.invite;
                    int i4 = tL_chatInviteExported.usage;
                    if (i4 > 0) {
                        graySectionCell.setText(LocaleController.formatPluralString("PeopleJoined", i4, new Object[0]));
                    } else {
                        graySectionCell.setText(LocaleController.getString(tL_chatInviteExported.subscription_pricing != null ? C2665R.string.NoOneSubscribed : C2665R.string.NoOneJoined));
                    }
                    TLRPC.TL_chatInviteExported tL_chatInviteExported2 = InviteLinkBottomSheet.this.invite;
                    if (!tL_chatInviteExported2.expired && !tL_chatInviteExported2.revoked && (i2 = tL_chatInviteExported2.usage_limit) > 0 && (i3 = tL_chatInviteExported2.usage) > 0) {
                        graySectionCell.setRightText(LocaleController.formatPluralString("PeopleJoinedRemaining", i2 - i3, new Object[0]));
                        return;
                    } else {
                        graySectionCell.setRightText(null);
                        return;
                    }
                }
                if (i == inviteLinkBottomSheet.expiredHeaderRow) {
                    graySectionCell.setText(LocaleController.formatPluralString("PeopleSubscriptionExpired", inviteLinkBottomSheet.invite.subscription_expired, new Object[0]));
                    graySectionCell.setRightText(null);
                    return;
                } else {
                    if (i == inviteLinkBottomSheet.requestedHeaderRow) {
                        graySectionCell.setText(LocaleController.formatPluralString("JoinRequests", inviteLinkBottomSheet.invite.requested, new Object[0]));
                        graySectionCell.setRightText(null);
                        return;
                    }
                    return;
                }
            }
            if (itemViewType != 1) {
                if (itemViewType == 3) {
                    LinkActionView linkActionView = (LinkActionView) viewHolder.itemView;
                    linkActionView.setUsers(0, null);
                    linkActionView.setLink(InviteLinkBottomSheet.this.invite.link);
                    linkActionView.setRevoke(InviteLinkBottomSheet.this.invite.revoked);
                    linkActionView.setPermanent(InviteLinkBottomSheet.this.invite.permanent);
                    linkActionView.setCanEdit(InviteLinkBottomSheet.this.canEdit);
                    linkActionView.hideRevokeOption(!InviteLinkBottomSheet.this.canEdit);
                    return;
                }
                if (itemViewType != 4) {
                    if (itemViewType != 8) {
                        if (itemViewType != 9) {
                            return;
                        }
                        RevenueCell revenueCell = (RevenueCell) viewHolder.itemView;
                        TLRPC.TL_chatInviteExported tL_chatInviteExported3 = InviteLinkBottomSheet.this.invite;
                        revenueCell.set(tL_chatInviteExported3.subscription_pricing, tL_chatInviteExported3.usage);
                        return;
                    }
                    EmptyHintRow emptyHintRow = (EmptyHintRow) viewHolder.itemView;
                    int i5 = InviteLinkBottomSheet.this.invite.usage_limit;
                    if (i5 > 0) {
                        emptyHintRow.textView.setText(LocaleController.formatPluralString("PeopleCanJoinViaLinkCount", i5, new Object[0]));
                        emptyHintRow.textView.setVisibility(0);
                        return;
                    } else {
                        emptyHintRow.textView.setVisibility(8);
                        return;
                    }
                }
                TimerPrivacyCell timerPrivacyCell = (TimerPrivacyCell) viewHolder.itemView;
                timerPrivacyCell.cancelTimer();
                timerPrivacyCell.timer = false;
                timerPrivacyCell.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4));
                timerPrivacyCell.setFixedSize(0);
                TLRPC.TL_chatInviteExported tL_chatInviteExported4 = InviteLinkBottomSheet.this.invite;
                if (tL_chatInviteExported4.revoked) {
                    timerPrivacyCell.setText(LocaleController.getString(C2665R.string.LinkIsNoActive));
                    return;
                }
                if (tL_chatInviteExported4.expired) {
                    int i6 = tL_chatInviteExported4.usage_limit;
                    if (i6 > 0 && i6 == tL_chatInviteExported4.usage) {
                        timerPrivacyCell.setText(LocaleController.getString(C2665R.string.LinkIsExpiredLimitReached));
                        return;
                    } else {
                        timerPrivacyCell.setText(LocaleController.getString(C2665R.string.LinkIsExpired));
                        timerPrivacyCell.setTextColor(Theme.getColor(Theme.key_text_RedRegular));
                        return;
                    }
                }
                if (tL_chatInviteExported4.expire_date > 0) {
                    long jCurrentTimeMillis = System.currentTimeMillis() + (InviteLinkBottomSheet.this.timeDif * 1000);
                    int i7 = InviteLinkBottomSheet.this.invite.expire_date;
                    long j2 = (((long) i7) * 1000) - jCurrentTimeMillis;
                    if (j2 < 0) {
                        j2 = 0;
                    }
                    if (j2 > DurationKt.MILLIS_IN_DAY) {
                        timerPrivacyCell.setText(LocaleController.formatString("LinkExpiresIn", C2665R.string.LinkExpiresIn, LocaleController.formatDateAudio(i7, false)));
                        return;
                    }
                    long j3 = j2 / 1000;
                    int i8 = (int) (j3 % 60);
                    long j4 = j3 / 60;
                    StringBuilder sb = new StringBuilder();
                    Locale locale = Locale.ENGLISH;
                    sb.append(String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf((int) (j4 / 60))));
                    sb.append(String.format(locale, ":%02d", Integer.valueOf((int) (j4 % 60))));
                    sb.append(String.format(locale, ":%02d", Integer.valueOf(i8)));
                    String string = sb.toString();
                    timerPrivacyCell.timer = true;
                    timerPrivacyCell.runTimer();
                    timerPrivacyCell.setText(LocaleController.formatString("LinkExpiresInTime", C2665R.string.LinkExpiresInTime, string));
                    return;
                }
                timerPrivacyCell.setFixedSize(-1);
                timerPrivacyCell.setText(null);
                return;
            }
            RevenueUserCell revenueUserCell = (RevenueUserCell) viewHolder.itemView;
            InviteLinkBottomSheet inviteLinkBottomSheet2 = InviteLinkBottomSheet.this;
            if (i == inviteLinkBottomSheet2.creatorRow) {
                j = inviteLinkBottomSheet2.invite.admin_id;
                tL_chatInviteImporter = null;
            } else {
                int i9 = inviteLinkBottomSheet2.joinedStartRow;
                ArrayList<TLRPC.TL_chatInviteImporter> arrayList = inviteLinkBottomSheet2.joinedUsers;
                int i10 = inviteLinkBottomSheet2.expiredStartRow;
                if (i10 != -1 && i >= i10) {
                    arrayList = inviteLinkBottomSheet2.expiredUsers;
                    i9 = i10;
                }
                int i11 = inviteLinkBottomSheet2.requestedStartRow;
                if (i11 != -1 && i >= i11) {
                    arrayList = inviteLinkBottomSheet2.requestedUsers;
                    i9 = i11;
                }
                TLRPC.TL_chatInviteImporter tL_chatInviteImporter2 = arrayList.get(i - i9);
                j = tL_chatInviteImporter2.user_id;
                tL_chatInviteImporter = tL_chatInviteImporter2;
            }
            TLRPC.User user2 = InviteLinkBottomSheet.this.users.get(Long.valueOf(j));
            TLRPC.ChatFull chatFull = InviteLinkBottomSheet.this.info;
            if (chatFull == null || chatFull.participants == null) {
                chatParticipant = null;
            } else {
                for (int i12 = 0; i12 < InviteLinkBottomSheet.this.info.participants.participants.size(); i12++) {
                    if (InviteLinkBottomSheet.this.info.participants.participants.get(i12).user_id == j) {
                        chatParticipant = InviteLinkBottomSheet.this.info.participants.participants.get(i12);
                        break;
                    }
                }
                chatParticipant = null;
            }
            InviteLinkBottomSheet inviteLinkBottomSheet3 = InviteLinkBottomSheet.this;
            if (i != inviteLinkBottomSheet3.creatorRow) {
                user = user2;
                dateAudio = null;
            } else {
                user2 = inviteLinkBottomSheet3.users.get(Long.valueOf(j));
                if (user2 == null) {
                    user2 = MessagesController.getInstance(((BottomSheet) InviteLinkBottomSheet.this).currentAccount).getUser(Long.valueOf(InviteLinkBottomSheet.this.invite.admin_id));
                }
                if (user2 != null) {
                    user = user2;
                    dateAudio = LocaleController.formatDateAudio(InviteLinkBottomSheet.this.invite.date, false);
                }
            }
            if (i != InviteLinkBottomSheet.this.creatorRow || chatParticipant == null) {
                z = false;
                z2 = false;
                z3 = z2;
            } else if (chatParticipant instanceof TLRPC.TL_chatChannelParticipant) {
                TLRPC.ChannelParticipant channelParticipant = ((TLRPC.TL_chatChannelParticipant) chatParticipant).channelParticipant;
                String string2 = channelParticipant.rank;
                if (channelParticipant instanceof TLRPC.TL_channelParticipantCreator) {
                    if (TextUtils.isEmpty(string2)) {
                        string2 = LocaleController.getString("ChannelCreator", C2665R.string.ChannelCreator);
                    }
                    str = string2;
                    z = false;
                    z4 = true;
                } else if (channelParticipant instanceof TLRPC.TL_channelParticipantAdmin) {
                    if (TextUtils.isEmpty(string2)) {
                        string2 = LocaleController.getString("ChannelAdmin", C2665R.string.ChannelAdmin);
                    }
                    z = channelParticipant.promoted_by == UserConfig.getInstance(((BottomSheet) InviteLinkBottomSheet.this).currentAccount).getClientUserId();
                    str = string2;
                    z2 = false;
                    z4 = true;
                    z3 = z4;
                } else {
                    str = string2;
                    z = false;
                    z4 = false;
                }
                z2 = z4;
                z3 = z4;
            } else {
                String string3 = chatParticipant.rank;
                if (chatParticipant instanceof TLRPC.TL_chatParticipantCreator) {
                    if (TextUtils.isEmpty(string3)) {
                        string3 = LocaleController.getString("ChannelCreator", C2665R.string.ChannelCreator);
                    }
                    str = string3;
                    z = false;
                    z2 = true;
                    z3 = z2;
                } else if (chatParticipant instanceof TLRPC.TL_chatParticipantAdmin) {
                    if (TextUtils.isEmpty(string3)) {
                        string3 = LocaleController.getString("ChannelAdmin", C2665R.string.ChannelAdmin);
                    }
                    str = string3;
                    z = chatParticipant.inviter_id == UserConfig.getInstance(((BottomSheet) InviteLinkBottomSheet.this).currentAccount).getClientUserId();
                    z2 = false;
                    z3 = true;
                } else {
                    str = string3;
                    z = false;
                    z2 = false;
                    z3 = z2;
                }
            }
            final boolean z5 = z;
            final TLRPC.User user3 = user;
            final boolean z6 = z3;
            revenueUserCell.setAdminRole(str, z3, z2, UserObject.isUserSelf(user) && ChatObject.canManageMyTag(MessagesController.getInstance(((BottomSheet) InviteLinkBottomSheet.this).currentAccount).getChat(Long.valueOf(InviteLinkBottomSheet.this.chatId))), new View.OnClickListener() { // from class: org.telegram.ui.Components.InviteLinkBottomSheet$Adapter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$onBindViewHolder$0(user3, str, z6, z2, z5, view);
                }
            });
            revenueUserCell.setData(user3, null, dateAudio, 0, false);
            InviteLinkBottomSheet inviteLinkBottomSheet4 = InviteLinkBottomSheet.this;
            if (i == inviteLinkBottomSheet4.creatorRow || (tL_starsSubscriptionPricing = inviteLinkBottomSheet4.invite.subscription_pricing) == null || tL_chatInviteImporter == null) {
                return;
            }
            revenueUserCell.setRevenue(tL_starsSubscriptionPricing, tL_chatInviteImporter.date);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$0(TLRPC.User user, String str, boolean z, boolean z2, boolean z3, View view) {
            TagEditCell.showInfoSheet(InviteLinkBottomSheet.this.getContext(), ((BottomSheet) InviteLinkBottomSheet.this).currentAccount, -InviteLinkBottomSheet.this.chatId, user, str, z, z2, z3, ((BottomSheet) InviteLinkBottomSheet.this).resourcesProvider);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return InviteLinkBottomSheet.this.rowCount;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int adapterPosition = viewHolder.getAdapterPosition();
            InviteLinkBottomSheet inviteLinkBottomSheet = InviteLinkBottomSheet.this;
            return adapterPosition == inviteLinkBottomSheet.creatorRow ? inviteLinkBottomSheet.invite.admin_id != UserConfig.getInstance(((BottomSheet) inviteLinkBottomSheet).currentAccount).clientUserId : (adapterPosition >= inviteLinkBottomSheet.joinedStartRow && adapterPosition < inviteLinkBottomSheet.joinedEndRow) || (adapterPosition >= inviteLinkBottomSheet.requestedStartRow && adapterPosition < inviteLinkBottomSheet.requestedEndRow);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLayout() {
        int childCount = this.listView.getChildCount();
        RecyclerListView recyclerListView = this.listView;
        if (childCount <= 0) {
            int paddingTop = recyclerListView.getPaddingTop();
            this.scrollOffsetY = paddingTop;
            recyclerListView.setTopGlowOffset(paddingTop);
            this.titleTextView.setTranslationY(this.scrollOffsetY);
            this.shadow.setTranslationY(this.scrollOffsetY);
            this.containerView.invalidate();
            return;
        }
        int i = 0;
        View childAt = recyclerListView.getChildAt(0);
        RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.findContainingViewHolder(childAt);
        int top = childAt.getTop();
        if (top >= 0 && holder != null && holder.getAdapterPosition() == 0) {
            runShadowAnimation(false);
            i = top;
        } else {
            runShadowAnimation(true);
        }
        if (this.scrollOffsetY != i) {
            RecyclerListView recyclerListView2 = this.listView;
            this.scrollOffsetY = i;
            recyclerListView2.setTopGlowOffset(i);
            TextView textView = this.titleTextView;
            if (textView != null) {
                textView.setTranslationY(this.scrollOffsetY);
            }
            this.shadow.setTranslationY(this.scrollOffsetY);
            this.containerView.invalidate();
        }
    }

    private void runShadowAnimation(final boolean z) {
        if ((!z || this.shadow.getTag() == null) && (z || this.shadow.getTag() != null)) {
            return;
        }
        this.shadow.setTag(z ? null : 1);
        if (z) {
            this.shadow.setVisibility(0);
            this.titleTextView.setVisibility(0);
        }
        AnimatorSet animatorSet = this.shadowAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.shadowAnimation = animatorSet2;
        View view = this.shadow;
        Property property = View.ALPHA;
        animatorSet2.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) property, z ? 1.0f : 0.0f));
        if (!this.titleVisible) {
            this.shadowAnimation.playTogether(ObjectAnimator.ofFloat(this.titleTextView, (Property<TextView, Float>) property, z ? 1.0f : 0.0f));
        }
        this.shadowAnimation.setDuration(150L);
        this.shadowAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.InviteLinkBottomSheet.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (InviteLinkBottomSheet.this.shadowAnimation == null || !InviteLinkBottomSheet.this.shadowAnimation.equals(animator)) {
                    return;
                }
                if (!z) {
                    InviteLinkBottomSheet.this.shadow.setVisibility(4);
                }
                InviteLinkBottomSheet.this.shadowAnimation = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (InviteLinkBottomSheet.this.shadowAnimation == null || !InviteLinkBottomSheet.this.shadowAnimation.equals(animator)) {
                    return;
                }
                InviteLinkBottomSheet.this.shadowAnimation = null;
            }
        });
        this.shadowAnimation.start();
    }

    public void loadUsers() {
        final boolean z;
        final boolean z2;
        ArrayList<TLRPC.TL_chatInviteImporter> arrayList;
        if (this.usersLoading) {
            return;
        }
        boolean z3 = this.invite.usage > this.joinedUsers.size();
        final boolean z4 = this.invite.subscription_expired > this.expiredUsers.size();
        TLRPC.TL_chatInviteExported tL_chatInviteExported = this.invite;
        final boolean z5 = tL_chatInviteExported.request_needed && tL_chatInviteExported.requested > this.requestedUsers.size();
        if (z3) {
            z2 = false;
            z = false;
        } else if (z4) {
            z2 = false;
            z = true;
        } else {
            if (!z5) {
                return;
            }
            z = false;
            z2 = true;
        }
        if (z2) {
            arrayList = this.requestedUsers;
        } else {
            arrayList = z ? this.expiredUsers : this.joinedUsers;
        }
        final ArrayList<TLRPC.TL_chatInviteImporter> arrayList2 = arrayList;
        TLRPC.TL_messages_getChatInviteImporters tL_messages_getChatInviteImporters = new TLRPC.TL_messages_getChatInviteImporters();
        tL_messages_getChatInviteImporters.flags |= 2;
        tL_messages_getChatInviteImporters.link = this.invite.link;
        tL_messages_getChatInviteImporters.peer = MessagesController.getInstance(UserConfig.selectedAccount).getInputPeer(-this.chatId);
        tL_messages_getChatInviteImporters.requested = z2;
        tL_messages_getChatInviteImporters.subscription_expired = z;
        if (arrayList2.isEmpty()) {
            tL_messages_getChatInviteImporters.offset_user = new TLRPC.TL_inputUserEmpty();
        } else {
            TLRPC.TL_chatInviteImporter tL_chatInviteImporter = arrayList2.get(arrayList2.size() - 1);
            tL_messages_getChatInviteImporters.offset_user = MessagesController.getInstance(this.currentAccount).getInputUser(this.users.get(Long.valueOf(tL_chatInviteImporter.user_id)));
            tL_messages_getChatInviteImporters.offset_date = tL_chatInviteImporter.date;
        }
        this.usersLoading = true;
        ConnectionsManager.getInstance(UserConfig.selectedAccount).sendRequest(tL_messages_getChatInviteImporters, new RequestDelegate() { // from class: org.telegram.ui.Components.InviteLinkBottomSheet$$ExternalSyntheticLambda1
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadUsers$7(arrayList2, z2, z, z5, z4, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadUsers$7(final List list, final boolean z, final boolean z2, final boolean z3, final boolean z4, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InviteLinkBottomSheet$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadUsers$6(tL_error, tLObject, list, z, z2, z3, z4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadUsers$6(TLRPC.TL_error tL_error, TLObject tLObject, List list, boolean z, boolean z2, boolean z3, boolean z4) {
        if (tL_error == null) {
            TLRPC.TL_messages_chatInviteImporters tL_messages_chatInviteImporters = (TLRPC.TL_messages_chatInviteImporters) tLObject;
            list.addAll(tL_messages_chatInviteImporters.importers);
            for (int i = 0; i < tL_messages_chatInviteImporters.users.size(); i++) {
                TLRPC.User user = tL_messages_chatInviteImporters.users.get(i);
                this.users.put(Long.valueOf(user.id), user);
            }
            boolean z5 = true;
            if (!z ? !(!z2 ? list.size() < tL_messages_chatInviteImporters.count || z3 || z4 : list.size() < tL_messages_chatInviteImporters.count || z3) : list.size() >= tL_messages_chatInviteImporters.count) {
                z5 = false;
            }
            this.hasMore = z5;
            updateRows();
        }
        this.usersLoading = false;
    }

    public void setInviteDelegate(InviteDelegate inviteDelegate) {
        this.inviteDelegate = inviteDelegate;
    }

    public class TimerPrivacyCell extends TextInfoPrivacyCell {
        boolean timer;
        Runnable timerRunnable;

        public TimerPrivacyCell(Context context) {
            super(context);
            this.timerRunnable = new Runnable() { // from class: org.telegram.ui.Components.InviteLinkBottomSheet.TimerPrivacyCell.1
                @Override // java.lang.Runnable
                public void run() {
                    int childAdapterPosition;
                    if (InviteLinkBottomSheet.this.listView != null && InviteLinkBottomSheet.this.listView.getAdapter() != null && (childAdapterPosition = InviteLinkBottomSheet.this.listView.getChildAdapterPosition(TimerPrivacyCell.this)) >= 0) {
                        InviteLinkBottomSheet inviteLinkBottomSheet = InviteLinkBottomSheet.this;
                        inviteLinkBottomSheet.adapter.onBindViewHolder(inviteLinkBottomSheet.listView.getChildViewHolder(TimerPrivacyCell.this), childAdapterPosition);
                    }
                    AndroidUtilities.runOnUIThread(this);
                }
            };
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            runTimer();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            cancelTimer();
        }

        public void cancelTimer() {
            AndroidUtilities.cancelRunOnUIThread(this.timerRunnable);
        }

        public void runTimer() {
            cancelTimer();
            if (this.timer) {
                AndroidUtilities.runOnUIThread(this.timerRunnable, 500L);
            }
        }
    }

    public class EmptyHintRow extends FrameLayout {
        TextView textView;

        public EmptyHintRow(Context context) {
            super(context);
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextSize(1, 14.0f);
            this.textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
            this.textView.setGravity(1);
            addView(this.textView, LayoutHelper.createFrame(-1, -2.0f, 16, 60.0f, 0.0f, 60.0f, 0.0f));
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(84.0f), TLObject.FLAG_30));
        }
    }

    public void setCanEdit(boolean z) {
        this.canEdit = z;
    }

    public class RevenueUserCell extends UserCell {
        public final LinearLayout layout;
        public final TextView periodView;
        public final TextView priceView;

        public RevenueUserCell(Context context) {
            super(context, 6, 0, true);
            LinearLayout linearLayout = new LinearLayout(context);
            this.layout = linearLayout;
            linearLayout.setOrientation(1);
            TextView textView = new TextView(context);
            this.priceView = textView;
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            textView.setTextSize(1, 16.0f);
            textView.setTypeface(AndroidUtilities.bold());
            linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 5));
            TextView textView2 = new TextView(context);
            this.periodView = textView2;
            textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
            textView2.setTextSize(1, 13.0f);
            linearLayout.addView(textView2, LayoutHelper.createLinear(-2, -2, 5, 0, 1, 0, 0));
            addView(linearLayout, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 3 : 5) | 16, 18.0f, 0.0f, 18.0f, 0.0f));
        }

        public void setRevenue(TL_stars.TL_starsSubscriptionPricing tL_starsSubscriptionPricing, int i) {
            if (tL_starsSubscriptionPricing == null) {
                this.priceView.setText((CharSequence) null);
                this.periodView.setText((CharSequence) null);
                setRightPadding(0, true, true);
                return;
            }
            SpannableStringBuilder spannableStringBuilderReplaceStarsWithPlain = StarsIntroActivity.replaceStarsWithPlain("⭐️" + tL_starsSubscriptionPricing.amount, 0.7f);
            int i2 = tL_starsSubscriptionPricing.period;
            String string = i2 == 2592000 ? LocaleController.getString(C2665R.string.StarsParticipantSubscriptionPerMonth) : i2 == 300 ? "per 5 minutes" : "per each minute";
            this.priceView.setText(spannableStringBuilderReplaceStarsWithPlain);
            this.periodView.setText(string);
            setRightPadding((int) Math.max(HintView2.measureCorrectly(spannableStringBuilderReplaceStarsWithPlain, this.priceView.getPaint()), HintView2.measureCorrectly(string, this.periodView.getPaint())), true, true);
            this.statusTextView.setText(LocaleController.formatJoined(i));
        }
    }

    public class RevenueCell extends FrameLayout {
        public final ImageView imageView;
        public final TextView subtitleView;
        public final TextView titleView;

        public RevenueCell(Context context) {
            super(context);
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setBackground(Theme.createCircleDrawable(46, Theme.getColor(Theme.key_avatar_backgroundGreen), Theme.getColor(Theme.key_avatar_background2Green)));
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            imageView.setImageResource(C2665R.drawable.large_income);
            imageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            addView(imageView, LayoutHelper.createFrame(46, 46.0f, 19, 13.0f, 0.0f, 0.0f, 0.0f));
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextSize(1, 16.0f);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            addView(textView, LayoutHelper.createFrame(-1, -2.0f, 51, 72.0f, 9.0f, 0.0f, 0.0f));
            TextView textView2 = new TextView(context);
            this.subtitleView = textView2;
            textView2.setTextSize(1, 14.0f);
            textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
            addView(textView2, LayoutHelper.createFrame(-1, -2.0f, 51, 72.0f, 32.0f, 0.0f, 0.0f));
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(58.0f), TLObject.FLAG_30));
        }

        public void set(TL_stars.TL_starsSubscriptionPricing tL_starsSubscriptionPricing, int i) {
            if (tL_starsSubscriptionPricing == null) {
                return;
            }
            int i2 = tL_starsSubscriptionPricing.period;
            String str = _UrlKt.FRAGMENT_ENCODE_SET;
            if (i2 == 2592000) {
                TextView textView = this.titleView;
                StringBuilder sb = new StringBuilder();
                sb.append(LocaleController.formatString(C2665R.string.LinkRevenuePrice, Long.valueOf(tL_starsSubscriptionPricing.amount)));
                if (i > 0) {
                    str = " x " + i;
                }
                sb.append(str);
                textView.setText(StarsIntroActivity.replaceStarsWithPlain(sb.toString(), 0.8f));
                this.subtitleView.setText(i == 0 ? LocaleController.getString(C2665R.string.NoOneSubscribed) : LocaleController.formatString(C2665R.string.LinkRevenuePriceInfo, BillingController.getInstance().formatCurrency((long) ((tL_starsSubscriptionPricing.amount / 1000.0d) * ((double) MessagesController.getInstance(((BottomSheet) InviteLinkBottomSheet.this).currentAccount).starsUsdWithdrawRate1000) * ((double) i)), "USD")));
                return;
            }
            String str2 = i2 == 300 ? "5min" : "min";
            TextView textView2 = this.titleView;
            Locale locale = Locale.US;
            String str3 = String.format(locale, "⭐%1$d/%2$s", Long.valueOf(tL_starsSubscriptionPricing.amount), str2);
            if (i > 0) {
                str = " x " + i;
            }
            textView2.setText(StarsIntroActivity.replaceStarsWithPlain(str3.concat(str), 0.8f));
            this.subtitleView.setText(i == 0 ? LocaleController.getString(C2665R.string.NoOneSubscribed) : String.format(locale, "you get approximately %1$s %2$s", BillingController.getInstance().formatCurrency((long) ((tL_starsSubscriptionPricing.amount / 1000.0d) * ((double) MessagesController.getInstance(((BottomSheet) InviteLinkBottomSheet.this).currentAccount).starsUsdWithdrawRate1000) * ((double) i)), "USD"), "for ".concat(str2)));
        }
    }

    public static BottomSheet showSubscriptionSheet(final Context context, int i, long j, TL_stars.TL_starsSubscriptionPricing tL_starsSubscriptionPricing, final TLRPC.TL_chatInviteImporter tL_chatInviteImporter, TLRPC.ChannelParticipant channelParticipant, Theme.ResourcesProvider resourcesProvider) {
        BottomSheet[] bottomSheetArr;
        Object obj;
        BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        BottomSheet[] bottomSheetArr2 = new BottomSheet[1];
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(20.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(4.0f));
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        FrameLayout frameLayout = new FrameLayout(context);
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 7, 0, 0, 0, 10));
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setRoundRadius(AndroidUtilities.dp(50.0f));
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        if (j >= 0) {
            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(j));
            avatarDrawable.setInfo(user);
            backupImageView.setForUserOrChat(user, avatarDrawable);
        } else {
            TLRPC.Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(-j));
            avatarDrawable.setInfo(chat);
            backupImageView.setForUserOrChat(chat, avatarDrawable);
        }
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(100, 100, 17));
        Drawable drawable = context.getResources().getDrawable(C2665R.drawable.star_small_outline);
        drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_dialogBackground, resourcesProvider), PorterDuff.Mode.SRC_IN));
        Drawable drawable2 = context.getResources().getDrawable(C2665R.drawable.star_small_inner);
        ImageView imageView = new ImageView(context);
        imageView.setImageDrawable(drawable);
        frameLayout.addView(imageView, LayoutHelper.createFrame(28, 28, 17));
        imageView.setTranslationX(AndroidUtilities.dp(34.0f));
        imageView.setTranslationY(AndroidUtilities.dp(35.0f));
        imageView.setScaleX(1.1f);
        imageView.setScaleY(1.1f);
        ImageView imageView2 = new ImageView(context);
        imageView2.setImageDrawable(drawable2);
        frameLayout.addView(imageView2, LayoutHelper.createFrame(28, 28, 17));
        imageView2.setTranslationX(AndroidUtilities.dp(34.0f));
        imageView2.setTranslationY(AndroidUtilities.dp(35.0f));
        TextView textView = new TextView(context);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setGravity(17);
        textView.setText(LocaleController.getString(C2665R.string.StarsSubscriptionTitle));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 17, 20, 0, 20, 4));
        TextView textView2 = new TextView(context);
        textView2.setTextSize(1, 14.0f);
        textView2.setGravity(17);
        int i2 = Theme.key_windowBackgroundWhiteGrayText4;
        textView2.setTextColor(Theme.getColor(i2, resourcesProvider));
        int i3 = tL_starsSubscriptionPricing.period;
        if (i3 == 2592000) {
            bottomSheetArr = bottomSheetArr2;
            textView2.setText(StarsIntroActivity.replaceStarsWithPlain(LocaleController.formatString(C2665R.string.StarsSubscriptionPrice, Long.valueOf(tL_starsSubscriptionPricing.amount)), 0.8f));
            obj = "min";
        } else {
            bottomSheetArr = bottomSheetArr2;
            obj = "min";
            textView2.setText(StarsIntroActivity.replaceStarsWithPlain(String.format(Locale.US, "⭐%1$d/%2$s", Long.valueOf(tL_starsSubscriptionPricing.amount), i3 == 300 ? "5min" : "min"), 0.8f));
        }
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 17, 20, 0, 20, 4));
        TextView textView3 = new TextView(context);
        textView3.setTextSize(1, 14.0f);
        textView3.setGravity(17);
        textView3.setTextColor(Theme.getColor(i2, resourcesProvider));
        int i4 = tL_starsSubscriptionPricing.period;
        if (i4 == 2592000) {
            textView3.setText(LocaleController.formatString(C2665R.string.StarsParticipantSubscriptionApproxMonth, BillingController.getInstance().formatCurrency((int) ((tL_starsSubscriptionPricing.amount / 1000.0d) * ((double) MessagesController.getInstance(i).starsUsdWithdrawRate1000)), "USD")));
        } else {
            textView3.setText(String.format(Locale.US, "appx. %1$s per %2$s", BillingController.getInstance().formatCurrency((int) (((double) MessagesController.getInstance(i).starsUsdWithdrawRate1000) * (tL_starsSubscriptionPricing.amount / 1000.0d)), "USD"), i4 == 300 ? "5min" : obj));
        }
        linearLayout.addView(textView3, LayoutHelper.createLinear(-1, -2, 17, 20, 0, 20, 4));
        TableView tableView = new TableView(context, resourcesProvider);
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
        linksTextView.setPadding(AndroidUtilities.dp(12.66f), AndroidUtilities.dp(9.33f), AndroidUtilities.dp(12.66f), AndroidUtilities.dp(9.33f));
        linksTextView.setEllipsize(TextUtils.TruncateAt.END);
        int i5 = Theme.key_chat_messageLinkIn;
        linksTextView.setTextColor(Theme.getColor(i5, resourcesProvider));
        linksTextView.setLinkTextColor(Theme.getColor(i5, resourcesProvider));
        linksTextView.setTextSize(1, 14.0f);
        linksTextView.setSingleLine(true);
        linksTextView.setDisablePaddingsOffsetY(true);
        AvatarSpan avatarSpan = new AvatarSpan(linksTextView, i, 24.0f);
        TLRPC.User user2 = MessagesController.getInstance(i).getUser(Long.valueOf(tL_chatInviteImporter.user_id));
        boolean z = user2 == null;
        String userName = UserObject.getUserName(user2);
        avatarSpan.setUser(user2);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("x  " + ((Object) userName));
        spannableStringBuilder.setSpan(avatarSpan, 0, 1, 33);
        final BottomSheet[] bottomSheetArr3 = bottomSheetArr;
        spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Components.InviteLinkBottomSheet.5
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                bottomSheetArr3[0].lambda$new$0();
                BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                if (safeLastFragment != null) {
                    safeLastFragment.presentFragment(ProfileActivity.of(tL_chatInviteImporter.user_id));
                }
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                textPaint.setUnderlineText(false);
            }
        }, 3, spannableStringBuilder.length(), 33);
        linksTextView.setText(spannableStringBuilder);
        if (!z) {
            tableView.addRowUnpadded(LocaleController.getString(C2665R.string.StarsParticipantSubscription), linksTextView);
        }
        tableView.addRow(LocaleController.getString(C2665R.string.StarsParticipantSubscriptionStart), LocaleController.formatString(C2665R.string.formatDateAtTime, LocaleController.getInstance().getFormatterGiveawayCard().format(new Date(((long) tL_chatInviteImporter.date) * 1000)), LocaleController.getInstance().getFormatterDay().format(new Date(((long) tL_chatInviteImporter.date) * 1000))));
        int currentTime = ConnectionsManager.getInstance(i).getCurrentTime();
        if (channelParticipant != null) {
            tableView.addRow(LocaleController.getString(channelParticipant.subscription_until_date > currentTime ? C2665R.string.StarsParticipantSubscriptionRenews : C2665R.string.StarsParticipantSubscriptionExpired), LocaleController.formatString(C2665R.string.formatDateAtTime, LocaleController.getInstance().getFormatterGiveawayCard().format(new Date(((long) channelParticipant.subscription_until_date) * 1000)), LocaleController.getInstance().getFormatterDay().format(new Date(((long) channelParticipant.subscription_until_date) * 1000))));
        }
        linearLayout.addView(tableView, LayoutHelper.createLinear(-1, -2, 0.0f, 17.0f, 0.0f, 0.0f));
        LinkSpanDrawable.LinksTextView linksTextView2 = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
        linksTextView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
        linksTextView2.setLinkTextColor(Theme.getColor(i5, resourcesProvider));
        linksTextView2.setTextSize(1, 14.0f);
        linksTextView2.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2665R.string.StarsTransactionTOS), new Runnable() { // from class: org.telegram.ui.Components.InviteLinkBottomSheet$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                Browser.openUrl(context, LocaleController.getString(C2665R.string.StarsTOSLink));
            }
        }));
        linksTextView2.setGravity(17);
        linearLayout.addView(linksTextView2, LayoutHelper.createLinear(-1, -2, 14.0f, 15.0f, 14.0f, 15.0f));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, true, resourcesProvider);
        buttonWithCounterView.setText(LocaleController.getString(C2665R.string.OK), false);
        linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48));
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.InviteLinkBottomSheet$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                bottomSheetArr3[0].lambda$new$0();
            }
        });
        builder.setCustomView(linearLayout);
        BottomSheet bottomSheetCreate = builder.create();
        bottomSheetArr3[0] = bottomSheetCreate;
        bottomSheetCreate.useBackgroundTopPadding = false;
        bottomSheetCreate.fixNavigationBar();
        bottomSheetArr3[0].show();
        return bottomSheetArr3[0];
    }
}
