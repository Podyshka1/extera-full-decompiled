.class Lorg/telegram/ui/Stories/PeerStoriesView$37;
.super Lorg/telegram/ui/WrappedResourceProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->checkReactionsLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 7810
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/WrappedResourceProvider;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public appendColors()V
    .locals 4

    .line 7813
    iget-object v0, p0, Lorg/telegram/ui/WrappedResourceProvider;->sparseIntArray:Landroid/util/SparseIntArray;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    const/4 v2, -0x1

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
