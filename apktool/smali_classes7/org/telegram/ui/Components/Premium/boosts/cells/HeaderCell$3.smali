.class Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$3;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->setBoostViaGifsText(Lorg/telegram/tgnet/TLRPC$Chat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$3;->this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    const/high16 v0, 0x41400000    # 12.0f

    .line 149
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v6, v0

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v6

    float-to-int v5, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
