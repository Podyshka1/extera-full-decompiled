package org.telegram.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.core.util.Consumer;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.ProxyDisableCondition;
import com.exteragram.messenger.proxy.ProxyController;
import com.exteragram.messenger.utils.ui.PopupUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.ProxyRotationController;
import org.telegram.messenger.SharedConfig;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestTimeDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BackDrawable;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.ShadowSectionCell;
import org.telegram.ui.Cells.TextCheckCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Cells.TextSettingsCell;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CheckBox2;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.NumberTextView;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.SlideChooseView;
import org.telegram.ui.ProxyListActivity;

/* JADX INFO: loaded from: classes6.dex */
public class ProxyListActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private static final ProxyDisableCondition[] PROXY_DISABLE_CONDITIONS = ProxyDisableCondition.values();
    private boolean checkedProxies;
    private int connectionsHeaderRow;
    private int currentConnectionState;
    private int deleteAllRow;
    private ActionBarMenuItem deleteMenuItem;
    private ItemTouchHelper itemTouchHelper;
    private LinearLayoutManager layoutManager;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private int mainHeaderRow;
    private ActionBarMenuItem pinMenuItem;

    @Keep
    private int proxyAddRow;
    private int proxyDisableRow;
    private int proxyDisableShadowRow;
    private int proxyEndRow;
    private int proxyShadowRow;
    private int proxyStartRow;
    private boolean refreshActionEnabled;
    private int rotationRow;
    private int rotationTimeoutInfoRow;
    private int rotationTimeoutRow;
    private int rowCount;
    private NumberTextView selectedCountTextView;
    private ActionBarMenuItem shareMenuItem;

    @Keep
    private int useProxyRow;
    private boolean useProxySettings;
    private int useProxyShadowRow;
    private List<SharedConfig.ProxyInfo> selectedItems = new ArrayList();
    private List<SharedConfig.ProxyInfo> proxyList = new ArrayList();
    private final View.OnClickListener refreshActionClickListener = new View.OnClickListener() { // from class: org.telegram.ui.ProxyListActivity$$ExternalSyntheticLambda7
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f$0.lambda$new$0(view);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        if (this.refreshActionEnabled) {
            refreshProxyStatus();
        }
    }

    public class TextDetailProxyCell extends FrameLayout {
        private CheckBox2 checkBox;
        private Drawable checkDrawable;
        private ImageView checkImageView;
        private int color;
        private SharedConfig.ProxyInfo currentInfo;
        private boolean isReorderAvailable;
        private boolean isSelected;
        private boolean isSelectionEnabled;
        private Drawable pinDrawable;
        private ImageView reorderImageView;
        private TextView textView;
        private TextView valueTextView;

        public TextDetailProxyCell(Context context) {
            super(context);
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            this.textView.setTextSize(1, 16.0f);
            this.textView.setLines(1);
            this.textView.setMaxLines(1);
            this.textView.setSingleLine(true);
            TextView textView2 = this.textView;
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            textView2.setEllipsize(truncateAt);
            this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            TextView textView3 = this.textView;
            boolean z = LocaleController.isRTL;
            addView(textView3, LayoutHelper.createFrame(-2, -2.0f, (z ? 5 : 3) | 48, z ? 56 : 21, 10.0f, z ? 21 : 56, 0.0f));
            TextView textView4 = new TextView(context);
            this.valueTextView = textView4;
            textView4.setTextSize(1, 13.0f);
            this.valueTextView.setGravity(LocaleController.isRTL ? 5 : 3);
            this.valueTextView.setLines(1);
            this.valueTextView.setMaxLines(1);
            this.valueTextView.setSingleLine(true);
            this.valueTextView.setCompoundDrawablePadding(AndroidUtilities.dp(6.0f));
            this.valueTextView.setEllipsize(truncateAt);
            this.valueTextView.setPadding(0, 0, 0, 0);
            TextView textView5 = this.valueTextView;
            boolean z2 = LocaleController.isRTL;
            addView(textView5, LayoutHelper.createFrame(-2, -2.0f, (z2 ? 5 : 3) | 48, z2 ? 56 : 21, 35.0f, z2 ? 21 : 56, 0.0f));
            ImageView imageView = new ImageView(context);
            this.checkImageView = imageView;
            imageView.setImageResource(C2807R.drawable.msg_info);
            ImageView imageView2 = this.checkImageView;
            int color = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText3);
            PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
            imageView2.setColorFilter(new PorterDuffColorFilter(color, mode));
            ImageView imageView3 = this.checkImageView;
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
            imageView3.setScaleType(scaleType);
            this.checkImageView.setContentDescription(LocaleController.getString(C2807R.string.Edit));
            addView(this.checkImageView, LayoutHelper.createFrame(48, 48.0f, (LocaleController.isRTL ? 3 : 5) | 48, 8.0f, 8.0f, 8.0f, 0.0f));
            this.checkImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ProxyListActivity$TextDetailProxyCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            });
            ImageView imageView4 = new ImageView(context);
            this.reorderImageView = imageView4;
            imageView4.setImageResource(C2807R.drawable.list_reorder);
            this.reorderImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2), mode));
            this.reorderImageView.setScaleType(scaleType);
            this.reorderImageView.setContentDescription(LocaleController.getString(C2807R.string.ProfileBotReorder));
            this.reorderImageView.setVisibility(8);
            addView(this.reorderImageView, LayoutHelper.createFrame(48, 48.0f, (LocaleController.isRTL ? 3 : 5) | 16, 8.0f, 0.0f, 8.0f, 0.0f));
            CheckBox2 checkBox2 = new CheckBox2(context, 21);
            this.checkBox = checkBox2;
            checkBox2.setColor(Theme.key_checkbox, Theme.key_radioBackground, Theme.key_checkboxCheck);
            this.checkBox.setDrawBackgroundAsArc(14);
            this.checkBox.setVisibility(8);
            addView(this.checkBox, LayoutHelper.createFrame(24, 24.0f, (LocaleController.isRTL ? 5 : 3) | 16, 16.0f, 0.0f, 8.0f, 0.0f));
            setWillNotDraw(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            ProxyListActivity.this.presentFragment(new ProxySettingsActivity(this.currentInfo));
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(64.0f) + 1, TLObject.FLAG_30));
        }

        public void setProxy(SharedConfig.ProxyInfo proxyInfo) {
            this.textView.setText(ProxyController.getInstance().getDisplayName(proxyInfo));
            this.currentInfo = proxyInfo;
            if (this.pinDrawable == null) {
                this.pinDrawable = getContext().getResources().getDrawable(C2807R.drawable.msg_pin_mini).mutate();
                this.textView.setCompoundDrawablePadding(AndroidUtilities.dp(4.0f));
            }
            if (ProxyController.getInstance().isPinned(proxyInfo)) {
                this.pinDrawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_pinnedIcon), PorterDuff.Mode.MULTIPLY));
                boolean z = LocaleController.isRTL;
                TextView textView = this.textView;
                if (z) {
                    textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, this.pinDrawable, (Drawable) null);
                    return;
                } else {
                    textView.setCompoundDrawablesWithIntrinsicBounds(this.pinDrawable, (Drawable) null, (Drawable) null, (Drawable) null);
                    return;
                }
            }
            this.textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        }

        public void updateStatus() {
            int i;
            if (ProxyController.getInstance().getCurrentProxy() == this.currentInfo && ProxyListActivity.this.useProxySettings) {
                if (ProxyListActivity.this.currentConnectionState == 3 || ProxyListActivity.this.currentConnectionState == 5) {
                    i = Theme.key_windowBackgroundWhiteBlueText6;
                    long j = this.currentInfo.ping;
                    TextView textView = this.valueTextView;
                    if (j != 0) {
                        textView.setText(LocaleController.getString(C2807R.string.Connected) + ", " + LocaleController.formatString("Ping", C2807R.string.Ping, Long.valueOf(this.currentInfo.ping)));
                    } else {
                        textView.setText(LocaleController.getString(C2807R.string.Connected));
                    }
                    SharedConfig.ProxyInfo proxyInfo = this.currentInfo;
                    if (!proxyInfo.checking && !proxyInfo.available) {
                        proxyInfo.availableCheckTime = 0L;
                    }
                } else {
                    i = Theme.key_windowBackgroundWhiteGrayText2;
                    this.valueTextView.setText(LocaleController.getString(C2807R.string.Connecting));
                }
            } else {
                SharedConfig.ProxyInfo proxyInfo2 = this.currentInfo;
                if (proxyInfo2.checking) {
                    this.valueTextView.setText(LocaleController.getString(C2807R.string.Checking));
                    i = Theme.key_windowBackgroundWhiteGrayText2;
                } else if (proxyInfo2.available) {
                    long j2 = proxyInfo2.ping;
                    TextView textView2 = this.valueTextView;
                    if (j2 != 0) {
                        textView2.setText(LocaleController.getString(C2807R.string.Available) + ", " + LocaleController.formatString("Ping", C2807R.string.Ping, Long.valueOf(this.currentInfo.ping)));
                    } else {
                        textView2.setText(LocaleController.getString(C2807R.string.Available));
                    }
                    i = Theme.key_windowBackgroundWhiteGreenText;
                } else {
                    this.valueTextView.setText(LocaleController.getString(C2807R.string.Unavailable));
                    i = Theme.key_text_RedRegular;
                }
            }
            this.color = Theme.getColor(i);
            this.valueTextView.setTag(Integer.valueOf(i));
            this.valueTextView.setTextColor(this.color);
            Drawable drawable = this.checkDrawable;
            if (drawable != null) {
                drawable.setColorFilter(new PorterDuffColorFilter(this.color, PorterDuff.Mode.MULTIPLY));
            }
        }

        public void setSelectionEnabled(final boolean z, boolean z2) {
            if (this.isSelectionEnabled == z && z2) {
                return;
            }
            this.isSelectionEnabled = z;
            final float fDp = LocaleController.isRTL ? -AndroidUtilities.dp(32.0f) : AndroidUtilities.dp(32.0f);
            final float f = 0.0f;
            if (!z2) {
                if (!z) {
                    fDp = 0.0f;
                }
                this.textView.setTranslationX(fDp);
                this.valueTextView.setTranslationX(fDp);
                this.checkImageView.setTranslationX(fDp);
                CheckBox2 checkBox2 = this.checkBox;
                boolean z3 = LocaleController.isRTL;
                int iDp = AndroidUtilities.dp(32.0f);
                if (!z3) {
                    iDp = -iDp;
                }
                checkBox2.setTranslationX(iDp + fDp);
                this.checkImageView.setVisibility(z ? 8 : 0);
                this.checkImageView.setAlpha(1.0f);
                this.checkImageView.setScaleX(1.0f);
                this.checkImageView.setScaleY(1.0f);
                this.checkBox.setVisibility(z ? 0 : 8);
                this.checkBox.setAlpha(1.0f);
                this.checkBox.setScaleX(1.0f);
                this.checkBox.setScaleY(1.0f);
                updateReorderHandle(false);
                return;
            }
            ValueAnimator duration = ValueAnimator.ofFloat(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f).setDuration(200L);
            duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ProxyListActivity$TextDetailProxyCell$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$setSelectionEnabled$1(f, fDp, valueAnimator);
                }
            });
            duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ProxyListActivity.TextDetailProxyCell.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    boolean z4 = z;
                    TextDetailProxyCell textDetailProxyCell = TextDetailProxyCell.this;
                    if (z4) {
                        textDetailProxyCell.checkBox.setAlpha(0.0f);
                        TextDetailProxyCell.this.checkBox.setVisibility(0);
                    } else {
                        textDetailProxyCell.checkImageView.setAlpha(0.0f);
                        TextDetailProxyCell.this.checkImageView.setVisibility(0);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    boolean z4 = z;
                    TextDetailProxyCell textDetailProxyCell = TextDetailProxyCell.this;
                    if (z4) {
                        textDetailProxyCell.checkImageView.setVisibility(8);
                    } else {
                        textDetailProxyCell.checkBox.setVisibility(8);
                    }
                }
            });
            duration.start();
            updateReorderHandle(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setSelectionEnabled$1(float f, float f2, ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            float fLerp = AndroidUtilities.lerp(f, f2, fFloatValue);
            this.textView.setTranslationX(fLerp);
            this.valueTextView.setTranslationX(fLerp);
            this.checkImageView.setTranslationX(fLerp);
            this.checkBox.setTranslationX((LocaleController.isRTL ? AndroidUtilities.dp(32.0f) : -AndroidUtilities.dp(32.0f)) + fLerp);
            float f3 = (fFloatValue * 0.5f) + 0.5f;
            this.checkBox.setScaleX(f3);
            this.checkBox.setScaleY(f3);
            this.checkBox.setAlpha(fFloatValue);
            float f4 = 1.0f - fFloatValue;
            float f5 = (f4 * 0.5f) + 0.5f;
            this.checkImageView.setScaleX(f5);
            this.checkImageView.setScaleY(f5);
            this.checkImageView.setAlpha(f4);
        }

        public void setReorderAvailable(boolean z, boolean z2) {
            if (this.isReorderAvailable == z) {
                if (!z2) {
                    return;
                }
                if (this.reorderImageView.getVisibility() == ((this.isSelectionEnabled && z) ? 0 : 8)) {
                    return;
                }
            }
            this.isReorderAvailable = z;
            updateReorderHandle(z2);
        }

        private void updateReorderHandle(boolean z) {
            boolean z2 = this.isSelectionEnabled && this.isReorderAvailable;
            this.reorderImageView.animate().cancel();
            if (!z) {
                this.reorderImageView.setVisibility(z2 ? 0 : 8);
                this.reorderImageView.setAlpha(1.0f);
                this.reorderImageView.setScaleX(1.0f);
                this.reorderImageView.setScaleY(1.0f);
                return;
            }
            ImageView imageView = this.reorderImageView;
            if (z2) {
                imageView.setVisibility(0);
                this.reorderImageView.setAlpha(0.0f);
                this.reorderImageView.setScaleX(0.5f);
                this.reorderImageView.setScaleY(0.5f);
                this.reorderImageView.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(200L).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
                return;
            }
            if (imageView.getVisibility() == 0) {
                this.reorderImageView.animate().alpha(0.0f).scaleX(0.5f).scaleY(0.5f).setDuration(200L).setInterpolator(CubicBezierInterpolator.DEFAULT).withEndAction(new Runnable() { // from class: org.telegram.ui.ProxyListActivity$TextDetailProxyCell$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$updateReorderHandle$2();
                    }
                }).start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateReorderHandle$2() {
            if (!this.isSelectionEnabled || !this.isReorderAvailable) {
                this.reorderImageView.setVisibility(8);
            }
            this.reorderImageView.setAlpha(1.0f);
            this.reorderImageView.setScaleX(1.0f);
            this.reorderImageView.setScaleY(1.0f);
        }

        public void setItemSelected(boolean z, boolean z2) {
            if (z == this.isSelected && z2) {
                return;
            }
            this.isSelected = z;
            this.checkBox.setChecked(z, z2);
        }

        public void setChecked(boolean z) {
            if (z) {
                if (this.checkDrawable == null) {
                    this.checkDrawable = getResources().getDrawable(C2807R.drawable.proxy_check).mutate();
                }
                Drawable drawable = this.checkDrawable;
                if (drawable != null) {
                    drawable.setColorFilter(new PorterDuffColorFilter(this.color, PorterDuff.Mode.MULTIPLY));
                }
                boolean z2 = LocaleController.isRTL;
                TextView textView = this.valueTextView;
                if (z2) {
                    textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, this.checkDrawable, (Drawable) null);
                    return;
                } else {
                    textView.setCompoundDrawablesWithIntrinsicBounds(this.checkDrawable, (Drawable) null, (Drawable) null, (Drawable) null);
                    return;
                }
            }
            this.valueTextView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        }

        public void setValue(CharSequence charSequence) {
            this.valueTextView.setText(charSequence);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            updateStatus();
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.dp(20.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.dp(20.0f) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        ProxyController.getInstance().loadProxyList();
        this.currentConnectionState = ConnectionsManager.getInstance(this.currentAccount).getConnectionState();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.proxyChangedByRotation);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.proxySettingsChanged);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.proxyCheckDone);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.didUpdateConnectionState);
        reloadSettingsFromPreferences();
        updateRows(true);
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.proxyChangedByRotation);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.proxySettingsChanged);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.proxyCheckDone);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.didUpdateConnectionState);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        int i = 0;
        this.actionBar.setBackButtonDrawable(new BackDrawable(false));
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(LocaleController.getString(C2807R.string.ProxySettings));
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null && iNavigationLayout.isLayersLayout()) {
            this.actionBar.setOccupyStatusBar(false);
        }
        this.actionBar.setAllowOverlayTitle(false);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ProxyListActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    ProxyListActivity.this.finishFragment();
                }
            }
        });
        this.listAdapter = new ListAdapter(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        FrameLayout frameLayout2 = (FrameLayout) this.fragmentView;
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setSections();
        this.actionBar.setAdaptiveBackground(this.listView);
        ((DefaultItemAnimator) this.listView.getItemAnimator()).setDelayAnimations(false);
        ((DefaultItemAnimator) this.listView.getItemAnimator()).setTranslationInterpolator(CubicBezierInterpolator.DEFAULT);
        this.listView.setVerticalScrollBarEnabled(false);
        RecyclerListView recyclerListView2 = this.listView;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 1, false);
        this.layoutManager = linearLayoutManager;
        recyclerListView2.setLayoutManager(linearLayoutManager);
        frameLayout2.addView(this.listView, LayoutHelper.createFrame(-1, -1, 51));
        this.listView.setAdapter(this.listAdapter);
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new ItemTouchHelper.SimpleCallback(3, i) { // from class: org.telegram.ui.ProxyListActivity.2
            private boolean orderChanged;

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public boolean isLongPressDragEnabled() {
                return false;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onSwiped(RecyclerView.ViewHolder viewHolder, int i2) {
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.SimpleCallback, androidx.recyclerview.widget.ItemTouchHelper.Callback
            public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
                int proxyPosition = ProxyListActivity.this.getProxyPosition(viewHolder);
                if (proxyPosition == -1) {
                    return 0;
                }
                return ItemTouchHelper.Callback.makeMovementFlags(ProxyListActivity.this.canStartReorder(proxyPosition) ? 3 : 0, 0);
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public boolean canDropOver(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
                int proxyPosition = ProxyListActivity.this.getProxyPosition(viewHolder);
                int proxyPosition2 = ProxyListActivity.this.getProxyPosition(viewHolder2);
                return proxyPosition != -1 && proxyPosition2 != -1 && ProxyListActivity.this.isPinnedProxyPos(proxyPosition) && ProxyListActivity.this.isPinnedProxyPos(proxyPosition2);
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
                int proxyPosition = ProxyListActivity.this.getProxyPosition(viewHolder);
                int proxyPosition2 = ProxyListActivity.this.getProxyPosition(viewHolder2);
                if (proxyPosition == -1 || proxyPosition2 == -1 || !ProxyListActivity.this.movePinnedProxy(proxyPosition, proxyPosition2)) {
                    return false;
                }
                this.orderChanged = true;
                return true;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i2) {
                if (i2 != 0 && viewHolder != null) {
                    ProxyListActivity.this.listView.cancelClickRunnables(false);
                    ProxyListActivity.this.listView.setDraggingChild(viewHolder.itemView);
                    viewHolder.itemView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(16.0f), Theme.getColor(Theme.key_windowBackgroundWhite)));
                    viewHolder.itemView.bringToFront();
                    ProxyListActivity.this.listView.invalidate();
                } else if (i2 == 0) {
                    ProxyListActivity.this.listView.setDraggingChild(null);
                    ProxyListActivity.this.listView.invalidate();
                }
                super.onSelectedChanged(viewHolder, i2);
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
                super.clearView(recyclerView, viewHolder);
                ProxyListActivity.this.listView.setDraggingChild(null);
                viewHolder.itemView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                this.orderChanged = false;
                ProxyListActivity.this.listView.invalidate();
            }
        });
        this.itemTouchHelper = itemTouchHelper;
        itemTouchHelper.attachToRecyclerView(this.listView);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.ProxyListActivity$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                this.f$0.lambda$createView$2(view, i2);
            }
        });
        this.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.ProxyListActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i2) {
                return this.f$0.lambda$createView$3(view, i2);
            }
        });
        ActionBarMenu actionBarMenuCreateActionMode = this.actionBar.createActionMode();
        NumberTextView numberTextView = new NumberTextView(actionBarMenuCreateActionMode.getContext());
        this.selectedCountTextView = numberTextView;
        numberTextView.setTextSize(18);
        this.selectedCountTextView.setTypeface(AndroidUtilities.bold());
        this.selectedCountTextView.setTextColor(Theme.getColor(Theme.key_actionBarActionModeDefaultIcon));
        actionBarMenuCreateActionMode.addView(this.selectedCountTextView, LayoutHelper.createLinear(0, -1, 1.0f, 72, 0, 0, 0));
        this.selectedCountTextView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.ProxyListActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return ProxyListActivity.m20065$r8$lambda$VVYDAde8jIAPlkb1cOErRoPYZE(view, motionEvent);
            }
        });
        this.pinMenuItem = actionBarMenuCreateActionMode.addItemWithWidth(2, C2807R.drawable.msg_pin, AndroidUtilities.dp(54.0f));
        ActionBarMenuItem actionBarMenuItemAddItemWithWidth = actionBarMenuCreateActionMode.addItemWithWidth(1, C2807R.drawable.msg_share, AndroidUtilities.dp(54.0f));
        this.shareMenuItem = actionBarMenuItemAddItemWithWidth;
        actionBarMenuItemAddItemWithWidth.setContentDescription(LocaleController.getString(C2807R.string.StickersShare));
        ActionBarMenuItem actionBarMenuItemAddItemWithWidth2 = actionBarMenuCreateActionMode.addItemWithWidth(0, C2807R.drawable.msg_delete, AndroidUtilities.dp(54.0f));
        this.deleteMenuItem = actionBarMenuItemAddItemWithWidth2;
        actionBarMenuItemAddItemWithWidth2.setContentDescription(LocaleController.getString(C2807R.string.Delete));
        this.actionBar.setActionBarMenuOnItemClick(new C57553(context));
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(View view, int i) {
        int itemPosition = getItemPosition(view, i);
        if (itemPosition == this.useProxyRow) {
            if (ProxyController.getInstance().getCurrentProxy() == null) {
                if (!this.proxyList.isEmpty()) {
                    ProxyController.getInstance().setCurrentProxy(this.proxyList.get(0));
                    if (!this.useProxySettings) {
                        SharedPreferences.Editor editorEdit = MessagesController.getGlobalMainSettings().edit();
                        ProxyController.getInstance().getCurrentProxy().settings.toSharedPreferences(editorEdit);
                        editorEdit.commit();
                    }
                } else {
                    presentFragment(new ProxySettingsActivity());
                    return;
                }
            }
            this.useProxySettings = !this.useProxySettings;
            updateRows(true);
            MessagesController.getGlobalMainSettings();
            TextCheckCell textCheckCell = (TextCheckCell) view;
            textCheckCell.setChecked(this.useProxySettings);
            boolean z = this.useProxySettings;
            textCheckCell.setBackgroundColorAnimated(z, Theme.getColor(z ? Theme.key_windowBackgroundChecked : Theme.key_windowBackgroundUnchecked));
            SharedPreferences.Editor editorEdit2 = MessagesController.getGlobalMainSettings().edit();
            editorEdit2.putBoolean("proxy_enabled", this.useProxySettings);
            editorEdit2.apply();
            reapplyCurrentProxySettings();
            NotificationCenter globalInstance = NotificationCenter.getGlobalInstance();
            int i2 = NotificationCenter.proxySettingsChanged;
            globalInstance.removeObserver(this, i2);
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(i2, new Object[0]);
            NotificationCenter.getGlobalInstance().addObserver(this, i2);
            for (int i3 = this.proxyStartRow; i3 < this.proxyEndRow; i3++) {
                RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.findViewHolderForAdapterPosition(i3);
                if (holder != null) {
                    ((TextDetailProxyCell) holder.itemView).updateStatus();
                }
            }
            return;
        }
        if (itemPosition == this.rotationRow) {
            boolean z2 = !SharedConfig.proxyRotationEnabled;
            SharedConfig.proxyRotationEnabled = z2;
            ((TextCheckCell) view).setChecked(z2);
            SharedConfig.saveConfig();
            updateRows(true);
            return;
        }
        if (itemPosition == this.proxyDisableRow) {
            showProxyDisableDialog();
            return;
        }
        if (itemPosition >= this.proxyStartRow && itemPosition < this.proxyEndRow) {
            if (!this.selectedItems.isEmpty()) {
                this.listAdapter.toggleSelected(itemPosition);
                return;
            }
            SharedConfig.ProxyInfo proxyInfo = this.proxyList.get(itemPosition - this.proxyStartRow);
            boolean z3 = this.useProxySettings;
            this.useProxySettings = true;
            SharedPreferences.Editor editorEdit3 = MessagesController.getGlobalMainSettings().edit();
            proxyInfo.settings.toSharedPreferences(editorEdit3);
            editorEdit3.putBoolean("proxy_enabled", this.useProxySettings);
            editorEdit3.apply();
            ProxyController.getInstance().setCurrentProxy(proxyInfo);
            for (int i4 = this.proxyStartRow; i4 < this.proxyEndRow; i4++) {
                RecyclerListView.Holder holder2 = (RecyclerListView.Holder) this.listView.findViewHolderForAdapterPosition(i4);
                if (holder2 != null) {
                    TextDetailProxyCell textDetailProxyCell = (TextDetailProxyCell) holder2.itemView;
                    textDetailProxyCell.setChecked(textDetailProxyCell.currentInfo == proxyInfo);
                    textDetailProxyCell.updateStatus();
                }
            }
            updateRows(false);
            RecyclerListView.Holder holder3 = (RecyclerListView.Holder) this.listView.findViewHolderForAdapterPosition(this.useProxyRow);
            if (holder3 != null) {
                TextCheckCell textCheckCell2 = (TextCheckCell) holder3.itemView;
                textCheckCell2.setChecked(true);
                if (!z3) {
                    textCheckCell2.setBackgroundColorAnimated(true, Theme.getColor(Theme.key_windowBackgroundChecked));
                }
            }
            reapplyCurrentProxySettings();
            return;
        }
        if (itemPosition == this.proxyAddRow) {
            presentFragment(new ProxySettingsActivity());
            return;
        }
        if (itemPosition == this.deleteAllRow) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setMessage(LocaleController.getString(C2807R.string.DeleteAllProxiesConfirm));
            builder.setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null);
            builder.setTitle(LocaleController.getString(C2807R.string.DeleteProxyTitle));
            builder.setPositiveButton(LocaleController.getString(C2807R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ProxyListActivity$$ExternalSyntheticLambda5
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i5) {
                    this.f$0.lambda$createView$1(alertDialog, i5);
                }
            });
            AlertDialog alertDialogCreate = builder.create();
            showDialog(alertDialogCreate);
            TextView textView = (TextView) alertDialogCreate.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(AlertDialog alertDialog, int i) {
        ProxyController proxyController = ProxyController.getInstance();
        proxyController.clearAll();
        Iterator<SharedConfig.ProxyInfo> it = this.proxyList.iterator();
        while (it.hasNext()) {
            proxyController.deleteProxy(it.next());
        }
        this.useProxySettings = false;
        NotificationCenter globalInstance = NotificationCenter.getGlobalInstance();
        int i2 = NotificationCenter.proxySettingsChanged;
        globalInstance.removeObserver(this, i2);
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(i2, new Object[0]);
        NotificationCenter.getGlobalInstance().addObserver(this, i2);
        updateRows(true);
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyItemChanged(this.useProxyRow, 0);
            this.listAdapter.clearSelected();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$3(View view, int i) {
        int itemPosition = getItemPosition(view, i);
        if (itemPosition < this.proxyStartRow || itemPosition >= this.proxyEndRow) {
            return false;
        }
        if (this.selectedItems.isEmpty()) {
            this.listAdapter.toggleSelected(itemPosition);
            return true;
        }
        if (canStartReorder(itemPosition) && this.itemTouchHelper != null) {
            this.listAdapter.selectForReorder(itemPosition);
            this.listView.cancelClickRunnables(true);
            view.setPressed(false);
            view.jumpDrawablesToCurrentState();
            RecyclerView.ViewHolder viewHolderFindContainingViewHolder = this.listView.findContainingViewHolder(view);
            if (getProxyPosition(viewHolderFindContainingViewHolder) == itemPosition) {
                this.itemTouchHelper.startDrag(viewHolderFindContainingViewHolder);
            }
            return true;
        }
        this.listAdapter.toggleSelected(itemPosition);
        return true;
    }

    /* JADX INFO: renamed from: $r8$lambda$VVYDAde8jIAPlkb1cO-ErRoPYZE, reason: not valid java name */
    public static /* synthetic */ boolean m20065$r8$lambda$VVYDAde8jIAPlkb1cOErRoPYZE(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: renamed from: org.telegram.ui.ProxyListActivity$3 */
    public class C57553 extends ActionBar.ActionBarMenuOnItemClick {
        final /* synthetic */ Context val$context;

        public C57553(Context context) {
            this.val$context = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0(AlertDialog alertDialog, int i) {
            ProxyController proxyController = ProxyController.getInstance();
            Iterator it = ProxyListActivity.this.selectedItems.iterator();
            while (it.hasNext()) {
                proxyController.deleteProxy((SharedConfig.ProxyInfo) it.next());
            }
            if (proxyController.getCurrentProxy() == null) {
                ProxyListActivity.this.useProxySettings = false;
            }
            NotificationCenter globalInstance = NotificationCenter.getGlobalInstance();
            ProxyListActivity proxyListActivity = ProxyListActivity.this;
            int i2 = NotificationCenter.proxySettingsChanged;
            globalInstance.removeObserver(proxyListActivity, i2);
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(i2, new Object[0]);
            NotificationCenter.getGlobalInstance().addObserver(ProxyListActivity.this, i2);
            ProxyListActivity.this.updateRows(true);
            if (ProxyListActivity.this.listAdapter != null) {
                if (ProxyController.getInstance().getCurrentProxy() == null) {
                    ProxyListActivity.this.listAdapter.notifyItemChanged(ProxyListActivity.this.useProxyRow, 0);
                }
                ProxyListActivity.this.listAdapter.clearSelected();
            }
        }

        @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
        public void onItemClick(int i) {
            if (i == -1) {
                boolean zIsEmpty = ProxyListActivity.this.selectedItems.isEmpty();
                ProxyListActivity proxyListActivity = ProxyListActivity.this;
                if (zIsEmpty) {
                    proxyListActivity.finishFragment();
                    return;
                } else {
                    proxyListActivity.listAdapter.clearSelected();
                    return;
                }
            }
            if (i == 0) {
                AlertDialog.Builder builder = new AlertDialog.Builder(ProxyListActivity.this.getParentActivity());
                builder.setMessage(LocaleController.getString(ProxyListActivity.this.selectedItems.size() > 1 ? C2807R.string.DeleteProxyMultiConfirm : C2807R.string.DeleteProxyConfirm));
                builder.setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null);
                builder.setTitle(LocaleController.getString(C2807R.string.DeleteProxyTitle));
                builder.setPositiveButton(LocaleController.getString(C2807R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ProxyListActivity$3$$ExternalSyntheticLambda0
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        this.f$0.lambda$onItemClick$0(alertDialog, i2);
                    }
                });
                AlertDialog alertDialogCreate = builder.create();
                ProxyListActivity.this.showDialog(alertDialogCreate);
                TextView textView = (TextView) alertDialogCreate.getButton(-1);
                if (textView != null) {
                    textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                    return;
                }
                return;
            }
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                ProxyListActivity.this.toggleSelectedPins();
                return;
            }
            StringBuilder sb = new StringBuilder();
            for (SharedConfig.ProxyInfo proxyInfo : ProxyListActivity.this.selectedItems) {
                if (sb.length() > 0) {
                    sb.append("\n\n");
                }
                sb.append(ProxyController.getInstance().buildShareLink(proxyInfo));
            }
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.TEXT", sb.toString());
            Intent intentCreateChooser = Intent.createChooser(intent, LocaleController.getString(ProxyListActivity.this.selectedItems.size() > 1 ? C2807R.string.ShareLinks : C2807R.string.ShareLink));
            intentCreateChooser.setFlags(268435456);
            this.val$context.startActivity(intentCreateChooser);
            if (ProxyListActivity.this.listAdapter != null) {
                ProxyListActivity.this.listAdapter.clearSelected();
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        if (this.selectedItems.isEmpty()) {
            return super.onBackPressed(z);
        }
        if (!z) {
            return false;
        }
        this.listAdapter.clearSelected();
        return false;
    }

    private void showProxyDisableDialog() {
        if (getParentActivity() == null) {
            return;
        }
        ProxyDisableCondition[] proxyDisableConditionArr = PROXY_DISABLE_CONDITIONS;
        CharSequence[] charSequenceArr = new CharSequence[proxyDisableConditionArr.length];
        boolean[] zArr = new boolean[proxyDisableConditionArr.length];
        int i = 0;
        while (true) {
            ProxyDisableCondition[] proxyDisableConditionArr2 = PROXY_DISABLE_CONDITIONS;
            if (i < proxyDisableConditionArr2.length) {
                charSequenceArr[i] = getProxyDisableConditionName(proxyDisableConditionArr2[i]);
                zArr[i] = ExteraConfig.isProxyDisabledOn(proxyDisableConditionArr2[i]);
                i++;
            } else {
                PopupUtils.showMultiSelectDialog(charSequenceArr, zArr, LocaleController.getString(C2807R.string.ProxyDisableOn), getParentActivity(), new PopupUtils.OnMultiSelectListener() { // from class: org.telegram.ui.ProxyListActivity$$ExternalSyntheticLambda8
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnMultiSelectListener
                    public final void onClick(boolean[] zArr2) {
                        this.f$0.lambda$showProxyDisableDialog$5(zArr2);
                    }
                }, getResourceProvider());
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showProxyDisableDialog$5(boolean[] zArr) {
        int i = 0;
        while (true) {
            ProxyDisableCondition[] proxyDisableConditionArr = PROXY_DISABLE_CONDITIONS;
            if (i >= proxyDisableConditionArr.length) {
                break;
            }
            ExteraConfig.setProxyDisabledOn(proxyDisableConditionArr[i], zArr[i]);
            i++;
        }
        ApplicationLoader.checkProxyForNetworkState();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyItemChanged(this.proxyDisableRow);
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.ProxyListActivity$4 */
    public static /* synthetic */ class C57564 {
        static final /* synthetic */ int[] $SwitchMap$com$exteragram$messenger$ProxyDisableCondition;

        static {
            int[] iArr = new int[ProxyDisableCondition.values().length];
            $SwitchMap$com$exteragram$messenger$ProxyDisableCondition = iArr;
            try {
                iArr[ProxyDisableCondition.VPN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$exteragram$messenger$ProxyDisableCondition[ProxyDisableCondition.MOBILE_DATA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private String getProxyDisableConditionName(ProxyDisableCondition proxyDisableCondition) {
        int i = C57564.$SwitchMap$com$exteragram$messenger$ProxyDisableCondition[proxyDisableCondition.ordinal()];
        if (i == 1) {
            return LocaleController.getString(C2807R.string.ProxyDisableOnVpn);
        }
        if (i == 2) {
            return LocaleController.getString(C2807R.string.ProxyDisableOnMobileData);
        }
        return LocaleController.getString(C2807R.string.ProxyDisableOnWiFi);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getProxyDisableValue() {
        ArrayList arrayList = new ArrayList();
        for (ProxyDisableCondition proxyDisableCondition : PROXY_DISABLE_CONDITIONS) {
            if (ExteraConfig.isProxyDisabledOn(proxyDisableCondition)) {
                arrayList.add(getProxyDisableConditionName(proxyDisableCondition));
            }
        }
        if (arrayList.isEmpty()) {
            return LocaleController.getString(C2807R.string.ProxyDisableNever);
        }
        if (arrayList.size() == PROXY_DISABLE_CONDITIONS.length) {
            return LocaleController.getString(C2807R.string.ProxyDisableAlways);
        }
        return TextUtils.join(", ", arrayList);
    }

    private void reloadSettingsFromPreferences() {
        boolean z = false;
        if (MessagesController.getGlobalMainSettings().getBoolean("proxy_enabled", false) && !ProxyController.getInstance().getProxyList().isEmpty()) {
            z = true;
        }
        this.useProxySettings = z;
    }

    private boolean isProxyPosition(int i) {
        return i >= this.proxyStartRow && i < this.proxyEndRow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getProxyPosition(RecyclerView.ViewHolder viewHolder) {
        RecyclerListView recyclerListView;
        if (viewHolder == null) {
            return -1;
        }
        int adapterPosition = viewHolder.getAdapterPosition();
        if (adapterPosition == -1) {
            adapterPosition = viewHolder.getLayoutPosition();
        }
        if (adapterPosition == -1 && (recyclerListView = this.listView) != null) {
            adapterPosition = recyclerListView.getChildAdapterPosition(viewHolder.itemView);
        }
        if (isProxyPosition(adapterPosition)) {
            return adapterPosition;
        }
        return -1;
    }

    private int getItemPosition(View view, int i) {
        RecyclerListView recyclerListView;
        if (view != null && (recyclerListView = this.listView) != null) {
            RecyclerView.ViewHolder viewHolderFindContainingViewHolder = recyclerListView.findContainingViewHolder(view);
            if (viewHolderFindContainingViewHolder != null) {
                int adapterPosition = viewHolderFindContainingViewHolder.getAdapterPosition();
                if (adapterPosition == -1) {
                    adapterPosition = viewHolderFindContainingViewHolder.getLayoutPosition();
                }
                if (adapterPosition != -1) {
                    return adapterPosition;
                }
            }
            int childAdapterPosition = this.listView.getChildAdapterPosition(view);
            if (childAdapterPosition != -1) {
                return childAdapterPosition;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SharedConfig.ProxyInfo getProxyAtPosition(int i) {
        if (isProxyPosition(i)) {
            return this.proxyList.get(i - this.proxyStartRow);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPinnedProxyPos(int i) {
        return ProxyController.getInstance().isPinned(getProxyAtPosition(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean canStartReorder(int i) {
        return this.actionBar.isActionModeShowed() && ProxyController.getInstance().getPinnedCount() > 1 && isPinnedProxyPos(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean canShowReorderHandle(SharedConfig.ProxyInfo proxyInfo) {
        ActionBar actionBar;
        return proxyInfo != null && (actionBar = this.actionBar) != null && actionBar.isActionModeShowed() && !this.selectedItems.isEmpty() && ProxyController.getInstance().getPinnedCount() > 1 && ProxyController.getInstance().isPinned(proxyInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean movePinnedProxy(int i, int i2) {
        if (isPinnedProxyPos(i) && isPinnedProxyPos(i2) && i != i2) {
            int i3 = this.proxyStartRow;
            int i4 = i - i3;
            int i5 = i2 - i3;
            SharedConfig.ProxyInfo proxyAtPosition = getProxyAtPosition(i);
            SharedConfig.ProxyInfo proxyAtPosition2 = getProxyAtPosition(i2);
            if (proxyAtPosition == null || proxyAtPosition2 == null || !ProxyController.getInstance().movePinnedProxy(proxyAtPosition, proxyAtPosition2)) {
                return false;
            }
            this.proxyList.remove(i4);
            this.proxyList.add(i5, proxyAtPosition);
            this.listAdapter.notifyItemMoved(i, i2);
            this.listAdapter.notifyItemRangeChanged(Math.min(i, i2), Math.abs(i - i2) + 1, 1);
            return true;
        }
        return false;
    }

    private int getSelectedPinAction() {
        return ProxyController.getInstance().getSelectedPinAction(this.selectedItems);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePinAction() {
        if (this.pinMenuItem != null) {
            int selectedPinAction = getSelectedPinAction();
            ActionBarMenuItem actionBarMenuItem = this.pinMenuItem;
            if (selectedPinAction == 0) {
                actionBarMenuItem.setVisibility(8);
            } else {
                actionBarMenuItem.setVisibility(0);
                this.pinMenuItem.setIcon(selectedPinAction == 2 ? C2807R.drawable.msg_unpin : C2807R.drawable.msg_pin);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleSelectedPins() {
        ProxyController.PinOperationResult pinOperationResultApplySelectedPinAction = ProxyController.getInstance().applySelectedPinAction(this.selectedItems);
        if (pinOperationResultApplySelectedPinAction == ProxyController.PinOperationResult.LIMIT_REACHED) {
            BulletinFactory.of(this).createErrorBulletin(LocaleController.formatString("ProxyPinLimitReached", C2807R.string.ProxyPinLimitReached, Integer.valueOf(ProxyController.getInstance().getMaxPinnedProxies()))).show();
            return;
        }
        if (pinOperationResultApplySelectedPinAction == ProxyController.PinOperationResult.CHANGED) {
            updateRows(true);
            ListAdapter listAdapter = this.listAdapter;
            if (listAdapter != null) {
                listAdapter.clearSelected();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasCheckingProxies() {
        Iterator<SharedConfig.ProxyInfo> it = this.proxyList.iterator();
        while (it.hasNext()) {
            if (it.next().checking) {
                return true;
            }
        }
        return false;
    }

    private boolean isRefreshActionEnabled() {
        return (this.proxyStartRow == -1 || hasCheckingProxies()) ? false : true;
    }

    private void updateRefreshActionState(boolean z) {
        boolean zIsRefreshActionEnabled = isRefreshActionEnabled();
        if (z || this.refreshActionEnabled != zIsRefreshActionEnabled) {
            this.refreshActionEnabled = zIsRefreshActionEnabled;
            HeaderChangeNotify();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindRefreshActionView(SimpleTextView simpleTextView) {
        simpleTextView.setText(LocaleController.getString(hasCheckingProxies() ? C2807R.string.Checking : C2807R.string.Refresh));
        int i = this.refreshActionEnabled ? Theme.isCurrentThemeDark() ? Theme.key_windowBackgroundWhiteGrayText2 : Theme.key_windowBackgroundWhiteBlackText : Theme.key_windowBackgroundWhiteGrayText3;
        float f = this.refreshActionEnabled ? Theme.isCurrentThemeDark() ? 1.0f : 0.75f : 0.55f;
        Object tag = simpleTextView.getTag();
        if (!(tag instanceof Integer) || ((Integer) tag).intValue() != i) {
            simpleTextView.setTag(Integer.valueOf(i));
            simpleTextView.setTextColor(Theme.getColor(i));
        }
        if (simpleTextView.getAlpha() != f) {
            simpleTextView.setAlpha(f);
        }
        boolean zIsClickable = simpleTextView.isClickable();
        boolean z = this.refreshActionEnabled;
        if (zIsClickable != z) {
            simpleTextView.setClickable(z);
        }
        simpleTextView.setOnClickListener(this.refreshActionClickListener);
    }

    private void HeaderChangeNotify() {
        int i;
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter == null || (i = this.connectionsHeaderRow) < 0) {
            return;
        }
        listAdapter.notifyItemChanged(i);
    }

    private void refreshProxyStatus() {
        if (this.proxyStartRow == -1 || hasCheckingProxies()) {
            return;
        }
        this.checkedProxies = false;
        int size = this.proxyList.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            final SharedConfig.ProxyInfo proxyInfo = this.proxyList.get(i);
            if (!proxyInfo.checking) {
                z = true;
                proxyInfo.checking = true;
                ConnectionsManager.getInstance(this.currentAccount).checkProxy(proxyInfo.settings, new RequestTimeDelegate() { // from class: org.telegram.ui.ProxyListActivity$$ExternalSyntheticLambda9
                    @Override // org.telegram.tgnet.RequestTimeDelegate
                    public final void run(long j) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProxyListActivity$$ExternalSyntheticLambda10
                            @Override // java.lang.Runnable
                            public final void run() {
                                ProxyListActivity.m20066$r8$lambda$d9KJjS3lpAwQxq7l6lkQFvpYyM(proxyInfo, j);
                            }
                        });
                    }
                });
            }
        }
        if (z) {
            ListAdapter listAdapter = this.listAdapter;
            if (listAdapter != null) {
                int i2 = this.proxyStartRow;
                listAdapter.notifyItemRangeChanged(i2, this.proxyEndRow - i2);
            }
            updateRefreshActionState(false);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$d9KJjS3lpAwQxq7l6lkQFv-pYyM, reason: not valid java name */
    public static /* synthetic */ void m20066$r8$lambda$d9KJjS3lpAwQxq7l6lkQFvpYyM(SharedConfig.ProxyInfo proxyInfo, long j) {
        proxyInfo.availableCheckTime = SystemClock.elapsedRealtime();
        proxyInfo.checking = false;
        if (j == -1) {
            proxyInfo.available = false;
            proxyInfo.ping = 0L;
        } else {
            proxyInfo.ping = j;
            proxyInfo.available = true;
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.proxyCheckDone, proxyInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRows(boolean z) {
        ListAdapter listAdapter;
        boolean z2 = false;
        this.useProxyRow = 0;
        int i = 1 + 1;
        this.useProxyShadowRow = 1;
        this.rowCount = i + 1;
        this.mainHeaderRow = i;
        SharedConfig.ProxyInfo currentProxy = ProxyController.getInstance().getCurrentProxy();
        if (this.useProxySettings && currentProxy != null && ProxyController.getInstance().getProxyList().size() > 1) {
            int i2 = this.rowCount;
            int i3 = i2 + 1;
            this.rowCount = i3;
            this.rotationRow = i2;
            if (SharedConfig.proxyRotationEnabled) {
                this.rotationTimeoutRow = i3;
                this.rowCount = i2 + 3;
                this.rotationTimeoutInfoRow = i2 + 2;
            } else {
                this.rotationTimeoutRow = -1;
                this.rotationTimeoutInfoRow = -1;
            }
        } else {
            this.rotationRow = -1;
            this.rotationTimeoutRow = -1;
            this.rotationTimeoutInfoRow = -1;
        }
        int i4 = this.rowCount;
        this.proxyDisableRow = i4;
        this.proxyDisableShadowRow = i4 + 1;
        this.rowCount = i4 + 3;
        this.connectionsHeaderRow = i4 + 2;
        if (z) {
            this.proxyList.clear();
            this.proxyList.addAll(ProxyController.getInstance().getProxyList());
            if (!this.checkedProxies) {
                for (SharedConfig.ProxyInfo proxyInfo : this.proxyList) {
                    if (proxyInfo.checking || proxyInfo.availableCheckTime == 0) {
                        z2 = true;
                        break;
                    }
                }
                if (!z2) {
                    this.checkedProxies = true;
                }
            }
            ProxyController.getInstance().sortProxyList(this.proxyList, z2, ProxyController.getInstance().getCurrentProxy());
        }
        if (!this.proxyList.isEmpty()) {
            int i5 = this.rowCount;
            this.proxyStartRow = i5;
            int size = i5 + this.proxyList.size();
            this.rowCount = size;
            this.proxyEndRow = size;
        } else {
            this.proxyStartRow = -1;
            this.proxyEndRow = -1;
        }
        int i6 = this.rowCount;
        this.proxyAddRow = i6;
        this.rowCount = i6 + 2;
        this.proxyShadowRow = i6 + 1;
        if (this.proxyList.size() >= 10) {
            int i7 = this.rowCount;
            this.rowCount = i7 + 1;
            this.deleteAllRow = i7;
        } else {
            this.deleteAllRow = -1;
        }
        this.refreshActionEnabled = isRefreshActionEnabled();
        if (!z || (listAdapter = this.listAdapter) == null) {
            return;
        }
        listAdapter.notifyDataSetChanged();
    }

    private void reapplyCurrentProxySettings() {
        SharedConfig.ProxyInfo currentProxy = ProxyController.getInstance().getCurrentProxy();
        if (currentProxy != null) {
            ConnectionsManager.setProxySettings(this.useProxySettings, currentProxy.settings);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVisibleCheckCellColors() {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView == null) {
            return;
        }
        recyclerListView.forAllChild(new Consumer() { // from class: org.telegram.ui.ProxyListActivity$$ExternalSyntheticLambda6
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$updateVisibleCheckCellColors$8((View) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateVisibleCheckCellColors$8(View view) {
        if (view instanceof TextCheckCell) {
            TextCheckCell textCheckCell = (TextCheckCell) view;
            if (this.listView.getChildAdapterPosition(view) == this.useProxyRow) {
                textCheckCell.setColors(Theme.key_windowBackgroundCheckText, Theme.key_switchTrackBlue, Theme.key_switchTrackBlueChecked, Theme.key_switchTrackBlueThumb, Theme.key_switchTrackBlueThumbChecked);
                textCheckCell.setBackgroundColor(Theme.getColor(this.useProxySettings ? Theme.key_windowBackgroundChecked : Theme.key_windowBackgroundUnchecked));
            } else {
                textCheckCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onDialogDismiss(Dialog dialog) {
        DownloadController.getInstance(this.currentAccount).checkAutodownloadSettings();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        if (this.listAdapter != null) {
            reloadSettingsFromPreferences();
            updateRows(true);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        boolean z;
        RecyclerListView.Holder holder;
        RecyclerListView.Holder holder2;
        if (i == NotificationCenter.proxyChangedByRotation) {
            this.listView.forAllChild(new Consumer() { // from class: org.telegram.ui.ProxyListActivity$$ExternalSyntheticLambda1
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$didReceivedNotification$9((View) obj);
                }
            });
            updateRows(false);
            return;
        }
        if (i == NotificationCenter.proxySettingsChanged) {
            reloadSettingsFromPreferences();
            ProxyController.getInstance().loadProxyList();
            updateRows(true);
            return;
        }
        if (i == NotificationCenter.didUpdateConnectionState) {
            int connectionState = ConnectionsManager.getInstance(i2).getConnectionState();
            if (this.currentConnectionState != connectionState) {
                this.currentConnectionState = connectionState;
                SharedConfig.ProxyInfo currentProxy = ProxyController.getInstance().getCurrentProxy();
                if (this.listView == null || currentProxy == null) {
                    return;
                }
                int iIndexOf = this.proxyList.indexOf(currentProxy);
                if (iIndexOf >= 0 && (holder2 = (RecyclerListView.Holder) this.listView.findViewHolderForAdapterPosition(iIndexOf + this.proxyStartRow)) != null) {
                    ((TextDetailProxyCell) holder2.itemView).updateStatus();
                }
                if (this.currentConnectionState == 3) {
                    updateRows(true);
                    return;
                }
                return;
            }
            return;
        }
        if (i != NotificationCenter.proxyCheckDone || this.listView == null) {
            return;
        }
        int iIndexOf2 = this.proxyList.indexOf((SharedConfig.ProxyInfo) objArr[0]);
        if (iIndexOf2 >= 0 && (holder = (RecyclerListView.Holder) this.listView.findViewHolderForAdapterPosition(iIndexOf2 + this.proxyStartRow)) != null) {
            ((TextDetailProxyCell) holder.itemView).updateStatus();
        }
        if (this.checkedProxies) {
            z = false;
        } else {
            for (SharedConfig.ProxyInfo proxyInfo : this.proxyList) {
                if (proxyInfo.checking || proxyInfo.availableCheckTime == 0) {
                    z = true;
                    break;
                }
            }
            z = false;
            if (!z) {
                this.checkedProxies = true;
            }
        }
        if (!z) {
            updateRows(true);
        } else {
            updateRefreshActionState(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$9(View view) {
        View view2 = this.listView.getChildViewHolder(view).itemView;
        if (view2 instanceof TextDetailProxyCell) {
            TextDetailProxyCell textDetailProxyCell = (TextDetailProxyCell) view2;
            textDetailProxyCell.setChecked(textDetailProxyCell.currentInfo == ProxyController.getInstance().getCurrentProxy());
            textDetailProxyCell.updateStatus();
        }
    }

    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
            setHasStableIds(true);
        }

        public void toggleSelected(int i) {
            SharedConfig.ProxyInfo proxyAtPosition = ProxyListActivity.this.getProxyAtPosition(i);
            if (proxyAtPosition == null) {
                return;
            }
            boolean zContains = ProxyListActivity.this.selectedItems.contains(proxyAtPosition);
            ProxyListActivity proxyListActivity = ProxyListActivity.this;
            if (zContains) {
                proxyListActivity.selectedItems.remove(proxyAtPosition);
            } else {
                proxyListActivity.selectedItems.add(proxyAtPosition);
            }
            notifyItemChanged(i, 1);
            checkActionMode();
        }

        public void selectForReorder(int i) {
            SharedConfig.ProxyInfo proxyAtPosition = ProxyListActivity.this.getProxyAtPosition(i);
            if (proxyAtPosition == null) {
                return;
            }
            if (ProxyListActivity.this.selectedItems.size() != 1 || !ProxyListActivity.this.selectedItems.contains(proxyAtPosition)) {
                ProxyListActivity.this.selectedItems.clear();
                ProxyListActivity.this.selectedItems.add(proxyAtPosition);
                notifyItemRangeChanged(ProxyListActivity.this.proxyStartRow, ProxyListActivity.this.proxyEndRow - ProxyListActivity.this.proxyStartRow, 1);
            } else {
                notifyItemChanged(i, 1);
            }
            checkActionMode();
        }

        public void clearSelected() {
            ProxyListActivity.this.selectedItems.clear();
            notifyItemRangeChanged(ProxyListActivity.this.proxyStartRow, ProxyListActivity.this.proxyEndRow - ProxyListActivity.this.proxyStartRow, 1);
            checkActionMode();
        }

        private void checkActionMode() {
            int size = ProxyListActivity.this.selectedItems.size();
            boolean zIsActionModeShowed = ((BaseFragment) ProxyListActivity.this).actionBar.isActionModeShowed();
            if (size <= 0) {
                if (zIsActionModeShowed) {
                    ((BaseFragment) ProxyListActivity.this).actionBar.hideActionMode();
                    notifyItemRangeChanged(ProxyListActivity.this.proxyStartRow, ProxyListActivity.this.proxyEndRow - ProxyListActivity.this.proxyStartRow, 2);
                    return;
                }
                return;
            }
            ProxyListActivity.this.selectedCountTextView.setNumber(size, zIsActionModeShowed);
            ProxyListActivity.this.updatePinAction();
            if (zIsActionModeShowed) {
                return;
            }
            ((BaseFragment) ProxyListActivity.this).actionBar.showActionMode();
            notifyItemRangeChanged(ProxyListActivity.this.proxyStartRow, ProxyListActivity.this.proxyEndRow - ProxyListActivity.this.proxyStartRow, 2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ProxyListActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            switch (viewHolder.getItemViewType()) {
                case 1:
                    TextSettingsCell textSettingsCell = (TextSettingsCell) viewHolder.itemView;
                    textSettingsCell.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
                    textSettingsCell.setBetterLayout(i == ProxyListActivity.this.proxyDisableRow);
                    if (i == ProxyListActivity.this.proxyAddRow) {
                        textSettingsCell.setText(LocaleController.getString(C2807R.string.AddProxy), ProxyListActivity.this.deleteAllRow != -1);
                    } else if (i == ProxyListActivity.this.deleteAllRow) {
                        textSettingsCell.setTextColor(Theme.getColor(Theme.key_text_RedRegular));
                        textSettingsCell.setText(LocaleController.getString(C2807R.string.DeleteAllProxies), false);
                    } else if (i == ProxyListActivity.this.proxyDisableRow) {
                        textSettingsCell.setTextAndValue(LocaleController.getString(C2807R.string.ProxyDisableOn), ProxyListActivity.this.getProxyDisableValue(), false);
                    }
                    break;
                case 2:
                    HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                    SimpleTextView textView2 = headerCell.getTextView2();
                    if (textView2 != null) {
                        textView2.setOnClickListener(null);
                        textView2.setBackground(null);
                        textView2.setPadding(0, 0, 0, 0);
                        textView2.setTranslationY(0.0f);
                    }
                    if (i == ProxyListActivity.this.connectionsHeaderRow) {
                        headerCell.setText(LocaleController.getString(C2807R.string.ProxyConnections));
                        headerCell.setText2(LocaleController.getString(ProxyListActivity.this.hasCheckingProxies() ? C2807R.string.Checking : C2807R.string.Refresh));
                        if (textView2 != null) {
                            textView2.setPadding(AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f), 0);
                            textView2.setTranslationY(-AndroidUtilities.dpf2(4.0f));
                            textView2.setBackground(Theme.createSelectorDrawable(Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText3), 0.12f), 7));
                            ProxyListActivity.this.bindRefreshActionView(textView2);
                        }
                    } else if (i == ProxyListActivity.this.mainHeaderRow) {
                        headerCell.setText(LocaleController.getString(C2807R.string.General));
                        headerCell.setText2(null);
                    }
                    break;
                case 3:
                    TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                    if (i == ProxyListActivity.this.rotationRow) {
                        String string = LocaleController.getString(C2807R.string.UseProxyRotation);
                        boolean z = SharedConfig.proxyRotationEnabled;
                        textCheckCell.setTextAndCheck(string, z, z);
                    }
                    break;
                case 4:
                    TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                    if (i == ProxyListActivity.this.rotationTimeoutInfoRow) {
                        textInfoPrivacyCell.setText(LocaleController.getString(C2807R.string.ProxyRotationTimeoutInfo));
                    }
                    break;
                case 5:
                    TextDetailProxyCell textDetailProxyCell = (TextDetailProxyCell) viewHolder.itemView;
                    SharedConfig.ProxyInfo proxyInfo = (SharedConfig.ProxyInfo) ProxyListActivity.this.proxyList.get(i - ProxyListActivity.this.proxyStartRow);
                    textDetailProxyCell.setProxy(proxyInfo);
                    textDetailProxyCell.setChecked(ProxyController.getInstance().getCurrentProxy() == proxyInfo);
                    textDetailProxyCell.setItemSelected(ProxyListActivity.this.selectedItems.contains(ProxyListActivity.this.proxyList.get(i - ProxyListActivity.this.proxyStartRow)), false);
                    textDetailProxyCell.setReorderAvailable(ProxyListActivity.this.canShowReorderHandle(proxyInfo), false);
                    textDetailProxyCell.setSelectionEnabled(!ProxyListActivity.this.selectedItems.isEmpty(), false);
                    break;
                case 6:
                    if (i == ProxyListActivity.this.rotationTimeoutRow) {
                        SlideChooseView slideChooseView = (SlideChooseView) viewHolder.itemView;
                        ArrayList arrayList = new ArrayList(ProxyRotationController.ROTATION_TIMEOUTS);
                        String[] strArr = new String[arrayList.size()];
                        for (int i2 = 0; i2 < arrayList.size(); i2++) {
                            strArr[i2] = LocaleController.formatString(C2807R.string.ProxyRotationTimeoutSeconds, arrayList.get(i2));
                        }
                        slideChooseView.setCallback(new SlideChooseView.Callback() { // from class: org.telegram.ui.ProxyListActivity$ListAdapter$$ExternalSyntheticLambda0
                            @Override // org.telegram.ui.Components.SlideChooseView.Callback
                            public final void onOptionSelected(int i3) {
                                ProxyListActivity.ListAdapter.$r8$lambda$qpOKhu4vpyVJ2fSGHKdC4SSLStA(i3);
                            }
                        });
                        slideChooseView.setOptions(SharedConfig.proxyRotationTimeout, strArr);
                    }
                    break;
                case 7:
                    TextCheckCell textCheckCell2 = (TextCheckCell) viewHolder.itemView;
                    textCheckCell2.setTextAndCheck(LocaleController.getString(C2807R.string.UseProxySettings), ProxyListActivity.this.useProxySettings, false);
                    textCheckCell2.setBackgroundColor(Theme.getColor(ProxyListActivity.this.useProxySettings ? Theme.key_windowBackgroundChecked : Theme.key_windowBackgroundUnchecked));
                    break;
            }
        }

        public static /* synthetic */ void $r8$lambda$qpOKhu4vpyVJ2fSGHKdC4SSLStA(int i) {
            SharedConfig.proxyRotationTimeout = i;
            SharedConfig.saveConfig();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
            if (viewHolder.getItemViewType() == 5 && !list.isEmpty()) {
                TextDetailProxyCell textDetailProxyCell = (TextDetailProxyCell) viewHolder.itemView;
                SharedConfig.ProxyInfo proxyInfo = (SharedConfig.ProxyInfo) ProxyListActivity.this.proxyList.get(i - ProxyListActivity.this.proxyStartRow);
                if (list.contains(1)) {
                    textDetailProxyCell.setItemSelected(ProxyListActivity.this.selectedItems.contains(proxyInfo), true);
                    textDetailProxyCell.setReorderAvailable(ProxyListActivity.this.canShowReorderHandle(proxyInfo), true);
                }
                if (list.contains(2)) {
                    textDetailProxyCell.setReorderAvailable(ProxyListActivity.this.canShowReorderHandle(proxyInfo), true);
                    textDetailProxyCell.setSelectionEnabled(!ProxyListActivity.this.selectedItems.isEmpty(), true);
                    return;
                }
                return;
            }
            if ((viewHolder.getItemViewType() == 3 || viewHolder.getItemViewType() == 7) && list.contains(0)) {
                TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                int i2 = ProxyListActivity.this.useProxyRow;
                ProxyListActivity proxyListActivity = ProxyListActivity.this;
                if (i == i2) {
                    textCheckCell.setChecked(proxyListActivity.useProxySettings);
                    textCheckCell.setBackgroundColorAnimated(ProxyListActivity.this.useProxySettings, Theme.getColor(ProxyListActivity.this.useProxySettings ? Theme.key_windowBackgroundChecked : Theme.key_windowBackgroundUnchecked));
                    return;
                } else {
                    if (i == proxyListActivity.rotationRow) {
                        textCheckCell.setChecked(SharedConfig.proxyRotationEnabled);
                        return;
                    }
                    return;
                }
            }
            super.onBindViewHolder(viewHolder, i, list);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 3 || itemViewType == 7) {
                TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                int adapterPosition = viewHolder.getAdapterPosition();
                int i = ProxyListActivity.this.useProxyRow;
                ProxyListActivity proxyListActivity = ProxyListActivity.this;
                if (adapterPosition == i) {
                    textCheckCell.setChecked(proxyListActivity.useProxySettings);
                    textCheckCell.setBackgroundColor(Theme.getColor(ProxyListActivity.this.useProxySettings ? Theme.key_windowBackgroundChecked : Theme.key_windowBackgroundUnchecked));
                } else if (adapterPosition == proxyListActivity.rotationRow) {
                    textCheckCell.setChecked(SharedConfig.proxyRotationEnabled);
                }
            }
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int adapterPosition = viewHolder.getAdapterPosition();
            if (adapterPosition == ProxyListActivity.this.useProxyRow || adapterPosition == ProxyListActivity.this.proxyDisableRow || adapterPosition == ProxyListActivity.this.rotationRow || adapterPosition == ProxyListActivity.this.proxyAddRow || adapterPosition == ProxyListActivity.this.deleteAllRow) {
                return true;
            }
            return adapterPosition >= ProxyListActivity.this.proxyStartRow && adapterPosition < ProxyListActivity.this.proxyEndRow;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View shadowSectionCell;
            View view;
            if (i == 0) {
                shadowSectionCell = new ShadowSectionCell(this.mContext);
            } else if (i != 1) {
                if (i == 2) {
                    HeaderCell headerCell = new HeaderCell(this.mContext, Theme.key_windowBackgroundWhiteBlueHeader, 21, 6, true);
                    headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    view = headerCell;
                } else if (i == 3) {
                    TextCheckCell textCheckCell = new TextCheckCell(this.mContext);
                    textCheckCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    shadowSectionCell = textCheckCell;
                } else if (i == 4) {
                    shadowSectionCell = new TextInfoPrivacyCell(this.mContext);
                } else if (i == 6) {
                    SlideChooseView slideChooseView = new SlideChooseView(this.mContext);
                    slideChooseView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    shadowSectionCell = slideChooseView;
                } else if (i == 7) {
                    TextCheckCell textCheckCell2 = new TextCheckCell(this.mContext);
                    textCheckCell2.setDrawCheckRipple(true);
                    textCheckCell2.setColors(Theme.key_windowBackgroundCheckText, Theme.key_switchTrackBlue, Theme.key_switchTrackBlueChecked, Theme.key_switchTrackBlueThumb, Theme.key_switchTrackBlueThumbChecked);
                    textCheckCell2.setTypeface(AndroidUtilities.bold());
                    textCheckCell2.setHeight(56);
                    view = textCheckCell2;
                } else {
                    TextDetailProxyCell textDetailProxyCell = ProxyListActivity.this.new TextDetailProxyCell(this.mContext);
                    textDetailProxyCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    shadowSectionCell = textDetailProxyCell;
                }
                shadowSectionCell = view;
            } else {
                TextSettingsCell textSettingsCell = new TextSettingsCell(this.mContext);
                textSettingsCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                shadowSectionCell = textSettingsCell;
            }
            shadowSectionCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(shadowSectionCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            if (i == ProxyListActivity.this.useProxyShadowRow) {
                return -1L;
            }
            if (i == ProxyListActivity.this.proxyShadowRow) {
                return -2L;
            }
            if (i == ProxyListActivity.this.proxyAddRow) {
                return -3L;
            }
            if (i == ProxyListActivity.this.useProxyRow) {
                return -4L;
            }
            if (i == ProxyListActivity.this.mainHeaderRow) {
                return -16L;
            }
            if (i == ProxyListActivity.this.proxyDisableRow) {
                return -12L;
            }
            if (i == ProxyListActivity.this.proxyDisableShadowRow) {
                return -17L;
            }
            if (i == ProxyListActivity.this.connectionsHeaderRow) {
                return -6L;
            }
            if (i == ProxyListActivity.this.deleteAllRow) {
                return -8L;
            }
            if (i == ProxyListActivity.this.rotationRow) {
                return -9L;
            }
            if (i == ProxyListActivity.this.rotationTimeoutRow) {
                return -10L;
            }
            if (i == ProxyListActivity.this.rotationTimeoutInfoRow) {
                return -11L;
            }
            if (i < ProxyListActivity.this.proxyStartRow || i >= ProxyListActivity.this.proxyEndRow) {
                return -7L;
            }
            return ((SharedConfig.ProxyInfo) ProxyListActivity.this.proxyList.get(i - ProxyListActivity.this.proxyStartRow)).hashCode();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == ProxyListActivity.this.useProxyShadowRow || i == ProxyListActivity.this.proxyDisableShadowRow || i == ProxyListActivity.this.proxyShadowRow) {
                return 0;
            }
            if (i == ProxyListActivity.this.proxyAddRow || i == ProxyListActivity.this.deleteAllRow || i == ProxyListActivity.this.proxyDisableRow) {
                return 1;
            }
            if (i == ProxyListActivity.this.useProxyRow) {
                return 7;
            }
            if (i == ProxyListActivity.this.rotationRow) {
                return 3;
            }
            if (i == ProxyListActivity.this.connectionsHeaderRow || i == ProxyListActivity.this.mainHeaderRow) {
                return 2;
            }
            if (i == ProxyListActivity.this.rotationTimeoutRow) {
                return 6;
            }
            return (i < ProxyListActivity.this.proxyStartRow || i >= ProxyListActivity.this.proxyEndRow) ? 4 : 5;
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.ProxyListActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.updateVisibleCheckCellColors();
            }
        };
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        int i = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextSettingsCell.class, TextCheckCell.class, HeaderCell.class, TextDetailProxyCell.class}, null, null, null, i));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_actionBarDefault));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteValueText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextDetailProxyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG | ThemeDescription.FLAG_IMAGECOLOR, new Class[]{TextDetailProxyCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueText6));
        int i3 = Theme.key_windowBackgroundWhiteGrayText2;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG | ThemeDescription.FLAG_IMAGECOLOR, new Class[]{TextDetailProxyCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG | ThemeDescription.FLAG_IMAGECOLOR, new Class[]{TextDetailProxyCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGreenText));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG | ThemeDescription.FLAG_IMAGECOLOR, new Class[]{TextDetailProxyCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_text_RedRegular));
        int i4 = Theme.key_windowBackgroundWhiteGrayText3;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{TextDetailProxyCell.class}, new String[]{"checkImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{TextDetailProxyCell.class}, new String[]{"reorderImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{HeaderCell.class}, new String[]{"textView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{HeaderCell.class}, new String[]{"textView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrack));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackChecked));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        arrayList.add(new ThemeDescription((View) null, 0, (Class[]) null, (String[]) null, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, i));
        arrayList.add(new ThemeDescription((View) null, 0, (Class[]) null, (String[]) null, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, i2));
        arrayList.add(new ThemeDescription((View) null, 0, (Class[]) null, (String[]) null, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundChecked));
        arrayList.add(new ThemeDescription((View) null, 0, (Class[]) null, (String[]) null, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundUnchecked));
        arrayList.add(new ThemeDescription((View) null, 0, (Class[]) null, (String[]) null, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundCheckText));
        arrayList.add(new ThemeDescription((View) null, 0, (Class[]) null, (String[]) null, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_switchTrackBlue));
        arrayList.add(new ThemeDescription((View) null, 0, (Class[]) null, (String[]) null, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_switchTrackBlueChecked));
        arrayList.add(new ThemeDescription((View) null, 0, (Class[]) null, (String[]) null, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_switchTrackBlueThumb));
        arrayList.add(new ThemeDescription((View) null, 0, (Class[]) null, (String[]) null, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_switchTrackBlueThumbChecked));
        return arrayList;
    }
}
