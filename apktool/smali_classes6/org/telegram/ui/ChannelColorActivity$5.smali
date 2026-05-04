.class Lorg/telegram/ui/ChannelColorActivity$5;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog;
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

.field final synthetic val$onSet:Lorg/telegram/messenger/Utilities$Callback3;

.field final synthetic val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IILorg/telegram/messenger/Utilities$Callback3;[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V
    .locals 0

    .line 880
    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$5;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iput-object p11, p0, Lorg/telegram/ui/ChannelColorActivity$5;->val$onSet:Lorg/telegram/messenger/Utilities$Callback3;

    iput-object p12, p0, Lorg/telegram/ui/ChannelColorActivity$5;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-object p1, p0

    invoke-direct/range {p1 .. p10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    return-void
.end method


# virtual methods
.method public getDialogId()J
    .locals 2

    .line 894
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$5;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-wide v0, v0, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    return-wide v0
.end method

.method protected getScrimDrawableTranslationY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)V
    .locals 0

    .line 883
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$5;->val$onSet:Lorg/telegram/messenger/Utilities$Callback3;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    const-wide/16 p2, 0x0

    goto :goto_0

    .line 884
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2, p5, p4}, Lorg/telegram/messenger/Utilities$Callback3;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 886
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$5;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    if-eqz p1, :cond_2

    .line 887
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$5;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lorg/telegram/ui/ChannelColorActivity;->-$$Nest$fputselectAnimatedEmojiDialog(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    .line 888
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$5;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    :cond_2
    return-void
.end method
