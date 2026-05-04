.class public Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StarsTransactionsLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;,
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;
    }
.end annotation


# instance fields
.field private final adapter:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;

.field private final bot_id:J

.field private final currentAccount:I

.field private final tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

.field private final ton:Z

.field private final viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZJILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 1264
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1265
    iput p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->currentAccount:I

    .line 1266
    iput-boolean p3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->ton:Z

    .line 1267
    iput-wide p4, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->bot_id:J

    const/4 v8, 0x1

    .line 1269
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1271
    new-instance v9, Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-direct {v9, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    .line 1272
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;-><init>(Landroid/content/Context;IZJILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->adapter:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    const/4 p2, 0x3

    .line 1273
    invoke-virtual {v9, v8, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->createTabsView(ZI)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    .line 1275
    new-instance p3, Landroid/view/View;

    invoke-direct {p3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1276
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {p1, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 p1, 0x30

    const/4 p4, -0x1

    .line 1278
    invoke-static {p4, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1279
    sget p2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr p1, p2

    const/high16 p2, -0x40800000    # -1.0f

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(FF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1280
    invoke-static {p4, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1282
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {p1, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1257
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    if-ne p1, p2, :cond_0

    .line 1258
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->adapter:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->fill()V

    .line 1259
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->fillTabs(Z)V

    :cond_0
    return-void
.end method

.method public getCurrentListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 2

    .line 1300
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 1301
    instance-of v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1302
    :cond_0
    check-cast v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->-$$Nest$fgetlistView(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1287
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->adapter:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->fill()V

    .line 1288
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->fillTabs(Z)V

    .line 1289
    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1290
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1295
    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1296
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method
