.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$EmptyLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyLayout"
.end annotation


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$khXgd90JCalItjECRACAFqJGDZY(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 2487
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2458
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 2460
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2462
    new-instance v4, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 2463
    new-instance v5, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v6, Lorg/telegram/messenger/R$raw;->utyan_empty:I

    const/high16 v7, 0x42f00000    # 120.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const-string v9, "utyan_empty"

    invoke-direct {v5, v6, v9, v8, v7}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v10, 0x78

    const/16 v11, 0x78

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v14, 0x1b

    .line 2464
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2466
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x41880000    # 17.0f

    .line 2467
    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2468
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2469
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2470
    sget v6, Lorg/telegram/messenger/R$string;->SearchMessagesFilterEmptyTitle:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x11

    .line 2471
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v12, 0x0

    const/16 v13, 0x9

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    .line 2472
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2474
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$EmptyLayout;->textView:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    .line 2475
    invoke-virtual {v4, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2476
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$EmptyLayout;->textView:Landroid/widget/TextView;

    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2477
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$EmptyLayout;->textView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->SearchMessagesFilterEmptyText:I

    new-array v8, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, ""

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2478
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$EmptyLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 2479
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$EmptyLayout;->textView:Landroid/widget/TextView;

    const/16 v16, 0xe

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2481
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 2482
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v5, v8, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2483
    invoke-virtual {v4, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2484
    sget v1, Lorg/telegram/messenger/R$string;->SearchMessagesFilterEmptySearchAll:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2485
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2486
    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const v2, 0x3e19999a    # 0.15f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v2, v9, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2487
    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$EmptyLayout$$ExternalSyntheticLambda0;

    move-object/from16 v2, p3

    invoke-direct {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$EmptyLayout$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v10, 0x0

    const/16 v11, 0x26

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2488
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public setQuery(Ljava/lang/String;)V
    .locals 4

    .line 2492
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$EmptyLayout;->textView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->SearchMessagesFilterEmptyText:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
