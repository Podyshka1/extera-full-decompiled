.class public Lcom/google/android/material/chip/ChipDrawable;
.super Lcom/google/android/material/shape/MaterialShapeDrawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/ChipDrawable$Delegate;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_STATE:[I

.field private static final MAX_CHIP_ICON_HEIGHT:I = 0x18

.field private static final NAMESPACE_APP:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"

.field private static final closeIconRippleMask:Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field private alpha:I

.field private checkable:Z

.field private checkedIcon:Landroid/graphics/drawable/Drawable;

.field private checkedIconTint:Landroid/content/res/ColorStateList;

.field private checkedIconVisible:Z

.field private chipBackgroundColor:Landroid/content/res/ColorStateList;

.field private chipCornerRadius:F

.field private chipEndPadding:F

.field private chipIcon:Landroid/graphics/drawable/Drawable;

.field private chipIconSize:F

.field private chipIconTint:Landroid/content/res/ColorStateList;

.field private chipIconVisible:Z

.field private chipMinHeight:F

.field private final chipPaint:Landroid/graphics/Paint;

.field private chipStartPadding:F

.field private chipStrokeColor:Landroid/content/res/ColorStateList;

.field private chipStrokeWidth:F

.field private chipSurfaceColor:Landroid/content/res/ColorStateList;

.field private closeIcon:Landroid/graphics/drawable/Drawable;

.field private closeIconContentDescription:Ljava/lang/CharSequence;

.field private closeIconEndPadding:F

.field private closeIconRipple:Landroid/graphics/drawable/Drawable;

.field private closeIconSize:F

.field private closeIconStartPadding:F

.field private closeIconStateSet:[I

.field private closeIconTint:Landroid/content/res/ColorStateList;

.field private closeIconVisible:Z

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private compatRippleColor:Landroid/content/res/ColorStateList;

.field private final context:Landroid/content/Context;

.field private currentChecked:Z

.field private currentChipBackgroundColor:I

.field private currentChipStrokeColor:I

.field private currentChipSurfaceColor:I

.field private currentCompatRippleColor:I

.field private currentCompositeSurfaceBackgroundColor:I

.field private currentTextColor:I

.field private currentTint:I

.field private final debugPaint:Landroid/graphics/Paint;

.field private delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/chip/ChipDrawable$Delegate;",
            ">;"
        }
    .end annotation
.end field

.field private final fontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private hasChipIconTint:Z

.field private hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

.field private iconEndPadding:F

.field private iconStartPadding:F

.field private isShapeThemingEnabled:Z

.field private maxWidth:I

.field private final pointF:Landroid/graphics/PointF;

.field private final rectF:Landroid/graphics/RectF;

.field private rippleColor:Landroid/content/res/ColorStateList;

.field private final shapePath:Landroid/graphics/Path;

.field private shouldDrawText:Z

.field private showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

.field private text:Ljava/lang/CharSequence;

.field private final textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

.field private textEndPadding:F

.field private textStartPadding:F

.field private tint:Landroid/content/res/ColorStateList;

.field private tintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private tintMode:Landroid/graphics/PorterDuff$Mode;

.field private truncateAt:Landroid/text/TextUtils$TruncateAt;

.field private useCompatRipple:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x101009e

    .line 169
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/chip/ChipDrawable;->DEFAULT_STATE:[I

    .line 173
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    sput-object v0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRippleMask:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 315
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 179
    iput p2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    .line 245
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 247
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 248
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 249
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    .line 250
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->shapePath:Landroid/graphics/Path;

    const/16 p2, 0xff

    .line 262
    iput p2, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 266
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 270
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    .line 316
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 318
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 319
    new-instance p2, Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-direct {p2, p0}, Lcom/google/android/material/internal/TextDrawableHelper;-><init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V

    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 321
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    .line 323
    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p2, Landroid/text/TextPaint;->density:F

    .line 324
    iput-object p4, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 329
    sget-object p1, Lcom/google/android/material/chip/ChipDrawable;->DEFAULT_STATE:[I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 330
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconState([I)Z

    .line 331
    iput-boolean p3, p0, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText:Z

    .line 333
    sget-object p1, Lcom/google/android/material/chip/ChipDrawable;->closeIconRippleMask:Landroid/graphics/drawable/ShapeDrawable;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method private applyChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1335
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1336
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1337
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1338
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1340
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    .line 1341
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1342
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1343
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    .line 1347
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->hasChipIconTint:Z

    if-eqz v1, :cond_2

    .line 1348
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1350
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1351
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    .line 831
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 833
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 834
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    add-float/2addr v0, v1

    .line 835
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCurrentChipIconWidth()F

    move-result v1

    .line 837
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_2

    .line 838
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    .line 839
    iput v2, p2, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 841
    :cond_2
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    .line 842
    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 845
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCurrentChipIconHeight()F

    move-result v0

    .line 846
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    sub-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v0

    .line 847
    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    .line 941
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 943
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 944
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v0, v1

    .line 951
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 952
    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    sub-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->right:F

    return-void

    .line 954
    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->left:F

    :cond_1
    return-void
.end method

.method private calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    .line 922
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 924
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v0, v1

    .line 927
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 928
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 929
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 931
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 932
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 935
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    sub-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v0

    .line 936
    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    .line 960
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 962
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 963
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v0, v1

    .line 970
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 971
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    .line 972
    iput v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 974
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iput v2, p2, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 975
    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 978
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 979
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private calculateTextBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    .line 896
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 898
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 899
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    add-float/2addr v0, v1

    .line 900
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v1, v2

    .line 902
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_0

    .line 903
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 904
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 906
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 907
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 912
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 913
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private calculateTextCenterFromBaseline()F
    .locals 2

    .line 887
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 888
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    return v1
.end method

.method private canShowCheckedIcon()Z
    .locals 1

    .line 545
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/ChipDrawable;
    .locals 1

    .line 283
    new-instance v0, Lcom/google/android/material/chip/ChipDrawable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/chip/ChipDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 284
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/material/chip/ChipDrawable;->loadFromAttributes(Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method public static createFromResource(Landroid/content/Context;I)Lcom/google/android/material/chip/ChipDrawable;
    .locals 2

    .line 302
    const-string v0, "chip"

    invoke-static {p0, p1, v0}, Lcom/google/android/material/drawable/DrawableUtils;->parseDrawableXml(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;

    move-result-object p1

    .line 303
    invoke-interface {p1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-nez v0, :cond_0

    .line 305
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Chip_Entry:I

    .line 307
    :cond_0
    sget v1, Lcom/google/android/material/R$attr;->chipStandaloneStyle:I

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/material/chip/ChipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/ChipDrawable;

    move-result-object p0

    return-object p0
.end method

.method private drawCheckedIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5

    .line 721
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 723
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 724
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 726
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 728
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 729
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v0

    neg-float p2, p2

    .line 731
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method private drawChipBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    .line 661
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    if-nez v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 663
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 664
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->getTintColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 665
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 666
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawChipIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5

    .line 706
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 708
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 709
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 711
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 713
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 714
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v0

    neg-float p2, p2

    .line 716
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method private drawChipStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7

    .line 675
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    if-nez v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 677
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 678
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    if-nez v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->getTintColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    add-float/2addr v1, v4

    iget v4, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    div-float v5, v2, v3

    add-float/2addr v4, v5

    iget v5, p2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    div-float v6, v2, v3

    sub-float/2addr v5, v6

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    invoke-virtual {v0, v1, v4, v5, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 688
    iget p2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    div-float/2addr v0, v3

    sub-float/2addr p2, v0

    .line 689
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private drawChipSurface(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    .line 652
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    if-nez v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipSurfaceColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 654
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 655
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 656
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawCloseIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5

    .line 772
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 774
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 775
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 777
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 779
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 781
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 782
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 783
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v0

    neg-float p2, p2

    .line 785
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method private drawCompatRipple(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    .line 694
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 695
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 696
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 697
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    if-nez v0, :cond_0

    .line 698
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    .line 700
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->shapePath:Landroid/graphics/Path;

    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculatePathForSize(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 701
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->shapePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-super {p0, p1, p2, v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V

    return-void
.end method

.method private drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9

    .line 790
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    const/high16 v1, -0x1000000

    const/16 v2, 0x7f

    .line 791
    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 794
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 797
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 799
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 804
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    .line 805
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    iget-object v8, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    move-object v3, p1

    .line 804
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    move-object v3, p1

    .line 809
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 810
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, p1}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 811
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 815
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 816
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, p1}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 817
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 820
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    const v0, -0xff0100

    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 821
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, p1}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 822
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9

    .line 737
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 738
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    invoke-virtual {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateTextOriginAndAlignment(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;

    move-result-object v0

    .line 741
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v1}, Lcom/google/android/material/chip/ChipDrawable;->calculateTextBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 743
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 744
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iput-object v1, p2, Landroid/text/TextPaint;->drawableState:[I

    .line 745
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/google/android/material/internal/TextDrawableHelper;->updateTextPaintDrawState(Landroid/content/Context;)V

    .line 747
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 749
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 750
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 751
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    if-le p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 754
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 755
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    if-eqz p2, :cond_3

    .line 759
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_3

    .line 760
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 761
    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_3
    move-object v3, v0

    .line 764
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v8

    const/4 v4, 0x0

    move-object v2, p1

    .line 763
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_4

    .line 766
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method private getCurrentChipIconHeight()F
    .locals 3

    .line 573
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 574
    :goto_0
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    if-eqz v0, :cond_1

    .line 575
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    const/16 v2, 0x18

    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 576
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1

    .line 577
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_1
    return v1
.end method

.method private getCurrentChipIconWidth()F
    .locals 3

    .line 561
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 562
    :goto_0
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    if-eqz v0, :cond_1

    .line 563
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_1
    return v1
.end method

.method private getTintColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1361
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    return-object v0
.end method

.method private static hasState([II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1382
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static isStateful(Landroid/content/res/ColorStateList;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1158
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isStateful(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1162
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isStateful(Lcom/google/android/material/resources/TextAppearance;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1167
    invoke-virtual {p0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1168
    invoke-virtual {p0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private loadFromAttributes(Landroid/util/AttributeSet;II)V
    .locals 7

    .line 338
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget-object v2, Lcom/google/android/material/R$styleable;->Chip:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 339
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 342
    sget p2, Lcom/google/android/material/R$styleable;->Chip_shapeAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 343
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipSurfaceColor:I

    .line 344
    invoke-static {p2, p1, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 343
    invoke-direct {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setChipSurfaceColor(Landroid/content/res/ColorStateList;)V

    .line 345
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipBackgroundColor:I

    .line 346
    invoke-static {p2, p1, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 345
    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 347
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipMinHeight:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeight(F)V

    .line 348
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipCornerRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 349
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipCornerRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadius(F)V

    .line 351
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v0, Lcom/google/android/material/R$styleable;->Chip_chipStrokeColor:I

    .line 352
    invoke-static {p2, p1, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 351
    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 353
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipStrokeWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidth(F)V

    .line 354
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v0, Lcom/google/android/material/R$styleable;->Chip_rippleColor:I

    invoke-static {p2, p1, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 356
    sget p2, Lcom/google/android/material/R$styleable;->Chip_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v0, Lcom/google/android/material/R$styleable;->Chip_android_textAppearance:I

    .line 358
    invoke-static {p2, p1, v0}, Lcom/google/android/material/resources/MaterialResources;->getTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/resources/TextAppearance;

    move-result-object p2

    .line 359
    sget v0, Lcom/google/android/material/R$styleable;->Chip_android_textSize:I

    .line 360
    invoke-virtual {p2}, Lcom/google/android/material/resources/TextAppearance;->getTextSize()F

    move-result v2

    .line 359
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 361
    invoke-virtual {p2, v0}, Lcom/google/android/material/resources/TextAppearance;->setTextSize(F)V

    .line 363
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 371
    sget v0, Lcom/google/android/material/R$styleable;->Chip_fontVariationSettings:I

    sget v2, Lcom/google/android/material/R$styleable;->Chip_android_fontVariationSettings:I

    invoke-static {p1, v0, v2}, Lcom/google/android/material/resources/MaterialResources;->getIndexWithValue(Landroid/content/res/TypedArray;II)I

    move-result v0

    .line 377
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/resources/TextAppearance;->setFontVariationSettings(Ljava/lang/String;)V

    .line 382
    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    .line 384
    sget p2, Lcom/google/android/material/R$styleable;->Chip_android_ellipsize:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 394
    :cond_2
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 391
    :cond_3
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 388
    :cond_4
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 402
    :goto_0
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipIconVisible:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    .line 405
    const-string p2, "http://schemas.android.com/apk/res-auto"

    if-eqz v1, :cond_5

    const-string v0, "chipIconEnabled"

    .line 406
    invoke-interface {v1, p2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "chipIconVisible"

    .line 407
    invoke-interface {v1, p2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 408
    sget v0, Lcom/google/android/material/R$styleable;->Chip_chipIconEnabled:I

    invoke-virtual {p1, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    .line 410
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v2, Lcom/google/android/material/R$styleable;->Chip_chipIcon:I

    invoke-static {v0, p1, v2}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 411
    sget v0, Lcom/google/android/material/R$styleable;->Chip_chipIconTint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 412
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v2, Lcom/google/android/material/R$styleable;->Chip_chipIconTint:I

    .line 413
    invoke-static {v0, p1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 412
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    .line 415
    :cond_6
    sget v0, Lcom/google/android/material/R$styleable;->Chip_chipIconSize:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSize(F)V

    .line 417
    sget v0, Lcom/google/android/material/R$styleable;->Chip_closeIconVisible:I

    invoke-virtual {p1, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    if-eqz v1, :cond_7

    .line 421
    const-string v0, "closeIconEnabled"

    .line 422
    invoke-interface {v1, p2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "closeIconVisible"

    .line 423
    invoke-interface {v1, p2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 424
    sget v0, Lcom/google/android/material/R$styleable;->Chip_closeIconEnabled:I

    invoke-virtual {p1, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    .line 426
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v2, Lcom/google/android/material/R$styleable;->Chip_closeIcon:I

    invoke-static {v0, p1, v2}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 427
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v2, Lcom/google/android/material/R$styleable;->Chip_closeIconTint:I

    .line 428
    invoke-static {v0, p1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 427
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    .line 429
    sget v0, Lcom/google/android/material/R$styleable;->Chip_closeIconSize:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSize(F)V

    .line 431
    sget v0, Lcom/google/android/material/R$styleable;->Chip_android_checkable:I

    invoke-virtual {p1, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setCheckable(Z)V

    .line 432
    sget v0, Lcom/google/android/material/R$styleable;->Chip_checkedIconVisible:I

    invoke-virtual {p1, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    if-eqz v1, :cond_8

    .line 436
    const-string v0, "checkedIconEnabled"

    .line 437
    invoke-interface {v1, p2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "checkedIconVisible"

    .line 438
    invoke-interface {v1, p2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    .line 439
    sget p2, Lcom/google/android/material/R$styleable;->Chip_checkedIconEnabled:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    .line 441
    :cond_8
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v0, Lcom/google/android/material/R$styleable;->Chip_checkedIcon:I

    invoke-static {p2, p1, v0}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 442
    sget p2, Lcom/google/android/material/R$styleable;->Chip_checkedIconTint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 443
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v0, Lcom/google/android/material/R$styleable;->Chip_checkedIconTint:I

    .line 444
    invoke-static {p2, p1, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 443
    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconTint(Landroid/content/res/ColorStateList;)V

    .line 447
    :cond_9
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v0, Lcom/google/android/material/R$styleable;->Chip_showMotionSpec:I

    invoke-static {p2, p1, v0}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 448
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v0, Lcom/google/android/material/R$styleable;->Chip_hideMotionSpec:I

    invoke-static {p2, p1, v0}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 450
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipStartPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPadding(F)V

    .line 451
    sget p2, Lcom/google/android/material/R$styleable;->Chip_iconStartPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPadding(F)V

    .line 452
    sget p2, Lcom/google/android/material/R$styleable;->Chip_iconEndPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPadding(F)V

    .line 453
    sget p2, Lcom/google/android/material/R$styleable;->Chip_textStartPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPadding(F)V

    .line 454
    sget p2, Lcom/google/android/material/R$styleable;->Chip_textEndPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPadding(F)V

    .line 455
    sget p2, Lcom/google/android/material/R$styleable;->Chip_closeIconStartPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    .line 456
    sget p2, Lcom/google/android/material/R$styleable;->Chip_closeIconEndPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    .line 457
    sget p2, Lcom/google/android/material/R$styleable;->Chip_chipEndPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPadding(F)V

    .line 459
    sget p2, Lcom/google/android/material/R$styleable;->Chip_android_maxWidth:I

    const p3, 0x7fffffff

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setMaxWidth(I)V

    .line 461
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private onStateChange([I[I)Z
    .locals 6

    .line 1041
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    move-result v0

    .line 1045
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipSurfaceColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1046
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipSurfaceColor:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1048
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->compositeElevationOverlayIfNeeded(I)I

    move-result v1

    .line 1049
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipSurfaceColor:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    .line 1050
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipSurfaceColor:I

    move v0, v4

    .line 1055
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    .line 1056
    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    .line 1058
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->compositeElevationOverlayIfNeeded(I)I

    move-result v3

    .line 1059
    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    if-eq v5, v3, :cond_3

    .line 1060
    iput v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    move v0, v4

    .line 1065
    :cond_3
    invoke-static {v1, v3}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    move-result v1

    .line 1066
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompositeSurfaceBackgroundColor:I

    if-eq v3, v1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v2

    .line 1068
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    if-nez v5, :cond_5

    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    or-int/2addr v3, v5

    if-eqz v3, :cond_6

    .line 1070
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompositeSurfaceBackgroundColor:I

    .line 1071
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    move v0, v4

    .line 1076
    :cond_6
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_7

    .line 1077
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_4

    :cond_7
    move v1, v2

    .line 1079
    :goto_4
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    if-eq v3, v1, :cond_8

    .line 1080
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    move v0, v4

    .line 1085
    :cond_8
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_9

    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->shouldDrawRippleCompat([I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1086
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_5

    :cond_9
    move v1, v2

    .line 1088
    :goto_5
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    if-eq v3, v1, :cond_a

    .line 1089
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    .line 1090
    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v1, :cond_a

    move v0, v4

    .line 1097
    :cond_a
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 1096
    invoke-virtual {v1}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 1097
    invoke-virtual {v1}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1101
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 1099
    invoke-virtual {v1}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v1

    .line 1100
    invoke-virtual {v1}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTextColor:I

    .line 1101
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_6

    :cond_b
    move v1, v2

    .line 1103
    :goto_6
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTextColor:I

    if-eq v3, v1, :cond_c

    .line 1104
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTextColor:I

    move v0, v4

    .line 1108
    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const v3, 0x10100a0

    invoke-static {v1, v3}, Lcom/google/android/material/chip/ChipDrawable;->hasState([II)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    if-eqz v1, :cond_d

    move v1, v4

    goto :goto_7

    :cond_d
    move v1, v2

    .line 1109
    :goto_7
    iget-boolean v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    if-eq v3, v1, :cond_f

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_f

    .line 1110
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 1111
    iput-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    .line 1112
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e

    move v0, v4

    move v1, v0

    goto :goto_8

    :cond_e
    move v1, v2

    move v0, v4

    goto :goto_8

    :cond_f
    move v1, v2

    .line 1120
    :goto_8
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_10

    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTint:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_9

    :cond_10
    move v3, v2

    .line 1121
    :goto_9
    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTint:I

    if-eq v5, v3, :cond_11

    .line 1122
    iput v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTint:I

    .line 1123
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v0, v3}, Lcom/google/android/material/drawable/DrawableUtils;->updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_a

    :cond_11
    move v4, v0

    .line 1127
    :goto_a
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1128
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    .line 1130
    :cond_12
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1131
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    .line 1133
    :cond_13
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1138
    array-length v0, p1

    array-length v3, p2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    .line 1139
    array-length v3, p1

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1140
    array-length p1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1142
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    .line 1144
    :cond_14
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1145
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_15
    if-eqz v4, :cond_16

    .line 1149
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_16
    if-eqz v1, :cond_17

    .line 1152
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_17
    return v4
.end method

.method private setChipSurfaceColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1370
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipSurfaceColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1371
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipSurfaceColor:Landroid/content/res/ColorStateList;

    .line 1372
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method private showsCheckedIcon()Z
    .locals 1

    .line 535
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private showsChipIcon()Z
    .locals 1

    .line 530
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private showsCloseIcon()Z
    .locals 1

    .line 540
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1326
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method private updateCompatRippleColor()V
    .locals 1

    .line 1366
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private updateFrameworkCloseIconRipple()V
    .locals 4

    .line 1927
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 1929
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/google/android/material/chip/ChipDrawable;->closeIconRippleMask:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method calculateChipIconWidth()F
    .locals 2

    .line 550
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 551
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCurrentChipIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    add-float/2addr v0, v1

    return v0
.end method

.method calculateCloseIconWidth()F
    .locals 2

    .line 590
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method calculateTextOriginAndAlignment(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;
    .locals 3

    const/4 v0, 0x0

    .line 854
    invoke-virtual {p2, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 855
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 857
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 858
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    add-float/2addr v1, v2

    .line 860
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_0

    .line 861
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 864
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 865
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 868
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateTextCenterFromBaseline()F

    move-result v1

    sub-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/PointF;->y:F

    :cond_1
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 602
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 603
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getAlpha()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 608
    :cond_0
    iget v7, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    const/16 v1, 0xff

    if-ge v7, v1, :cond_1

    .line 609
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object v2, p1

    .line 610
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/canvas/CanvasCompat;->saveLayerAlpha(Landroid/graphics/Canvas;FFFFI)I

    move-result p1

    goto :goto_0

    :cond_1
    move-object v2, p1

    const/4 p1, 0x0

    .line 615
    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawChipSurface(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 618
    invoke-direct {p0, v2, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawChipBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 620
    iget-boolean v3, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    if-eqz v3, :cond_2

    .line 621
    invoke-super {p0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 624
    :cond_2
    invoke-direct {p0, v2, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawChipStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 627
    invoke-direct {p0, v2, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawCompatRipple(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 630
    invoke-direct {p0, v2, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawChipIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 633
    invoke-direct {p0, v2, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawCheckedIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 636
    iget-boolean v3, p0, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText:Z

    if-eqz v3, :cond_3

    .line 637
    invoke-direct {p0, v2, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 641
    :cond_3
    invoke-direct {p0, v2, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawCloseIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 644
    invoke-direct {p0, v2, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 646
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    if-ge v0, v1, :cond_4

    .line 647
    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1245
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    return v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2068
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 2107
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1453
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getChipCornerRadius()F
    .locals 1

    .line 1520
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopLeftCornerResolvedSize()F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    return v0
.end method

.method public getChipEndPadding()F
    .locals 1

    .line 2460
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1749
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChipIconSize()F
    .locals 1

    .line 1817
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    return v0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1778
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getChipMinHeight()F
    .locals 1

    .line 1486
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    return v0
.end method

.method public getChipStartPadding()F
    .locals 1

    .line 2208
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1557
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getChipStrokeWidth()F
    .locals 1

    .line 1593
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    return v0
.end method

.method public getChipTouchBounds(Landroid/graphics/RectF;)V
    .locals 1

    .line 496
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1899
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1986
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCloseIconEndPadding()F
    .locals 1

    .line 2424
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    return v0
.end method

.method public getCloseIconSize()F
    .locals 1

    .line 1958
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    return v0
.end method

.method public getCloseIconStartPadding()F
    .locals 1

    .line 2388
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    return v0
.end method

.method public getCloseIconState()[I
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStateSet:[I

    return-object v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1938
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCloseIconTouchBounds(Landroid/graphics/RectF;)V
    .locals 1

    .line 504
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1259
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 1694
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getFontVariationSettings()Ljava/lang/String;
    .locals 3

    .line 1413
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1414
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 1415
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 1

    .line 2178
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-object v0
.end method

.method public getIconEndPadding()F
    .locals 1

    .line 2281
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    return v0
.end method

.method public getIconStartPadding()F
    .locals 1

    .line 2242
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 525
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    .line 510
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    .line 513
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 515
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v0, v1

    .line 517
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    add-float/2addr v0, v1

    .line 511
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 519
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->maxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 2494
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->maxWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 8

    .line 1286
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    if-eqz v0, :cond_0

    .line 1287
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getOutline(Landroid/graphics/Outline;)V

    return-void

    .line 1290
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1291
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1292
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    move-object v2, p1

    goto :goto_0

    .line 1294
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicHeight()I

    move-result v6

    iget v7, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 1297
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getAlpha()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1632
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 1

    .line 2147
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1661
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextAppearance()Lcom/google/android/material/resources/TextAppearance;
    .locals 1

    .line 1682
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v0

    return-object v0
.end method

.method public getTextEndPadding()F
    .locals 1

    .line 2354
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    return v0
.end method

.method public getTextStartPadding()F
    .locals 1

    .line 2320
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    return v0
.end method

.method public getUseCompatRipple()Z
    .locals 1

    .line 475
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1302
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1304
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isCheckable()Z
    .locals 1

    .line 1990
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    return v0
.end method

.method public isCheckedIconEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2021
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->isCheckedIconVisible()Z

    move-result v0

    return v0
.end method

.method public isCheckedIconVisible()Z
    .locals 1

    .line 2015
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    return v0
.end method

.method public isChipIconEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1708
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->isChipIconVisible()Z

    move-result v0

    return v0
.end method

.method public isChipIconVisible()Z
    .locals 1

    .line 1702
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconVisible:Z

    return v0
.end method

.method public isCloseIconEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1858
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->isCloseIconVisible()Z

    move-result v0

    return v0
.end method

.method public isCloseIconStateful()Z
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public isCloseIconVisible()Z
    .locals 1

    .line 1852
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconVisible:Z

    return v0
.end method

.method isShapeThemingEnabled()Z
    .locals 1

    .line 597
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 987
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipSurfaceColor:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    .line 988
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    .line 989
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    .line 990
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 991
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Lcom/google/android/material/resources/TextAppearance;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 992
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->canShowCheckedIcon()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 993
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 994
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 995
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2

    .line 1173
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result v0

    .line 1175
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1176
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1178
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1179
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1181
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1182
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 1186
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method protected onLevelChange(I)Z
    .locals 2

    .line 1193
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    .line 1195
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1196
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1198
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1199
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1201
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1202
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 1206
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method protected onSizeChange()V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/ChipDrawable$Delegate;

    if-eqz v0, :cond_0

    .line 487
    invoke-interface {v0}, Lcom/google/android/material/chip/ChipDrawable$Delegate;->onChipDrawableSizeChange()V

    :cond_0
    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1032
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    if-eqz v0, :cond_0

    .line 1033
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    .line 1035
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconState()[I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I[I)Z

    move-result p1

    return p1
.end method

.method public onTextSizeChange()V
    .locals 0

    .line 1026
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1027
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    return-void
.end method

.method refreshCloseIconFocus(Z)Z
    .locals 2

    .line 1430
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 1431
    new-array p1, p1, [I

    const v0, 0x10100a7

    aput v0, p1, v1

    const/4 v0, 0x1

    const v1, 0x101009e

    aput v1, p1, v0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/material/chip/ChipDrawable;->DEFAULT_STATE:[I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconState([I)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1310
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1312
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1237
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    if-eq v0, p1, :cond_0

    .line 1238
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 1239
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 1998
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    if-eq v0, p1, :cond_1

    .line 1999
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    .line 2001
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    if-nez p1, :cond_0

    .line 2002
    iget-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2003
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    .line 2005
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result p1

    .line 2007
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    .line 2009
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_1
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 1

    .line 1994
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckable(Z)V

    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 2088
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 2090
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 2091
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 2092
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result p1

    .line 2094
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2095
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2097
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 2099
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2057
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2051
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 1

    .line 2078
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2128
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 2129
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconTint:Landroid/content/res/ColorStateList;

    .line 2131
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->canShowCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2132
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 2135
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public setCheckedIconTintResource(I)V
    .locals 1

    .line 2117
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCheckedIconVisible(I)V
    .locals 1

    .line 2025
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .locals 1

    .line 2029
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    if-eq v0, p1, :cond_1

    .line 2030
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    .line 2031
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    .line 2032
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result p1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 2037
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2039
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2042
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 2043
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_1
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1473
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1474
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    .line 1475
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 1

    .line 1463
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1542
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1543
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    .line 1545
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1531
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadius(F)V

    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 1

    .line 2480
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2481
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    .line 2482
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 2483
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 1

    .line 2470
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPadding(F)V

    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1757
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 1759
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    if-eqz p1, :cond_0

    .line 1760
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 1761
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result p1

    .line 1763
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1764
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1765
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1768
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_2

    .line 1770
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_2
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1744
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1738
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(I)V

    return-void
.end method

.method public setChipIconResource(I)V
    .locals 1

    .line 1753
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setChipIconSize(F)V
    .locals 1

    .line 1839
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1840
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 1841
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    .line 1842
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result p1

    .line 1844
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 1846
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 1

    .line 1828
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSize(F)V

    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    const/4 v0, 0x1

    .line 1798
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->hasChipIconTint:Z

    .line 1799
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1800
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    .line 1801
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1802
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1805
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public setChipIconTintResource(I)V
    .locals 1

    .line 1788
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setChipIconVisible(I)V
    .locals 1

    .line 1712
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    return-void
.end method

.method public setChipIconVisible(Z)V
    .locals 1

    .line 1716
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconVisible:Z

    if-eq v0, p1, :cond_1

    .line 1717
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    .line 1718
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconVisible:Z

    .line 1719
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result p1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 1724
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1726
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1729
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 1730
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_1
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 1

    .line 1506
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1507
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    .line 1508
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 1509
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 1

    .line 1496
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeight(F)V

    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 1

    .line 2228
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2229
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    .line 2230
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 2231
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 1

    .line 2218
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPadding(F)V

    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1577
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1578
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    .line 1579
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    if-eqz v0, :cond_0

    .line 1580
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 1582
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 1

    .line 1567
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 1

    .line 1613
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 1614
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    .line 1616
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1617
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    if-eqz v0, :cond_0

    .line 1618
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    .line 1620
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 1

    .line 1603
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidth(F)V

    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1907
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 1909
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v1

    if-eqz p1, :cond_0

    .line 1910
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 1911
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->updateFrameworkCloseIconRipple()V

    .line 1912
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result p1

    .line 1914
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1915
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1916
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1919
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_2

    .line 1921
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_2
    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1976
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconContentDescription:Ljava/lang/CharSequence;

    if-eq v0, p1, :cond_0

    .line 1978
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconContentDescription:Ljava/lang/CharSequence;

    .line 1980
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1894
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1888
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(I)V

    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 1

    .line 2444
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2445
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    .line 2446
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 2447
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2448
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 1

    .line 2434
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 1

    .line 1903
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 1

    .line 1966
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1967
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    .line 1968
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 1969
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1970
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 1

    .line 1962
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSize(F)V

    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 1

    .line 2408
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2409
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    .line 2410
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 2411
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2412
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 1

    .line 2398
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    return-void
.end method

.method public setCloseIconState([I)Z
    .locals 1

    .line 1009
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStateSet:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStateSet:[I

    .line 1011
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I[I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1946
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1947
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    .line 1949
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1950
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1953
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 1

    .line 1942
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCloseIconVisible(I)V
    .locals 1

    .line 1862
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconVisible(Z)V
    .locals 1

    .line 1866
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconVisible:Z

    if-eq v0, p1, :cond_1

    .line 1867
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    .line 1868
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconVisible:Z

    .line 1869
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result p1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 1874
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1876
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1879
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 1880
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1250
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 1251
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1252
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setDelegate(Lcom/google/android/material/chip/ChipDrawable$Delegate;)V
    .locals 1

    .line 480
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    .line 1698
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method public setFontVariationSettings(Ljava/lang/String;)V
    .locals 3

    .line 1422
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1423
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 1424
    invoke-virtual {v0, p1}, Lcom/google/android/material/resources/TextAppearance;->setFontVariationSettings(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0

    .line 2198
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1

    .line 2188
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 1

    .line 2301
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2302
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 2303
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    .line 2304
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result p1

    .line 2306
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 2308
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 1

    .line 2291
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPadding(F)V

    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 1

    .line 2262
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2263
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 2264
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    .line 2265
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result p1

    .line 2267
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 2269
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 1

    .line 2252
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPadding(F)V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 2503
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->maxWidth:I

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1652
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1653
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    .line 1654
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->updateCompatRippleColor()V

    .line 1655
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1

    .line 1642
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method setShouldDrawText(Z)V
    .locals 0

    .line 2517
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText:Z

    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0

    .line 2167
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1

    .line 2157
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1670
    const-string p1, ""

    .line 1672
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1673
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    .line 1674
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextWidthDirty(Z)V

    .line 1675
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 1676
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_1
    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V
    .locals 2

    .line 1690
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;)V

    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 2

    .line 1686
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1400
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1404
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1406
    invoke-virtual {v0, p1}, Lcom/google/android/material/resources/TextAppearance;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1407
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 1

    .line 2374
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2375
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    .line 2376
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 2377
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 1

    .line 2364
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPadding(F)V

    return-void
.end method

.method public setTextResource(I)V
    .locals 1

    .line 1665
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 1391
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1393
    invoke-virtual {v0, p1}, Lcom/google/android/material/resources/TextAppearance;->setTextSize(F)V

    .line 1394
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1395
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onTextSizeChange()V

    :cond_0
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 1

    .line 2340
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2341
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    .line 2342
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 2343
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 1

    .line 2330
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPadding(F)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1265
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 1266
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1272
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 1273
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1274
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0, p1}, Lcom/google/android/material/drawable/DrawableUtils;->updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1275
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setUseCompatRipple(Z)V
    .locals 1

    .line 466
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    if-eq v0, p1, :cond_0

    .line 467
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    .line 468
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->updateCompatRippleColor()V

    .line 469
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1213
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 1215
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1216
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1218
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1219
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1221
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1222
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 1226
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method shouldDrawText()Z
    .locals 1

    .line 2507
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText:Z

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1318
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1320
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
