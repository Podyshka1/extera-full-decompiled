.class Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TypedScrollListener"
.end annotation


# instance fields
.field private smoothScrolling:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field private final type:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 1160
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 1161
    iput p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->type:I

    return-void
.end method

.method private checkSearchFieldScroll()V
    .locals 3

    .line 1212
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->type:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-void

    .line 1220
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mcheckGifSearchFieldScroll(Lorg/telegram/ui/Components/EmojiView;Z)V

    return-void

    .line 1217
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mcheckEmojiSearchFieldScroll(Lorg/telegram/ui/Components/EmojiView;Z)V

    return-void

    .line 1214
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mcheckStickersSearchFieldScroll(Lorg/telegram/ui/Components/EmojiView;Z)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1166
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1167
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->smoothScrolling:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    if-nez p2, :cond_3

    .line 1171
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->smoothScrolling:Z

    if-nez p2, :cond_1

    .line 1172
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->type:I

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$manimateTabsY(Lorg/telegram/ui/Components/EmojiView;I)V

    .line 1174
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetignoreStickersScroll(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1175
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputignoreStickersScroll(Lorg/telegram/ui/Components/EmojiView;Z)V

    .line 1177
    :cond_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->smoothScrolling:Z

    return-void

    :cond_3
    if-ne p2, v0, :cond_6

    .line 1180
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetignoreStickersScroll(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1181
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputignoreStickersScroll(Lorg/telegram/ui/Components/EmojiView;Z)V

    .line 1183
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->type:I

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mgetSearchFieldForType(Lorg/telegram/ui/Components/EmojiView;I)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1185
    invoke-virtual {p2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->hideKeyboard()V

    .line 1187
    :cond_5
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->smoothScrolling:Z

    .line 1189
    :cond_6
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->smoothScrolling:Z

    if-nez p1, :cond_7

    .line 1190
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->type:I

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mstopAnimatingTabsY(Lorg/telegram/ui/Components/EmojiView;I)V

    .line 1192
    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->type:I

    if-nez p1, :cond_9

    .line 1193
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetchooseStickerActionTracker(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    move-result-object p1

    if-nez p1, :cond_8

    .line 1194
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mcreateStickersChooseActionTracker(Lorg/telegram/ui/Components/EmojiView;)V

    .line 1196
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetchooseStickerActionTracker(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->doSomeAction()V

    :cond_9
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1203
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->type:I

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mcheckScroll(Lorg/telegram/ui/Components/EmojiView;I)V

    .line 1204
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->type:I

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mcheckTabsY(Lorg/telegram/ui/Components/EmojiView;II)V

    .line 1205
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->checkSearchFieldScroll()V

    .line 1206
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->smoothScrolling:Z

    if-nez p1, :cond_0

    .line 1207
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    int-to-float p2, p3

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mcheckBottomTabScroll(Lorg/telegram/ui/Components/EmojiView;F)V

    :cond_0
    return-void
.end method
