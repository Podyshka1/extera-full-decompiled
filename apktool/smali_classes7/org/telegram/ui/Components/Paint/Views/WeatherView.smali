.class public Lorg/telegram/ui/Components/Paint/Views/WeatherView;
.super Lorg/telegram/ui/Components/Paint/Views/EntityView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/WeatherView$TextViewSelectionView;
    }
.end annotation


# instance fields
.field private currentColor:I

.field private currentType:I

.field private hasColor:Z

.field public final marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

.field public weather:Lorg/telegram/ui/Stories/recorder/Weather$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILorg/telegram/ui/Stories/recorder/Weather$State;FI)V
    .locals 2

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;)V

    .line 54
    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, p5, v1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;-><init>(Landroid/content/Context;IFI)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    .line 55
    invoke-virtual {p2, p6}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setMaxWidth(I)V

    .line 56
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->currentColor:I

    invoke-virtual {p2, v1, p1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setType(II)V

    .line 57
    invoke-virtual {p0, p3, p4}, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->setWeather(ILorg/telegram/ui/Stories/recorder/Weather$State;)V

    const/4 p1, -0x2

    const/16 p3, 0x33

    .line 58
    invoke-static {p1, p1, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 61
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 63
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->createSelectionView()Lorg/telegram/ui/Components/Paint/Views/WeatherView$TextViewSelectionView;

    move-result-object v0

    return-object v0
.end method

.method protected createSelectionView()Lorg/telegram/ui/Components/Paint/Views/WeatherView$TextViewSelectionView;
    .locals 2

    .line 143
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/WeatherView$TextViewSelectionView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Paint/Views/WeatherView$TextViewSelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/WeatherView;Landroid/content/Context;)V

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 111
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->currentColor:I

    return v0
.end method

.method protected getMaxScale()F
    .locals 1

    const/high16 v0, 0x3fc00000    # 1.5f

    return v0
.end method

.method public getSelectionBounds()Lorg/telegram/ui/Components/Rect;
    .locals 7

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lorg/telegram/ui/Components/Rect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Rect;-><init>()V

    return-object v0

    .line 134
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float/2addr v1, v3

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr v3, v2

    .line 137
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionX()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    sub-float/2addr v2, v5

    mul-float/2addr v2, v0

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    .line 139
    new-instance v5, Lorg/telegram/ui/Components/Rect;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionY()F

    move-result v6

    div-float v4, v3, v4

    sub-float/2addr v6, v4

    mul-float/2addr v6, v0

    sub-float/2addr v1, v2

    mul-float/2addr v3, v0

    invoke-direct {v5, v2, v6, v1, v3}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v5
.end method

.method protected getStickyPaddingBottom()F
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->pady:I

    int-to-float v0, v0

    return v0
.end method

.method protected getStickyPaddingLeft()F
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padx:I

    int-to-float v0, v0

    return v0
.end method

.method protected getStickyPaddingRight()F
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padx:I

    int-to-float v0, v0

    return v0
.end method

.method protected getStickyPaddingTop()F
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->pady:I

    int-to-float v0, v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 120
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->currentType:I

    return v0
.end method

.method public getTypesCount()I
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->getTypesCount()I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->hasColor:Z

    xor-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public hasColor()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->hasColor:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 83
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 84
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 90
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->hasColor:Z

    .line 95
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->currentColor:I

    return-void
.end method

.method public setIsVideo(Z)V
    .locals 1

    .line 116
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setIsVideo(Z)V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setMaxWidth(I)V

    return-void
.end method

.method public setType(I)V
    .locals 2

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->currentType:I

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->currentColor:I

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setType(II)V

    return-void
.end method

.method public setWeather(ILorg/telegram/ui/Stories/recorder/Weather$State;)V
    .locals 2

    .line 67
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->weather:Lorg/telegram/ui/Stories/recorder/Weather$State;

    .line 69
    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/Weather$State;->getEmoji()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/Weather$State;->getTemperature()Ljava/lang/String;

    move-result-object p2

    .line 71
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setCodeEmoji(ILjava/lang/String;)V

    .line 72
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/WeatherView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setText(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method
