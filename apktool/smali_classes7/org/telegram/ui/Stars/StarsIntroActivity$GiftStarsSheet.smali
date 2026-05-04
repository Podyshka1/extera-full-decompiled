.class public Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GiftStarsSheet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$HeaderView;
    }
.end annotation


# instance fields
.field private final BUTTON_EXPAND:I

.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private expanded:Z

.field private final fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

.field private final footerView:Landroid/widget/FrameLayout;

.field private final headerView:Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$HeaderView;

.field private final user:Lorg/telegram/tgnet/TLRPC$User;

.field private final whenPurchased:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$JQHHUHBXKIcBttveLdyZM9htdC8(Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$KGb7ensm6asp7a2svjo9VQbKdjs(Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;Lorg/telegram/ui/Components/UItem;JLjava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->lambda$onItemClick$4(Lorg/telegram/ui/Components/UItem;JLjava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WJi_kBS_c_jgwa6WesPWSvJDBDo(Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XJR9mtiHZI9jRwVOKA2h0N0l6G0(J)V
    .locals 1

    .line 3145
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3147
    invoke-static {p0, p1}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$bUmsqE8-fkQz7-6Mlm5bbiEKF0w(Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->lambda$new$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Runnable;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 3001
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, -0x1

    .line 3085
    iput p1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->BUTTON_EXPAND:I

    .line 3003
    iput-object p3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 3004
    iput-object p4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->whenPurchased:Ljava/lang/Runnable;

    const p2, 0x3e4ccccd    # 0.2f

    .line 3005
    iput p2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    .line 3007
    iget p2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p4, Lorg/telegram/messenger/NotificationCenter;->starGiftOptionsLoaded:I

    invoke-virtual {p2, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3008
    iget p2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p4, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    invoke-virtual {p2, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3010
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 3011
    iget-object p2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 v2, 0x0

    invoke-virtual {p2, p4, v2, p4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 3012
    iget-object p2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p4, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;)V

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 3018
    new-instance p2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 3019
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 3020
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 3021
    sget-object p4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x15e

    .line 3022
    invoke-virtual {p2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 3023
    iget-object p4, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p4, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 3024
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-static {p2, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    .line 3026
    new-instance p2, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$HeaderView;

    iget p4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-direct {p2, v1, p4, v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$HeaderView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->headerView:Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$HeaderView;

    .line 3029
    iget-object p4, p2, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$HeaderView;->titleView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->GiftStarsTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3030
    iget-object p4, p2, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$HeaderView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->GiftStarsSubtitle:I

    .line 3032
    invoke-static {p3}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v2

    invoke-static {v3, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->GiftStarsSubtitleLinkName:I

    .line 3034
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x20

    const/16 v8, 0xa0

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;)V

    invoke-static {v4, v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v3, v7, v2

    const-string v3, " "

    aput-object v3, v7, v5

    const/4 v3, 0x2

    aput-object v4, v7, v3

    .line 3031
    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3030
    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3043
    iget-object p4, p2, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$HeaderView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p2, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$HeaderView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {p4, v3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setMaxWidth(I)V

    .line 3044
    iget-object p4, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p4, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3046
    new-instance p4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 3047
    invoke-virtual {p4, p3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 3048
    iget-object p2, p2, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$HeaderView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 3050
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->footerView:Landroid/widget/FrameLayout;

    .line 3051
    new-instance p3, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {p3, v1, v6}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 p4, 0x41300000    # 11.0f

    .line 3052
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-virtual {p2, v2, v1, v2, p4}, Landroid/view/View;->setPadding(IIII)V

    const/high16 p4, 0x41400000    # 12.0f

    .line 3053
    invoke-virtual {p3, v5, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3054
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {p4, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3055
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {p4, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 3056
    sget p4, Lorg/telegram/messenger/R$string;->StarsTOS:I

    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;)V

    invoke-static {p4, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p4, 0x11

    .line 3059
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setGravity(I)V

    .line 3060
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setMaxWidth(I)V

    const/4 v1, -0x2

    .line 3061
    invoke-static {v1, p1, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3062
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {p3, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3064
    new-instance p2, Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/telegram/ui/Components/FireworksOverlay;-><init>(Landroid/content/Context;)V

    iput-object p2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    .line 3065
    iget-object p3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/high16 p4, -0x40800000    # -1.0f

    invoke-static {p1, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3067
    iget-object p1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_0

    .line 3068
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 0

    .line 3013
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 3014
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 3016
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->onItemClick(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    .line 3035
    new-instance v0, Lorg/telegram/ui/Components/StarAppsSheet;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/StarAppsSheet;-><init>(Landroid/content/Context;)V

    .line 3036
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_0

    .line 3037
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->makeAttached(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 3039
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    .line 3057
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->StarsTOSLink:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onItemClick$4(Lorg/telegram/ui/Components/UItem;JLjava/lang/Boolean;Ljava/lang/String;)V
    .locals 10

    .line 3129
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 3130
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p5, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->whenPurchased:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 3131
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3133
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->dismiss()V

    .line 3134
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 3135
    sget-object v1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v1

    if-nez v0, :cond_3

    goto :goto_0

    .line 3137
    :cond_3
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p4, :cond_5

    .line 3138
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$raw;->stars_send:I

    sget p4, Lorg/telegram/messenger/R$string;->StarsGiftSentPopup:I

    .line 3141
    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-wide p4, p1, Lorg/telegram/ui/Components/UItem;->longValue:J

    long-to-int p1, p4

    iget-object p4, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 3142
    invoke-static {p4}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p4

    new-array p5, v3, [Ljava/lang/Object;

    aput-object p4, p5, v2

    const-string p4, "StarsGiftSentPopupInfo"

    invoke-static {p4, p1, p5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    sget p1, Lorg/telegram/messenger/R$string;->ViewInChat:I

    .line 3143
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$$ExternalSyntheticLambda5;

    invoke-direct {v9, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$$ExternalSyntheticLambda5;-><init>(J)V

    .line 3139
    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/16 p2, 0x1388

    .line 3151
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 3152
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    if-eqz v1, :cond_4

    .line 3154
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    .line 3156
    :cond_4
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Stars/StarsController;->invalidateTransactions(Z)V

    return-void

    :cond_5
    if-eqz p5, :cond_6

    .line 3158
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget p3, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    new-array p4, v3, [Ljava/lang/Object;

    aput-object p5, p4, v2

    invoke-static {p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 8

    .line 3081
    new-instance v0, Lorg/telegram/ui/Components/UniversalAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;)V

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 2969
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starGiftOptionsLoaded:I

    if-eq p1, p2, :cond_0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    if-ne p1, p2, :cond_1

    .line 2970
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 2971
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 3167
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public dismissInternal()V
    .locals 2

    .line 2990
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    .line 2991
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starGiftOptionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2992
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 6

    .line 3088
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->headerView:Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$HeaderView;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3089
    sget p2, Lorg/telegram/messenger/R$string;->TelegramStarsChoose:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3091
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController;->getGiftOptions()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 3092
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    .line 3094
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 3095
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;

    .line 3096
    iget-boolean v5, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->expanded:Z

    if-nez v5, :cond_0

    iget-boolean v5, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->extended:Z

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v3, 0x1

    .line 3100
    invoke-static {v0, v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView$Factory;->asStarTier(IILorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v5

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3102
    :cond_1
    iget-boolean p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->expanded:Z

    if-nez p2, :cond_4

    if-lez v2, :cond_4

    if-eqz p2, :cond_2

    .line 3103
    sget p2, Lorg/telegram/messenger/R$string;->NotifyLessOptions:I

    goto :goto_2

    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->NotifyMoreOptions:I

    :goto_2
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->expanded:Z

    xor-int/2addr v0, v1

    const/4 v1, -0x1

    invoke-static {v1, p2, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$ExpandView$Factory;->asExpand(ILjava/lang/CharSequence;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    const/16 p2, 0x1f

    .line 3106
    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3107
    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3108
    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3110
    :cond_4
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->footerView:Landroid/widget/FrameLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 3074
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->headerView:Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$HeaderView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3075
    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$HeaderView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 6

    .line 3114
    iget v0, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3115
    iget-boolean p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->expanded:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->expanded:Z

    .line 3116
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 3117
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 p2, 0x43480000    # 200.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return-void

    .line 3118
    :cond_0
    const-class p2, Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView$Factory;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UItem;->instanceOf(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 3119
    iget-object p2, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p2, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;

    if-eqz p2, :cond_3

    .line 3120
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_1

    .line 3122
    sget-object p2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    :cond_1
    move-object v1, p2

    if-nez v1, :cond_2

    goto :goto_0

    .line 3127
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 3128
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    iget-object p2, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, p1, v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;Lorg/telegram/ui/Components/UItem;J)V

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController;->buyGift(Landroid/app/Activity;Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;JLorg/telegram/messenger/Utilities$Callback2;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 2978
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 2979
    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    .line 2980
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    .line 2981
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2982
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 2985
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method
