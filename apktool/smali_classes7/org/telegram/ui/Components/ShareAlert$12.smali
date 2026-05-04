.class Lorg/telegram/ui/Components/ShareAlert$12;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/Integer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1163
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$12;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected allowSelectChildAtPosition(FF)Z
    .locals 2

    .line 1167
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$12;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetdarkTheme(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$12;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetlinkToCopy(Lorg/telegram/ui/Components/ShareAlert;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    const/high16 p1, 0x42de0000    # 111.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x42680000    # 58.0f

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1172
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$12;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgettopicsGridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 1173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1174
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$12;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$12;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetdarkTheme(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$12;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetlinkToCopy(Lorg/telegram/ui/Components/ShareAlert;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    const/high16 v2, 0x42de0000    # 111.0f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x42680000    # 58.0f

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1176
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 1177
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$12;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgettopicsGridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 1178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method
