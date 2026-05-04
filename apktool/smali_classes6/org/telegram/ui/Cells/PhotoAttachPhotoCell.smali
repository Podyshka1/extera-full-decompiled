.class public Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;
    }
.end annotation


# static fields
.field private static rect:Landroid/graphics/Rect;


# instance fields
.field private animator:Landroid/animation/AnimatorSet;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private checkFrame:Landroid/widget/FrameLayout;

.field private container:Landroid/widget/FrameLayout;

.field private crossfadeDuration:Ljava/lang/Float;

.field private delegate:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;

.field private hasSpoiler:Z

.field private highQuality:Z

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private imageViewCrossfadeProgress:F

.field private imageViewCrossfadeSnapshot:Landroid/graphics/Bitmap;

.field private isLast:Z

.field private isVertical:Z

.field private itemSize:I

.field private itemSizeChanged:Z

.field private lock:Landroid/text/SpannableString;

.field private path:Landroid/graphics/Path;

.field private photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

.field private pressed:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private searchEntry:Lorg/telegram/messenger/MediaController$SearchImage;

.field private spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

.field private spoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

.field private spoilerMaxRadius:F

.field private spoilerRevealProgress:F

.field private spoilerRevealX:F

.field private spoilerRevealY:F

.field private star:Landroid/text/SpannableString;

.field private stars:J

.field private starsSelectedMultiple:Z

.field private videoInfoContainer:Landroid/widget/FrameLayout;

.field private videoPlayImageView:Landroid/widget/ImageView;

.field private videoTextView:Landroid/widget/TextView;

