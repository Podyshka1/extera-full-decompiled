.class public Lcom/exteragram/messenger/drawer/DrawerMenuView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# static fields
.field private static final COLOR_KEY_BACKGROUND:I

.field private static final COLOR_KEY_DIVIDER:I

.field private static final DIVIDER_HEIGHT_DP:F


# instance fields
.field private final container:Landroid/widget/LinearLayout;

.field private lastGradientColor:I

.field private onItemClick:Ljava/lang/Runnable;

.field private topGradient:Landroid/graphics/LinearGradient;

.field private final topGradientPaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$67DyIkXy74lmoz0FO69Zsh0gCuA(Lcom/exteragram/messenger/drawer/DrawerMenuView;Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuItemInfo;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/drawer/DrawerMenuView;->lambda$rebuildMenu$1(Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8wSkjVV5oylxumaOp4jBAoBRlok(Lcom/exteragram/messenger/drawer/DrawerMenuView;Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuItemInfo;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/drawer/DrawerMenuView;->lambda$rebuildMenu$0(Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuItemInfo;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    sput v0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->DIVIDER_HEIGHT_DP:F

    .line 30
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    sput v0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->COLOR_KEY_DIVIDER:I

    .line 31
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sput v0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->COLOR_KEY_BACKGROUND:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->topGradientPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 44
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->container:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    .line 45
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 p1, 0x41000000    # 8.0f

    .line 46
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr p1, v3

    invoke-virtual {v1, v0, v2, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 47
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-direct {p0}, Lcom/exteragram/messenger/drawer/DrawerMenuView;->updateGradient()V

    return-void
.end method

.method private static createDividerLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 7

    .line 157
    sget v1, Lcom/exteragram/messenger/drawer/DrawerMenuView;->DIVIDER_HEIGHT_DP:F

    const/16 v5, 0xc

    const/16 v6, 0x8

    const/4 v0, -0x1

    const/16 v2, 0x57

    const/16 v3, 0xc

    const/16 v4, 0x8

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$rebuildMenu$0(Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuItemInfo;Landroid/view/View;)V
    .locals 0

    .line 92
    iget-object p2, p0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->onItemClick:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    .line 93
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuItemInfo;->onClick()Ljava/lang/Runnable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 96
    invoke-virtual {p1}, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuItemInfo;->onClick()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$rebuildMenu$1(Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuItemInfo;Landroid/view/View;)Z
    .locals 0

    .line 101
    iget-object p2, p0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->onItemClick:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    .line 102
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuItemInfo;->onLongClick()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    return p1
.end method

.method private updateGradient()V
    .locals 10

    .line 136
    sget v0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->COLOR_KEY_BACKGROUND:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->topGradient:Landroid/graphics/LinearGradient;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->lastGradientColor:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 138
    :cond_1
    :goto_0
    iput v0, p0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->lastGradientColor:I

    .line 139
    new-instance v2, Landroid/graphics/LinearGradient;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v6, v1

    const v1, 0xffffff

    and-int/2addr v1, v0

    filled-new-array {v0, v1}, [I

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->topGradient:Landroid/graphics/LinearGradient;

    .line 140
    iget-object v0, p0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->topGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public clearMenu()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 147
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->topGradientPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 152
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public rebuildMenu(ILorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 11

    .line 61
    invoke-virtual {p0}, Lcom/exteragram/messenger/drawer/DrawerMenuView;->clearMenu()V

    .line 62
    invoke-static {p1, p2}, Lcom/exteragram/messenger/utils/chats/MainMenuHelper;->createMenuContext(ILorg/telegram/ui/ActionBar/BaseFragment;)Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuContext;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 66
    :goto_0
    sget-object v4, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 67
    sget-object v4, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 69
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->DIVIDER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v6, v6, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    if-eqz v2, :cond_5

    move v3, v7

    goto/16 :goto_2

    .line 76
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, p2}, Lcom/exteragram/messenger/utils/chats/MainMenuHelper;->resolveDrawerMenuItems(ILcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuContext;)Ljava/util/List;

    move-result-object v5

    .line 77
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    .line 82
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 83
    sget v3, Lcom/exteragram/messenger/drawer/DrawerMenuView;->COLOR_KEY_DIVIDER:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 84
    iget-object v3, p0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->container:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/exteragram/messenger/drawer/DrawerMenuView;->createDividerLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v3, v0

    .line 88
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuItemInfo;

    .line 89
    new-instance v6, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5}, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuItemInfo;->iconRes()I

    move-result v9

    invoke-virtual {v5}, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuItemInfo;->text()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v8, p1, v9, v10}, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->setMenuItem(IIILjava/lang/CharSequence;)V

    .line 91
    new-instance v8, Lcom/exteragram/messenger/drawer/DrawerMenuView$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v5}, Lcom/exteragram/messenger/drawer/DrawerMenuView$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/drawer/DrawerMenuView;Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuItemInfo;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {v5}, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuItemInfo;->onLongClick()Ljava/lang/Runnable;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 100
    new-instance v8, Lcom/exteragram/messenger/drawer/DrawerMenuView$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v5}, Lcom/exteragram/messenger/drawer/DrawerMenuView$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/drawer/DrawerMenuView;Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuItemInfo;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 108
    :cond_3
    iget-object v5, p0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    move v2, v7

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public setOnItemClick(Ljava/lang/Runnable;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->onItemClick:Ljava/lang/Runnable;

    return-void
.end method

.method public updateColors()V
    .locals 3

    const/4 v0, 0x0

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 126
    instance-of v2, v1, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;

    .line 127
    invoke-virtual {v1}, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->updateColors()V

    goto :goto_1

    .line 129
    :cond_0
    sget v2, Lcom/exteragram/messenger/drawer/DrawerMenuView;->COLOR_KEY_DIVIDER:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/exteragram/messenger/drawer/DrawerMenuView;->updateGradient()V

    return-void
.end method

.method public updateUnreadCounters(I)V
    .locals 3

    const/4 v0, 0x0

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/exteragram/messenger/drawer/DrawerMenuView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 117
    instance-of v2, v1, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;

    .line 118
    invoke-virtual {v1, p1}, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->updateUnreadCounter(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
