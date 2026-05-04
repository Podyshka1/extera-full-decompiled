.class abstract Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;
.super Lorg/telegram/ui/ChatActivity$RecyclerListViewInternal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ChatListRecyclerView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V
    .locals 0

    .line 46206
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 46207
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$RecyclerListViewInternal;-><init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V

    return-void
.end method


# virtual methods
.method drawChatBackgroundElements(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 46211
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;->drawChatBackgroundElements(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    return-void
.end method

.method abstract drawChatBackgroundElements(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
.end method

.method drawChatForegroundElements(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 46215
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;->drawChatForegroundElements(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    return-void
.end method

.method abstract drawChatForegroundElements(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
.end method
