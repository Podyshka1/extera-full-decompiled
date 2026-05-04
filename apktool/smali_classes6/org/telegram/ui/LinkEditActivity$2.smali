.class Lorg/telegram/ui/LinkEditActivity$2;
.super Lorg/telegram/ui/Components/SectionsScrollView$SectionsLinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LinkEditActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LinkEditActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LinkEditActivity;Landroid/content/Context;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lorg/telegram/ui/LinkEditActivity$2;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SectionsScrollView$SectionsLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 192
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 193
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity$2;->this$0:Lorg/telegram/ui/LinkEditActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$fputfirstLayout(Lorg/telegram/ui/LinkEditActivity;Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 187
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
