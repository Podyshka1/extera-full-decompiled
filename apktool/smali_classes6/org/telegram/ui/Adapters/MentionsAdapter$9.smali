.class Lorg/telegram/ui/Adapters/MentionsAdapter$9;
.super Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter;->doSomeStickersAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter;IJJ)V
    .locals 0

    .line 2034
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;-><init>(IJJ)V

    return-void
.end method


# virtual methods
.method public isShown()Z
    .locals 1

    .line 2037
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isStickers()Z

    move-result v0

    return v0
.end method
