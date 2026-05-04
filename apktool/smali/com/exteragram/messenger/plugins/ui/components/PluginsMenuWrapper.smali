.class public Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GAP_ITEM_HEIGHT:I = 0x8

.field public static final ITEM_HEIGHT:I = 0x30

.field public static final SUBTITLE_ITEM_HEIGHT:I = 0x38


# instance fields
.field private final contextData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final menuItemsContainer:Landroid/widget/LinearLayout;

.field private final menuType:Ljava/lang/String;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public swipeBack:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$LjxvKIbkxoSvTWVTlr0Es11oRoY(Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->lambda$rebuildMenu$1(Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iDYQrAxtslMzgfwRNqpRHtFYMYs(Lorg/telegram/ui/Components/PopupSwipeBackLayout;Landroid/view/View;)V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->closeForeground()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/PopupSwipeBackLayout;Ljava/lang/String;Ljava/util/Map;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Lorg/telegram/ui/Components/PopupSwipeBackLayout;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 60
    invoke-direct/range {v0 .. v6}, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/PopupSwipeBackLayout;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/PopupSwipeBackLayout;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Lorg/telegram/ui/Components/PopupSwipeBackLayout;",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 65
    iput-object p6, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 66
    iput-object p4, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->menuType:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->contextData:Ljava/util/Map;

    .line 69
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    .line 71
    new-instance p4, Landroid/widget/LinearLayout;

    invoke-direct {p4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->swipeBack:Landroid/widget/LinearLayout;

    const/4 p5, 0x1

    .line 72
    invoke-virtual {p4, p5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74
    new-instance p4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v0, 0x0

    invoke-direct {p4, p1, p5, v0, p6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 p6, 0x2c

    .line 75
    invoke-virtual {p4, p6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setItemHeight(I)V

    .line 76
    sget p6, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {p6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p6

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_arrow_back:I

    invoke-virtual {p4, p6, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 77
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getTextView()Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    move-result-object p6

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v2, 0x42200000    # 40.0f

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_0
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-virtual {p6, v1, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 78
    new-instance p6, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper$$ExternalSyntheticLambda1;

    invoke-direct {p6, p2}, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PopupSwipeBackLayout;)V

    invoke-virtual {p4, p6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->swipeBack:Landroid/widget/LinearLayout;

    const/4 p6, -0x1

    const/4 v0, -0x2

    invoke-static {p6, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p6

    invoke-virtual {p2, p4, p6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->createScrollView(Landroid/content/Context;)Landroid/widget/ScrollView;

    move-result-object p2

    .line 82
    new-instance p4, Landroid/widget/LinearLayout;

    invoke-direct {p4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->menuItemsContainer:Landroid/widget/LinearLayout;

    .line 83
    invoke-virtual {p4, p5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 84
    invoke-virtual {p2, p4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 86
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->swipeBack:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    invoke-virtual {p0, p3}, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->rebuildMenu(Ljava/util/List;)V

    return-void
.end method

.method private createGap()Landroid/view/View;
    .locals 3

    .line 183
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 184
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuSeparator:I

    iget-object v2, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method

.method private createScrollView(Landroid/content/Context;)Landroid/widget/ScrollView;
    .locals 1

    .line 149
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper$1;-><init>(Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;Landroid/content/Context;)V

    return-object v0
.end method

.method private synthetic lambda$rebuildMenu$1(Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;Landroid/view/View;)V
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->closeMenu()V

    .line 114
    :try_start_0
    iget-object p1, p1, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->onClickCallback:Lcom/chaquo/python/PyObject;

    iget-object p2, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->contextData:Ljava/util/Map;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 116
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected closeMenu()V
    .locals 0

    return-void
.end method

.method public rebuildMenu(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;",
            ">;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->menuItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p1

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->menuType:Ljava/lang/String;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->contextData:Ljava/util/Map;

    invoke-virtual {p1, v0, v1}, Lcom/exteragram/messenger/plugins/PluginsController;->getMenuItemsForLocation(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->menuItemsContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->createGap()Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;

    if-nez v4, :cond_1

    .line 101
    iget-object v4, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->menuItemsContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->createGap()Landroid/view/View;

    move-result-object v5

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 105
    :cond_1
    iget-object v5, v4, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->text:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 108
    :cond_2
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v6, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v6, v0, v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 109
    iget-object v6, v4, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->text:Ljava/lang/String;

    iget v7, v4, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->iconResId:I

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    const/high16 v6, 0x43440000    # 196.0f

    .line 110
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 111
    new-instance v6, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v4}, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v6, v4, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->subtext:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 122
    iget-object v6, v4, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->subtext:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    const/16 v6, 0x38

    .line 123
    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setItemHeight(I)V

    goto :goto_2

    :cond_3
    const/16 v6, 0x30

    .line 127
    :goto_2
    iget-object v7, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->menuItemsContainer:Landroid/widget/LinearLayout;

    invoke-static {v2, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/2addr v1, v6

    .line 130
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const/high16 p1, 0x43da0000    # 436.0f

    .line 133
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 134
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->menuItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 135
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    if-nez v3, :cond_5

    .line 137
    invoke-static {v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    :cond_5
    if-le v1, p1, :cond_6

    sub-int/2addr v1, p1

    .line 140
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x70

    if-le v1, v2, :cond_6

    .line 141
    iput p1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_3

    .line 143
    :cond_6
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 145
    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
