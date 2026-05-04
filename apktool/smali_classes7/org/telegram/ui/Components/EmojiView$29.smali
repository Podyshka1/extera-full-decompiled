.class Lorg/telegram/ui/Components/EmojiView$29;
.super Lorg/telegram/ui/Components/EmojiPacksAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;->openEmojiPackAlert(Lorg/telegram/tgnet/TLRPC$StickerSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field final synthetic val$set:Lorg/telegram/tgnet/TLRPC$StickerSet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$StickerSet;)V
    .locals 0

    .line 4244
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$29;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iput-object p6, p0, Lorg/telegram/ui/Components/EmojiView$29;->val$set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 4247
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$29;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputemojiPackAlertOpened(Lorg/telegram/ui/Components/EmojiView;Z)V

    .line 4248
    invoke-super {p0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->dismiss()V

    return-void
.end method

.method protected onButtonClicked(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 4254
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$29;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$29;->val$set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4255
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$29;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$29;->val$set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4258
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$29;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$29;->val$set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4260
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$29;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mupdateEmojiHeaders(Lorg/telegram/ui/Components/EmojiView;)V

    return-void
.end method
