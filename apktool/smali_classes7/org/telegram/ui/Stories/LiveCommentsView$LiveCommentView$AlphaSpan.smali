.class public final Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView$AlphaSpan;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlphaSpan"
.end annotation


# instance fields
.field private final alpha:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1822
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 1823
    iput p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView$AlphaSpan;->alpha:F

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 1827
    iget v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView$AlphaSpan;->alpha:F

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