.field private zoomOnSelect:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetanimator(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimatorSet(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontainer(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcrossfadeDuration(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Ljava/lang/Float;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->crossfadeDuration:Ljava/lang/Float;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethasSpoiler(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->hasSpoiler:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetimageView(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageViewCrossfadeProgress(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetimageViewCrossfadeSnapshot(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeSnapshot:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpath(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/graphics/Path;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetphotoEntry(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetspoilerEffect(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetspoilerEffect2(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetspoilerMaxRadius(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerMaxRadius:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetspoilerRevealProgress(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerRevealProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetspoilerRevealX(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerRevealX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetspoilerRevealY(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerRevealY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputanimator(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputanimatorSet(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcrossfadeDuration(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Ljava/lang/Float;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->crossfadeDuration:Ljava/lang/Float;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputimageViewCrossfadeProgress(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputimageViewCrossfadeSnapshot(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeSnapshot:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputspoilerEffect(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSpoilers2(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->updateSpoilers2(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 126
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 94
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->zoomOnSelect:Z

    .line 99
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->backgroundPaint:Landroid/graphics/Paint;

    .line 111
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->path:Landroid/graphics/Path;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 119
    iput v4, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeProgress:F

    .line 127
    iput-object v2, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    .line 129
    invoke-virtual {v0, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 131
    new-instance v5, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;-><init>(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    const/16 v6, 0x50

    const/high16 v7, 0x42a00000    # 80.0f

    .line 158
    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance v5, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$2;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$2;-><init>(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 227
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/BackupImageView;->setBlurAllowed(Z)V

    .line 228
    iget-object v5, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, -0x1

    invoke-static {v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    new-instance v5, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$3;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$3;-><init>(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    .line 240
    invoke-virtual {v5, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 241
    iget-object v5, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v8, v4, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 242
    iget-object v5, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    const/4 v15, 0x0

    const/high16 v16, 0x40800000    # 4.0f

    const/4 v10, -0x2

    const/high16 v11, 0x41880000    # 17.0f

    const/16 v12, 0x53

    const/high16 v13, 0x40800000    # 4.0f

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoPlayImageView:Landroid/widget/ImageView;

    .line 245
    sget v6, Lorg/telegram/messenger/R$drawable;->play_mini_video:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeMonet()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoPlayImageView:Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaTimeText:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v8, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 247
    :cond_0
    iget-object v5, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoPlayImageView:Landroid/widget/ImageView;

    const/16 v8, 0x13

    const/4 v10, -0x2

    invoke-static {v10, v10, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    .line 250
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeMonet()Z

    move-result v6

    if-eqz v6, :cond_1

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaTimeText:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    :cond_1
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    iget-object v5, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 252
    iget-object v5, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 253
    iget-object v5, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 254
    iget-object v5, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v8, -0x2

    const/high16 v9, -0x40000000    # -2.0f

    const/16 v10, 0x13

    const/high16 v11, 0x41500000    # 13.0f

    const v12, -0x40cccccd    # -0.7f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    new-instance v5, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v6, 0x18

    invoke-direct {v5, v1, v6, v2}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v2, 0x7

    .line 257
    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 258
    iget-object v2, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachCheckBoxBackground:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPhotoBackground:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachCheckBoxCheck:I

    invoke-virtual {v2, v5, v6, v8}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 259
    iget-object v2, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v8, 0x1a

    const/high16 v9, 0x41d00000    # 26.0f

    const/16 v10, 0x33

    const/high16 v11, 0x42500000    # 52.0f

    const/high16 v12, 0x40800000    # 4.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v2, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 261
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 263
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    const/16 v8, 0x2a

    const/high16 v9, 0x42280000    # 42.0f

    const/high16 v11, 0x42180000    # 38.0f

    const/4 v12, 0x0

    .line 264
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->itemSize:I

    return-void
.end method

.method private updateSpoilers2(Z)V
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 393
    invoke-static {}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->supports()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 394
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-nez p1, :cond_2

    .line 395
    invoke-static {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->getInstance(Landroid/view/View;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    return-void

    .line 398
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz p1, :cond_2

    .line 399
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->detach(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 400
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public callDelegate()V
    .locals 1

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->delegate:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;->onCheckClick(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)V

    return-void
.end method

.method public clearAnimation()V
    .locals 4

    .line 664
    invoke-super {p0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 665
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 666
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 667
    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animator:Landroid/animation/AnimatorSet;

    .line 669
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f4978d5    # 0.787f

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 670
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    return-void
.end method

.method public getCheckBox()Lorg/telegram/ui/Components/CheckBox2;
    .locals 1

    .line 474
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    return-object v0
.end method

.method public getCheckFrame()Landroid/widget/FrameLayout;
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method public getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 1

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .line 470
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 750
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public getVideoInfoContainer()Landroid/view/View;
    .locals 1

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 575
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 415
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz v0, :cond_1

    .line 417
    iget-boolean v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->destroyed:Z

    if-eqz v1, :cond_0

    .line 418
    invoke-static {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->getInstance(Landroid/view/View;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    return-void

    .line 420
    :cond_0
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->attach(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 407
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 408
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->detach(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 712
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->searchEntry:Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController$SearchImage;->getPathToAttach()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 713
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->backgroundPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPhotoBackground:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    .line 720
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 721
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 723
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_0

    .line 724
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lorg/telegram/messenger/R$string;->AttachVideo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->formatDuration(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 726
    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_1

    .line 729
    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterStats()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-wide v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 733
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 734
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 736
    :cond_2
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lorg/telegram/messenger/R$id;->acc_action_open_photo:I

    sget v2, Lorg/telegram/messenger/R$string;->Open:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 450
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->itemSizeChanged:Z

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    .line 451
    iget p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->itemSize:I

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->itemSize:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 453
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isVertical:Z

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/high16 v2, 0x42a00000    # 80.0f

    if-eqz p1, :cond_2

    .line 454
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isLast:Z

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v0, v0, 0x50

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 456
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isLast:Z

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    add-int/lit8 v0, v0, 0x50

    int-to-float p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 678
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    sget-object v1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 679
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 680
    sget-object v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 681
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 682
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 685
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    if-eqz v0, :cond_3

    .line 686
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 687
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 688
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 689
    invoke-virtual {p0, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 690
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->delegate:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;->onCheckClick(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)V

    .line 692
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 693
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 694
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 695
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 696
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 697
    sget-object v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 698
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 699
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    if-nez v1, :cond_4

    .line 704
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    return v1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 10

    .line 741
    sget v0, Lorg/telegram/messenger/R$id;->acc_action_open_photo:I

    if-ne p1, v0, :cond_0

    .line 742
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 743
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v6, v5

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    int-to-float v7, v5

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 744
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, -0x1

    int-to-float v8, v1

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 746
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setChecked(IZZ)V
    .locals 6

    .line 579
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(IZZ)V

    .line 580
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->itemSizeChanged:Z

    if-eqz p1, :cond_6

    .line 581
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    .line 582
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 p1, 0x0

    .line 583
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animator:Landroid/animation/AnimatorSet;

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    const v0, 0x3f4978d5    # 0.787f

    if-eqz p3, :cond_3

    .line 586
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animator:Landroid/animation/AnimatorSet;

    .line 587
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, p1

    :goto_0
    const/4 v3, 0x1

    .line 588
    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_2

    move p1, v0

    .line 589
    :cond_2
    new-array v0, v3, [F

    aput p1, v0, v5

    sget-object p1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v2, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v5

    aput-object p1, v0, v3

    .line 587
    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 590
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 591
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animator:Landroid/animation/AnimatorSet;

    new-instance p3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$5;

    invoke-direct {p3, p0, p2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$5;-><init>(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Z)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 609
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 611
    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    move v1, p1

    :goto_1
    invoke-virtual {p3, v1}, Landroid/view/View;->setScaleX(F)V

    .line 612
    iget-object p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_5

    move p1, v0

    :cond_5
    invoke-virtual {p3, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_6
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->delegate:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;

    return-void
.end method

.method public setHasSpoiler(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHasSpoiler(ZLjava/lang/Float;)V

    return-void
.end method

.method public setHasSpoiler(ZLjava/lang/Float;)V
    .locals 3

    .line 328
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->hasSpoiler:Z

    if-eq v0, p1, :cond_3

    const/4 v0, 0x0

    .line 329
    iput v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerRevealProgress:F

    .line 330
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeSnapshot:Landroid/graphics/Bitmap;

    .line 332
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->snapshotView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeSnapshot:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 336
    :cond_0
    iput v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeProgress:F

    goto :goto_0

    .line 338
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeSnapshot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 339
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeSnapshot:Landroid/graphics/Bitmap;

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 342
    iput v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeProgress:F

    .line 345
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->hasSpoiler:Z

    .line 346
    iput-object p2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->crossfadeDuration:Ljava/lang/Float;

    .line 347
    iget-object p2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;->setHasBlur(Z)V

    .line 348
    iget-object p2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    if-eqz p1, :cond_3

    .line 350
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->updateSpoilers2(Z)V

    :cond_3
    return-void
.end method

.method public setHighQuality(Z)V
    .locals 4

    .line 295
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->highQuality:Z

    if-eq v0, p1, :cond_3

    .line 296
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->highQuality:Z

    .line 298
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz p1, :cond_3

    .line 299
    iget-boolean v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 300
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 301
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 304
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 305
    :cond_0
    iget-boolean p1, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    const/4 v0, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    sget-boolean v3, Lcom/exteragram/messenger/ExteraConfig;->alwaysSendInHD:Z

    if-nez v3, :cond_1

    .line 306
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 309
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->ShortHighQuality:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 310
    sget-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->alwaysSendInHD:Z

    if-eqz p1, :cond_2

    .line 311
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 314
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->ShortStandardQuality:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 316
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public setIsVertical(Z)V
    .locals 0

    .line 426
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isVertical:Z

    return-void
.end method

.method public setItemSize(I)V
    .locals 2

    .line 430
    iput p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->itemSize:I

    .line 432
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 433
    iget v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->itemSize:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 435
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x35

    .line 436
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 437
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 439
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 440
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 441
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 442
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 443
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    const/4 p1, 0x1

    .line 445
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->itemSizeChanged:Z

    return-void
.end method

.method public setNum(I)V
    .locals 1

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBox2;->setNum(I)V

    return-void
.end method

.method public setOnCheckClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZZ)V
    .locals 7

    const/4 v0, 0x0

    .line 486
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 487
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 488
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isLast:Z

    .line 489
    iget-boolean p4, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_0

    .line 490
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p4, v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 491
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 492
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 493
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 494
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 495
    :cond_0
    iget-boolean p4, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    const/16 v3, 0x8

    if-eqz p4, :cond_1

    sget-boolean v4, Lcom/exteragram/messenger/ExteraConfig;->alwaysSendInHD:Z

    if-nez v4, :cond_1

    .line 496
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 499
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->ShortHighQuality:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    .line 500
    sget-boolean p4, Lcom/exteragram/messenger/ExteraConfig;->alwaysSendInHD:Z

    if-eqz p4, :cond_2

    .line 501
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 502
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 504
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->ShortStandardQuality:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 506
    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {p4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 509
    :goto_0
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, p4, Lorg/telegram/messenger/MediaController$MediaEditState;->coverPath:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 510
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4, v3, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 511
    :cond_3
    iget-object v3, p4, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 512
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4, v3, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 513
    :cond_4
    iget-object v3, p4, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 514
    iget-boolean v3, p4, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    const-string v5, ":"

    if-eqz v3, :cond_5

    .line 515
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vthumb://"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v6, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v5, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4, v3, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 517
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v6, p4, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    iget p4, p4, Lorg/telegram/messenger/MediaController$PhotoEntry;->invert:I

    invoke-virtual {v3, v6, p4, v2}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IIZ)V

    .line 518
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thumb://"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v6, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v5, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4, v3, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 521
    :cond_6
    iget-object p4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    if-eqz p3, :cond_7

    .line 523
    iget-object p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object p3, p3, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    move v0, v2

    .line 524
    :cond_7
    iget-object p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p3

    xor-int/lit8 p4, v0, 0x1

    invoke-virtual {p3, p4, v2}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 525
    iget-object p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/high16 p4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_8

    move v2, v1

    goto :goto_2

    :cond_8
    move v2, p4

    :goto_2
    invoke-virtual {p3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 526
    iget-object p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    move v1, p4

    :goto_3
    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 527
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 528
    iget-boolean p3, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHasSpoiler(Z)V

    .line 529
    iget-boolean p3, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHighQuality(Z)V

    .line 530
    iget-wide p3, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->starsAmount:J

    invoke-virtual {p0, p3, p4, p2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setStarsPrice(JZ)V

    return-void
.end method

.method public setPhotoEntry(Lorg/telegram/messenger/MediaController$SearchImage;ZZ)V
    .locals 12

    const/4 v10, 0x0

    .line 534
    iput-boolean v10, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 535
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->searchEntry:Lorg/telegram/messenger/MediaController$SearchImage;

    move v0, p3

    .line 536
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isLast:Z

    .line 538
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->zoomOnSelect:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->nophotos:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 539
    :goto_0
    iget-object v1, p1, Lorg/telegram/messenger/MediaController$SearchImage;->thumbPhotoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v11, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 540
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, p1, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v1, v4}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    invoke-virtual {v3, v1, v2, v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 541
    :cond_1
    iget-object v1, p1, Lorg/telegram/messenger/MediaController$SearchImage;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v1, :cond_2

    .line 542
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, p1, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v1, v3}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const-string v3, "80_80"

    invoke-virtual {v2, v1, v3, v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 543
    :cond_2
    iget-object v1, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 544
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v1, v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 545
    :cond_3
    iget-object v1, p1, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 546
    iget-object v1, p1, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    .line 547
    iget v3, p1, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    if-ne v3, v11, :cond_4

    iget-object v3, p1, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    const-string v4, "mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    .line 548
    iput v3, v1, Lorg/telegram/messenger/ImageLocation;->imageType:I

    .line 550
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v1, v2, v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_1

    .line 551
    :cond_5
    iget-object v1, p1, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_7

    .line 552
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getDocumentVideoThumb(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 553
    iget-object v1, p1, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getDocumentVideoThumb(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 555
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v2, 0x5a

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 556
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, p1, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1, v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    iget-object v3, p1, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    move-object v0, v2

    const/4 v2, 0x0

    const-string v4, "52_52"

    const/4 v5, 0x0

    move-object v9, p1

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    goto :goto_1

    .line 558
    :cond_6
    iget-object v1, p1, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v3, 0x140

    invoke-static {v1, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 559
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, p1, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1, v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    invoke-virtual {v3, v1, v2, v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_1

    .line 562
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    if-eqz p2, :cond_8

    .line 564
    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController$SearchImage;->getPathToAttach()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v11

    goto :goto_2

    :cond_8
    move v0, v10

    .line 565
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, v11}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 566
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    move v4, v3

    goto :goto_3

    :cond_9
    move v4, v2

    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 567
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 568
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 569
    invoke-virtual {p0, v10}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHasSpoiler(Z)V

    .line 570
    invoke-virtual {p0, v10}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHighQuality(Z)V

    const-wide/16 v0, 0x0

    .line 571
    invoke-virtual {p0, v0, v1, v10}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setStarsPrice(JZ)V

    return-void
.end method

.method public setStarsPrice(JZ)V
    .locals 6

    .line 357
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->starsSelectedMultiple:Z

    if-ne p3, v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->stars:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 358
    :cond_1
    :goto_0
    iput-wide p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->stars:J

    .line 359
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->starsSelectedMultiple:Z

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_5

    .line 363
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 364
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->star:Landroid/text/SpannableString;

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 365
    new-instance v1, Landroid/text/SpannableString;

    const-string v4, "\u2b50"

    invoke-direct {v1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->star:Landroid/text/SpannableString;

    .line 366
    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v4, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const v4, 0x3f333333    # 0.7f

    .line 367
    invoke-virtual {v1, v4, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    .line 368
    iget-object v4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->star:Landroid/text/SpannableString;

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v4, v1, v3, v5, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 370
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->star:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 371
    const-string v1, "\u2009"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p3, :cond_4

    .line 373
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->lock:Landroid/text/SpannableString;

    if-nez p1, :cond_3

    .line 374
    new-instance p1, Landroid/text/SpannableString;

    const-string p2, "l"

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->lock:Landroid/text/SpannableString;

    .line 375
    new-instance p1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_mini_lock2:I

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    .line 376
    iget-object p2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->lock:Landroid/text/SpannableString;

    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result p3

    invoke-virtual {p2, p1, v3, p3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 378
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->lock:Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 380
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 383
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setBlurredText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 385
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showCheck(Z)V
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 638
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_2

    :cond_1
    return-void

    .line 641
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3

    .line 642
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v2, 0x0

    .line 643
    iput-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    .line 645
    :cond_3
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    .line 646
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 647
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xb4

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 648
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    move v4, v0

    goto :goto_0

    :cond_4
    move v4, v1

    :goto_0
    const/4 v5, 0x1

    .line 649
    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v4, v6, v7

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    .line 650
    :goto_1
    new-array p1, v5, [F

    aput v0, p1, v7

    invoke-static {v6, v4, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v3, v0, v7

    aput-object p1, v0, v5

    .line 648
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 651
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$6;-><init>(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 659
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public showImage()V
    .locals 2

    .line 634
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return-void
.end method
