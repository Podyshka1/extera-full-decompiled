package com.exteragram.messenger.utils.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.ui.AccountsUiHelper;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntPredicate;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.LoginActivity;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001&B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0011\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u001b\u0010\u0015\u001a\u00020\u000b2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0007¢\u0006\u0004\b\u0015\u0010\u0016JA\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0018\u001a\u00020\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010$\u001a\u00020#2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020!H\u0007¢\u0006\u0004\b$\u0010%¨\u0006'"}, d2 = {"Lcom/exteragram/messenger/utils/ui/AccountsUiHelper;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Ljava/util/function/IntPredicate;", "filter", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "activated", "(Ljava/util/function/IntPredicate;)Ljava/util/List;", "account", _UrlKt.FRAGMENT_ENCODE_SET, "switchTo", "(I)V", _UrlKt.FRAGMENT_ENCODE_SET, "hasFreeSlot", "()Z", "freeSlotWithinLimit", "()Ljava/lang/Integer;", "Lorg/telegram/ui/ActionBar/BaseFragment;", "fragment", "add", "(Lorg/telegram/ui/ActionBar/BaseFragment;)V", "Landroid/content/Context;", "context", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "resourcesProvider", "selected", "top", "bottom", "Landroid/widget/LinearLayout;", "row", "(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IZZZ)Landroid/widget/LinearLayout;", "Landroid/view/View;", "anchor", "Lcom/exteragram/messenger/utils/ui/AccountsUiHelper$Builder;", "menu", "(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lcom/exteragram/messenger/utils/ui/AccountsUiHelper$Builder;", "Builder", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAccountsUiHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountsUiHelper.kt\ncom/exteragram/messenger/utils/ui/AccountsUiHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,281:1\n777#2:282\n873#2,2:283\n1068#2:285\n*S KotlinDebug\n*F\n+ 1 AccountsUiHelper.kt\ncom/exteragram/messenger/utils/ui/AccountsUiHelper\n*L\n61#1:282\n61#1:283,2\n62#1:285\n*E\n"})
public final class AccountsUiHelper {
    public static final AccountsUiHelper INSTANCE = new AccountsUiHelper();

