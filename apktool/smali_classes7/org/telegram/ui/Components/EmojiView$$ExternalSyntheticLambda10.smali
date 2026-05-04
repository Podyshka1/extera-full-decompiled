.class public final synthetic Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer$DrawChildMethod;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/EmojiView$EmojiGridView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    return-void
.end method


# virtual methods
.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method
