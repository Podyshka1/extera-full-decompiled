.class public Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public zza:Lcom/google/android/gms/cast/framework/media/widget/zze;

.field public zzc:Ljava/util/List;

.field private zze:Z

.field private zzf:Ljava/lang/Integer;

.field private final zzg:F

.field private final zzh:F

.field private final zzi:F

.field private final zzj:F

.field private final zzk:F

.field private final zzl:Landroid/graphics/Paint;

.field private final zzm:I

.field private final zzn:I

.field private final zzo:I

.field private final zzp:I

.field private zzq:[I

.field private zzr:Landroid/graphics/Point;

.field private zzs:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzc:Ljava/util/List;

    .line 5
    new-instance p2, Lcom/google/android/gms/cast/framework/media/widget/zzg;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/cast/framework/media/widget/zzg;-><init>(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;Lcom/google/android/gms/cast/framework/media/widget/zzf;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 6
    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzl:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 7
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/google/android/gms/cast/framework/R$dimen;->cast_seek_bar_minimum_width:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzg:F

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/google/android/gms/cast/framework/R$dimen;->cast_seek_bar_minimum_height:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzh:F

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/google/android/gms/cast/framework/R$dimen;->cast_seek_bar_progress_height:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    iput p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzi:F

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/google/android/gms/cast/framework/R$dimen;->cast_seek_bar_thumb_size:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    div-float/2addr p2, v1

    iput p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzj:F

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/google/android/gms/cast/framework/R$dimen;->cast_seek_bar_ad_break_minimum_width:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzk:F

    new-instance p2, Lcom/google/android/gms/cast/framework/media/widget/zze;

    invoke-direct {p2}, Lcom/google/android/gms/cast/framework/media/widget/zze;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 13
    iput v0, p2, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb:I

    .line 14
    sget-object p2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController:[I

    sget v0, Lcom/google/android/gms/cast/framework/R$attr;->castExpandedControllerStyle:I

    sget v1, Lcom/google/android/gms/cast/framework/R$style;->CastExpandedController:I

    .line 15
    invoke-virtual {p1, p3, p2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castSeekBarProgressAndThumbColor:I

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    sget v1, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castSeekBarSecondaryProgressColor:I

    .line 17
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castSeekBarUnseekableProgressColor:I

    .line 18
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sget v3, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castAdBreakMarkerColor:I

    .line 19
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzm:I

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzn:I

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzo:I

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzp:I

    .line 24
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzh(I)V

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzi()V

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzj()V

    return-void
.end method

.method private final zzf(I)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 2
    iget v1, v1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb:I

    int-to-double v1, v1

    int-to-double v3, p1

    int-to-double v5, v0

    div-double/2addr v3, v5

    mul-double/2addr v3, v1

    double-to-int p1, v3

    return p1
.end method

.method private final zzg(Landroid/graphics/Canvas;IIIII)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzl:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    int-to-float p2, p2

    int-to-float p4, p4

    div-float/2addr p3, p4

    div-float/2addr p2, p4

    int-to-float p4, p5

    mul-float v3, p3, p4

    iget v4, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzi:F

    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzl:Landroid/graphics/Paint;

    mul-float v1, p2, p4

    neg-float v2, v4

    move-object v0, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final zzh(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza:Lcom/google/android/gms/cast/framework/media/widget/zze;

    iget-boolean v1, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzf:Z

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzd:I

    iget v0, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zze:I

    .line 3
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzf:Ljava/lang/Integer;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzs:Ljava/lang/Runnable;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/cast/framework/media/widget/zza;

    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/framework/media/widget/zza;-><init>(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzs:Ljava/lang/Runnable;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzs:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    .line 7
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private final zzi()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zze:Z

    return-void
.end method

.method private final zzj()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zze:Z

    return-void
.end method


# virtual methods
.method public getMaxProgress()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza:Lcom/google/android/gms/cast/framework/media/widget/zze;

    iget v0, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzf:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 2
    iget v0, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zza:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzs:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int v8, v1, v2

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/4 v11, 0x0

    .line 14
    invoke-virtual {p1, v11, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 15
    iget-boolean v3, v1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzf:Z

    if-eqz v3, :cond_3

    .line 16
    iget v6, v1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzd:I

    if-lez v6, :cond_0

    .line 17
    iget v7, v1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb:I

    iget v9, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzo:I

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzg(Landroid/graphics/Canvas;IIIII)V

    goto :goto_0

    :cond_0
    move-object v3, p0

    move-object v4, p1

    :goto_0
    iget-object p1, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 18
    iget v5, p1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzd:I

    if-le v2, v5, :cond_1

    .line 19
    iget v7, p1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb:I

    iget v9, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzm:I

    move v6, v2

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzg(Landroid/graphics/Canvas;IIIII)V

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    iget-object p1, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 20
    iget v6, p1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zze:I

    if-le v6, v5, :cond_2

    .line 21
    iget v7, p1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb:I

    iget v9, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzn:I

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzg(Landroid/graphics/Canvas;IIIII)V

    :cond_2
    iget-object p1, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 22
    iget v6, p1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb:I

    iget v5, p1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zze:I

    if-le v6, v5, :cond_6

    iget v9, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzo:I

    move v7, v6

    .line 23
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzg(Landroid/graphics/Canvas;IIIII)V

    goto :goto_4

    :cond_3
    move-object v3, p0

    move-object v4, p1

    move p1, v2

    .line 24
    iget v1, v1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzc:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lez v5, :cond_4

    iget-object v1, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 25
    iget v7, v1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb:I

    iget v9, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzo:I

    move v6, v5

    const/4 v5, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzg(Landroid/graphics/Canvas;IIIII)V

    goto :goto_2

    :cond_4
    move v6, v5

    :goto_2
    if-le p1, v6, :cond_5

    iget-object v1, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 26
    iget v7, v1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb:I

    iget v9, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzm:I

    move v5, v6

    move v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzg(Landroid/graphics/Canvas;IIIII)V

    move v5, v6

    goto :goto_3

    :cond_5
    move v5, p1

    :goto_3
    iget-object p1, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 27
    iget v6, p1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb:I

    if-le v6, v5, :cond_6

    iget v9, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzo:I

    move v7, v6

    .line 28
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzg(Landroid/graphics/Canvas;IIIII)V

    .line 29
    :cond_6
    :goto_4
    invoke-virtual {v4, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object p1, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzc:Ljava/util/List;

    if-eqz p1, :cond_9

    .line 30
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_6

    .line 49
    :cond_7
    iget-object v1, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzl:Landroid/graphics/Paint;

    iget v2, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzp:I

    .line 31
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 34
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    move-result v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 35
    invoke-virtual {v4, v11, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    goto :goto_5

    .line 40
    :cond_8
    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 41
    :cond_9
    :goto_6
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza:Lcom/google/android/gms/cast/framework/media/widget/zze;

    iget-boolean p1, p1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzf:Z

    if-eqz p1, :cond_a

    iget-object p1, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzl:Landroid/graphics/Paint;

    iget v1, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzm:I

    .line 42
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    move-result v2

    int-to-double v5, v2

    iget-object v2, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza:Lcom/google/android/gms/cast/framework/media/widget/zze;

    iget v2, v2, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb:I

    int-to-double v7, v2

    .line 46
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    move-result v2

    int-to-float v1, v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v1, v9

    iget v9, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzj:F

    iget-object v10, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzl:Landroid/graphics/Paint;

    div-double/2addr v5, v7

    int-to-double v7, p1

    mul-double/2addr v5, v7

    double-to-int p1, v5

    int-to-float p1, p1

    .line 47
    invoke-virtual {v4, p1, v1, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 48
    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 49
    :cond_a
    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzg:F

    add-float/2addr v4, v0

    add-float/2addr v4, v1

    float-to-int v0, v4

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzh:F

    add-float/2addr v0, v2

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 4
    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza:Lcom/google/android/gms/cast/framework/media/widget/zze;

    iget-boolean v0, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzf:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzr:Landroid/graphics/Point;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Point;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzr:Landroid/graphics/Point;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzq:[I

    const/4 v2, 0x2

    if-nez v0, :cond_2

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzq:[I

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzq:[I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzr:Landroid/graphics/Point;

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzq:[I

    aget v4, v4, v1

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzq:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-int/2addr v4, v5

    .line 6
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v6, :cond_5

    if-eq p1, v2, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zze:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzf:Ljava/lang/Integer;

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return v6

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzr:Landroid/graphics/Point;

    .line 11
    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzf(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzh(I)V

    return v6

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzr:Landroid/graphics/Point;

    .line 12
    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzf(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzh(I)V

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzj()V

    return v6

    .line 14
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzi()V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzr:Landroid/graphics/Point;

    .line 15
    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzf(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzh(I)V

    return v6

    :cond_7
    :goto_0
    return v1
.end method
