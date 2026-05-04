package org.telegram.p029ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.BackDrawable;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.EditTextCell;
import org.telegram.p029ui.Cells.HeaderCell;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.CombinedDrawable;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import org.telegram.p029ui.Components.ViewPagerFixed;
import org.telegram.p029ui.ReportBottomSheet;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_stories;

/* JADX INFO: loaded from: classes6.dex */
public class ReportBottomSheet extends BottomSheet {
    private final Paint backgroundPaint;
    private final long dialogId;
    private Listener listener;
    private final ArrayList messageIds;
    private final boolean sponsored;
    private final byte[] sponsoredId;
    private final boolean stories;
    private final ViewPagerFixed viewPager;

    interface Listener {
        void onHidden();

        void onPremiumRequired();

        void onReported();

        /* JADX INFO: renamed from: org.telegram.ui.ReportBottomSheet$Listener$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$onHidden(Listener listener) {
            }

            public static void $default$onPremiumRequired(Listener listener) {
            }
        }
    }

    public ReportBottomSheet(Context context, Theme.ResourcesProvider resourcesProvider, boolean z, long j, ArrayList arrayList) {
        this(false, context, resourcesProvider, j, z, arrayList, null);
    }

    public ReportBottomSheet(Context context, Theme.ResourcesProvider resourcesProvider, long j, byte[] bArr) {
        this(true, context, resourcesProvider, j, false, null, bArr);
    }

    public ReportBottomSheet(boolean z, final Context context, Theme.ResourcesProvider resourcesProvider, long j, boolean z2, ArrayList arrayList, byte[] bArr) {
        super(context, true, resourcesProvider);
        Paint paint = new Paint(1);
        this.backgroundPaint = paint;
        this.sponsored = z;
        this.messageIds = arrayList;
        this.stories = z2;
        this.sponsoredId = bArr;
        this.dialogId = j;
        int i = Theme.key_dialogBackground;
        paint.setColor(Theme.getColor(i, resourcesProvider));
        fixNavigationBar(Theme.getColor(i, resourcesProvider));
        this.smoothKeyboardAnimationEnabled = true;
        this.smoothKeyboardByBottom = true;
        this.containerView = new ContainerView(context);
        ViewPagerFixed viewPagerFixed = new ViewPagerFixed(context) { // from class: org.telegram.ui.ReportBottomSheet.1
            @Override // org.telegram.p029ui.Components.ViewPagerFixed
            protected boolean canScrollForward(MotionEvent motionEvent) {
                return false;
            }

            @Override // org.telegram.p029ui.Components.ViewPagerFixed
            public void onTabAnimationUpdate(boolean z3) {
                super.onTabAnimationUpdate(z3);
                ((BottomSheet) ReportBottomSheet.this).containerView.invalidate();
            }

            @Override // org.telegram.p029ui.Components.ViewPagerFixed
            public void onStartTracking() {
                if (getCurrentView() instanceof Page) {
                    Page page = (Page) getCurrentView();
                    if (page.editTextCell != null) {
                        AndroidUtilities.hideKeyboard(page.editTextCell);
                    }
                }
            }
        };
        this.viewPager = viewPagerFixed;
        int i2 = this.backgroundPaddingLeft;
        viewPagerFixed.setPadding(i2, 0, i2, 0);
        this.containerView.addView(viewPagerFixed, LayoutHelper.createFrame(-1, -1, 119));
        viewPagerFixed.setAdapter(new ViewPagerFixed.Adapter() { // from class: org.telegram.ui.ReportBottomSheet.2
            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public int getItemCount() {
                return 5;
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public int getItemViewType(int i3) {
                return i3 == 0 ? 0 : 1;
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public View createView(int i3) {
                return ReportBottomSheet.this.new Page(context);
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public void bindView(View view, int i3, int i4) {
                ((Page) view).bind(i4);
            }
        });
        if (arrayList == null && bArr == null) {
            if (z) {
                setReportChooseOption((TLRPC.TL_channels_sponsoredMessageReportResultChooseOption) null);
            } else {
                setReportChooseOption((TLRPC.TL_reportResultChooseOption) null);
            }
        }
    }

    public ReportBottomSheet setReportChooseOption(final TLRPC.TL_channels_sponsoredMessageReportResultChooseOption tL_channels_sponsoredMessageReportResultChooseOption) {
        final View[] viewPages = this.viewPager.getViewPages();
        View view = viewPages[0];
        if (view instanceof Page) {
            ((Page) view).bind(0);
            this.containerView.post(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    ((ReportBottomSheet.Page) viewPages[0]).setOption(tL_channels_sponsoredMessageReportResultChooseOption);
                }
            });
        }
        View view2 = viewPages[1];
        if (view2 instanceof Page) {
            ((Page) view2).bind(1);
        }
        return this;
    }

    public ReportBottomSheet setReportChooseOption(final TLRPC.TL_reportResultChooseOption tL_reportResultChooseOption) {
        final View[] viewPages = this.viewPager.getViewPages();
        View view = viewPages[0];
        if (view instanceof Page) {
            ((Page) view).bind(0);
            this.containerView.post(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    ((ReportBottomSheet.Page) viewPages[0]).setOption(tL_reportResultChooseOption);
                }
            });
        }
        View view2 = viewPages[1];
        if (view2 instanceof Page) {
            ((Page) view2).bind(1);
        }
        return this;
    }

    public ReportBottomSheet setReportChooseOption(final TLRPC.TL_reportResultAddComment tL_reportResultAddComment) {
        final View[] viewPages = this.viewPager.getViewPages();
        View view = viewPages[0];
        if (view instanceof Page) {
            ((Page) view).bind(0);
            this.containerView.post(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    ((ReportBottomSheet.Page) viewPages[0]).setOption(tL_reportResultAddComment);
                }
            });
        }
        View view2 = viewPages[1];
        if (view2 instanceof Page) {
            ((Page) view2).bind(1);
        }
        return this;
    }

    public ReportBottomSheet setListener(Listener listener) {
        this.listener = listener;
        return this;
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog
    /* JADX INFO: renamed from: onBackPressed */
    public void lambda$openCrafting$8() {
        if (this.viewPager.getCurrentView() instanceof Page) {
            Page page = (Page) this.viewPager.getCurrentView();
            if (page.editTextCell != null) {
                AndroidUtilities.hideKeyboard(page.editTextCell);
            }
        }
        if (this.viewPager.getCurrentPosition() > 0) {
            this.viewPager.scrollToPosition(r0.getCurrentPosition() - 1);
        } else {
            super.lambda$openCrafting$8();
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        View currentView = this.viewPager.getCurrentView();
        if (currentView instanceof Page) {
            return ((Page) currentView).atTop();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void submitOption(final CharSequence charSequence, final byte[] bArr, final String str) {
        TLObject tLObject;
        if (this.sponsored) {
            TLRPC.TL_messages_reportSponsoredMessage tL_messages_reportSponsoredMessage = new TLRPC.TL_messages_reportSponsoredMessage();
            tL_messages_reportSponsoredMessage.random_id = this.sponsoredId;
            tL_messages_reportSponsoredMessage.option = bArr;
            tLObject = tL_messages_reportSponsoredMessage;
        } else {
            boolean z = this.stories;
            String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
            if (z) {
                TL_stories.TL_stories_report tL_stories_report = new TL_stories.TL_stories_report();
                tL_stories_report.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
                ArrayList arrayList = this.messageIds;
                if (arrayList != null) {
                    tL_stories_report.f1869id.addAll(arrayList);
                }
                if (str != null) {
                    str2 = str;
                }
                tL_stories_report.message = str2;
                tL_stories_report.option = bArr;
                tLObject = tL_stories_report;
            } else {
                TLRPC.TL_messages_report tL_messages_report = new TLRPC.TL_messages_report();
                tL_messages_report.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
                ArrayList arrayList2 = this.messageIds;
                if (arrayList2 != null) {
                    tL_messages_report.f1772id.addAll(arrayList2);
                }
                if (str != null) {
                    str2 = str;
                }
                tL_messages_report.message = str2;
                tL_messages_report.option = bArr;
                tLObject = tL_messages_report;
            }
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLObject, new RequestDelegate() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda24
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                this.f$0.lambda$submitOption$4(charSequence, bArr, str, tLObject2, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$submitOption$4(final CharSequence charSequence, final byte[] bArr, final String str, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$submitOption$3(tLObject, charSequence, tL_error, bArr, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$submitOption$3(TLObject tLObject, CharSequence charSequence, TLRPC.TL_error tL_error, byte[] bArr, String str) {
        Listener listener;
        Listener listener2;
        if (this.viewPager.getCurrentView() instanceof Page) {
            Page page = (Page) this.viewPager.getCurrentView();
            if (page.button != null) {
                page.button.setLoading(false);
            }
        }
        if (tLObject == null) {
            if (tL_error != null) {
                if (!this.sponsored && "MESSAGE_ID_REQUIRED".equals(tL_error.text)) {
                    ChatActivity.openReportChat(this.dialogId, charSequence.toString(), bArr, str);
                } else if ("PREMIUM_ACCOUNT_REQUIRED".equals(tL_error.text)) {
                    Listener listener3 = this.listener;
                    if (listener3 != null) {
                        listener3.onPremiumRequired();
                    }
                } else if ("AD_EXPIRED".equals(tL_error.text) && (listener = this.listener) != null) {
                    listener.onReported();
                }
                lambda$new$0();
                return;
            }
            return;
        }
        boolean z = tLObject instanceof TLRPC.TL_channels_sponsoredMessageReportResultChooseOption;
        if (z || (tLObject instanceof TLRPC.TL_reportResultChooseOption) || (tLObject instanceof TLRPC.TL_reportResultAddComment)) {
            ViewPagerFixed viewPagerFixed = this.viewPager;
            viewPagerFixed.scrollToPosition(viewPagerFixed.currentPosition + 1);
            Page page2 = (Page) this.viewPager.getViewPages()[1];
            if (page2 != null) {
                if (tLObject instanceof TLRPC.TL_reportResultChooseOption) {
                    page2.setOption((TLRPC.TL_reportResultChooseOption) tLObject);
                } else if (tLObject instanceof TLRPC.TL_reportResultAddComment) {
                    page2.setOption((TLRPC.TL_reportResultAddComment) tLObject);
                } else if (z) {
                    page2.setOption((TLRPC.TL_channels_sponsoredMessageReportResultChooseOption) tLObject);
                }
                if (charSequence != null) {
                    page2.setHeaderText(charSequence);
                    return;
                }
                return;
            }
            return;
        }
        if (tLObject instanceof TLRPC.TL_channels_sponsoredMessageReportResultAdsHidden) {
            MessagesController.getInstance(this.currentAccount).disableAds(false);
            Listener listener4 = this.listener;
            if (listener4 != null) {
                listener4.onHidden();
                lambda$new$0();
                return;
            }
            return;
        }
        if (((tLObject instanceof TLRPC.TL_channels_sponsoredMessageReportResultReported) || (tLObject instanceof TLRPC.TL_reportResultReported)) && (listener2 = this.listener) != null) {
            listener2.onReported();
            lambda$new$0();
        }
    }

    private class ContainerView extends FrameLayout {
        private final AnimatedFloat isActionBar;
        private final Path path;
        private Boolean statusBarOpen;
        private float top;

        public ContainerView(Context context) {
            super(context);
            this.isActionBar = new AnimatedFloat(this, 250L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.path = new Path();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            View[] viewPages = ReportBottomSheet.this.viewPager.getViewPages();
            this.top = 0.0f;
            for (View view : viewPages) {
                if (view != null) {
                    Page page = (Page) view;
                    this.top += page.top() * Utilities.clamp(1.0f - Math.abs(page.getTranslationX() / page.getMeasuredWidth()), 1.0f, 0.0f);
                    if (page.getVisibility() == 0) {
                        page.updateTops();
                    }
                }
            }
            float f = this.isActionBar.set(this.top <= ((float) AndroidUtilities.statusBarHeight) ? 1.0f : 0.0f);
            int i = AndroidUtilities.statusBarHeight;
            float f2 = i * f;
            this.top = Math.max(i, this.top) - (AndroidUtilities.statusBarHeight * f);
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(((BottomSheet) ReportBottomSheet.this).backgroundPaddingLeft, this.top, getWidth() - ((BottomSheet) ReportBottomSheet.this).backgroundPaddingLeft, getHeight() + AndroidUtilities.m1124dp(8.0f));
            float fLerp = AndroidUtilities.lerp(AndroidUtilities.m1124dp(14.0f), 0, f);
            canvas.drawRoundRect(rectF, fLerp, fLerp, ReportBottomSheet.this.backgroundPaint);
            canvas.save();
            this.path.rewind();
            this.path.addRoundRect(rectF, fLerp, fLerp, Path.Direction.CW);
            canvas.clipPath(this.path);
            super.dispatchDraw(canvas);
            canvas.restore();
            updateLightStatusBar(f2 > ((float) AndroidUtilities.statusBarHeight) / 2.0f);
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            return super.drawChild(canvas, view, j);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && motionEvent.getY() < this.top) {
                ReportBottomSheet.this.lambda$new$0();
                return true;
            }
            return super.dispatchTouchEvent(motionEvent);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), TLObject.FLAG_30));
        }

        private void updateLightStatusBar(boolean z) {
            Boolean bool = this.statusBarOpen;
            if (bool == null || bool.booleanValue() != z) {
                boolean z2 = AndroidUtilities.computePerceivedBrightness(ReportBottomSheet.this.getThemedColor(Theme.key_dialogBackground)) > 0.721f;
                boolean z3 = AndroidUtilities.computePerceivedBrightness(Theme.blendOver(ReportBottomSheet.this.getThemedColor(Theme.key_actionBarDefault), AndroidUtilities.DARK_STATUS_BAR_OVERLAY)) > 0.721f;
                this.statusBarOpen = Boolean.valueOf(z);
                if (!z) {
                    z2 = z3;
                }
                AndroidUtilities.setLightStatusBar(ReportBottomSheet.this.getWindow(), z2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class Page extends FrameLayout {
        private ButtonWithCounterView button;
        private FrameLayout buttonContainer;
        TLRPC.TL_reportResultAddComment commentOption;
        private final FrameLayout contentView;
        private EditTextCell editTextCell;
        private final BigHeaderCell headerView;
        private final UniversalRecyclerView listView;
        TLRPC.TL_reportResultChooseOption option;
        int pageType;
        TLRPC.TL_channels_sponsoredMessageReportResultChooseOption sponsoredOption;

        public Page(Context context) {
            super(context);
            FrameLayout frameLayout = new FrameLayout(context);
            this.contentView = frameLayout;
            frameLayout.setPadding(0, AndroidUtilities.statusBarHeight, 0, 0);
            frameLayout.setClipToPadding(true);
            addView(frameLayout, LayoutHelper.createFrame(-1, -1, 119));
            BigHeaderCell bigHeaderCell = new BigHeaderCell(context, ((BottomSheet) ReportBottomSheet.this).resourcesProvider);
            this.headerView = bigHeaderCell;
            bigHeaderCell.setOnBackClickListener(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$Page$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            });
            if (ReportBottomSheet.this.sponsored) {
                bigHeaderCell.setText(LocaleController.getString(C2888R.string.ReportAd));
            } else if (ReportBottomSheet.this.stories) {
                bigHeaderCell.setText(LocaleController.getString(C2888R.string.ReportStory));
            } else {
                bigHeaderCell.setText(LocaleController.getString(C2888R.string.Report2));
            }
            bigHeaderCell.backDrawable.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, ((BottomSheet) ReportBottomSheet.this).resourcesProvider));
            bigHeaderCell.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, ((BottomSheet) ReportBottomSheet.this).resourcesProvider));
            addView(bigHeaderCell, LayoutHelper.createFrame(-1, -2, 55));
            UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(context, ((BottomSheet) ReportBottomSheet.this).currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.ReportBottomSheet$Page$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
                }
            }, new Utilities.Callback5() { // from class: org.telegram.ui.ReportBottomSheet$Page$$ExternalSyntheticLambda2
                @Override // org.telegram.messenger.Utilities.Callback5
                public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                    this.f$0.onClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
                }
            }, null, ((BottomSheet) ReportBottomSheet.this).resourcesProvider);
            this.listView = universalRecyclerView;
            universalRecyclerView.setClipToPadding(false);
            universalRecyclerView.layoutManager.setReverseLayout(true);
            universalRecyclerView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.ReportBottomSheet.Page.1
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                    Page.this.contentView.invalidate();
                    ((BottomSheet) ReportBottomSheet.this).containerView.invalidate();
                }
            });
            frameLayout.addView(universalRecyclerView, LayoutHelper.createFrame(-1, -1.0f));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            if (this.pageType == 0) {
                ReportBottomSheet.this.lambda$new$0();
            } else {
                ReportBottomSheet.this.lambda$openCrafting$8();
            }
        }

