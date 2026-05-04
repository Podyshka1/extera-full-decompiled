.class Lorg/telegram/ui/ChannelColorActivity$6;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelColorActivity;->showSelectStatusDialog(Lorg/telegram/ui/ChannelColorActivity$EmojiCell;JZLorg/telegram/messenger/Utilities$Callback3;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelColorActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelColorActivity;Landroid/view/View;II)V
    .locals 0

    .line 906
    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$6;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 909
    invoke-super {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    .line 910
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$6;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelColorActivity;->-$$Nest$fputselectAnimatedEmojiDialog(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    return-void
.end method
