.class Lcom/exteragram/messenger/drawer/DrawerContainer$3;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/drawer/DrawerContainer;->showStatusSelect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/drawer/DrawerContainer;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/drawer/DrawerContainer;Landroid/view/View;II)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$3;->this$0:Lcom/exteragram/messenger/drawer/DrawerContainer;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 330
    invoke-super {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    .line 331
    iget-object v0, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$3;->this$0:Lcom/exteragram/messenger/drawer/DrawerContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/exteragram/messenger/drawer/DrawerContainer;->-$$Nest$fputselectAnimatedEmojiDialog(Lcom/exteragram/messenger/drawer/DrawerContainer;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    return-void
.end method