        public float top() {
            UItem item;
            float paddingTop = this.contentView.getPaddingTop();
            for (int i = 0; i < this.listView.getChildCount(); i++) {
                View childAt = this.listView.getChildAt(i);
                int position = this.listView.layoutManager.getPosition(childAt);
                if (position >= 0 && position < this.listView.adapter.getItemCount() && (item = this.listView.adapter.getItem(position)) != null && item.viewType == 28) {
                    paddingTop = this.contentView.getPaddingTop() + childAt.getY();
                }
            }
            return paddingTop;
        }

        public void updateTops() {
            float paddingTop = -this.headerView.getHeight();
            int i = 0;
            while (true) {
                if (i >= this.listView.getChildCount()) {
                    break;
                }
                View childAt = this.listView.getChildAt(i);
                if (this.listView.adapter.getItem(this.listView.layoutManager.getPosition(childAt)).viewType == 28) {
                    paddingTop = this.contentView.getPaddingTop() + childAt.getY();
                    break;
                }
                i++;
            }
            this.headerView.setTranslationY(Math.max(AndroidUtilities.statusBarHeight, paddingTop));
        }

        public void bind(int i) {
            this.pageType = i;
            this.headerView.setCloseImageVisible(i != 0);
            UniversalRecyclerView universalRecyclerView = this.listView;
            if (universalRecyclerView != null) {
                universalRecyclerView.adapter.update(true);
            }
        }

