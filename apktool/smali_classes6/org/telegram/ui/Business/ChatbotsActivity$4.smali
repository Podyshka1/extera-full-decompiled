.class Lorg/telegram/ui/Business/ChatbotsActivity$4;
.super Lorg/telegram/ui/Components/CircularProgressDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Business/ChatbotsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Business/ChatbotsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Business/ChatbotsActivity;I)V
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity$4;->this$0:Lorg/telegram/ui/Business/ChatbotsActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 3

    .line 186
    iget v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->size:F

    iget v1, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->thickness:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    .line 182
    iget v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->size:F

    iget v1, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->thickness:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
