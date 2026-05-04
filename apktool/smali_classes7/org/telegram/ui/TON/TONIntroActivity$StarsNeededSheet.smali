.class public Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/TON/TONIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StarsNeededSheet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private final footerView:Landroid/widget/FrameLayout;

.field private final headerView:Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;

.field private final requiredAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

.field private final topUpButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private whenPurchased:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$LoNCA_zwTduTpaF_fMxKXtoxrlo(Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bQTPZ1AY4PunU0IqOkcZFzCOEJg(Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$veGb-FFGfyv2pfiGpLhJpDmeP0Y(Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;ZLjava/lang/Runnable;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 720
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const p1, 0x3e4ccccd    # 0.2f

    .line 722
    iput p1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    .line 724
    iput-object p5, v0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->whenPurchased:Ljava/lang/Runnable;

    .line 726
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 727
    iget-object p1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 p5, 0x0

    invoke-virtual {p1, p2, p5, p2, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 728
    iget-object p1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p2, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 734
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 735
    invoke-virtual {p1, p5}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 736
    invoke-virtual {p1, p5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 737
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x15e

    .line 738
    invoke-virtual {p1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 739
    iget-object p2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 740
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {p1, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    .line 742
    iput-object p3, v0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->requiredAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    .line 743
    new-instance p1, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;

    iget p2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-direct {p1, v1, p2, v6}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, v0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->headerView:Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;

    .line 745
    iget p2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController;->getBalanceAmount()Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p2

    .line 746
    iget-object v2, p1, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;->titleView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->TonNeededTitle:I

    .line 747
    invoke-virtual {p3}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v4

    invoke-virtual {p2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide p2

    sub-long/2addr v4, p2

    sget-object p2, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {v4, v5, p2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromNano(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asFormatString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, p5

    .line 746
    invoke-static {v3, p3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    iget-object p2, p1, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;->subtitleView:Landroid/widget/TextView;

    sget p3, Lorg/telegram/messenger/R$string;->FragmentAddFunds:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    iget-object p2, p1, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    iget-object p1, p1, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 751
    iget-object p1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 753
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->footerView:Landroid/widget/FrameLayout;

    .line 755
    new-instance p2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, p3, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, v0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->topUpButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v7, 0x14

    const/16 v8, 0x14

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/16 v4, 0x11

    const/16 v5, 0x14

    const/16 v6, 0xa

    .line 756
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p4, :cond_1

    .line 758
    invoke-static {}, Lorg/telegram/ui/TON/TONIntroActivity;->allowTopUp()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 764
    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->Close:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 765
    new-instance p1, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 759
    :cond_1
    :goto_0
    sget p1, Lorg/telegram/messenger/R$string;->TopUpViaFragment:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 760
    new-instance p1, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    :goto_1
    iget-object p1, v0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_2

    .line 771
    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 0

    .line 729
    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 730
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 732
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->onItemClick(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    .line 761
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->TopUpViaFragmentLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrlInSystemBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 766
    invoke-virtual {p0}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->dismiss()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 8

    .line 784
    new-instance v0, Lorg/telegram/ui/Components/UniversalAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;)V

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 5

    .line 663
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starOptionsLoaded:I

    if-eq p1, p2, :cond_0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    if-ne p1, p2, :cond_3

    .line 664
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 665
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 668
    :cond_1
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->getBalanceAmount()Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p1

    .line 669
    iget-object p3, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->headerView:Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;

    iget-object p3, p3, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;->titleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->TonNeededTitle:I

    iget-object v1, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->requiredAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    .line 670
    invoke-virtual {v1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object v3, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromNano(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asFormatString()Ljava/lang/String;

    move-result-object v1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    .line 669
    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    iget-object p2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p2, :cond_2

    .line 672
    invoke-virtual {p0}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 674
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide p1

    iget-object p3, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->requiredAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {p3}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_3

    .line 675
    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->whenPurchased:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 676
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 677
    iput-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->whenPurchased:Ljava/lang/Runnable;

    .line 678
    invoke-virtual {p0}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->dismiss()V

    :cond_3
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 801
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 802
    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->headerView:Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, v0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;->iconView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    :cond_0
    return-void
.end method

.method public dismissInternal()V
    .locals 2

    .line 708
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    .line 709
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starOptionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 710
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 790
    iget-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->headerView:Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    iget-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->footerView:Landroid/widget/FrameLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 777
    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->headerView:Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 778
    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 4

    .line 686
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->getBalanceAmount()Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v0

    .line 687
    invoke-virtual {v0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->requiredAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {v2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 688
    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->whenPurchased:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 689
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 690
    iput-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->whenPurchased:Ljava/lang/Runnable;

    :cond_0
    return-void

    .line 694
    :cond_1
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 695
    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_2

    .line 696
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    .line 697
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 698
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 701
    :cond_2
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 702
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starOptionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 703
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method
