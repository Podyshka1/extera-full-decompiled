.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$32;
.super Landroid/text/style/ImageSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraBtnSpan(Landroid/content/Context;)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cameraDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 7655
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$32;->val$cameraDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 2

    .line 7663
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-int v0, p8, p6

    .line 7664
    div-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7665
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$32;->val$cameraDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 7666
    invoke-super/range {p0 .. p9}, Landroid/text/style/ImageSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 7667
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 7658
    invoke-super/range {p0 .. p5}, Landroid/text/style/ImageSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    return p1
.end method
