.class Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView$1;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;Landroid/content/Context;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView$1;->this$0:Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 570
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 571
    iget-object p1, p0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView$1;->this$0:Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;

    iget-object p1, p1, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method
