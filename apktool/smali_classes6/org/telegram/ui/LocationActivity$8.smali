.class Lorg/telegram/ui/LocationActivity$8;
.super Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;Landroid/view/View;II)V
    .locals 0

    .line 1082
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$8;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1085
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 1086
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$8;->this$0:Lorg/telegram/ui/LocationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fputpopupWindow(Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    return-void
.end method
