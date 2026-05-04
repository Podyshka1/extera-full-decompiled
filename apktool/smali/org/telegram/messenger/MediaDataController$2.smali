.class Lorg/telegram/messenger/MediaDataController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaDataController;->loadEmojiThemes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaDataController;

.field final synthetic val$previewItems:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$y4qz5i3Q0y_kLcfqVYOxpvObckU(Lorg/telegram/messenger/MediaDataController$2;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaDataController$2;->lambda$run$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/MediaDataController;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9306
    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$2;->this$0:Lorg/telegram/messenger/MediaDataController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$2;->val$previewItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/util/ArrayList;)V
    .locals 1

    .line 9315
    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$2;->this$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->defaultEmojiThemes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9316
    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$2;->this$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->defaultEmojiThemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 9309
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$2;->val$previewItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 9310
    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$2;->val$previewItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$2;->val$previewItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz v2, :cond_0

    .line 9311
    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$2;->val$previewItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadPreviewColors(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9314
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$2;->val$previewItems:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/MediaDataController$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/MediaDataController$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MediaDataController$2;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