    @JvmStatic
    @JvmOverloads
    public static final List<Integer> activated() {
        return activated$default(null, 1, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void add() {
        add$default(null, 1, null);
    }

    private AccountsUiHelper() {
    }

    public static /* synthetic */ List activated$default(IntPredicate intPredicate, int i, Object obj) {
        if ((i & 1) != 0) {
            intPredicate = null;
        }
        return activated(intPredicate);
    }

    @JvmStatic
    @JvmOverloads
    public static final List<Integer> activated(IntPredicate filter) {
        IntRange intRangeUntil = RangesKt.until(0, 16);
        ArrayList arrayList = new ArrayList();
        for (Integer num : intRangeUntil) {
            int iIntValue = num.intValue();
            if (UserConfig.getInstance(iIntValue).isClientActivated() && (filter == null || filter.test(iIntValue))) {
                arrayList.add(num);
            }
        }
        return CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.exteragram.messenger.utils.ui.AccountsUiHelper$activated$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Integer.valueOf(UserConfig.getInstance(((Number) t).intValue()).loginTime), Integer.valueOf(UserConfig.getInstance(((Number) t2).intValue()).loginTime));
            }
        });
    }

    @JvmStatic
    public static final void switchTo(int account) {
        LaunchActivity launchActivity = LaunchActivity.instance;
        if (launchActivity != null) {
            launchActivity.switchToAccount(account, true);
        }
    }

    @JvmStatic
    public static final boolean hasFreeSlot() {
        return UserConfig.getActivatedAccountsCount() < 16;
    }

    @JvmStatic
    public static final Integer freeSlotWithinLimit() {
        int i = 0;
        Integer numValueOf = null;
        for (int i2 = 15; -1 < i2; i2--) {
            if (!UserConfig.getInstance(i2).isClientActivated()) {
                i++;
                if (numValueOf == null) {
                    numValueOf = Integer.valueOf(i2);
                }
            }
        }
        if (!UserConfig.hasPremiumOnAccounts()) {
            i -= 8;
        }
        if (i > 0) {
            return numValueOf;
        }
        return null;
    }

    public static /* synthetic */ void add$default(BaseFragment baseFragment, int i, Object obj) {
        if ((i & 1) != 0) {
            baseFragment = null;
        }
        add(baseFragment);
    }

    @JvmStatic
    @JvmOverloads
    public static final void add(BaseFragment fragment) {
        Context context;
        if (fragment == null) {
            fragment = LaunchActivity.getSafeLastFragment();
        }
        BaseFragment baseFragment = fragment;
        Integer numFreeSlotWithinLimit = freeSlotWithinLimit();
        if (numFreeSlotWithinLimit == null) {
            if (UserConfig.hasPremiumOnAccounts() || baseFragment == null || (context = baseFragment.getContext()) == null) {
                return;
            }
            baseFragment.showDialog(new LimitReachedBottomSheet(baseFragment, context, 7, baseFragment.getCurrentAccount(), null));
            return;
        }
        if (baseFragment != null) {
            baseFragment.presentFragment(new LoginActivity(numFreeSlotWithinLimit.intValue()));
            return;
        }
        LaunchActivity launchActivity = LaunchActivity.instance;
        if (launchActivity != null) {
            launchActivity.lambda$runLinkRequest$108(new LoginActivity(numFreeSlotWithinLimit.intValue()));
        }
    }

    @JvmStatic
    public static final LinearLayout row(final Context context, final Theme.ResourcesProvider resourcesProvider, int account, final boolean selected, boolean top, boolean bottom) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        linearLayout.setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), 0, 0));
        UIUtil.applyScaleStateListAnimator(linearLayout, 12.0f, top, bottom, 3, 0.04f, 1.5f);
        TLRPC.User currentUser = UserConfig.getInstance(account).getCurrentUser();
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setInfo(currentUser);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: com.exteragram.messenger.utils.ui.AccountsUiHelper$row$avatarContainer$1
            private final Paint selectedPaint = new Paint(1);

            @Override // android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                Canvas canvas2;
                if (selected) {
                    this.selectedPaint.setStyle(Paint.Style.STROKE);
                    this.selectedPaint.setStrokeWidth(AndroidUtilities.dp(1.33f));
                    this.selectedPaint.setColor(Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider));
                    float avatarCorners$default = ExteraConfig.getAvatarCorners$default(34.0f, false, false, 6, null);
                    float fDp = AndroidUtilities.dp(1.0f);
                    canvas2 = canvas;
                    canvas2.drawRoundRect(fDp, fDp, getWidth() - fDp, getHeight() - fDp, avatarCorners$default, avatarCorners$default, this.selectedPaint);
                } else {
                    canvas2 = canvas;
                }
                super.dispatchDraw(canvas2);
            }
        };
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(34, 34, 16, 12, 0, 0, 0));
        BackupImageView backupImageView = new BackupImageView(context);
        if (selected) {
            backupImageView.setScaleX(0.833f);
            backupImageView.setScaleY(0.833f);
        }
        backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners$default(32.0f, false, false, 6, null));
        backupImageView.getImageReceiver().setCurrentAccount(account);
        backupImageView.setForUserOrChat(currentUser, avatarDrawable);
        frameLayout.addView(backupImageView, LayoutHelper.createLinear(32, 32, 17, 1, 1, 1, 1));
        TextView textView = new TextView(context);
        NotificationCenter.listenEmojiLoading(textView);
        textView.setTextSize(1, 16.0f);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
        textView.setText(Emoji.replaceEmoji(UserObject.getUserName(currentUser), textView.getPaint().getFontMetricsInt(), false));
        textView.setMaxLines(2);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        linearLayout.addView(textView, LayoutHelper.createLinear(0, -2, 1.0f, 16, 13, 0, 14, 0));
        return linearLayout;
    }

    @JvmStatic
    public static final Builder menu(BaseFragment fragment, View anchor) {
        return new Builder(fragment, anchor);
    }

    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u0010\u0010\u0018\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rJ\u0016\u0010\u000e\u001a\u00020\u00002\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fJ\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0016J\b\u0010\u0019\u001a\u00020\tH\u0007J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0010H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0017¨\u0006\u001d"}, d2 = {"Lcom/exteragram/messenger/utils/ui/AccountsUiHelper$Builder;", _UrlKt.FRAGMENT_ENCODE_SET, "fragment", "Lorg/telegram/ui/ActionBar/BaseFragment;", "anchor", "Landroid/view/View;", "<init>", "(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V", "fromBottom", _UrlKt.FRAGMENT_ENCODE_SET, "withAddAccount", "touchRelayView", "onSelected", "Ljava/util/function/IntConsumer;", "extraItems", "Ljava/util/function/Consumer;", "Lorg/telegram/ui/Components/ItemOptions;", "container", "Landroid/view/ViewGroup;", "filter", "Ljava/util/function/IntPredicate;", "gravity", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/lang/Integer;", "touchRelay", "show", "addAccountItem", _UrlKt.FRAGMENT_ENCODE_SET, "options", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nAccountsUiHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountsUiHelper.kt\ncom/exteragram/messenger/utils/ui/AccountsUiHelper$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,281:1\n1#2:282\n1924#3,3:283\n*S KotlinDebug\n*F\n+ 1 AccountsUiHelper.kt\ncom/exteragram/messenger/utils/ui/AccountsUiHelper$Builder\n*L\n244#1:283,3\n*E\n"})
    public static final class Builder {
        private final View anchor;
        private ViewGroup container;
        private Consumer<ItemOptions> extraItems;
        private IntPredicate filter;
        private final BaseFragment fragment;
        private boolean fromBottom;
        private Integer gravity;
        private View touchRelayView;
        private boolean withAddAccount = true;
        private IntConsumer onSelected = new IntConsumer() { // from class: com.exteragram.messenger.utils.ui.AccountsUiHelper$Builder$$ExternalSyntheticLambda0
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                AccountsUiHelper.switchTo(i);
            }
        };

        public Builder(BaseFragment baseFragment, View view) {
            this.fragment = baseFragment;
            this.anchor = view;
        }

        public final Builder fromBottom(boolean fromBottom) {
            this.fromBottom = fromBottom;
            return this;
        }

        public final Builder withAddAccount(boolean withAddAccount) {
            this.withAddAccount = withAddAccount;
            return this;
        }

        public final Builder touchRelay(View touchRelayView) {
            this.touchRelayView = touchRelayView;
            return this;
        }

        public final Builder onSelected(IntConsumer onSelected) {
            this.onSelected = onSelected;
            return this;
        }

        public final Builder extraItems(Consumer<ItemOptions> extraItems) {
            this.extraItems = extraItems;
            return this;
        }

        public final Builder container(ViewGroup container) {
            this.container = container;
            return this;
        }

        public final Builder filter(IntPredicate filter) {
            this.filter = filter;
            return this;
        }

        public final Builder gravity(int gravity) {
            this.gravity = Integer.valueOf(gravity);
            return this;
        }

        @SuppressLint({"ClickableViewAccessibility"})
        public final boolean show() {
            ItemOptions itemOptionsMakeOptions;
            int i;
            boolean z;
            final int i2;
            boolean z2;
            Context context = this.fragment.getContext();
            boolean z3 = false;
            if (context == null) {
                return false;
            }
            Theme.ResourcesProvider resourceProvider = this.fragment.getResourceProvider();
            final int currentAccount = this.fragment.getCurrentAccount();
            List<Integer> listActivated = AccountsUiHelper.activated(this.filter);
            if (this.fromBottom) {
                listActivated = CollectionsKt.asReversed(listActivated);
            }
            List<Integer> list = listActivated;
            ViewGroup viewGroup = this.container;
            if (viewGroup != null) {
                itemOptionsMakeOptions = ItemOptions.makeOptions(viewGroup, resourceProvider, this.anchor, false, this.fromBottom);
            } else {
                itemOptionsMakeOptions = ItemOptions.makeOptions(this.fragment, this.anchor);
            }
            final ItemOptions itemOptions = itemOptionsMakeOptions;
            boolean z4 = this.withAddAccount && AccountsUiHelper.hasFreeSlot();
            if (z4 && !this.fromBottom) {
                addAccountItem(itemOptions);
            }
            Consumer<ItemOptions> consumer = this.extraItems;
            if (consumer != null) {
                consumer.accept(itemOptions);
            }
            if (!list.isEmpty()) {
                View view = this.touchRelayView;
                if (view != null) {
                    view.setOnTouchListener(new View.OnTouchListener() { // from class: com.exteragram.messenger.utils.ui.AccountsUiHelper$Builder$$ExternalSyntheticLambda1
                        @Override // android.view.View.OnTouchListener
                        public final boolean onTouch(View view2, MotionEvent motionEvent) {
                            return AccountsUiHelper.Builder.m3377$r8$lambda$Dwf4dPJfLT3HwNdVPnbmeSLUKs(itemOptions, view2, motionEvent);
                        }
                    });
                }
                boolean z5 = itemOptions.getItemsCount() > 0;
                if (z5) {
                    itemOptions.addGap();
                }
                boolean z6 = z4 && this.fromBottom;
                int i3 = 0;
                for (Object obj : list) {
                    int i4 = i3 + 1;
                    if (i3 < 0) {
                        CollectionsKt.throwIndexOverflow();
                    }
                    int iIntValue = ((Number) obj).intValue();
                    boolean z7 = currentAccount == iIntValue ? true : z3;
                    if (i3 != 0 || z5) {
                        i = iIntValue;
                        z = z3;
                    } else {
                        i = iIntValue;
                        z = true;
                    }
                    if (i3 != list.size() - 1 || z6) {
                        i2 = i;
                        z2 = false;
                    } else {
                        i2 = i;
                        z2 = true;
                    }
                    LinearLayout linearLayoutRow = AccountsUiHelper.row(context, resourceProvider, i2, z7, z, z2);
                    linearLayoutRow.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.utils.ui.AccountsUiHelper$Builder$$ExternalSyntheticLambda2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            AccountsUiHelper.Builder.$r8$lambda$h9dRRfVQILx8exa3dSbVP8YPggc(currentAccount, i2, itemOptions, this, view2);
                        }
                    });
                    itemOptions.addView(linearLayoutRow, LayoutHelper.createLinear(230, 48));
                    i3 = i4;
                    z3 = false;
                }
            }
            if (z4 && this.fromBottom) {
                if (itemOptions.getItemsCount() > 0) {
                    itemOptions.addGap();
                }
                addAccountItem(itemOptions);
            }
            itemOptions.setBlur(true).translate(0.0f, -AndroidUtilities.dp(4.0f)).setDismissOnMoveOutside(true);
            Integer num = this.gravity;
            if (num != null) {
                itemOptions.setGravity(num.intValue());
            }
            if (viewGroup == null) {
                itemOptions.setScrimViewBackground(MainTabsUiHelper.createMainTabsScrimBackground(resourceProvider, this.fromBottom));
            }
            itemOptions.show();
            return true;
        }

        /* JADX INFO: renamed from: $r8$lambda$Dwf4dPJfLT3HwNdVPnbm-eSLUKs, reason: not valid java name */
        public static boolean m3377$r8$lambda$Dwf4dPJfLT3HwNdVPnbmeSLUKs(ItemOptions itemOptions, View view, MotionEvent motionEvent) {
            if (!itemOptions.isShown()) {
                return false;
            }
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            itemOptions.dispatchCapturedTouchEvent(motionEvent);
            return false;
        }

        public static void $r8$lambda$h9dRRfVQILx8exa3dSbVP8YPggc(int i, int i2, ItemOptions itemOptions, Builder builder, View view) {
            if (i != i2) {
                itemOptions.dismiss();
                builder.onSelected.accept(i2);
            }
        }

        private final void addAccountItem(ItemOptions options) {
            options.add(C2807R.drawable.msg_addbot, LocaleController.getString(C2807R.string.AddAccount), new Runnable() { // from class: com.exteragram.messenger.utils.ui.AccountsUiHelper$Builder$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    AccountsUiHelper.add(this.f$0.fragment);
                }
            });
        }
    }
}
