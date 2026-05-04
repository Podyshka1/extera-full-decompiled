.class Lorg/telegram/ui/ChatActivity$129;
.super Lorg/telegram/ui/Components/ChatGreetingsView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createEmptyView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 32179
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$129;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Components/ChatGreetingsView;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 32182
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 32183
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p2

    iget-object p3, p1, Lorg/telegram/ui/ChatActivity$129;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetemptyViewContent(Lorg/telegram/ui/ChatActivity;)Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p3

    add-float/2addr p2, p3

    iget-object p3, p1, Lorg/telegram/ui/ChatActivity$129;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3, p0}, Lorg/telegram/ui/ChatActivity;->getServiceHeight(Landroid/view/View;)I

    move-result p3

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Components/ChatGreetingsView;->setVisiblePart(FI)V

    return-void
.end method
