.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;
.super Landroid/widget/ViewSwitcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

.field final synthetic val$this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 3854
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;->val$this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    const/high16 p2, 0x42c80000    # 100.0f

    .line 3857
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/ViewSwitcher;->onMeasure(II)V

    return-void
.end method
