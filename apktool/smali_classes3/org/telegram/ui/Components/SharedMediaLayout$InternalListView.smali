.class public Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;
.super Lorg/telegram/ui/Components/BlurredRecyclerView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stories/StoriesListPlaceProvider$ClippedView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalListView"
.end annotation


# instance fields
.field public hintPaddingBottom:I

.field public hintPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11104
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BlurredRecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public updateClip([I)V
    .locals 2

    .line 11109
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;->hintPaddingTop:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 11110
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;->hintPaddingBottom:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p1, v1

    return-void
.end method
