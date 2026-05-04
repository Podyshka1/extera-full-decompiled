.class Lorg/telegram/ui/CallLogActivity$CallCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/CallLogActivity$CallCell$Factory;
    }
.end annotation


# instance fields
.field private final avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

.field private final checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private final currentAccount:I

.field private final imageView:Landroid/widget/ImageView;

.field private final profileSearchCell:Lorg/telegram/ui/Cells/ProfileSearchCell;


# direct methods
.method static bridge synthetic -$$Nest$fgetprofileSearchCell(Lorg/telegram/ui/CallLogActivity$CallCell;)Lorg/telegram/ui/Cells/ProfileSearchCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CallLogActivity$CallCell;->profileSearchCell:Lorg/telegram/ui/Cells/ProfileSearchCell;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 13

    .line 473
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 474
    iput p2, p0, Lorg/telegram/ui/CallLogActivity$CallCell;->currentAccount:I

    .line 476
    new-instance p2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/CallLogActivity$CallCell;->profileSearchCell:Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 477
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setCallCellStyle()V

    .line 478
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x42000000    # 32.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_1
    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 479
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_2

    :cond_2
    const/high16 v0, -0x40000000    # -2.0f

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setSublabelOffset(II)V

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, -0x1

    .line 480
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    new-instance p2, Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-direct {p2, p1, v2}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lorg/telegram/ui/CallLogActivity$CallCell;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v0, 0x41900000    # 18.0f

    .line 483
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    const v0, 0x3ecccccd    # 0.4f

    .line 484
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarsImageView;->setStepFactor(F)V

    const/high16 v0, 0x41e80000    # 29.0f

    .line 485
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarsImageView;->setSize(I)V

    const/4 v0, 0x1

    .line 486
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarsImageView;->setCentered(Z)V

    const/16 v3, 0x8

    .line 487
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 488
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v4, 0x5

    const/4 v5, 0x3

    if-eqz v3, :cond_3

    move v8, v4

    goto :goto_3

    :cond_3
    move v8, v5

    :goto_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v6, 0x48

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v9, -0x40000000    # -2.0f

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/CallLogActivity$CallCell;->imageView:Landroid/widget/ImageView;

    .line 491
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_telegram_color_text:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v3, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 492
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 493
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 494
    sget v0, Lorg/telegram/messenger/R$string;->Call:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 495
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_4

    :cond_4
    move v0, v4

    :goto_4
    or-int/lit8 v8, v0, 0x10

    const/high16 v11, 0x41000000    # 8.0f

    const/4 v12, 0x0

    const/16 v6, 0x30

    const/high16 v7, 0x42400000    # 48.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    new-instance p2, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v0, 0x15

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lorg/telegram/ui/CallLogActivity$CallCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    .line 498
    invoke-virtual {p2}, Lorg/telegram/ui/Components/CheckBox2;->getCheckBoxBase()Lorg/telegram/ui/Components/CheckBoxBase;

    move-result-object p1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_telegram_color:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBoxBase;->setBackgroundColor(I)V

    .line 499
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {p2, v1, p1, v0}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 500
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 501
    invoke-virtual {p2, v5}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 502
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move v4, v5

    :goto_5
    or-int/lit8 v7, v4, 0x30

    const/high16 v10, 0x42280000    # 42.0f

    const/4 v11, 0x0

    const/16 v5, 0x18

    const/high16 v6, 0x41c00000    # 24.0f

    const/high16 v8, 0x42280000    # 42.0f

    const/high16 v9, 0x42000000    # 32.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static iconIn(Landroid/content/Context;)Landroid/text/style/ImageSpan;
    .locals 4

    .line 582
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$drawable;->mini_call_in_16:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 583
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 584
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 585
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-direct {v0, p0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v0
.end method

.method private static iconMissedIn(Landroid/content/Context;)Landroid/text/style/ImageSpan;
    .locals 4

    .line 588
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$drawable;->mini_call_in_16:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 589
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 590
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_fill_RedNormal:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 591
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-direct {v0, p0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v0
.end method

.method private static iconMissedOut(Landroid/content/Context;)Landroid/text/style/ImageSpan;
    .locals 4

    .line 594
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$drawable;->mini_call_out_16:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 595
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 596
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_fill_RedNormal:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 597
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-direct {v0, p0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v0
.end method

.method private static iconOut(Landroid/content/Context;)Landroid/text/style/ImageSpan;
    .locals 4

    .line 576
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$drawable;->mini_call_out_16:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 577
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 578
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 579
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-direct {v0, p0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v0
.end method


# virtual methods
.method public set(Lorg/telegram/ui/CallLogActivity$CallLogRow;Landroid/view/View$OnClickListener;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 513
    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity$CallCell;->imageView:Landroid/widget/ImageView;

    iget-boolean v3, v1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->video:Z

    if-eqz v3, :cond_0

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_videocall:I

    goto :goto_0

    :cond_0
    sget v3, Lorg/telegram/messenger/R$drawable;->menu_call_create_2_24:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 514
    iget-object v2, v1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    .line 516
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_1

    const-string v4, "\u202b"

    goto :goto_1

    :cond_1
    const-string v4, ""

    .line 517
    :goto_1
    iget-object v5, v1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    .line 518
    new-instance v5, Landroid/text/SpannableString;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v9, v2

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->formatDateCallLog(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_2
    move-object v12, v5

    goto :goto_3

    .line 520
    :cond_2
    new-instance v5, Landroid/text/SpannableString;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  (%d) %s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v10, v2

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->formatDateCallLog(J)Ljava/lang/String;

    move-result-object v2

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v9, v10, v3

    aput-object v2, v10, v7

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 522
    :goto_3
    iget v2, v1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->type:I

    const/16 v5, 0x21

    const/4 v15, 0x3

    if-eqz v2, :cond_6

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v15, :cond_3

    goto :goto_4

    .line 533
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/CallLogActivity$CallCell;->iconMissedOut(Landroid/content/Context;)Landroid/text/style/ImageSpan;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {v12, v2, v6, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 530
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/CallLogActivity$CallCell;->iconMissedIn(Landroid/content/Context;)Landroid/text/style/ImageSpan;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {v12, v2, v6, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 527
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/CallLogActivity$CallCell;->iconIn(Landroid/content/Context;)Landroid/text/style/ImageSpan;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {v12, v2, v6, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 524
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/CallLogActivity$CallCell;->iconOut(Landroid/content/Context;)Landroid/text/style/ImageSpan;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {v12, v2, v6, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 537
    :goto_4
    iget-wide v4, v1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->call_id:J

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    const/4 v4, 0x0

    if-eqz v2, :cond_c

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v3

    .line 539
    :goto_5
    iget-object v6, v1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v15, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_8

    if-lez v5, :cond_7

    .line 541
    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_7
    iget-object v6, v1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLObject;

    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->getShortName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 545
    :cond_8
    iget-object v5, v1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v15, :cond_9

    .line 546
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object v5, v1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v15

    new-array v6, v3, [Ljava/lang/Object;

    const-string v8, "AndOther"

    invoke-static {v8, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    :cond_9
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 551
    iget v6, v0, Lorg/telegram/ui/CallLogActivity$CallCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v6, v0, Lorg/telegram/ui/CallLogActivity$CallCell;->profileSearchCell:Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setAllowEmojiStatus(Z)V

    .line 554
    iget-object v8, v0, Lorg/telegram/ui/CallLogActivity$CallCell;->profileSearchCell:Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v6, v1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v4, v1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    :cond_a
    move-object v9, v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 556
    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity$CallCell;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 557
    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity$CallCell;->profileSearchCell:Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v2, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 558
    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity$CallCell;->profileSearchCell:Lorg/telegram/ui/Cells/ProfileSearchCell;

    iput-boolean v7, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->dontDrawAvatar:Z

    .line 559
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v4, v3

    :goto_6
    if-ge v4, v2, :cond_b

    .line 561
    iget-object v6, v0, Lorg/telegram/ui/CallLogActivity$CallCell;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    iget v7, v0, Lorg/telegram/ui/CallLogActivity$CallCell;->currentAccount:I

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v6, v4, v7, v8}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 563
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity$CallCell;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    goto :goto_7

    .line 565
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity$CallCell;->profileSearchCell:Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setAllowEmojiStatus(Z)V

    .line 566
    iget-object v8, v0, Lorg/telegram/ui/CallLogActivity$CallCell;->profileSearchCell:Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v2, v1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    :cond_d
    move-object v9, v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 568
    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity$CallCell;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 569
    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity$CallCell;->profileSearchCell:Lorg/telegram/ui/Cells/ProfileSearchCell;

    iput-boolean v3, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->dontDrawAvatar:Z

    .line 571
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity$CallCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 572
    iget-object v1, v0, Lorg/telegram/ui/CallLogActivity$CallCell;->imageView:Landroid/widget/ImageView;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$CallCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-nez v0, :cond_0

    return-void

    .line 509
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method
