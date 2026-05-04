.class Lorg/telegram/messenger/MediaDataController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaDataController;->generateEmojiPreviewThemes(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaDataController;

.field final synthetic val$currentAccount:I

.field final synthetic val$previewItems:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$fYfj4gM3gHilz9HqZErvrb7mE_M(Lorg/telegram/messenger/MediaDataController$3;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaDataController$3;->lambda$run$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/MediaDataController;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9349
    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$3;->this$0:Lorg/telegram/messenger/MediaDataController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$3;->val$previewItems:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/MediaDataController$3;->val$currentAccount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/util/ArrayList;)V
    .locals 2

    .line 9356
    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$3;->this$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->defaultEmojiThemes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9357
    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$3;->this$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->defaultEmojiThemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9358
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->emojiPreviewThemesChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 9352
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$3;->val$previewItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 9353
    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$3;->val$previewItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget v2, p0, Lorg/telegram/messenger/MediaDataController$3;->val$currentAccount:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadPreviewColors(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9355
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$3;->val$previewItems:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/MediaDataController$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/MediaDataController$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MediaDataController$3;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
