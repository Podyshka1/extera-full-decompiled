.class Lcom/exteragram/messenger/ai/ui/ResponseAlert$1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/ai/ui/ResponseAlert;-><init>(Landroid/content/Context;Lcom/exteragram/messenger/ai/network/Client;Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Landroid/content/Context;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$1;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 142
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
