.class Lorg/telegram/ui/ChannelAdminLogActivity$17;
.super Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity;->createMenu(Landroid/view/View;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelAdminLogActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/view/View;II)V
    .locals 0

    .line 1806
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$17;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1809
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 1810
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$17;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetscrimPopupWindow(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 1813
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    .line 1814
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$17;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fputscrimPopupWindow(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    return-void
.end method
