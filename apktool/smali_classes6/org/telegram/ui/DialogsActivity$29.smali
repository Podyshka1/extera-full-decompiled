.class Lorg/telegram/ui/DialogsActivity$29;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->showSelectStatusDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/view/View;II)V
    .locals 0

    .line 6081
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 6084
    invoke-super {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    .line 6085
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputselectAnimatedEmojiDialog(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    return-void
.end method
