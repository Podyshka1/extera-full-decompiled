.class Lorg/telegram/ui/Stories/PeerStoriesView$18;
.super Lorg/telegram/ui/WrappedResourceProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->createEnterView()V
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

    .line 3078
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/WrappedResourceProvider;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public appendColors()V
    .locals 3

    .line 3081
    iget-object v0, p0, Lorg/telegram/ui/WrappedResourceProvider;->sparseIntArray:Landroid/util/SparseIntArray;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    const v2, -0x3fdfdbd6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