        public void setOption(TLRPC.TL_channels_sponsoredMessageReportResultChooseOption tL_channels_sponsoredMessageReportResultChooseOption) {
            this.sponsoredOption = tL_channels_sponsoredMessageReportResultChooseOption;
            this.option = null;
            this.commentOption = null;
            this.listView.adapter.update(false);
        }

        public void setOption(TLRPC.TL_reportResultChooseOption tL_reportResultChooseOption) {
            this.sponsoredOption = null;
            this.option = tL_reportResultChooseOption;
            this.commentOption = null;
            this.listView.adapter.update(false);
        }

        public void setOption(TLRPC.TL_reportResultAddComment tL_reportResultAddComment) {
            this.sponsoredOption = null;
            this.option = null;
            this.commentOption = tL_reportResultAddComment;
            this.listView.adapter.update(false);
            if (this.editTextCell != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$Page$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setOption$1();
                    }
                }, 120L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setOption$1() {
            AndroidUtilities.showKeyboard(this.editTextCell.editText);
        }

        public void setHeaderText(CharSequence charSequence) {
            this.headerView.setText(charSequence);
            this.headerView.getText();
            this.headerView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.x, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(120.0f), Integer.MIN_VALUE));
            UniversalRecyclerView universalRecyclerView = this.listView;
            if (universalRecyclerView != null) {
                universalRecyclerView.adapter.update(true);
            }
        }

        public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
            if (this.headerView.getMeasuredHeight() <= 0) {
                this.headerView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.x, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(120.0f), Integer.MIN_VALUE));
            }
            UItem uItemAsSpace = UItem.asSpace(this.headerView.getMeasuredHeight());
            uItemAsSpace.f2105id = -1;
            uItemAsSpace.transparent = true;
            arrayList.add(uItemAsSpace);
            int measuredHeight = (int) (0 + (this.headerView.getMeasuredHeight() / AndroidUtilities.density));
            TLRPC.TL_channels_sponsoredMessageReportResultChooseOption tL_channels_sponsoredMessageReportResultChooseOption = this.sponsoredOption;
            if (tL_channels_sponsoredMessageReportResultChooseOption != null || this.option != null || this.commentOption != null) {
                if (tL_channels_sponsoredMessageReportResultChooseOption != null || this.option != null) {
                    HeaderCell headerCell = new HeaderCell(getContext(), Theme.key_windowBackgroundWhiteBlueHeader, 21, 0, 0, false, ((BottomSheet) ReportBottomSheet.this).resourcesProvider);
                    TLRPC.TL_channels_sponsoredMessageReportResultChooseOption tL_channels_sponsoredMessageReportResultChooseOption2 = this.sponsoredOption;
                    if (tL_channels_sponsoredMessageReportResultChooseOption2 != null) {
                        headerCell.setText(tL_channels_sponsoredMessageReportResultChooseOption2.title);
                    } else {
                        TLRPC.TL_reportResultChooseOption tL_reportResultChooseOption = this.option;
                        if (tL_reportResultChooseOption != null) {
                            headerCell.setText(tL_reportResultChooseOption.title);
                        }
                    }
                    headerCell.setBackgroundColor(ReportBottomSheet.this.getThemedColor(Theme.key_dialogBackground));
                    UItem uItemAsCustom = UItem.asCustom(headerCell);
                    uItemAsCustom.f2105id = -2;
                    arrayList.add(uItemAsCustom);
                    measuredHeight += 40;
                }
                int i = measuredHeight;
                if (this.sponsoredOption != null) {
                    for (int i2 = 0; i2 < this.sponsoredOption.options.size(); i2++) {
                        UItem uItem = new UItem(30, false);
                        uItem.text = ((TLRPC.TL_sponsoredMessageReportOption) this.sponsoredOption.options.get(i2)).text;
                        uItem.iconResId = C2888R.drawable.msg_arrowright;
                        uItem.f2105id = i2;
                        arrayList.add(uItem);
                        i += 50;
                    }
                } else if (this.option != null) {
                    for (int i3 = 0; i3 < this.option.options.size(); i3++) {
                        UItem uItem2 = new UItem(30, false);
                        uItem2.text = ((TLRPC.TL_messageReportOption) this.option.options.get(i3)).text;
                        uItem2.iconResId = C2888R.drawable.msg_arrowright;
                        uItem2.f2105id = i3;
                        arrayList.add(uItem2);
                        i += 50;
                    }
                } else if (this.commentOption != null) {
                    if (this.editTextCell == null) {
                        EditTextCell editTextCell = new EditTextCell(getContext(), _UrlKt.FRAGMENT_ENCODE_SET, true, false, 1024, ((BottomSheet) ReportBottomSheet.this).resourcesProvider) { // from class: org.telegram.ui.ReportBottomSheet.Page.2
                            @Override // org.telegram.p029ui.Cells.EditTextCell
                            protected void onTextChanged(CharSequence charSequence) {
                                super.onTextChanged(charSequence);
                                if (Page.this.button != null) {
                                    ButtonWithCounterView buttonWithCounterView = Page.this.button;
                                    Page page = Page.this;
                                    buttonWithCounterView.setEnabled(page.commentOption.optional || !TextUtils.isEmpty(page.editTextCell.getText()));
                                }
                            }
                        };
                        this.editTextCell = editTextCell;
                        editTextCell.setShowLimitWhenNear(100);
                    }
                    this.editTextCell.editText.setHint(LocaleController.getString(this.commentOption.optional ? C2888R.string.Report2CommentOptional : C2888R.string.Report2Comment));
                    UItem uItemAsCustom2 = UItem.asCustom(this.editTextCell);
                    uItemAsCustom2.f2105id = -3;
                    arrayList.add(uItemAsCustom2);
                    if (ReportBottomSheet.this.messageIds != null && !ReportBottomSheet.this.messageIds.isEmpty()) {
                        arrayList.add(UItem.asShadow(LocaleController.getString(ReportBottomSheet.this.messageIds.size() > 1 ? C2888R.string.Report2CommentInfoMany : C2888R.string.Report2CommentInfo)));
                    } else if (!DialogObject.isUserDialog(ReportBottomSheet.this.dialogId)) {
                        if (ChatObject.isChannelAndNotMegaGroup(MessagesController.getInstance(((BottomSheet) ReportBottomSheet.this).currentAccount).getChat(Long.valueOf(-ReportBottomSheet.this.dialogId)))) {
                            arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.Report2CommentInfoChannel)));
                        } else {
                            arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.Report2CommentInfoGroup)));
                        }
                    } else {
                        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.Report2CommentInfoUser)));
                    }
                    if (this.buttonContainer == null) {
                        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(getContext(), ((BottomSheet) ReportBottomSheet.this).resourcesProvider);
                        this.button = buttonWithCounterView;
                        buttonWithCounterView.setText(LocaleController.getString(C2888R.string.Report2Send), false);
                        FrameLayout frameLayout = new FrameLayout(getContext());
                        this.buttonContainer = frameLayout;
                        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, ((BottomSheet) ReportBottomSheet.this).resourcesProvider));
                        this.buttonContainer.addView(this.button, LayoutHelper.createFrame(-1, 48.0f, 119, 12.0f, 12.0f, 12.0f, 12.0f));
                        View view = new View(getContext());
                        view.setBackgroundColor(Theme.getColor(Theme.key_divider, ((BottomSheet) ReportBottomSheet.this).resourcesProvider));
                        this.buttonContainer.addView(view, LayoutHelper.createFrame(-1.0f, 1.0f / AndroidUtilities.density, 48));
                    }
                    this.button.setEnabled(this.commentOption.optional || !TextUtils.isEmpty(this.editTextCell.getText()));
                    this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ReportBottomSheet$Page$$ExternalSyntheticLambda3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$fillItems$2(view2);
                        }
                    });
                    UItem uItemAsCustom3 = UItem.asCustom(this.buttonContainer);
                    uItemAsCustom3.f2105id = -4;
                    arrayList.add(uItemAsCustom3);
                    i += 112;
                }
                measuredHeight = i;
                ((UItem) arrayList.get(arrayList.size() - 1)).hideDivider = true;
                if (ReportBottomSheet.this.sponsored && this.pageType == 0) {
                    FrameLayout frameLayout2 = new FrameLayout(getContext());
                    CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(ReportBottomSheet.this.getThemedColor(Theme.key_windowBackgroundGray)), Theme.getThemedDrawable(getContext(), C2888R.drawable.greydivider, Theme.getColor(Theme.key_windowBackgroundGrayShadow, ((BottomSheet) ReportBottomSheet.this).resourcesProvider)), 0, 0);
                    combinedDrawable.setFullsize(true);
                    frameLayout2.setBackground(combinedDrawable);
                    LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(getContext());
                    linksTextView.setTextSize(1, 14.0f);
                    linksTextView.setText(AndroidUtilities.replaceLinks(LocaleController.getString(C2888R.string.ReportAdLearnMore), ((BottomSheet) ReportBottomSheet.this).resourcesProvider));
                    linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText3, ((BottomSheet) ReportBottomSheet.this).resourcesProvider));
                    linksTextView.setGravity(17);
                    frameLayout2.addView(linksTextView, LayoutHelper.createFrame(-1, -2.0f, 17, 16.0f, 16.0f, 16.0f, 16.0f));
                    UItem uItemAsCustom4 = UItem.asCustom(frameLayout2);
                    uItemAsCustom4.f2105id = -3;
                    arrayList.add(uItemAsCustom4);
                    measuredHeight += 46;
                }
            }
            if (this.listView != null) {
                if (((BottomSheet) ReportBottomSheet.this).containerView.getMeasuredHeight() - AndroidUtilities.statusBarHeight < AndroidUtilities.m1124dp(measuredHeight)) {
                    this.listView.layoutManager.setReverseLayout(false);
                } else {
                    Collections.reverse(arrayList);
                    this.listView.layoutManager.setReverseLayout(true);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fillItems$2(View view) {
            if (!this.button.isEnabled() || this.button.isLoading()) {
                return;
            }
            this.button.setLoading(true);
            ReportBottomSheet.this.submitOption(this.headerView.getText(), this.commentOption.option, this.editTextCell.getText().toString());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onClick(UItem uItem, View view, int i, float f, float f2) {
            if (uItem.viewType == 30) {
                TLRPC.TL_channels_sponsoredMessageReportResultChooseOption tL_channels_sponsoredMessageReportResultChooseOption = this.sponsoredOption;
                if (tL_channels_sponsoredMessageReportResultChooseOption != null) {
                    TLRPC.TL_sponsoredMessageReportOption tL_sponsoredMessageReportOption = (TLRPC.TL_sponsoredMessageReportOption) tL_channels_sponsoredMessageReportResultChooseOption.options.get(uItem.f2105id);
                    if (tL_sponsoredMessageReportOption != null) {
                        ReportBottomSheet.this.submitOption(tL_sponsoredMessageReportOption.text, tL_sponsoredMessageReportOption.option, null);
                        return;
                    }
                    return;
                }
                TLRPC.TL_reportResultChooseOption tL_reportResultChooseOption = this.option;
                if (tL_reportResultChooseOption != null) {
                    TLRPC.TL_messageReportOption tL_messageReportOption = (TLRPC.TL_messageReportOption) tL_reportResultChooseOption.options.get(uItem.f2105id);
                    if (tL_messageReportOption != null) {
                        ReportBottomSheet.this.submitOption(tL_messageReportOption.text, tL_messageReportOption.option, null);
                        return;
                    }
                    return;
                }
                TLRPC.TL_reportResultAddComment tL_reportResultAddComment = this.commentOption;
                if (tL_reportResultAddComment != null) {
                    byte[] bArr = tL_reportResultAddComment.option;
                    if (bArr != null) {
                        ReportBottomSheet.this.submitOption(null, bArr, null);
                        return;
                    }
                    return;
                }
                ReportBottomSheet.this.submitOption(uItem.text, null, null);
            }
        }

        public boolean atTop() {
            return !this.listView.canScrollVertically(-1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        class BigHeaderCell extends FrameLayout {
            public BackDrawable backDrawable;
            private final ImageView btnBack;
            private Runnable onBackClickListener;
            private final TextView textView;

            public BigHeaderCell(Context context, Theme.ResourcesProvider resourcesProvider) {
                super(context);
                TextView textView = new TextView(context);
                this.textView = textView;
                textView.setTypeface(AndroidUtilities.bold());
                textView.setTextSize(1, 20.0f);
                textView.setGravity(LocaleController.isRTL ? 5 : 3);
                textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
                addView(textView);
                ImageView imageView = new ImageView(context);
                this.btnBack = imageView;
                BackDrawable backDrawable = new BackDrawable(false);
                this.backDrawable = backDrawable;
                imageView.setImageDrawable(backDrawable);
                this.backDrawable.setColor(-1);
                addView(imageView, LayoutHelper.createFrame(24, 24.0f, (LocaleController.isRTL ? 5 : 3) | 48, 16.0f, 16.0f, 16.0f, 0.0f));
                imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ReportBottomSheet$Page$BigHeaderCell$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$0(view);
                    }
                });
                setCloseImageVisible(true);
                setMinimumHeight(AndroidUtilities.m1124dp(56.0f));
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$new$0(View view) {
                Runnable runnable = this.onBackClickListener;
                if (runnable != null) {
                    runnable.run();
                }
            }

            public void setText(CharSequence charSequence) {
                this.textView.setText(charSequence);
            }

            public CharSequence getText() {
                return this.textView.getText();
            }

            public void setCloseImageVisible(boolean z) {
                this.btnBack.setVisibility(z ? 0 : 8);
                TextView textView = this.textView;
                boolean z2 = LocaleController.isRTL;
                textView.setLayoutParams(LayoutHelper.createFrame(-1, -2.0f, 55, (z2 || !z) ? 22.0f : 53.0f, 14.0f, (z2 && z) ? 53.0f : 22.0f, 12.0f));
            }

            public void setOnBackClickListener(Runnable runnable) {
                this.onBackClickListener = runnable;
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), i2);
            }
        }
    }

    public static void openChat(ChatActivity chatActivity) {
        if (chatActivity == null) {
            return;
        }
        int currentAccount = chatActivity.getCurrentAccount();
        Context context = chatActivity.getContext();
        long dialogId = chatActivity.getDialogId();
        if (context == null) {
            return;
        }
        open(currentAccount, context, dialogId, false, new ArrayList(), null, null, new byte[0], null, null);
    }

    public static void openChat(BaseFragment baseFragment, long j) {
        if (baseFragment == null) {
            return;
        }
        int currentAccount = baseFragment.getCurrentAccount();
        Context context = baseFragment.getContext();
        if (context == null) {
            return;
        }
        open(currentAccount, context, j, false, new ArrayList(), null, null, new byte[0], null, null);
    }

    public static void openMessage(BaseFragment baseFragment, MessageObject messageObject) {
        if (baseFragment == null) {
            return;
        }
        int currentAccount = baseFragment.getCurrentAccount();
        Context context = baseFragment.getContext();
        if (context == null) {
            return;
        }
        open(currentAccount, context, messageObject.getDialogId(), false, new ArrayList(Collections.singleton(Integer.valueOf(messageObject.getId()))), BulletinFactory.m1246of(baseFragment), baseFragment.getResourceProvider(), new byte[0], null, null);
    }

    public static void continueReport(ChatActivity chatActivity, byte[] bArr, String str, ArrayList arrayList, Utilities.Callback callback) {
        if (chatActivity == null) {
            return;
        }
        int currentAccount = chatActivity.getCurrentAccount();
        Context context = chatActivity.getContext();
        long dialogId = chatActivity.getDialogId();
        if (context == null) {
            return;
        }
        open(currentAccount, context, dialogId, false, arrayList, BulletinFactory.m1246of(chatActivity), chatActivity.getResourceProvider(), bArr, str, callback);
    }

    public static void openStory(int i, Context context, TL_stories.StoryItem storyItem, BulletinFactory bulletinFactory, Theme.ResourcesProvider resourcesProvider, Utilities.Callback callback) {
        open(i, context, storyItem.dialogId, true, new ArrayList(Collections.singleton(Integer.valueOf(storyItem.f1857id))), bulletinFactory, resourcesProvider, new byte[0], null, callback);
    }

    public static void open(int i, final Context context, final long j, final boolean z, final ArrayList arrayList, final BulletinFactory bulletinFactory, final Theme.ResourcesProvider resourcesProvider, byte[] bArr, String str, final Utilities.Callback callback) {
        TLObject tLObject;
        if (context == null || arrayList == null) {
            return;
        }
        final boolean[] zArr = {false};
        String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (z) {
            TL_stories.TL_stories_report tL_stories_report = new TL_stories.TL_stories_report();
            tL_stories_report.peer = MessagesController.getInstance(i).getInputPeer(j);
            tL_stories_report.f1869id.addAll(arrayList);
            tL_stories_report.option = bArr;
            if (!TextUtils.isEmpty(str)) {
                str2 = str;
            }
            tL_stories_report.message = str2;
            tLObject = tL_stories_report;
        } else {
            TLRPC.TL_messages_report tL_messages_report = new TLRPC.TL_messages_report();
            tL_messages_report.peer = MessagesController.getInstance(i).getInputPeer(j);
            tL_messages_report.f1772id.addAll(arrayList);
            tL_messages_report.option = bArr;
            if (!TextUtils.isEmpty(str)) {
                str2 = str;
            }
            tL_messages_report.message = str2;
            tLObject = tL_messages_report;
        }
        ConnectionsManager.getInstance(i).sendRequest(tLObject, new RequestDelegate() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda3
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                ReportBottomSheet.$r8$lambda$WAgpFa3S1ODPqa9Nu4hxZ2WRJjw(context, resourcesProvider, z, j, arrayList, zArr, callback, bulletinFactory, tLObject2, tL_error);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$WAgpFa3S1ODPqa9Nu4hxZ2WRJjw(final Context context, final Theme.ResourcesProvider resourcesProvider, final boolean z, final long j, final ArrayList arrayList, final boolean[] zArr, final Utilities.Callback callback, final BulletinFactory bulletinFactory, final TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            if ((tLObject instanceof TLRPC.TL_reportResultChooseOption) || (tLObject instanceof TLRPC.TL_reportResultAddComment)) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        ReportBottomSheet.$r8$lambda$M_WfqrZ8xZuG8vbY74nKtmM0Sz0(context, resourcesProvider, z, j, arrayList, tLObject, zArr, callback, bulletinFactory);
                    }
                });
            } else if (tLObject instanceof TLRPC.TL_reportResultReported) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        ReportBottomSheet.$r8$lambda$li9vdl1VFAfDQyvILFv4gJ6Pl2Q(zArr, callback);
                    }
                }, 200L);
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$M_WfqrZ8xZuG8vbY74nKtmM0Sz0(Context context, Theme.ResourcesProvider resourcesProvider, boolean z, long j, ArrayList arrayList, TLObject tLObject, final boolean[] zArr, final Utilities.Callback callback, BulletinFactory bulletinFactory) {
        ReportBottomSheet reportBottomSheet = new ReportBottomSheet(context, resourcesProvider, z, j, arrayList);
        if (tLObject instanceof TLRPC.TL_reportResultChooseOption) {
            reportBottomSheet.setReportChooseOption((TLRPC.TL_reportResultChooseOption) tLObject);
        } else if (tLObject instanceof TLRPC.TL_reportResultAddComment) {
            reportBottomSheet.setReportChooseOption((TLRPC.TL_reportResultAddComment) tLObject);
        }
        reportBottomSheet.setListener(new C65523(zArr, callback, bulletinFactory));
        reportBottomSheet.setOnDismissListener(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                ReportBottomSheet.$r8$lambda$ETelEKv7CkBWtzTNzC102Hg34KI(zArr, callback);
            }
        });
        reportBottomSheet.show();
    }

    /* JADX INFO: renamed from: org.telegram.ui.ReportBottomSheet$3 */
    class C65523 implements Listener {
        final /* synthetic */ BulletinFactory val$bulletinFactory;
        final /* synthetic */ boolean[] val$done;
        final /* synthetic */ Utilities.Callback val$whenDone;

        @Override // org.telegram.ui.ReportBottomSheet.Listener
        public /* synthetic */ void onHidden() {
            Listener.CC.$default$onHidden(this);
        }

        @Override // org.telegram.ui.ReportBottomSheet.Listener
        public /* synthetic */ void onPremiumRequired() {
            Listener.CC.$default$onPremiumRequired(this);
        }

        C65523(boolean[] zArr, Utilities.Callback callback, BulletinFactory bulletinFactory) {
            this.val$done = zArr;
            this.val$whenDone = callback;
            this.val$bulletinFactory = bulletinFactory;
        }

        @Override // org.telegram.ui.ReportBottomSheet.Listener
        public void onReported() {
            Utilities.Callback callback;
            boolean[] zArr = this.val$done;
            if (!zArr[0] && (callback = this.val$whenDone) != null) {
                zArr[0] = true;
                callback.run(Boolean.TRUE);
            }
            final BulletinFactory bulletinFactory = this.val$bulletinFactory;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ReportBottomSheet.C65523.$r8$lambda$BigYiaLE7uVWxqGsnUXTnyV2DyI(bulletinFactory);
                }
            }, 200L);
        }

        public static /* synthetic */ void $r8$lambda$BigYiaLE7uVWxqGsnUXTnyV2DyI(BulletinFactory bulletinFactory) {
            if (LaunchActivity.getSafeLastFragment() == null) {
                return;
            }
            if (bulletinFactory == null) {
                bulletinFactory = BulletinFactory.m1246of(LaunchActivity.getSafeLastFragment());
            }
            if (bulletinFactory == null) {
                return;
            }
            bulletinFactory.createSimpleBulletin(C2888R.raw.msg_antispam, LocaleController.getString(C2888R.string.ReportChatSent), LocaleController.getString(C2888R.string.Reported2)).setDuration(5000).show();
        }
    }

    public static /* synthetic */ void $r8$lambda$ETelEKv7CkBWtzTNzC102Hg34KI(boolean[] zArr, Utilities.Callback callback) {
        if (zArr[0] || callback == null) {
            return;
        }
        zArr[0] = true;
        callback.run(Boolean.FALSE);
    }

    public static /* synthetic */ void $r8$lambda$li9vdl1VFAfDQyvILFv4gJ6Pl2Q(boolean[] zArr, Utilities.Callback callback) {
        if (!zArr[0] && callback != null) {
            zArr[0] = true;
            callback.run(Boolean.TRUE);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                ReportBottomSheet.m17776$r8$lambda$qccbcIsr_o1YahgTVc8jwK_xBc();
            }
        }, 220L);
    }

    /* JADX INFO: renamed from: $r8$lambda$qccbcIsr_o1YahgTVc8jwK_xB-c, reason: not valid java name */
    public static /* synthetic */ void m17776$r8$lambda$qccbcIsr_o1YahgTVc8jwK_xBc() {
        BulletinFactory bulletinFactoryM1246of;
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null || (bulletinFactoryM1246of = BulletinFactory.m1246of(safeLastFragment)) == null) {
            return;
        }
        bulletinFactoryM1246of.createSimpleBulletin(C2888R.raw.msg_antispam, LocaleController.getString(C2888R.string.ReportChatSent), LocaleController.getString(C2888R.string.Reported2)).setDuration(5000).show();
    }

    public static void openSponsored(final ChatActivity chatActivity, final MessageObject messageObject, final Theme.ResourcesProvider resourcesProvider) {
        if (chatActivity == null) {
            return;
        }
        final int currentAccount = chatActivity.getCurrentAccount();
        final Context context = chatActivity.getContext();
        final long dialogId = chatActivity.getDialogId();
        if (context == null) {
            return;
        }
        TLRPC.TL_messages_reportSponsoredMessage tL_messages_reportSponsoredMessage = new TLRPC.TL_messages_reportSponsoredMessage();
        final byte[] bArr = messageObject.sponsoredId;
        tL_messages_reportSponsoredMessage.random_id = bArr;
        tL_messages_reportSponsoredMessage.option = new byte[0];
        ConnectionsManager.getInstance(currentAccount).sendRequest(tL_messages_reportSponsoredMessage, new RequestDelegate() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda10
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                ReportBottomSheet.$r8$lambda$Lm9P7ATXMCvW70ucnC9iVcs3ppo(context, resourcesProvider, dialogId, bArr, chatActivity, messageObject, currentAccount, tLObject, tL_error);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$Lm9P7ATXMCvW70ucnC9iVcs3ppo(final Context context, final Theme.ResourcesProvider resourcesProvider, final long j, final byte[] bArr, final ChatActivity chatActivity, final MessageObject messageObject, final int i, final TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            if (tLObject instanceof TLRPC.TL_channels_sponsoredMessageReportResultChooseOption) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda16
                    @Override // java.lang.Runnable
                    public final void run() {
                        TLObject tLObject2 = tLObject;
                        Context context2 = context;
                        Theme.ResourcesProvider resourcesProvider2 = resourcesProvider;
                        new ReportBottomSheet(context2, resourcesProvider2, j, bArr).setReportChooseOption((TLRPC.TL_channels_sponsoredMessageReportResultChooseOption) tLObject2).setListener(new ReportBottomSheet.C65534(chatActivity, context2, resourcesProvider2, messageObject)).show();
                    }
                });
                return;
            } else if (tLObject instanceof TLRPC.TL_channels_sponsoredMessageReportResultReported) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda17
                    @Override // java.lang.Runnable
                    public final void run() {
                        ReportBottomSheet.$r8$lambda$Mxuk_1Vu4dgtBBTOV4Kd1uQCSSA(chatActivity, context, resourcesProvider, messageObject);
                    }
                }, 200L);
                return;
            } else {
                if (tLObject instanceof TLRPC.TL_channels_sponsoredMessageReportResultAdsHidden) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda18
                        @Override // java.lang.Runnable
                        public final void run() {
                            ReportBottomSheet.$r8$lambda$1K8bRS1AwsKLBzU1me3usTTHEN0(chatActivity, i, messageObject);
                        }
                    }, 200L);
                    return;
                }
                return;
            }
        }
        if (tL_error == null || !"AD_EXPIRED".equalsIgnoreCase(tL_error.text)) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                ReportBottomSheet.m17777$r8$lambda$zQCeOkSflZrgrux4xzW1PPnGCY(chatActivity, context, resourcesProvider, messageObject);
            }
        }, 200L);
    }

    /* JADX INFO: renamed from: org.telegram.ui.ReportBottomSheet$4 */
    class C65534 implements Listener {
        final /* synthetic */ Context val$context;
        final /* synthetic */ ChatActivity val$fragment;
        final /* synthetic */ MessageObject val$message;
        final /* synthetic */ Theme.ResourcesProvider val$resourceProvider;

        C65534(ChatActivity chatActivity, Context context, Theme.ResourcesProvider resourcesProvider, MessageObject messageObject) {
            this.val$fragment = chatActivity;
            this.val$context = context;
            this.val$resourceProvider = resourcesProvider;
            this.val$message = messageObject;
        }

        @Override // org.telegram.ui.ReportBottomSheet.Listener
        public void onReported() {
            final ChatActivity chatActivity = this.val$fragment;
            final Context context = this.val$context;
            final Theme.ResourcesProvider resourcesProvider = this.val$resourceProvider;
            final MessageObject messageObject = this.val$message;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$4$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ReportBottomSheet.C65534.$r8$lambda$o7YJQajG1ZXWrikg12x_57K64do(chatActivity, context, resourcesProvider, messageObject);
                }
            }, 200L);
        }

        public static /* synthetic */ void $r8$lambda$o7YJQajG1ZXWrikg12x_57K64do(ChatActivity chatActivity, final Context context, Theme.ResourcesProvider resourcesProvider, MessageObject messageObject) {
            BulletinFactory.m1246of(chatActivity).createAdReportedBulletin(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.AdReported), -1, 2, new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Browser.openUrl(context, "https://promote.telegram.org/guidelines");
                }
            }, resourcesProvider)).show();
            chatActivity.removeFromSponsored(messageObject);
            chatActivity.removeMessageWithThanos(messageObject);
        }

        @Override // org.telegram.ui.ReportBottomSheet.Listener
        public void onHidden() {
            final ChatActivity chatActivity = this.val$fragment;
            final MessageObject messageObject = this.val$message;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$4$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ReportBottomSheet.C65534.$r8$lambda$NA6yB0znHotrf1ac4VaDyBpaUE4(chatActivity, messageObject);
                }
            }, 200L);
        }

        public static /* synthetic */ void $r8$lambda$NA6yB0znHotrf1ac4VaDyBpaUE4(ChatActivity chatActivity, MessageObject messageObject) {
            BulletinFactory.m1246of(chatActivity).createAdReportedBulletin(LocaleController.getString(C2888R.string.AdHidden)).show();
            chatActivity.removeFromSponsored(messageObject);
            chatActivity.removeMessageWithThanos(messageObject);
        }

        @Override // org.telegram.ui.ReportBottomSheet.Listener
        public void onPremiumRequired() {
            this.val$fragment.showDialog(new PremiumFeatureBottomSheet(this.val$fragment, 3, true));
        }
    }

    public static /* synthetic */ void $r8$lambda$Mxuk_1Vu4dgtBBTOV4Kd1uQCSSA(ChatActivity chatActivity, final Context context, Theme.ResourcesProvider resourcesProvider, MessageObject messageObject) {
        BulletinFactory.m1246of(chatActivity).createAdReportedBulletin(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.AdReported), -1, 2, new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                Browser.openUrl(context, "https://promote.telegram.org/guidelines");
            }
        }, resourcesProvider)).show();
        chatActivity.removeFromSponsored(messageObject);
        chatActivity.removeMessageWithThanos(messageObject);
    }

    public static /* synthetic */ void $r8$lambda$1K8bRS1AwsKLBzU1me3usTTHEN0(ChatActivity chatActivity, int i, MessageObject messageObject) {
        BulletinFactory.m1246of(chatActivity).createAdReportedBulletin(LocaleController.getString(C2888R.string.AdHidden)).show();
        MessagesController.getInstance(i).disableAds(false);
        chatActivity.removeFromSponsored(messageObject);
        chatActivity.removeMessageWithThanos(messageObject);
    }

    /* JADX INFO: renamed from: $r8$lambda$zQCeOkSflZrgrux4xzW-1PPnGCY, reason: not valid java name */
    public static /* synthetic */ void m17777$r8$lambda$zQCeOkSflZrgrux4xzW1PPnGCY(ChatActivity chatActivity, final Context context, Theme.ResourcesProvider resourcesProvider, MessageObject messageObject) {
        BulletinFactory.m1246of(chatActivity).createAdReportedBulletin(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.AdReported), -1, 2, new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                Browser.openUrl(context, "https://promote.telegram.org/guidelines");
            }
        }, resourcesProvider)).show();
        chatActivity.removeFromSponsored(messageObject);
        chatActivity.removeMessageWithThanos(messageObject);
    }

    public static void openSponsored(final int i, final Context context, final long j, TLRPC.TL_sponsoredMessage tL_sponsoredMessage, final BulletinFactory bulletinFactory, final Theme.ResourcesProvider resourcesProvider, final Runnable runnable, final Runnable runnable2) {
        if (context == null) {
            return;
        }
        TLRPC.TL_messages_reportSponsoredMessage tL_messages_reportSponsoredMessage = new TLRPC.TL_messages_reportSponsoredMessage();
        final byte[] bArr = tL_sponsoredMessage.random_id;
        tL_messages_reportSponsoredMessage.random_id = bArr;
        tL_messages_reportSponsoredMessage.option = new byte[0];
        ConnectionsManager.getInstance(i).sendRequest(tL_messages_reportSponsoredMessage, new RequestDelegate() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                ReportBottomSheet.$r8$lambda$FqqHYsf7PuWoyR3cEHgsyAz2QTw(context, resourcesProvider, j, bArr, runnable2, bulletinFactory, runnable, i, tLObject, tL_error);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$FqqHYsf7PuWoyR3cEHgsyAz2QTw(final Context context, final Theme.ResourcesProvider resourcesProvider, final long j, final byte[] bArr, final Runnable runnable, final BulletinFactory bulletinFactory, final Runnable runnable2, final int i, final TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            if (tLObject instanceof TLRPC.TL_channels_sponsoredMessageReportResultChooseOption) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        TLObject tLObject2 = tLObject;
                        Context context2 = context;
                        Theme.ResourcesProvider resourcesProvider2 = resourcesProvider;
                        new ReportBottomSheet(context2, resourcesProvider2, j, bArr).setReportChooseOption((TLRPC.TL_channels_sponsoredMessageReportResultChooseOption) tLObject2).setListener(new ReportBottomSheet.C65545(runnable, bulletinFactory, context2, resourcesProvider2, runnable2)).show();
                    }
                });
                return;
            } else if (tLObject instanceof TLRPC.TL_channels_sponsoredMessageReportResultReported) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        ReportBottomSheet.$r8$lambda$KeAm4zgD_DLzLN_dbqZA5DNe0pU(runnable, bulletinFactory, context, resourcesProvider);
                    }
                }, 200L);
                return;
            } else {
                if (tLObject instanceof TLRPC.TL_channels_sponsoredMessageReportResultAdsHidden) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            ReportBottomSheet.$r8$lambda$kAPvFu7v_7hhZ0wAFveAEnpKbuQ(runnable, bulletinFactory, i);
                        }
                    }, 200L);
                    return;
                }
                return;
            }
        }
        if (tL_error == null || !"AD_EXPIRED".equalsIgnoreCase(tL_error.text)) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                ReportBottomSheet.$r8$lambda$bTHvJhLzcmJEZrs2qBhlG5EJbD4(runnable, bulletinFactory, context, resourcesProvider);
            }
        }, 200L);
    }

    /* JADX INFO: renamed from: org.telegram.ui.ReportBottomSheet$5 */
    class C65545 implements Listener {
        final /* synthetic */ BulletinFactory val$bulletinFactory;
        final /* synthetic */ Context val$context;
        final /* synthetic */ Runnable val$done;
        final /* synthetic */ Theme.ResourcesProvider val$resourceProvider;
        final /* synthetic */ Runnable val$showPremium;

        C65545(Runnable runnable, BulletinFactory bulletinFactory, Context context, Theme.ResourcesProvider resourcesProvider, Runnable runnable2) {
            this.val$done = runnable;
            this.val$bulletinFactory = bulletinFactory;
            this.val$context = context;
            this.val$resourceProvider = resourcesProvider;
            this.val$showPremium = runnable2;
        }

        @Override // org.telegram.ui.ReportBottomSheet.Listener
        public void onReported() {
            final Runnable runnable = this.val$done;
            final BulletinFactory bulletinFactory = this.val$bulletinFactory;
            final Context context = this.val$context;
            final Theme.ResourcesProvider resourcesProvider = this.val$resourceProvider;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$5$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ReportBottomSheet.C65545.m17786$r8$lambda$H1FLXYhbApWbLaXPsE7oTlVdbY(runnable, bulletinFactory, context, resourcesProvider);
                }
            }, 200L);
        }

        /* JADX INFO: renamed from: $r8$lambda$H1FLXYhbApWbLaXPsE-7oTlVdbY, reason: not valid java name */
        public static /* synthetic */ void m17786$r8$lambda$H1FLXYhbApWbLaXPsE7oTlVdbY(Runnable runnable, BulletinFactory bulletinFactory, final Context context, Theme.ResourcesProvider resourcesProvider) {
            if (runnable != null) {
                runnable.run();
            }
            bulletinFactory.createAdReportedBulletin(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.AdReported), -1, 2, new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$5$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Browser.openUrl(context, "https://promote.telegram.org/guidelines");
                }
            }, resourcesProvider)).show();
        }

        @Override // org.telegram.ui.ReportBottomSheet.Listener
        public void onHidden() {
            final Runnable runnable = this.val$done;
            final BulletinFactory bulletinFactory = this.val$bulletinFactory;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$5$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ReportBottomSheet.C65545.$r8$lambda$SMieQ2J2V2XrVdL9OXrJEEZDtV0(runnable, bulletinFactory);
                }
            }, 200L);
        }

        public static /* synthetic */ void $r8$lambda$SMieQ2J2V2XrVdL9OXrJEEZDtV0(Runnable runnable, BulletinFactory bulletinFactory) {
            if (runnable != null) {
                runnable.run();
            }
            bulletinFactory.createAdReportedBulletin(LocaleController.getString(C2888R.string.AdHidden)).show();
        }

        @Override // org.telegram.ui.ReportBottomSheet.Listener
        public void onPremiumRequired() {
            this.val$showPremium.run();
        }
    }

    public static /* synthetic */ void $r8$lambda$KeAm4zgD_DLzLN_dbqZA5DNe0pU(Runnable runnable, BulletinFactory bulletinFactory, final Context context, Theme.ResourcesProvider resourcesProvider) {
        if (runnable != null) {
            runnable.run();
        }
        bulletinFactory.createAdReportedBulletin(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.AdReported), -1, 2, new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                Browser.openUrl(context, "https://promote.telegram.org/guidelines");
            }
        }, resourcesProvider)).show();
    }

    public static /* synthetic */ void $r8$lambda$kAPvFu7v_7hhZ0wAFveAEnpKbuQ(Runnable runnable, BulletinFactory bulletinFactory, int i) {
        if (runnable != null) {
            runnable.run();
        }
        bulletinFactory.createAdReportedBulletin(LocaleController.getString(C2888R.string.AdHidden)).show();
        MessagesController.getInstance(i).disableAds(false);
    }

    public static /* synthetic */ void $r8$lambda$bTHvJhLzcmJEZrs2qBhlG5EJbD4(Runnable runnable, BulletinFactory bulletinFactory, final Context context, Theme.ResourcesProvider resourcesProvider) {
        if (runnable != null) {
            runnable.run();
        }
        bulletinFactory.createAdReportedBulletin(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.AdReported), -1, 2, new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                Browser.openUrl(context, "https://promote.telegram.org/guidelines");
            }
        }, resourcesProvider)).show();
    }

    public static void openSponsoredPeer(final BaseFragment baseFragment, final byte[] bArr, final Theme.ResourcesProvider resourcesProvider, final Runnable runnable) {
        if (baseFragment == null) {
            return;
        }
        final int currentAccount = baseFragment.getCurrentAccount();
        final Context context = baseFragment.getContext();
        if (context == null) {
            return;
        }
        TLRPC.TL_messages_reportSponsoredMessage tL_messages_reportSponsoredMessage = new TLRPC.TL_messages_reportSponsoredMessage();
        tL_messages_reportSponsoredMessage.random_id = bArr;
        tL_messages_reportSponsoredMessage.option = new byte[0];
        ConnectionsManager.getInstance(currentAccount).sendRequest(tL_messages_reportSponsoredMessage, new RequestDelegate() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda26
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                ReportBottomSheet.$r8$lambda$TqPdTY5VVxXX2Lp4bJSVd6Sq_J0(context, resourcesProvider, bArr, baseFragment, runnable, currentAccount, tLObject, tL_error);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$TqPdTY5VVxXX2Lp4bJSVd6Sq_J0(final Context context, final Theme.ResourcesProvider resourcesProvider, final byte[] bArr, final BaseFragment baseFragment, final Runnable runnable, final int i, final TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            if (tLObject instanceof TLRPC.TL_channels_sponsoredMessageReportResultChooseOption) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda27
                    @Override // java.lang.Runnable
                    public final void run() {
                        TLObject tLObject2 = tLObject;
                        Context context2 = context;
                        Theme.ResourcesProvider resourcesProvider2 = resourcesProvider;
                        new ReportBottomSheet(context2, resourcesProvider2, 0L, bArr).setReportChooseOption((TLRPC.TL_channels_sponsoredMessageReportResultChooseOption) tLObject2).setListener(new ReportBottomSheet.C65556(baseFragment, context2, resourcesProvider2, runnable)).show();
                    }
                });
                return;
            } else if (tLObject instanceof TLRPC.TL_channels_sponsoredMessageReportResultReported) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda28
                    @Override // java.lang.Runnable
                    public final void run() {
                        ReportBottomSheet.$r8$lambda$tSiSeU2ldF9U7FjyHNznWxZullw(baseFragment, context, resourcesProvider, runnable);
                    }
                }, 200L);
                return;
            } else {
                if (tLObject instanceof TLRPC.TL_channels_sponsoredMessageReportResultAdsHidden) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda29
                        @Override // java.lang.Runnable
                        public final void run() {
                            ReportBottomSheet.m17773$r8$lambda$eEsRKBS9r6RgYSvLbscW_A598(baseFragment, i, runnable);
                        }
                    }, 200L);
                    return;
                }
                return;
            }
        }
        if (tL_error == null || !"AD_EXPIRED".equalsIgnoreCase(tL_error.text)) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                ReportBottomSheet.$r8$lambda$x0fgiqYJUAeZ5FQTI3RNnSPRWlU(baseFragment, context, resourcesProvider, runnable);
            }
        }, 200L);
    }

    /* JADX INFO: renamed from: org.telegram.ui.ReportBottomSheet$6 */
    class C65556 implements Listener {
        final /* synthetic */ Context val$context;
        final /* synthetic */ BaseFragment val$fragment;
        final /* synthetic */ Runnable val$remove;
        final /* synthetic */ Theme.ResourcesProvider val$resourceProvider;

        C65556(BaseFragment baseFragment, Context context, Theme.ResourcesProvider resourcesProvider, Runnable runnable) {
            this.val$fragment = baseFragment;
            this.val$context = context;
            this.val$resourceProvider = resourcesProvider;
            this.val$remove = runnable;
        }

        @Override // org.telegram.ui.ReportBottomSheet.Listener
        public void onReported() {
            final BaseFragment baseFragment = this.val$fragment;
            final Context context = this.val$context;
            final Theme.ResourcesProvider resourcesProvider = this.val$resourceProvider;
            final Runnable runnable = this.val$remove;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$6$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ReportBottomSheet.C65556.$r8$lambda$WnkSMxLgeAYEbetp7tOy7z9Ac5w(baseFragment, context, resourcesProvider, runnable);
                }
            }, 200L);
        }

        public static /* synthetic */ void $r8$lambda$WnkSMxLgeAYEbetp7tOy7z9Ac5w(BaseFragment baseFragment, final Context context, Theme.ResourcesProvider resourcesProvider, Runnable runnable) {
            BulletinFactory.m1246of(baseFragment).createAdReportedBulletin(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.AdReported), -1, 2, new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$6$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    Browser.openUrl(context, "https://promote.telegram.org/guidelines");
                }
            }, resourcesProvider)).show();
            AndroidUtilities.runOnUIThread(runnable);
        }

        @Override // org.telegram.ui.ReportBottomSheet.Listener
        public void onHidden() {
            final BaseFragment baseFragment = this.val$fragment;
            final Runnable runnable = this.val$remove;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$6$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ReportBottomSheet.C65556.$r8$lambda$h1OS3GR2m2PbJb2TEDujYJI5gr8(baseFragment, runnable);
                }
            }, 200L);
        }

        public static /* synthetic */ void $r8$lambda$h1OS3GR2m2PbJb2TEDujYJI5gr8(BaseFragment baseFragment, Runnable runnable) {
            BulletinFactory.m1246of(baseFragment).createAdReportedBulletin(LocaleController.getString(C2888R.string.AdHidden)).show();
            AndroidUtilities.runOnUIThread(runnable);
        }

        @Override // org.telegram.ui.ReportBottomSheet.Listener
        public void onPremiumRequired() {
            this.val$fragment.showDialog(new PremiumFeatureBottomSheet(this.val$fragment, 3, true));
        }
    }

    public static /* synthetic */ void $r8$lambda$tSiSeU2ldF9U7FjyHNznWxZullw(BaseFragment baseFragment, final Context context, Theme.ResourcesProvider resourcesProvider, Runnable runnable) {
        BulletinFactory.m1246of(baseFragment).createAdReportedBulletin(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.AdReported), -1, 2, new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Browser.openUrl(context, "https://promote.telegram.org/guidelines");
            }
        }, resourcesProvider)).show();
        AndroidUtilities.runOnUIThread(runnable);
    }

    /* JADX INFO: renamed from: $r8$lambda$eEsRKBS9r6RgYSvL-bsc-W_A598, reason: not valid java name */
    public static /* synthetic */ void m17773$r8$lambda$eEsRKBS9r6RgYSvLbscW_A598(BaseFragment baseFragment, int i, Runnable runnable) {
        BulletinFactory.m1246of(baseFragment).createAdReportedBulletin(LocaleController.getString(C2888R.string.AdHidden)).show();
        MessagesController.getInstance(i).disableAds(false);
        AndroidUtilities.runOnUIThread(runnable);
    }

    public static /* synthetic */ void $r8$lambda$x0fgiqYJUAeZ5FQTI3RNnSPRWlU(BaseFragment baseFragment, final Context context, Theme.ResourcesProvider resourcesProvider, Runnable runnable) {
        BulletinFactory.m1246of(baseFragment).createAdReportedBulletin(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.AdReported), -1, 2, new Runnable() { // from class: org.telegram.ui.ReportBottomSheet$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Browser.openUrl(context, "https://promote.telegram.org/guidelines");
            }
        }, resourcesProvider)).show();
        AndroidUtilities.runOnUIThread(runnable);
    }
}
