.class Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)V
    .locals 0

    .line 7148
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    const/high16 p2, 0x40000000    # 2.0f

    .line 7151
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
