.class Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttributeView"
.end annotation


# instance fields
.field public backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

.field private final imageView:Lorg/telegram/ui/Components/BackupImageView;

.field public pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

.field public progress:F

.field private final progressView:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$ProgressView;

.field private final textView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 10436
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 10438
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41500000    # 13.0f

    .line 10439
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v2, 0x1a

    const/high16 v3, 0x41d00000    # 26.0f

    const/16 v4, 0x31

    const/4 v5, 0x0

    const v6, 0x413547ae    # 11.33f

    .line 10440
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10442
    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$ProgressView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$ProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->progressView:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$ProgressView;

    const/high16 v1, 0x41900000    # 18.0f

    .line 10443
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$ProgressView;->setRadius(F)V

    const/high16 v1, 0x40400000    # 3.0f

    .line 10444
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$ProgressView;->setStrokeWidth(F)V

    const/16 v2, 0x30

    const/high16 v3, 0x42400000    # 48.0f

    const v6, 0x3f28f5c3    # 0.66f

    .line 10445
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10447
    new-instance v0, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 10448
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 p1, 0x11

    .line 10449
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 10450
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    const/4 p1, -0x1

    .line 10451
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/high16 v2, 0x41600000    # 14.0f

    const/16 v3, 0x30

    const/4 v4, 0x0

    const/high16 v5, 0x421c0000    # 39.0f

    .line 10452
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 10454
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->setProgress(FZ)V

    .line 10456
    invoke-static {p0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V
    .locals 10

    .line 10460
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    const/4 v0, 0x0

    .line 10461
    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    .line 10463
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 10464
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    const/high16 v0, 0x41d00000    # 26.0f

    if-eqz p1, :cond_0

    .line 10466
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 10467
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 10468
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 10469
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 10470
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 10471
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 10472
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v3, Landroid/graphics/RadialGradient;

    const/high16 v1, 0x41500000    # 13.0f

    .line 10473
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v6, v1

    iget v1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    const/high16 v7, -0x1000000

    or-int/2addr v1, v7

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->edge_color:I

    or-int/2addr p1, v7

    filled-new-array {v1, p1}, [I

    move-result-object v7

    const/4 p1, 0x2

    new-array v8, p1, [F

    fill-array-data v8, :array_0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 10472
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 10478
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 10480
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 10481
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, -0x1

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setIcon(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V
    .locals 3

    const/4 v0, 0x0

    .line 10486
    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    .line 10487
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    if-nez p1, :cond_0

    .line 10490
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 10491
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 10492
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 10493
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 10494
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 10495
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget v0, Lorg/telegram/messenger/R$drawable;->mini_roll:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    return-void

    .line 10497
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 10498
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const v1, 0x3f733333    # 0.95f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 10499
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 10500
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 10501
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/16 v1, 0x9

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    .line 10502
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 10503
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    return-void
.end method

.method public setProgress(FZ)V
    .locals 3

    .line 10508
    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->progress:F

    .line 10509
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->progressView:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$ProgressView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$ProgressView;->setProgress(FZ)V

    .line 10510
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method
