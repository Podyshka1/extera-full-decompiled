.class Lorg/telegram/ui/TopicCreateFragment$5;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicCreateFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/TopicCreateFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TopicCreateFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$5;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p2, 0x1

    .line 450
    iput-boolean p2, p1, Lorg/telegram/ui/TopicCreateFragment$5;->firstLayout:Z

    return-void
.end method


# virtual methods
.method protected onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)V
    .locals 4

    .line 463
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$5;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicCreateFragment;->access$400(Lorg/telegram/ui/TopicCreateFragment;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/UserConfig;->defaultTopicIcons:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p4, 0x0

    if-nez p1, :cond_1

    .line 464
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$5;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object p5, p0, Lorg/telegram/ui/TopicCreateFragment$5;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-static {p5}, Lorg/telegram/ui/TopicCreateFragment;->access$500(Lorg/telegram/ui/TopicCreateFragment;)I

    move-result p5

    invoke-static {p5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p5

    iget-object p5, p5, Lorg/telegram/messenger/UserConfig;->defaultTopicIcons:Ljava/lang/String;

    invoke-virtual {p1, p5}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 465
    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    .line 466
    :goto_0
    invoke-static {p3}, Lorg/telegram/messenger/MediaDataController;->getStickerSetId(Lorg/telegram/tgnet/TLRPC$Document;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p4, 0x1

    .line 470
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$5;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-static {p1, p2, p4}, Lorg/telegram/ui/TopicCreateFragment;->-$$Nest$mselectEmoji(Lorg/telegram/ui/TopicCreateFragment;Ljava/lang/Long;Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 454
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onLayout(ZIIII)V

    move-object p1, p0

    .line 455
    iget-boolean p2, p1, Lorg/telegram/ui/TopicCreateFragment$5;->firstLayout:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 456
    iput-boolean p2, p1, Lorg/telegram/ui/TopicCreateFragment$5;->firstLayout:Z

    .line 457
    iget-object p2, p1, Lorg/telegram/ui/TopicCreateFragment$5;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-object p2, p2, Lorg/telegram/ui/TopicCreateFragment;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onShow(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
