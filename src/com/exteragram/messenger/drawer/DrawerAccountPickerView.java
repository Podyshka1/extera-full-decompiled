package com.exteragram.messenger.drawer;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.content.res.ResourcesCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.api.dto.BadgeDTO;
import com.exteragram.messenger.badges.BadgesController;
import java.util.ArrayList;
import java.util.Collections;
import java.util.function.ToLongFunction;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.SimpleTextView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedEmojiDrawable;
import org.telegram.p029ui.Components.AvatarDrawable;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.CombinedDrawable;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p029ui.Components.Premium.PremiumGradient;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.LoginActivity;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import p022j$.util.Comparator;
import p022j$.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DrawerAccountPickerView extends FrameLayout {
    private final ArrayList accounts;
    private final AccountAdapter adapter;
    private BadgeDTO badgeOverride;
    private final Paint bgPaint;
    private final RectF bgRect;
    private LinearGradient bottomGradient;
    private final Paint bottomGradientPaint;
    private final Paint clipMaskPaint;
    private final FrameLayout clipWrapper;
    private final float cornerRadius;
    private int currentAnimatedHeight;
    private View draggingItemView;
    private ValueAnimator expandAnimator;
    private boolean expanded;
    private final ItemTouchHelper itemTouchHelper;
    private int lastHeight;
    private OnAccountLongClick onAccountLongClick;
    private Runnable onAccountSelected;
    private final RecyclerView recyclerView;
    private LinearGradient topGradient;
    private final Paint topGradientPaint;
    private static final int COLOR_KEY_BACKGROUND = Theme.key_windowBackgroundGray;
    private static final int COLOR_KEY_SELECTOR = Theme.key_listSelector;
    private static final int COLOR_KEY_SURFACE = Theme.key_windowBackgroundWhite;
    private static final int COLOR_KEY_TEXT = Theme.key_windowBackgroundWhiteBlackText;
    private static final int COLOR_KEY_STATUS = Theme.key_profile_verifiedBackground;
    private static final int COLOR_KEY_ACCENT = Theme.key_featuredStickers_addButton;
    private static final int COLOR_KEY_ADD_ICON = Theme.key_featuredStickers_buttonText;

    public interface OnAccountLongClick {
        void onLongClick(int i, View view);
    }

    public DrawerAccountPickerView(Context context) {
        super(context);
        this.accounts = new ArrayList();
        this.bgPaint = new Paint(1);
        Paint paint = new Paint(1);
        this.clipMaskPaint = paint;
        this.bgRect = new RectF();
        this.cornerRadius = AndroidUtilities.m1124dp(16.0f);
        Paint paint2 = new Paint();
        this.topGradientPaint = paint2;
        Paint paint3 = new Paint();
        this.bottomGradientPaint = paint3;
        this.currentAnimatedHeight = -1;
        this.expanded = MessagesController.getGlobalMainSettings().getBoolean("accountsShown", true);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(-16777216);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        PorterDuff.Mode mode = PorterDuff.Mode.DST_OUT;
        paint2.setXfermode(new PorterDuffXfermode(mode));
        paint3.setXfermode(new PorterDuffXfermode(mode));
        FrameLayout frameLayout = new FrameLayout(context) { // from class: com.exteragram.messenger.drawer.DrawerAccountPickerView.1
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                int itemCount = DrawerAccountPickerView.this.adapter.getItemCount();
                int iM1124dp = (int) ((AndroidUtilities.m1124dp(48.0f) * (itemCount <= 6 ? itemCount : 5.5f)) + (AndroidUtilities.m1124dp(4.0f) * 2));
                int size = View.MeasureSpec.getSize(i);
                measureChildren(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(iM1124dp, TLObject.FLAG_30));
                if (DrawerAccountPickerView.this.currentAnimatedHeight >= 0) {
                    setMeasuredDimension(size, DrawerAccountPickerView.this.currentAnimatedHeight);
                    return;
                }
                int size2 = View.MeasureSpec.getSize(i2);
                if (View.MeasureSpec.getMode(i2) == 0 || size2 > iM1124dp) {
                    i2 = View.MeasureSpec.makeMeasureSpec(iM1124dp, Integer.MIN_VALUE);
                }
                super.onMeasure(i, i2);
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                Canvas canvas2;
                DrawerAccountPickerView.this.bgPaint.setColor(Theme.getColor(DrawerAccountPickerView.COLOR_KEY_BACKGROUND));
                DrawerAccountPickerView.this.bgRect.set(0.0f, 0.0f, getWidth(), getHeight());
                canvas.drawRoundRect(DrawerAccountPickerView.this.bgRect, DrawerAccountPickerView.this.cornerRadius, DrawerAccountPickerView.this.cornerRadius, DrawerAccountPickerView.this.bgPaint);
                int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null);
                super.dispatchDraw(canvas);
                if (DrawerAccountPickerView.this.topGradient == null || getHeight() != DrawerAccountPickerView.this.lastHeight) {
                    DrawerAccountPickerView.this.lastHeight = getHeight();
                    DrawerAccountPickerView drawerAccountPickerView = DrawerAccountPickerView.this;
                    Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                    drawerAccountPickerView.topGradient = new LinearGradient(0.0f, 0.0f, 0.0f, AndroidUtilities.m1124dp(16.0f), new int[]{-16777216, 0}, (float[]) null, tileMode);
                    DrawerAccountPickerView.this.topGradientPaint.setShader(DrawerAccountPickerView.this.topGradient);
                    DrawerAccountPickerView.this.bottomGradient = new LinearGradient(0.0f, getHeight(), 0.0f, getHeight() - AndroidUtilities.m1124dp(16.0f), new int[]{-16777216, 0}, (float[]) null, tileMode);
                    DrawerAccountPickerView.this.bottomGradientPaint.setShader(DrawerAccountPickerView.this.bottomGradient);
                }
                int iM1124dp = AndroidUtilities.m1124dp(16.0f);
                int iComputeVerticalScrollOffset = DrawerAccountPickerView.this.recyclerView.computeVerticalScrollOffset();
                int iMax = Math.max(0, (DrawerAccountPickerView.this.recyclerView.computeVerticalScrollRange() - DrawerAccountPickerView.this.recyclerView.computeVerticalScrollExtent()) - iComputeVerticalScrollOffset);
                float f = iM1124dp;
                float fMin = Math.min(1.0f, Math.max(0.0f, iComputeVerticalScrollOffset / f));
                float fMin2 = Math.min(1.0f, iMax / f);
                if (fMin > 0.0f) {
                    DrawerAccountPickerView.this.topGradientPaint.setAlpha((int) (fMin * 255.0f));
                    canvas.drawRect(0.0f, 0.0f, getWidth(), AndroidUtilities.m1124dp(16.0f), DrawerAccountPickerView.this.topGradientPaint);
                }
                if (fMin2 > 0.0f) {
                    DrawerAccountPickerView.this.bottomGradientPaint.setAlpha((int) (fMin2 * 255.0f));
                    canvas2 = canvas;
                    canvas2.drawRect(0.0f, getHeight() - AndroidUtilities.m1124dp(16.0f), getWidth(), getHeight(), DrawerAccountPickerView.this.bottomGradientPaint);
                } else {
                    canvas2 = canvas;
                }
                canvas2.drawRoundRect(DrawerAccountPickerView.this.bgRect, DrawerAccountPickerView.this.cornerRadius, DrawerAccountPickerView.this.cornerRadius, DrawerAccountPickerView.this.clipMaskPaint);
                canvas2.restoreToCount(iSaveLayer);
            }
        };
        this.clipWrapper = frameLayout;
        frameLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: com.exteragram.messenger.drawer.DrawerAccountPickerView.2
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), DrawerAccountPickerView.this.cornerRadius);
            }
        });
        frameLayout.setClipToOutline(true);
        addView(frameLayout, LayoutHelper.createFrame(-1, 0.0f, 48, 12.0f, 0.0f, 12.0f, 0.0f));
        AccountAdapter accountAdapter = new AccountAdapter();
        this.adapter = accountAdapter;
        RecyclerView recyclerView = new RecyclerView(context);
        this.recyclerView = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(context));
        recyclerView.setAdapter(accountAdapter);
        final int iM1124dp = AndroidUtilities.m1124dp(4.0f);
        recyclerView.setPadding(iM1124dp, iM1124dp, iM1124dp, iM1124dp);
        recyclerView.setClipToPadding(false);
        recyclerView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.exteragram.messenger.drawer.DrawerAccountPickerView.3
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView2, RecyclerView.State state) {
                int childAdapterPosition = recyclerView2.getChildAdapterPosition(view);
                int itemCount = state.getItemCount();
                if (childAdapterPosition < 0 || childAdapterPosition >= itemCount - 1) {
                    return;
                }
                rect.bottom = iM1124dp;
            }
        });
        recyclerView.setOverScrollMode(2);
        recyclerView.setVerticalScrollBarEnabled(false);
        recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.exteragram.messenger.drawer.DrawerAccountPickerView.4
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView2, int i, int i2) {
                DrawerAccountPickerView.this.clipWrapper.invalidate();
            }
        });
        frameLayout.addView(recyclerView, LayoutHelper.createFrame(-1, -2.0f));
        final RecyclerView.ChildDrawingOrderCallback childDrawingOrderCallback = new RecyclerView.ChildDrawingOrderCallback() { // from class: com.exteragram.messenger.drawer.DrawerAccountPickerView$$ExternalSyntheticLambda1
            @Override // androidx.recyclerview.widget.RecyclerView.ChildDrawingOrderCallback
            public final int onGetChildDrawingOrder(int i, int i2) {
                return this.f$0.lambda$new$0(i, i2);
            }
        };
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new ItemTouchHelper.Callback() { // from class: com.exteragram.messenger.drawer.DrawerAccountPickerView.5
            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public boolean isLongPressDragEnabled() {
                return false;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public int getMovementFlags(RecyclerView recyclerView2, RecyclerView.ViewHolder viewHolder) {
                if (viewHolder.getAdapterPosition() >= DrawerAccountPickerView.this.accounts.size()) {
                    return 0;
                }
                return ItemTouchHelper.Callback.makeMovementFlags(3, 0);
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public boolean onMove(RecyclerView recyclerView2, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
                int adapterPosition = viewHolder.getAdapterPosition();
                int adapterPosition2 = viewHolder2.getAdapterPosition();
                if (adapterPosition >= DrawerAccountPickerView.this.accounts.size() || adapterPosition2 >= DrawerAccountPickerView.this.accounts.size()) {
                    return false;
                }
                DrawerAccountPickerView.this.adapter.swapElements(adapterPosition, adapterPosition2);
                return true;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
                if (i != 2 || viewHolder == null) {
                    return;
                }
                DrawerAccountPickerView.this.draggingItemView = viewHolder.itemView;
                DrawerAccountPickerView.this.draggingItemView.setPressed(false);
                DrawerAccountPickerView.this.draggingItemView.jumpDrawablesToCurrentState();
                DrawerAccountPickerView.this.recyclerView.setChildDrawingOrderCallback(childDrawingOrderCallback);
                DrawerAccountPickerView.this.recyclerView.invalidate();
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onChildDraw(Canvas canvas, RecyclerView recyclerView2, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
                viewHolder.itemView.setTranslationX(f);
                viewHolder.itemView.setTranslationY(f2);
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void clearView(RecyclerView recyclerView2, RecyclerView.ViewHolder viewHolder) {
                viewHolder.itemView.setTranslationX(0.0f);
                viewHolder.itemView.setTranslationY(0.0f);
                viewHolder.itemView.setPressed(false);
                if (DrawerAccountPickerView.this.draggingItemView == viewHolder.itemView) {
                    DrawerAccountPickerView.this.draggingItemView = null;
                }
                recyclerView2.setChildDrawingOrderCallback(null);
                recyclerView2.invalidate();
            }
        });
        this.itemTouchHelper = itemTouchHelper;
        itemTouchHelper.attachToRecyclerView(recyclerView);
        if (this.expanded) {
            loadAccounts();
            setVisibility(0);
            ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
            layoutParams.height = -2;
            frameLayout.setLayoutParams(layoutParams);
            return;
        }
        setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int lambda$new$0(int i, int i2) {
        int iIndexOfChild;
        View view = this.draggingItemView;
        if (view != null && (iIndexOfChild = this.recyclerView.indexOfChild(view)) >= 0) {
            if (i2 == i - 1) {
                return iIndexOfChild;
            }
            if (i2 >= iIndexOfChild) {
                return i2 + 1;
            }
        }
        return i2;
    }

    public void setOnAccountSelected(Runnable runnable) {
        this.onAccountSelected = runnable;
    }

    public void setOnAccountLongClick(OnAccountLongClick onAccountLongClick) {
        this.onAccountLongClick = onAccountLongClick;
    }

    public void loadAccounts() {
        loadAccounts(null);
    }

    public void loadAccounts(BadgeDTO badgeDTO) {
        this.badgeOverride = badgeDTO;
        this.accounts.clear();
        for (int i = 0; i < 16; i++) {
            if (UserConfig.getInstance(i).isClientActivated()) {
                this.accounts.add(Integer.valueOf(i));
            }
        }
        List.EL.sort(this.accounts, Comparator.CC.comparingLong(new ToLongFunction() { // from class: com.exteragram.messenger.drawer.DrawerAccountPickerView$$ExternalSyntheticLambda2
            /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
                jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 long, still in use, count: 1, list:
                  (r0v0 long) from 0x0006: RETURN (r0v0 long)
                	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
                	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
                	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:91)
                	at jadx.core.utils.InsnRemover.addAndUnbind(InsnRemover.java:57)
                	at jadx.core.dex.visitors.ModVisitor.removeStep(ModVisitor.java:468)
                	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:97)
                */
            @Override // java.util.function.ToLongFunction
            public final long applyAsLong(java.lang.Object r3) {
                /*
                    r2 = this;
                    java.lang.Integer r3 = (java.lang.Integer) r3
                    long r0 = com.exteragram.messenger.drawer.DrawerAccountPickerView.$r8$lambda$yjWCo34d2ZmtiGQ94EotqdxDScQ(r3)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.exteragram.messenger.drawer.DrawerAccountPickerView$$ExternalSyntheticLambda2.applyAsLong(java.lang.Object):long");
            }
        }));
        this.adapter.notifyDataSetChanged();
    }

    public void toggleExpand() {
        setExpanded(!this.expanded);
    }

    public boolean isExpanded() {
        return this.expanded;
    }

    public void setExpanded(boolean z) {
        if (this.expanded == z) {
            return;
        }
        this.expanded = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean("accountsShown", z).apply();
        if (z) {
            loadAccounts();
            setVisibility(0);
        }
        int itemCount = this.adapter.getItemCount();
        this.clipWrapper.measure(View.MeasureSpec.makeMeasureSpec(((View) getParent()).getMeasuredWidth() - AndroidUtilities.m1124dp(24.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((int) ((AndroidUtilities.m1124dp(48.0f) * (itemCount <= 6 ? itemCount : 5.5f)) + (AndroidUtilities.m1124dp(4.0f) * 2)), Integer.MIN_VALUE));
        int measuredHeight = z ? this.clipWrapper.getMeasuredHeight() : 0;
        int measuredHeight2 = this.clipWrapper.getLayoutParams().height;
        if (measuredHeight2 < 0) {
            measuredHeight2 = this.clipWrapper.getHeight();
        }
        if (measuredHeight2 < 0) {
            measuredHeight2 = z ? 0 : this.clipWrapper.getMeasuredHeight();
        }
        ValueAnimator valueAnimator = this.expandAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(measuredHeight2, measuredHeight);
        this.expandAnimator = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(250L);
        valueAnimatorOfInt.setInterpolator(CubicBezierInterpolator.DEFAULT);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.drawer.DrawerAccountPickerView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$setExpanded$2(valueAnimator2);
            }
        });
        valueAnimatorOfInt.addListener(new AnimatorListenerAdapter() { // from class: com.exteragram.messenger.drawer.DrawerAccountPickerView.6
            private boolean cancelled;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.cancelled = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (this.cancelled || DrawerAccountPickerView.this.expandAnimator != animator) {
                    return;
                }
                DrawerAccountPickerView.this.expandAnimator = null;
                DrawerAccountPickerView.this.currentAnimatedHeight = -1;
                if (!DrawerAccountPickerView.this.expanded) {
                    DrawerAccountPickerView.this.setVisibility(8);
                    return;
                }
                ViewGroup.LayoutParams layoutParams = DrawerAccountPickerView.this.clipWrapper.getLayoutParams();
                layoutParams.height = -2;
                DrawerAccountPickerView.this.clipWrapper.setLayoutParams(layoutParams);
            }
        });
        valueAnimatorOfInt.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setExpanded$2(ValueAnimator valueAnimator) {
        this.currentAnimatedHeight = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.clipWrapper.requestLayout();
    }

    public void updateColors() {
        this.bgPaint.setColor(Theme.getColor(COLOR_KEY_BACKGROUND));
        invalidate();
        this.adapter.notifyDataSetChanged();
    }

    public void updateUnreadCounters() {
        if (this.recyclerView.getChildCount() == 0) {
            return;
        }
        for (int i = 0; i < this.recyclerView.getChildCount(); i++) {
            View childAt = this.recyclerView.getChildAt(i);
            if (childAt instanceof AccountRowView) {
                ((AccountRowView) childAt).updateUnreadCounter();
            }
        }
    }

    public void dispose() {
        ValueAnimator valueAnimator = this.expandAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.expandAnimator = null;
        }
        this.draggingItemView = null;
        this.recyclerView.setChildDrawingOrderCallback(null);
        this.recyclerView.stopScroll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAddAccountFlow() {
        BaseFragment safeLastFragment;
        Activity activityFindActivity = AndroidUtilities.findActivity(getContext());
        LaunchActivity launchActivity = activityFindActivity instanceof LaunchActivity ? (LaunchActivity) activityFindActivity : LaunchActivity.instance;
        if (launchActivity == null) {
            return;
        }
        Integer availableAccountForAdd = getAvailableAccountForAdd();
        if (availableAccountForAdd != null) {
            launchActivity.lambda$runLinkRequest$106(new LoginActivity(availableAccountForAdd.intValue()));
        } else {
            if (UserConfig.hasPremiumOnAccounts() || (safeLastFragment = LaunchActivity.getSafeLastFragment()) == null) {
                return;
            }
            safeLastFragment.showDialog(new LimitReachedBottomSheet(safeLastFragment, launchActivity, 7, safeLastFragment.getCurrentAccount(), null));
        }
    }

    private int freeAccountsForAdd() {
        int i = 0;
        for (int i2 = 0; i2 < 16; i2++) {
            if (!UserConfig.getInstance(i2).isClientActivated()) {
                i++;
            }
        }
        return !UserConfig.hasPremiumOnAccounts() ? i - 8 : i;
    }

    private Integer getAvailableAccountForAdd() {
        if (freeAccountsForAdd() <= 0) {
            return null;
        }
        for (int i = 15; i >= 0; i--) {
            if (!UserConfig.getInstance(i).isClientActivated()) {
                return Integer.valueOf(i);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean canAddAccount() {
        return getAvailableAccountForAdd() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Drawable createAccountItemRippleDrawable() {
        return Theme.createRadSelectorDrawable(Theme.getColor(COLOR_KEY_SELECTOR), 12, 12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Drawable createSelectedAccountBackgroundDrawable() {
        return Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(12.0f), Theme.getColor(COLOR_KEY_SURFACE), Theme.getColor(COLOR_KEY_SELECTOR));
    }

    /* JADX INFO: Access modifiers changed from: private */
    class AccountAdapter extends RecyclerView.Adapter {
        private AccountAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i < DrawerAccountPickerView.this.accounts.size() ? 0 : 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return DrawerAccountPickerView.this.accounts.size() + (DrawerAccountPickerView.this.canAddAccount() ? 1 : 0);
        }

        public void swapElements(int i, int i2) {
            if (i < 0 || i2 < 0 || i >= DrawerAccountPickerView.this.accounts.size() || i2 >= DrawerAccountPickerView.this.accounts.size()) {
                return;
            }
            UserConfig userConfig = UserConfig.getInstance(((Integer) DrawerAccountPickerView.this.accounts.get(i)).intValue());
            UserConfig userConfig2 = UserConfig.getInstance(((Integer) DrawerAccountPickerView.this.accounts.get(i2)).intValue());
            int i3 = userConfig.loginTime;
            userConfig.loginTime = userConfig2.loginTime;
            userConfig2.loginTime = i3;
            userConfig.saveConfig(false);
            userConfig2.saveConfig(false);
            Collections.swap(DrawerAccountPickerView.this.accounts, i, i2);
            notifyItemMoved(i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 1) {
                return new RecyclerView.ViewHolder(new AddAccountView(viewGroup.getContext())) { // from class: com.exteragram.messenger.drawer.DrawerAccountPickerView.AccountAdapter.1
                };
            }
            return new RecyclerView.ViewHolder(new AccountRowView(viewGroup.getContext())) { // from class: com.exteragram.messenger.drawer.DrawerAccountPickerView.AccountAdapter.2
            };
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int itemViewType = getItemViewType(i);
            if (itemViewType == 0) {
                bindAccountViewHolder(viewHolder, i);
            } else {
                if (itemViewType != 1) {
                    return;
                }
                bindAddAccountViewHolder(viewHolder);
            }
        }

        private void bindAccountViewHolder(final RecyclerView.ViewHolder viewHolder, int i) {
            View view = viewHolder.itemView;
            if (view instanceof AccountRowView) {
                AccountRowView accountRowView = (AccountRowView) view;
                final Integer num = (Integer) DrawerAccountPickerView.this.accounts.get(i);
                accountRowView.bind(num.intValue(), num.intValue() == UserConfig.selectedAccount ? DrawerAccountPickerView.this.badgeOverride : null);
                accountRowView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.drawer.DrawerAccountPickerView$AccountAdapter$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$bindAccountViewHolder$0(num, view2);
                    }
                });
                accountRowView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.exteragram.messenger.drawer.DrawerAccountPickerView$AccountAdapter$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view2) {
                        return this.f$0.lambda$bindAccountViewHolder$1(num, viewHolder, view2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$bindAccountViewHolder$0(Integer num, View view) {
            if (num.intValue() != UserConfig.selectedAccount) {
                if (DrawerAccountPickerView.this.onAccountSelected != null) {
                    DrawerAccountPickerView.this.onAccountSelected.run();
                }
                Context context = DrawerAccountPickerView.this.getContext();
                if (context instanceof LaunchActivity) {
                    ((LaunchActivity) context).switchToAccount(num.intValue(), true);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$bindAccountViewHolder$1(Integer num, RecyclerView.ViewHolder viewHolder, View view) {
            if (num.intValue() == UserConfig.selectedAccount) {
                DrawerAccountPickerView.this.itemTouchHelper.startDrag(viewHolder);
                return true;
            }
            if (DrawerAccountPickerView.this.onAccountLongClick == null) {
                return true;
            }
            DrawerAccountPickerView.this.onAccountLongClick.onLongClick(num.intValue(), view);
            return true;
        }

        private void bindAddAccountViewHolder(RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (view instanceof AddAccountView) {
                ((AddAccountView) view).updateColors();
            }
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.drawer.DrawerAccountPickerView$AccountAdapter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$bindAddAccountViewHolder$2(view2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$bindAddAccountViewHolder$2(View view) {
            if (DrawerAccountPickerView.this.onAccountSelected != null) {
                DrawerAccountPickerView.this.onAccountSelected.run();
            }
            final DrawerAccountPickerView drawerAccountPickerView = DrawerAccountPickerView.this;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.drawer.DrawerAccountPickerView$AccountAdapter$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    drawerAccountPickerView.openAddAccountFlow();
                }
            }, 150L);
        }
    }

    private static class AccountRowView extends FrameLayout {
        private final AvatarDrawable avatarDrawable;
        private final RectF avatarRect;
        private final BackupImageView avatarView;
        private final Paint checkPaint;
        private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable exteraBadgeDrawable;
        private final SimpleTextView nameView;
        private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable premiumStatusDrawable;
        private boolean selected;
        private final DrawerAccountUnreadBadge unreadBadge;

        AccountRowView(Context context) {
            super(context);
            Paint paint = new Paint(1);
            this.checkPaint = paint;
            this.avatarRect = new RectF();
            setWillNotDraw(false);
            setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m1124dp(44.0f)));
            setBackground(DrawerAccountPickerView.createAccountItemRippleDrawable());
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            this.avatarDrawable = avatarDrawable;
            avatarDrawable.setTextSize(AndroidUtilities.m1124dp(20.0f));
            BackupImageView backupImageView = new BackupImageView(context);
            this.avatarView = backupImageView;
            updateAvatarRadius();
            addView(backupImageView, LayoutHelper.createFrame(34, 34.0f, 19, 8.0f, 0.0f, 0.0f, 0.0f));
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.nameView = simpleTextView;
            simpleTextView.setTextSize(15);
            simpleTextView.setTypeface(AndroidUtilities.bold());
            simpleTextView.setTextColor(Theme.getColor(DrawerAccountPickerView.COLOR_KEY_TEXT));
            simpleTextView.setGravity(19);
            simpleTextView.setEllipsizeByGradient(true);
            simpleTextView.setCanHideRightDrawable(false);
            simpleTextView.setRightDrawableOutside(true);
            addView(simpleTextView, LayoutHelper.createFrame(-1, -1.0f, 3, 54.0f, 0.0f, 12.0f, 0.0f));
            this.premiumStatusDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(simpleTextView, AndroidUtilities.m1124dp(18.0f));
            this.exteraBadgeDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(simpleTextView, AndroidUtilities.m1124dp(18.0f));
            this.unreadBadge = new DrawerAccountUnreadBadge();
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(AndroidUtilities.m1124dp(1.67f));
            paint.setStrokeCap(Paint.Cap.ROUND);
            paint.setStrokeJoin(Paint.Join.ROUND);
        }

        void bind(int i, BadgeDTO badgeDTO) {
            Drawable drawable;
            TLRPC.User currentUser = UserConfig.getInstance(i).getCurrentUser();
            if (currentUser == null) {
                return;
            }
            updateAvatarRadius();
            this.avatarDrawable.setInfo(i, currentUser);
            this.nameView.setTextColor(Theme.getColor(DrawerAccountPickerView.COLOR_KEY_TEXT));
            this.nameView.setText(ContactsController.formatName(currentUser.first_name, currentUser.last_name));
            this.avatarView.getImageReceiver().setCurrentAccount(i);
            this.avatarView.setForUserOrChat(currentUser, this.avatarDrawable);
            this.premiumStatusDrawable.setCurrentAccount(i);
            this.exteraBadgeDrawable.setCurrentAccount(i);
            int color = Theme.getColor(DrawerAccountPickerView.COLOR_KEY_STATUS);
            long emojiStatusDocumentId = DialogObject.getEmojiStatusDocumentId(currentUser.emoji_status);
            boolean zIsPremiumUser = MessagesController.getInstance(i).isPremiumUser(currentUser);
            if (badgeDTO == null) {
                badgeDTO = BadgesController.INSTANCE.getBadge(currentUser);
            }
            Drawable drawable2 = null;
            if (emojiStatusDocumentId != 0) {
                this.premiumStatusDrawable.set(emojiStatusDocumentId, false);
                drawable = this.premiumStatusDrawable;
            } else if (zIsPremiumUser) {
                this.premiumStatusDrawable.set(PremiumGradient.getInstance().premiumStarDrawableMini, false);
                drawable = this.premiumStatusDrawable;
            } else {
                this.premiumStatusDrawable.set((Drawable) null, false);
                drawable = null;
            }
            this.premiumStatusDrawable.setColor(Integer.valueOf(color));
            this.premiumStatusDrawable.setParticles(DialogObject.isEmojiStatusCollectible(currentUser.emoji_status), false);
            Drawable drawableUpdateBadgeDrawable = updateBadgeDrawable(badgeDTO, color);
            if (drawableUpdateBadgeDrawable != null) {
                if (drawable != null) {
                    drawable2 = drawableUpdateBadgeDrawable;
                } else {
                    drawable = drawableUpdateBadgeDrawable;
                }
            }
            applyNameDrawables(drawable, drawable2);
            this.unreadBadge.bind(i, this.nameView);
            this.checkPaint.setColor(Theme.getColor(DrawerAccountPickerView.COLOR_KEY_ACCENT));
            boolean z = i == UserConfig.selectedAccount;
            this.selected = z;
            float f = z ? 0.785f : 1.0f;
            this.avatarView.setScaleX(f);
            this.avatarView.setScaleY(f);
            setBackground(this.selected ? DrawerAccountPickerView.createSelectedAccountBackgroundDrawable() : DrawerAccountPickerView.createAccountItemRippleDrawable());
            setPadding(0, 0, 0, 0);
            invalidate();
        }

        private void updateAvatarRadius() {
            this.avatarView.setRoundRadius(ExteraConfig.getAvatarCorners(34.0f));
        }

        void updateUnreadCounter() {
            this.unreadBadge.update(this.nameView);
            invalidate();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.premiumStatusDrawable.attach();
            this.exteraBadgeDrawable.attach();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.premiumStatusDrawable.detach();
            this.exteraBadgeDrawable.detach();
        }

        private Drawable updateBadgeDrawable(BadgeDTO badgeDTO, int i) {
            if (badgeDTO == null) {
                clearBadgeDrawables();
                return null;
            }
            this.exteraBadgeDrawable.set(badgeDTO.getDocumentId(), false);
            this.exteraBadgeDrawable.setParticles(true, false);
            this.exteraBadgeDrawable.setColor(Integer.valueOf(i));
            return this.exteraBadgeDrawable;
        }

        private void clearBadgeDrawables() {
            this.exteraBadgeDrawable.set((Drawable) null, false);
            this.exteraBadgeDrawable.setParticles(false, false);
            this.exteraBadgeDrawable.setColor(null);
        }

        private void applyNameDrawables(Drawable drawable, Drawable drawable2) {
            if (drawable != null && drawable == this.nameView.getRightDrawable2()) {
                this.nameView.setRightDrawable2(null);
            }
            this.nameView.setRightDrawable(drawable);
            this.nameView.setRightDrawable2(drawable2);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            this.unreadBadge.draw(this, canvas);
            if (this.selected) {
                float strokeWidth = this.checkPaint.getStrokeWidth() / 2.0f;
                this.avatarRect.set(this.avatarView.getLeft() + strokeWidth, this.avatarView.getTop() + strokeWidth, this.avatarView.getRight() - strokeWidth, this.avatarView.getBottom() - strokeWidth);
                float avatarCorners = ExteraConfig.getAvatarCorners(34.0f);
                canvas.drawRoundRect(this.avatarRect, avatarCorners, avatarCorners, this.checkPaint);
            }
        }
    }

    private static class AddAccountView extends LinearLayout {
        private final Drawable circleDrawable;
        private final Drawable plusDrawable;
        private final SimpleTextView textView;

        AddAccountView(Context context) {
            super(context);
            setOrientation(0);
            setGravity(16);
            setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m1124dp(44.0f)));
            ImageView imageView = new ImageView(context);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            Drawable drawable = ResourcesCompat.getDrawable(context.getResources(), C2888R.drawable.poll_add_circle, null);
            this.circleDrawable = drawable;
            Drawable drawable2 = ResourcesCompat.getDrawable(context.getResources(), C2888R.drawable.poll_add_plus, null);
            this.plusDrawable = drawable2;
            if (drawable != null) {
                drawable.mutate();
            }
            if (drawable2 != null) {
                drawable2.mutate();
            }
            CombinedDrawable combinedDrawable = new CombinedDrawable(drawable, drawable2) { // from class: com.exteragram.messenger.drawer.DrawerAccountPickerView.AddAccountView.1
                @Override // org.telegram.p029ui.Components.CombinedDrawable, android.graphics.drawable.Drawable
                public void setColorFilter(ColorFilter colorFilter) {
                }
            };
            combinedDrawable.setCustomSize(AndroidUtilities.m1124dp(24.0f), AndroidUtilities.m1124dp(24.0f));
            imageView.setImageDrawable(combinedDrawable);
            addView(imageView, LayoutHelper.createLinear(34, 34, 16, 8, 0, 0, 0));
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.textView = simpleTextView;
            simpleTextView.setTextSize(15);
            simpleTextView.setTypeface(AndroidUtilities.bold());
            simpleTextView.setGravity(19);
            simpleTextView.setText(LocaleController.getString(C2888R.string.AddAccount));
            addView(simpleTextView, LayoutHelper.createLinear(-2, -1, 16, 12, 0, 12, 0));
            updateColors();
        }

        void updateColors() {
            setBackground(DrawerAccountPickerView.createAccountItemRippleDrawable());
            Drawable drawable = this.circleDrawable;
            if (drawable != null) {
                drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(DrawerAccountPickerView.COLOR_KEY_ACCENT), PorterDuff.Mode.SRC_IN));
            }
            Drawable drawable2 = this.plusDrawable;
            if (drawable2 != null) {
                drawable2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(DrawerAccountPickerView.COLOR_KEY_ADD_ICON), PorterDuff.Mode.SRC_IN));
            }
            this.textView.setTextColor(Theme.getColor(DrawerAccountPickerView.COLOR_KEY_TEXT));
        }
    }
}
