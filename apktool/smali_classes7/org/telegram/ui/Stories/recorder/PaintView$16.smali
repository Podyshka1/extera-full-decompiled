.class Lorg/telegram/ui/Stories/recorder/PaintView$16;
.super Lorg/telegram/ui/WrappedResourceProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/PaintView;->showReactionsLayoutForView(Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/PaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1569
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$16;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/WrappedResourceProvider;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public appendColors()V
    .locals 4

    .line 1572
    iget-object v0, p0, Lorg/telegram/ui/WrappedResourceProvider;->sparseIntArray:Landroid/util/SparseIntArray;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    const/4 v2, -0x1

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
