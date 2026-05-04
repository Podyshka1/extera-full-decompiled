.class Lorg/telegram/ui/Components/ChatAttachAlert$8;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 2173
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 2177
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onBackPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2180
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void

    .line 2182
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onMenuItemClick(I)V

    return-void
.end method
