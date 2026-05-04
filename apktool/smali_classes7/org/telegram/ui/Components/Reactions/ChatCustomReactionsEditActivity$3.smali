.class Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$3;
.super Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 0

    .line 259
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$3;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method


# virtual methods
.method protected onLineCountChanged(II)V
    .locals 1

    if-le p2, p1, :cond_0

    .line 263
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$3;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgetscrollView(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Lorg/telegram/ui/Components/SectionsScrollView;

    move-result-object p1

    const/high16 p2, 0x41f00000    # 30.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    :cond_0
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1

    .line 269
    sget v0, Lorg/telegram/messenger/R$id;->menu_delete:I

    if-eq p1, v0, :cond_3

    const v0, 0x1020020

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x1020022

    if-eq p1, v0, :cond_2

    const v0, 0x1020021

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 274
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->onTextContextMenuItem(I)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 270
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$3;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$mdeleteSelectedEmojis(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Z

    move-result p1

    return p1
.end method
